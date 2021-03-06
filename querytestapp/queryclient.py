import sys 
import logging 
import rds_config 
import pymysql 

#rds settings 
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

    item_count = 0
    
    with conn.cursor() as cur:

        cur.execute('select * from tennisPlayers') 
        for row in cur:

            item_count += 1
            logger.info(row)
         
        conn.commit()

    return "Retrieved %d items from tennisPlayers RDS MySQL table" % (item_count)