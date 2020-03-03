#!/usr/bin/python
import re
from datetime import datetime
import os
import MySQLdb as mariadb
from astropy.io import ascii
import numpy as np
from numpy.random import randint
import scipy.optimize

def droppedChannels(text_section):
    station_id = [['KATH12M', 'YARRA12M', 'HOBART12', 'HOBART26'], ['Ke', 'Yg', 'Hb', 'Ho'], ['a', 'i', 'd', 'H']]
    dropped_chans = []
    for ant in station_id[1]:
        regex = ant + '.*'
        dropped = re.findall(regex,text_section,re.MULTILINE)
        if dropped == []:
            dropped_chans.append('')            
        elif len(dropped[0]) < 4:
            dropped_chans.append('')
        else:
            dropped_chans.append(dropped)
    return dropped_chans  
    # This function takes a block of text, and scrapes out whether any AuScope antennas have dropped channels
    # The input of this function is a text section from the correlator report (section[5])
    
def manualPcal(text_section):
    station_id = [['KATH12M', 'YARRA12M', 'HOBART12', 'HOBART26'], ['Ke', 'Yg', 'Hb', 'Ho'], ['a', 'i', 'd', 'H']]
    manual_pcal = []
    for ant in station_id[1]:
        if ant in text_section:
            manual_pcal.append(True)
        else:
            manual_pcal.append(False)
    return manual_pcal
    # this determines whether manual pcal happened for any of our telescopes.
    # The input of this function is a text section from the correlator report (section[6])
    
def sefdTableExtract(text_section):
    sefd_stations = ['q', 'Q', 'a', 'K', 'I', 'N', 'X', 'j', 'W', 'i', 'B', 'b', 'd', 'H', 'T', 'E', 'u', 'V', 'Y', 'R']
    col_names = ['bl', 'X_snr', 'X_n', 'S_snr', 'S_n']
    snr_data = ascii.read(text_section, data_start=4, fast_reader=True, names=col_names)
    valid_rows = []
    for i in range(0, len(snr_data[:]['bl'])):
        if any(char in snr_data[i]['bl'] for char in sefd_stations):
            valid_rows.append(i)
    sefd_data = snr_data[valid_rows]
    return sefd_data
    # This extracts the sefd ratio table for any of the 20 telescopes defined in the sefd estimation function.
    # Make sure if you change which stations you want to be apart of the calculations, change this sefd_stations
    # array and the one in the sefd estimator function.
    
def antennaReference_CORR(text_section):
    regex = '^\s{1}([^\s].*)'
    antennas_corr_report = re.findall(regex,text_section,re.MULTILINE)
    antennas_corr_reference = []
    for line in antennas_corr_report:
        line = line.split()
        ref = [line[0], line[1][1:3], line[1][4]]
        antennas_corr_reference.append(ref)
    return antennas_corr_reference
    
def antennaReference_SKD(text_section):
    regex = "^A\s\s.*"
    alias_reference = re.findall(regex,text_section,re.MULTILINE)
    antenna_reference = []
    for entry in alias_reference:
        entry = entry.split()
        ref = [entry[2], entry[14], entry[15]]
        antenna_reference.append(ref)
    return antenna_reference

def predictedSEFDextract(text_section, antenna_reference):
    regex_sefd = "^T\s{3}.*"
    sefd_skd = re.findall(regex_sefd,text_section,re.MULTILINE)
    stations_SEFD =[]
    for line in sefd_skd:
        line = line.split()
        for i in range(0, len(antenna_reference)):
            if line[1] in antenna_reference[i]:
                SEFD_X_S = [antenna_reference[i][1], line[6], line[8]]
                stations_SEFD.append(SEFD_X_S)
    return stations_SEFD
    # This block of code grabs all the SEFD setting lines and pulls the X and S SEFD for each station.
    # It returns a list with each element containing [StationCode, SEFD_X, SEFD_S]
    
def baselineConstantsWeights(SNR_DATA, antennas_corr_reference, stations_SEFD):
    bl_sefd_x = []
    bl_sefd_s = []
    bl_const_x = []
    bl_const_s = []
    for i1 in range(0, len(SNR_DATA)):
        bl = SNR_DATA[i1][0]
        sefd_x = []
        sefd_s = []
        for i2 in range(0, len(antennas_corr_reference)):
            if antennas_corr_reference[i2][2] in bl:
                for j in range(0, len(stations_SEFD)):
                    if antennas_corr_reference[i2][1] in stations_SEFD[j][0]:
                        sefd_x.append(stations_SEFD[j][1])
                        sefd_s.append(stations_SEFD[j][2])
        bl_sefd_x.append(sefd_x)
        bl_sefd_s.append(sefd_s)
        if SNR_DATA[i1][1] == 0:
            const_x = 0#float('NaN')
        else: 
            const_x = (int(sefd_x[0])*int(sefd_x[1]))/snr_data[i1][1]  
        if SNR_DATA[i1][3] == 0:
            const_s = 0#float('NaN')
        else:
            const_s = (int(sefd_s[0])*int(sefd_s[1]))/snr_data[i1][3] 
        bl_const_x.append(const_x)
        bl_const_s.append(const_s)
        
    weights_x = np.sqrt(SNR_DATA[2][:])
    weights_x = np.asarray(weights_x)
    weights_s = np.sqrt(SNR_DATA[4][:])
    weights_s = np.asarray(weights_s)    
    return bl_const_x, bl_const_s, weights_x, weights_s
    
    # This nightmare spaghetti calculates the constant for each baseline combination in the SEFD equation
    # This constant is just (SEFD_pred_1 * SEFD_pred_2)/r_snr_12
    # also outputs the weightings for the SEFD estimation (sqrt(n)).
    
    
def sefd_bl_equations(x, SNR_DATA):
    # need to set the function up for many of the potential telescopes in the IVS experiments
    # The extra variables have no effect if not in the schedule and will instead just have the initial guess value returned.
    q, Q, a, K, I, N, X, j, W, i, B, b, d, H, T, E, u, V, Y, R = x
    stations = [['q', q],['Q', Q], ['a', a], ['K', K], ['I', I], ['N', N],['X', X], ['j', j], ['W', W], ['i', i], ['B', B], ['b',b], ['d', d], ['H', H], ['T', T], ['E', E], ['u',u], ['V', V], ['Y', Y],['R', R]]    
    output = []
    for i in range(0, len(SNR_DATA)):
        ants = list(SNR_DATA[i][0])
        equations = []
        for j in range(0, len(stations)):
            if stations[j][0] in ants:
                equations.append(stations[j][1])
        multi = equations[0]*equations[1]
        output.append(multi)
    output_array = np.asarray(output)
    return output_array

def system(x,w,SNR_DATA,b):
    return w*(sefd_bl_equations(x, SNR_DATA)-b)

def main():
    with open(os.getcwd()+'/19JAN02XA/History/19JAN02XA_V000_kMk4.hist') as file:
        contents = file.read()
        section = contents.split('+')
    with open(os.getcwd()+'/skd_files/r1875.skd') as file:
        skd_contents = file.read()

if __name__ == '__main__':
    # analysis_downloader.py executed as a script
    main(sys.argv[1], sys.argv[2])

x0 = 999*np.ones(20)
x = scipy.optimize.leastsq(system, x0, args=(weights_s,snr_data,bl_const_s))[0]
print(x)
