CREATE TABLE players(
   player_id    INTEGER  NOT NULL PRIMARY KEY 
  ,first_name   VARCHAR(31)
  ,last_name    VARCHAR(35) NOT NULL
  ,hand         VARCHAR(1)
  ,birth_date   INTEGER 
  ,country_code VARCHAR(3)
);