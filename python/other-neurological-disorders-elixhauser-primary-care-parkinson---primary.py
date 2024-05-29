# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"F130300","system":"readv2"},{"code":"F124.00","system":"readv2"},{"code":"Fyu2100","system":"readv2"},{"code":"147F.00","system":"readv2"},{"code":"F123.00","system":"readv2"},{"code":"F12z.00","system":"readv2"},{"code":"Eu02300","system":"readv2"},{"code":"F12..00","system":"readv2"},{"code":"A94y100","system":"readv2"},{"code":"F13..11","system":"readv2"},{"code":"F121.00","system":"readv2"},{"code":"2994.00","system":"readv2"},{"code":"Fyu2200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-neurological-disorders-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-neurological-disorders-elixhauser-primary-care-parkinson---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-neurological-disorders-elixhauser-primary-care-parkinson---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-neurological-disorders-elixhauser-primary-care-parkinson---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
