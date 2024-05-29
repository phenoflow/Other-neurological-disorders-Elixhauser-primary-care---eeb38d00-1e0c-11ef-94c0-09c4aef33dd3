# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"P117z00","system":"readv2"},{"code":"P102.00","system":"readv2"},{"code":"F151z00","system":"readv2"},{"code":"P118.00","system":"readv2"},{"code":"F151.00","system":"readv2"},{"code":"P10..00","system":"readv2"},{"code":"P117.00","system":"readv2"},{"code":"P11y.00","system":"readv2"},{"code":"P10y.00","system":"readv2"},{"code":"P10z.00","system":"readv2"},{"code":"F151200","system":"readv2"},{"code":"P118z00","system":"readv2"},{"code":"P100z00","system":"readv2"},{"code":"P102z00","system":"readv2"},{"code":"P103.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-neurological-disorders-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["spinal-other-neurological-disorders-elixhauser-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["spinal-other-neurological-disorders-elixhauser-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["spinal-other-neurological-disorders-elixhauser-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
