# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"F11y100","system":"readv2"},{"code":"F14yz00","system":"readv2"},{"code":"1JA1.00","system":"readv2"},{"code":"G641000","system":"readv2"},{"code":"G679.00","system":"readv2"},{"code":"F142200","system":"readv2"},{"code":"F142000","system":"readv2"},{"code":"G64z200","system":"readv2"},{"code":"G65zz00","system":"readv2"},{"code":"Z7E4400","system":"readv2"},{"code":"P22z.11","system":"readv2"},{"code":"G64z.12","system":"readv2"},{"code":"F14z.00","system":"readv2"},{"code":"G683.00","system":"readv2"},{"code":"F14..11","system":"readv2"},{"code":"G662.00","system":"readv2"},{"code":"G671000","system":"readv2"},{"code":"F144000","system":"readv2"},{"code":"ZS42400","system":"readv2"},{"code":"G664.00","system":"readv2"},{"code":"G660.00","system":"readv2"},{"code":"G671.00","system":"readv2"},{"code":"G65..00","system":"readv2"},{"code":"F144200","system":"readv2"},{"code":"G65y.00","system":"readv2"},{"code":"G67..00","system":"readv2"},{"code":"G67z.00","system":"readv2"},{"code":"F144z00","system":"readv2"},{"code":"G64z300","system":"readv2"},{"code":"Gyu6400","system":"readv2"},{"code":"F144.00","system":"readv2"},{"code":"L440100","system":"readv2"},{"code":"G6...00","system":"readv2"},{"code":"F14y.00","system":"readv2"},{"code":"BBbW.00","system":"readv2"},{"code":"Gyu6A00","system":"readv2"},{"code":"G641.11","system":"readv2"},{"code":"G6z..00","system":"readv2"},{"code":"G65z.00","system":"readv2"},{"code":"G64..12","system":"readv2"},{"code":"G641.00","system":"readv2"},{"code":"7004300","system":"readv2"},{"code":"Gyu6.00","system":"readv2"},{"code":"1477.00","system":"readv2"},{"code":"F14..00","system":"readv2"},{"code":"G6y..00","system":"readv2"},{"code":"G640000","system":"readv2"},{"code":"G640.00","system":"readv2"},{"code":"G671z00","system":"readv2"},{"code":"G64z.00","system":"readv2"},{"code":"G65z100","system":"readv2"},{"code":"F143.00","system":"readv2"},{"code":"G67y.00","system":"readv2"},{"code":"F146.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-neurological-disorders-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-neurological-disorders-elixhauser-primary-care-cereb---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-neurological-disorders-elixhauser-primary-care-cereb---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-neurological-disorders-elixhauser-primary-care-cereb---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
