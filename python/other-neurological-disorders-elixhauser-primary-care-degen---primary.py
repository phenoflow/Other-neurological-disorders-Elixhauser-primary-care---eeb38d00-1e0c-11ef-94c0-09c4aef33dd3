# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"F11x400","system":"readv2"},{"code":"F142z00","system":"readv2"},{"code":"F103000","system":"readv2"},{"code":"F103100","system":"readv2"},{"code":"F14y100","system":"readv2"},{"code":"Eu02z13","system":"readv2"},{"code":"F103z00","system":"readv2"},{"code":"F102100","system":"readv2"},{"code":"Eu00113","system":"readv2"},{"code":"F11x.00","system":"readv2"},{"code":"Eu00012","system":"readv2"},{"code":"F11x200","system":"readv2"},{"code":"F11y.00","system":"readv2"},{"code":"F11z.00","system":"readv2"},{"code":"F11xz00","system":"readv2"},{"code":"F11x900","system":"readv2"},{"code":"F11x500","system":"readv2"},{"code":"F103.00","system":"readv2"},{"code":"F11yz00","system":"readv2"},{"code":"F11..00","system":"readv2"},{"code":"F11x700","system":"readv2"},{"code":"F142.00","system":"readv2"},{"code":"F11x600","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-neurological-disorders-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-neurological-disorders-elixhauser-primary-care-degen---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-neurological-disorders-elixhauser-primary-care-degen---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-neurological-disorders-elixhauser-primary-care-degen---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
