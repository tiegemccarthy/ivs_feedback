#!/usr/bin/python

import re
from datetime import datetime
import MySQLdb as mariadb
import sys

def problemFinder(text_section):
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

def stationPerformance(text_section):
    stations = ['KATH12M', 'YARRA12M', 'HOBART12', 'HOBART26']
    station_performance = []
    for ant in stations:
        regex = ant + ".*"
        performance = re.findall(regex,text_section,re.MULTILINE)
        if len(performance) > 0:
            performance = percent2decimal(performance[0].split()[4])
            station_performance.append(performance)
        else:
            station_performance.append(None)
    
    return station_performance
    
def metaData(text_section):
    date = re.findall("(?<=\$).{7}",text_section,re.MULTILINE)
    date = datetime.strptime(date[0], '%y%b%d').strftime('%Y-%m-%d')
    exp_code = re.findall("(?<=Analysis Report for\s)(.*?(?=\s))",text_section,re.MULTILINE)
    analyser = re.findall("\S.*(?=\sAnalysis Report for\s)",text_section,re.MULTILINE)
    return exp_code[0], analyser[0], date
    # pretty sure this doesn't work post-2099, but like... you shouldn't be using this trash then... right?
    
def stationPositions(text_section):
    stations = ['KATH12M', 'YARRA12M', 'HOBART12', 'HOBART26']
    station_positions = []
    for ant in stations:
        regex = ant + ".*[XYZ]\sComp.*"
        positions = re.findall(regex,text_section,re.MULTILINE)
        positions = [i.split()[5] for i in positions]
        station_positions.append(positions)
    return station_positions
    
def main(exp_code, db_name):
    file_report = str(exp_code) + '_report.txt'
    file_spool = str(exp_code) + '_spoolfile.txt'
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
    station_id = ['Ke', 'Yg', 'Hb', 'Ho']
    for i in range(0, len(performance)):
         if performance[i] == None:
            break
         else:
            sql_station = "INSERT IGNORE INTO " + station_id[i] + " (ExpID, Performance, Date, Pos_X, Pos_Y, Pos_Z, Problem, Problem_String, Analyser) VALUES ('{}', {},'{}', {}, {}, {}, {}, '{}' , '{}');".format(meta[0], performance[i], meta[2], position[i][0], position[i][1], position[i][2], problems[0][i], problems[1][i], meta[1])
            sql_command.append(sql_station)
    import MySQLdb as mariadb
    conn = mariadb.connect(user='root', passwd='', db=str(db_name))
    cursor = conn.cursor()
    for i in range(0,len(sql_command)):
        cursor.execute(sql_command[i])
    conn.commit()
    conn.close() 
    
if __name__ == '__main__':
    # auscope_file_scraper.py executed as a script
    main(sys.argv[1], sys.argv[2])
