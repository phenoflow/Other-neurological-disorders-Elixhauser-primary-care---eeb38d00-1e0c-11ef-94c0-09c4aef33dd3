# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"G60X.00","system":"readv2"},{"code":"G66..13","system":"readv2"},{"code":"G66..11","system":"readv2"},{"code":"Pyu0400","system":"readv2"},{"code":"F12X.00","system":"readv2"},{"code":"G66..12","system":"readv2"},{"code":"L440000","system":"readv2"},{"code":"G61X000","system":"readv2"},{"code":"G66..00","system":"readv2"},{"code":"G62..00","system":"readv2"},{"code":"Gyu6F00","system":"readv2"},{"code":"Eu01z00","system":"readv2"},{"code":"G6W..00","system":"readv2"},{"code":"F151000","system":"readv2"},{"code":"Eu00z00","system":"readv2"},{"code":"F11X.00","system":"readv2"},{"code":"F25X.00","system":"readv2"},{"code":"Eu00z11","system":"readv2"},{"code":"FyuAG00","system":"readv2"},{"code":"P110z00","system":"readv2"},{"code":"P118000","system":"readv2"},{"code":"P100.00","system":"readv2"},{"code":"G61X100","system":"readv2"},{"code":"Fyu5900","system":"readv2"},{"code":"Gyu6G00","system":"readv2"},{"code":"Fyu2900","system":"readv2"},{"code":"P110000","system":"readv2"},{"code":"Eu02z00","system":"readv2"},{"code":"G61X.00","system":"readv2"},{"code":"P100000","system":"readv2"},{"code":"G68W.00","system":"readv2"},{"code":"Fyu4200","system":"readv2"},{"code":"Gyu6E00","system":"readv2"},{"code":"F21X.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-neurological-disorders-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-neurological-disorders-elixhauser-primary-care-unspec---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-neurological-disorders-elixhauser-primary-care-unspec---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-neurological-disorders-elixhauser-primary-care-unspec---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
