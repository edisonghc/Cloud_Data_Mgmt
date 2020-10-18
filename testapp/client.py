import sys
import logging
import rds_config
import pymysql

#rds settings used 
rds_host = "rds-instance-endpoint" 
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
        cur.execute("create table tennisPlayers ( playerID int NOT NULL, Name varchar(255) NOT NULL, Points int, PRIMARY KEY (playerID ))") 
        cur.execute('insert into tennisPlayers (EmpID, Name) values(1, "Roger", 50 )') 
        cur.execute('insert into tennisPlayers (EmpID, Name) values(2, "Ben", 85)') 
        cur.execute('insert into tennisPlayers (EmpID, Name) values(3, "Mark", 100)') 
        cur.execute('insert into tennisPlayers (EmpID, Name) values(3, "Rafael", 120)') 
        conn.commit()

    return "Added %d items to tennisPlayers RDS MySQL table" %(item_count)