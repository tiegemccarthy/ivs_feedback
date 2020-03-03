#!/usr/bin/python

from ftplib import FTP
import re
import os
import MySQLdb as mariadb
import sys

#
#

def checkExistingData(db_name):
    # db_name should be the name of the auscope database (as a string) we want to query for 
    #  unique existing experiment IDs
    conn = mariadb.connect(user='auscope', passwd='password', db=db_name)
    cursor = conn.cursor()
    station_key = ['Ke', 'Yg', 'Hb', 'Ho']
    existing_experiments = []

    for ant in station_key:
        query = "SELECT ExpID FROM " + ant
        cursor.execute(query)
        result_list = [item for sublist in cursor.fetchall() for item in sublist]
        existing_experiments.append(result_list)
    
    existing_experiments = [item for sublist in existing_experiments for item in sublist]
    unique_existing_experiments = set(existing_experiments)
    return unique_existing_experiments

def validExpFinder(master_schedule):
    schedule = str(master_schedule)
    with open(schedule) as file:
        schedule_contents = file.readlines()
    valid_experiment = []
    for line in schedule_contents:
        line = line.split('|')
        if len(line) > 13:
            regex = '(?<!-)Ke|(?<!-)Yg|(?<!-)Hb|(?<!-)Ho'
            participated = re.findall(regex,line[7],re.MULTILINE)
            if len(participated) > 0:
                valid_experiment.append(line[2].strip())
    return valid_experiment

def corrReportDL(exp_id,vgos_tag):
    ftp = FTP('cddis.gsfc.nasa.gov')
    ftp.login()
    year = '20' + str(vgos_tag[0:2])
    tag = str(vgos_tag.rstrip())
    exp_id = str(exp_id)
    if os.path.isfile(os.getcwd()+"/corr_files/"+ exp_id + '.corr'):
        return
    else:
        local_filename = os.path.join(os.getcwd(), tag + ".tgz")
        lf = open(local_filename, "wb")
        ftp.retrbinary("RETR /vlbi/ivsdata/vgosdb/" + year + "/" + tag + ".tgz", lf.write)
        lf.close()
        tar = tarfile.open(tag + ".tgz")
        if tag +'/History/'+ tag + '_V000_kMk4.hist' in tar.getnames():
            member = tar.getmember(tag +'/History/'+ tag + '_V000_kMk4.hist')
            member.name = 'corr_files/' + exp_id + '.corr'
            tar.extract(member)
            tar.close()
        else:
            member = tar.getmember(tag + '/History/'+ tag +'_kMK3DB_V001.hist')
            member.name = 'corr_files/' + exp_id + '.corr'
            tar.extract(member)
            tar.close()
        os.remove(tag + ".tgz")
        return

    
def main(master_schedule, db_name):
    schedule = str(master_schedule)
    valid_experiment = validExpFinder(master_schedule)
    existing_experiments = checkExistingData(str(db_name))
    experiments_to_download = [x for x in valid_experiment if x not in existing_experiments]
    ftp = FTP('cddis.gsfc.nasa.gov')
    ftp.login()
    year = '20' + schedule[6:8]
    for exp in experiments_to_download:
        if os.path.isfile(os.getcwd()+'/analysis_reports/'+exp.lower()+'_report.txt'):
            continue
        else:
            exp = exp.lower()
            ftp.cwd('/vlbi/ivsdata/aux/'+str(year)+ '/' + exp)
            options = ['ivs', 'IVS', 'usno', 'USNO']
            for spelling in options:
                filename_report = []
                filename_spool = []
                filename_report_old = []
                ftp.retrlines('LIST '+exp+'-'+spelling+'-analysis-report*', filename_report.append)
                ftp.retrlines('LIST '+exp+'-'+spelling+'-analysis-spoolfile*', filename_spool.append)
                ftp.retrlines('LIST '+exp+'-analyst.txt', filename_report_old.append)
                if len(filename_report) > 0:
                    local_filename_report = os.path.join(os.getcwd(), 'analysis_reports/' + exp + '_report.txt')
                    local_filename_spool = os.path.join(os.getcwd(), 'analysis_reports/' + exp + '_spoolfile.txt')
                    local_filename_skd = os.path.join(os.getcwd(), 'skd_files/' + exp + '.skd')
                    lf1 = open(local_filename_report, "wb")
                    lf2 = open(local_filename_spool, "wb")
                    lf3 = open(local_filename_skd, "wb")
                    ftp.retrbinary("RETR " + filename_report[len(filename_report)-1].split()[8], lf1.write)
                    ftp.retrbinary("RETR " + filename_spool[len(filename_report)-1].split()[8], lf2.write)
                    ftp.retrbinary("RETR " + exp + ".skd", lf3.write)
                    lf1.close()
                    lf2.close()
                    lf3.close()
                    break
                elif len(filename_report_old) > 0:
                    local_filename_report = os.path.join(os.getcwd(), 'analysis_reports/' + exp + '_report.txt')
                    local_filename_skd = os.path.join(os.getcwd(), 'skd_files/' + exp + '.skd')
                    lf1 = open(local_filename_report, "wb")
                    lf2 = open(local_filename_skd, "wb")               
                    ftp.retrbinary("RETR " + exp + "-analyst.txt", lf1.write)
                    ftp.retrbinary("RETR " + exp + ".skd", lf2.write)
                    lf1.close()
                    lf2.close()


if __name__ == '__main__':
    # auscope_file_scraper.py executed as a script
    main(sys.argv[1], sys.argv[2])
    

