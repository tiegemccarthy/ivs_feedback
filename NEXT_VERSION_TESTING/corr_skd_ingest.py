#!/usr/bin/python
import re
import os
import MySQLdb as mariadb
from astropy.io import ascii
import numpy as np
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
    col_names = ['bl', 'X_snr', 'X_n', 'S_snr', 'S_n']
    snr_data = ascii.read(text_section, data_start=4, fast_reader=True, names=col_names)
    return snr_data
    # extracts the snr_data table from section[10] of the corr report.
    
def antennaReference_CORR(text_section):
    regex = '\(.{4}\)'
    antennas_corr_report = re.findall(regex,text_section,re.MULTILINE)
    antennas_corr_reference = []
    for line in antennas_corr_report:
        if '/' in line:
            ref = [line[1:3],line[4]]
            antennas_corr_reference.append(ref)
        elif '-' in line: # this is to handle some funky corr report styles.
            ref = [line[3:5], line[1]]
            antennas_corr_reference.append(ref)
    return antennas_corr_reference
    # This function takes the section[4] of the corr report and gives the 2 character
    # station code plus the single character corr code.
    
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
    sefd_stations = ['Ke','Yg','Hb','Ho', 'Ht', 'Is', 'Kk', 'Ma', 'Ny', 'On', 'Kv', 'Wn', 'Hh', 'Ft', 'Ts', 'Wm', 'Ww', 'Wa', 'Wz', 'Bd', 'Ag', 'Ys', 'Ur', 'Sy', 'Oh', 'Tc', 'Ai', 'Cc','Vm','Vs']
    for i1 in range(0, len(SNR_DATA)):
        bl = SNR_DATA[i1][0]
        sefd_x = []
        sefd_s = []
        for i2 in range(0, len(antennas_corr_reference)):
            if antennas_corr_reference[i2][0] in sefd_stations and antennas_corr_reference[i2][1] in bl:
                for j in range(0, len(stations_SEFD)):
                    if antennas_corr_reference[i2][0] in stations_SEFD[j][0]:
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
    # It is important that the sefd_station list is the same as the list of stations in the
    # sefd estimation system!
    
    
def sefd_bl_equations(x, SNR_DATA, antennas_corr_reference):
    # need to set the function up for many of the potential telescopes in the IVS experiments
    # The extra variables have no effect if not in the schedule and will instead just have the initial guess value returned.
    x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30 = x
    #stations = [['Hb', x1],['Ho', x2], ['Ke', x3], ['Yg', x4], ['Ht', x5], ['Is', x6],['Kk', x7], ['Ma', x8], ['Ny', x9], ['On', x10], ['Kv', x11] , ['Wn', x12]]    
    station_str = ['Ke','Yg', 'Hb', 'Ho', 'Ht', 'Is', 'Kk', 'Ma', 'Ny', 'On', 'Kv', 'Wn', 'Hh', 'Ft', 'Ts', 'Wm', 'Ww', 'Wa', 'Wz', 'Bd', 'Ag', 'Ys', 'Ur', 'Sy', 'Oh', 'Tc', 'Ai', 'Cc','Vm','Vs']
    station_var = [x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30]
    output = []
    for i in range(0, len(SNR_DATA)):
        ants = list(SNR_DATA[i][0])
        equations = []
        for j in range(0, len(antennas_corr_reference)):
            if antennas_corr_reference[j][1] in ants:
                equations.append(station_var[station_str.index(antennas_corr_reference[j][0])])
        multi = equations[0]*equations[1]
        output.append(multi)
    output_array = np.asarray(output)
    return output_array

def system(x,w,SNR_DATA,antennas_corr_reference,b):
    return w*(sefd_bl_equations(x, SNR_DATA, antennas_corr_reference)-b)


def main(exp_id, db_name):
    with open(os.getcwd()+'/corr_files/'+ str(exp_id) + '.corr') as file:
        contents = file.read()
        corr_section = contents.split('+')
    station_id = ["Ke", "Yg", "Hb", "Ho"]
    # Extract manual pcal and dropped channels for all telescopes first
    dropped_channels = droppedChannels(corr_section[5])
    manual_pcal = manualPcal(corr_section[6])
    # Now to extract what we need to calculate the SEFDs
    if os.path.isfile(os.getcwd()+'/skd_files/' + str(exp_id) + '.skd'):
        with open(os.getcwd()+'/skd_files/' + str(exp_id) + '.skd') as file:
            skd_contents = file.read()
        snr_data = sefdTableExtract(corr_section[10])
        antennas_corr_reference = antennaReference_CORR(corr_section[4])
        antenna_reference = antennaReference_SKD(skd_contents)
        stations_SEFD = predictedSEFDextract(skd_contents, antenna_reference)
        bl_const_x, bl_const_s, weights_x, weights_s = baselineConstantsWeights(snr_data, antennas_corr_reference, stations_SEFD)
        # Set the guess values, number of elements must be equal to stations setup in sefd_bl_equations function
        x0 = 999*np.ones(30)
        # Finally, estimate the SEFDs
        estimated_sefd_x = scipy.optimize.leastsq(system, x0, args=(weights_x,snr_data,antennas_corr_reference,bl_const_x))[0]
        estimated_sefd_s = scipy.optimize.leastsq(system, x0, args=(weights_s,snr_data,antennas_corr_reference,bl_const_s))[0]
        # should maybe put a condition in here where if length of bl_const lists are less than 6 (less than 4 stations) give warning that SEFD cant be calculated.
        for i in range(0, len(station_id)):
            if estimated_sefd_x[i] != 999:
                sql_station = "UPDATE {} (estSEFD_X, estSEFD_S, Manual_Pcal, Dropped_Chans) VALUES (%s, %s, %s, %s) WHERE ExpID={};".format(station_id[i],str(exp_id))
                data = [estimated_sefd_x[i], estimated_sefd_s[i], manual_pcal[i], dropped_channels[i]]
                conn = mariadb.connect(user='auscope', passwd='password', db=str(db_name))
                cursor = conn.cursor()
                cursor.execute(sql_station, data)
                conn.commit()
        conn.close()
    else:
        for i in range(0, len(station_id)):
            sql_station = "UPDATE {} (Manual_Pcal, Dropped_Chans) VALUES (%s, %s) WHERE ExpID={};".format(station_id[i],str(exp_id))
            data = [manual_pcal[i], dropped_channels[i]]
            conn = mariadb.connect(user='auscope', passwd='password', db=str(db_name))
            cursor = conn.cursor()
            cursor.execute(sql_station, data)
            conn.commit()
        conn.close()

    

if __name__ == '__main__':
    # analysis_downloader.py executed as a script
    main(sys.argv[1], sys.argv[2])
