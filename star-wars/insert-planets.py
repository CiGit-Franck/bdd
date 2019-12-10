import csv

filename = './csv/planets.csv'

# Première lecture pour les climats
climates = {}
file_climat = open('./insert-climates.sql', 'w')

with open(filename) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=';')
    line_count = 0
    climate_id = 1
    for row in csv_reader:
        # On ignore la première ligne d'en-tête.
        if line_count != 0:
            # print(row)
            climates_line = row[4].split(',')
            for climate_name in climates_line :
                climate_name = climate_name.strip()
                if climate_name not in climates:
                    climates[climate_name] = climate_id
                    file_climat.write('insert into climates (id, climate_name) values ({climate_id}, {climate_name});')
                    climate_id += 1

        line_count += 1
file_climat.close
