import sys
import logging
import rds_config
import pymysql
import os

#rds settings used 
rds_host = "mysqlfoobar.cp3f9znc6mlc.us-east-2.rds.amazonaws.com" 
usrname = rds_config.db_username 
password = rds_config.db_password 
db_name = rds_config.db_name


logger = logging.getLogger() 
logger.setLevel(logging.INFO)

try:
    conn = pymysql.connect(rds_host, user=usrname, passwd=password, db=db_name, connect_timeout=5)
except pymysql.MySQLError as e:
    logger.error("ERROR: Unexpected error: Could not connect to MySQL instance.") 
    logger.error(e) 
    sys.exit()

logger.info("SUCCESS: Connection to RDS MySQL instance succeeded")

def handler(event, context):
    """ 
    The below function fetches content from MySQL RDS instance
    """

    create_count = 0
    item_count = 0
    
    with conn.cursor() as cur:
      

        sql_filenames = os.listdir("./SQL_Scripts")
        for file_name in sql_filenames:
            if(file_name.startswith("create")):
                file_path =  os.path.join(".","SQL_Scripts",file_name)
                with open(file_path, 'r', encoding='utf8', errors='ignore') as f:
                    logger.info(f'Reading file: {file_path}')
                    for line in f:
                        cur.execute(line) 
                        # logger.info(line)
                create_count += 1
        logger.info(f'Created {create_count} tables')

        for file_name in sql_filenames:
            item_count = 0
            if(file_name.startswith("insert")):
                file_path =  os.path.join(".","SQL_Scripts",file_name)
                with open(file_path, 'r', encoding='utf8', errors='ignore') as f:
                    logger.info(f'Reading file: {file_path}')
                    for line in f:
                        cur.execute(line)
                        item_count += 1
                        # logger.info(line)
                logger.info(f'Added {create_count} items to the table')


        conn.commit()

    return "Successfully executed the queries in ./SQL_Scripts"