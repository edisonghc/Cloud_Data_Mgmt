file_path = "./SQL_Scripts/create_players_table.sql"
with open(file_path, 'r', encoding='utf8', errors='ignore') as f:
    for line in f:
        print(line)
        
        # cur.execute(line) 
        # conn.commit()

# for file in sql_scripts_folder:
#   with ...