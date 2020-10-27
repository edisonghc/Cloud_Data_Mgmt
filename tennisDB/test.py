import os

sql_filenames = os.listdir("./SQL_Scripts")
for file_name in sql_filenames:
    if(file_name.startswith("create")):
        file_path =  os.path.join(".","SQL_Scripts",file_name)
        with open(file_path, 'r', encoding='utf8', errors='ignore') as f:
            logger.info(f'Reading file: {file_path}')
            for line in f:
                cur.execute(line) 
                logger.info(row)

for file_name in sql_filenames:
    if(file_name.startswith("insert")):
        file_path =  os.path.join(".","SQL_Scripts",file_name)
        with open(file_path, 'r', encoding='utf8', errors='ignore') as f:
            logger.info(f'Reading file: {file_path}')
            for line in f:
                cur.execute(line) 
                logger.info(row)


# conn.commit()