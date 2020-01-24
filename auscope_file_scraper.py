#!/usr/bin/python

import re
from datetime import datetime
import MySQLdb as mariadb
import sys

# This script can be used standalone to add database entries for a given experiment code. First argument should be the experiment code (in lower case) and second database name.
# Eventually, this script will be implemented as part of a system that constantly updates an SQL database for new experiments. This section is mostly complete now, though I am sure some bits can be made much cleaner.

# Future things to do: extract the date that the analysis was completed on. This is contained in the spool file and will be useful when trying to search for updated analysis reports. I have not yet figured out how to download updated reports though.

def problemFinder(text_section): # searches first section of text for a problem, creates two lists one with a boolean value, the other with at least 1 line of the string where a problem is mentioned
    stations = ['KATH12M', 'YARRA12M', 'HOBART12', 'HOBART26']
    problem_bool = []
    problem_string = []
    for ant in stations:
        regex = ant + '.*\n[\s]{11}.*|' + ant + '.*$'
        problem = re.findall(regex,text_section,re.MULTILINE)
        if len(problem) > 0:
            problem_bool.append(True)
            problem_string.append(problem[0].replace('\n', ""))
        else:
            problem_bool.append(False)
            problem_string.append('')
    return problem_bool, problem_string
    
def percent2decimal(percent_string):
    return float(percent_string.strip('%'))/100

def stationPerformance(text_section): # Extracts the percentage of useable scans for each station.
    stations = ['KATH12M', 'YARRA12M', 'HOBART12', 'HOBART26']
    station_performance = []
    for ant in stations:
        regex = ant + ".*"
        performance = re.findall(regex,text_section,re.MULTILINE)
        if len(performance) > 0:
            percentage = [s for s in performance[0].split() if '%' in s]
            performance = percent2decimal(percentage[0])
            station_performance.append(performance)
        else:
            station_performance.append(None)
    
    return station_performance
    
def metaData(text_section): # Extracts meta data from the analysis report file.
    date = re.findall("(?<=\$).{7}",text_section,re.MULTILINE)
    date = datetime.strptime(date[0], '%y%b%d').strftime('%Y-%m-%d')
    exp_code = re.findall("(?<=Analysis Report for\s)(.*?(?=\s))",text_section,re.MULTILINE)
    analyser = re.findall("\S.*(?=\sAnalysis Report for\s)",text_section,re.MULTILINE)
    return exp_code[0], analyser[0], date
    # pretty sure this doesn't work post-2099, but like... you shouldn't be using this trash then... right?
    
def stationPositions(text_section): # extracts station positons from the spoolfile
    stations = ["KATH12M", "YARRA12M", "HOBART12", "HOBART26"]
    station_positions = []
    for ant in stations:
        regex = ant + ".*[XYZ]\sComp.*"
        positions = re.findall(regex,text_section,re.MULTILINE)
        positions = [i.split()[5] for i in positions]
        station_positions.append(positions)
    for i in range(0, len(station_positions)):
        if station_positions[i] == []:
            station_positions[i] = ['NULL','NULL','NULL'] # this is a gross hacky way to deal with when a station exists in an analyis report but not the spool file.
    return station_positions
    
def main(exp_code, db_name):
    file_report = 'analysis_reports/' + str(exp_code) + '_report.txt'
    file_spool = 'analysis_reports/' + str(exp_code) + '_spoolfile.txt'
    with open(file_report) as file:
        contents_report = file.read()
        sections = contents_report.split('-----------------------------------------')
    with open(file_spool) as file:
        contents_spool = file.read()
    
    meta = metaData(sections[0])
    performance = stationPerformance(sections[2])
    problems = problemFinder(sections[0])
    position = stationPositions(contents_spool)
    
    sql_command = []
    station_id = ["Ke", "Yg", "Hb", "Ho"]
    for i in range(0, len(performance)):
         if performance[i] == None:
            continue
         else:
            sql_station = "INSERT IGNORE INTO {} (ExpID, Performance, Date, Pos_X, Pos_Y, Pos_Z, Problem, Problem_String, Analyser) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s);".format(station_id[i])
            data = [meta[0], performance[i], meta[2], position[i][0], position[i][1], position[i][2], problems[0][i], problems[1][i], meta[1]]
            conn = mariadb.connect(user='auscope', passwd='password', db=str(db_name))
            cursor = conn.cursor()
            cursor.execute(sql_station, data)
            conn.commit()
    conn.close() 
    
if __name__ == '__main__':
    # analysis_downloader.py executed as a script
    main(sys.argv[1], sys.argv[2])
