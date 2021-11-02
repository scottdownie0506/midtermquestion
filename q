import csv
import pandas

with open('netflixdata.csv') as f:
    data = f.readline()

cleaned_data = [x if x.startswith('Profile') else 'Charlie' + x for x in data.split(' Charlie')]

data = []
for row in csv.reader(cleaned_data, quotechar='"', delimiter=',', quoting=csv.QUOTE_ALL, skipinitialspace=True):
    data.append(row)

headers = data[0]
data = data[1:]
df = pandas.DataFrame(data, columns=headers)
df
