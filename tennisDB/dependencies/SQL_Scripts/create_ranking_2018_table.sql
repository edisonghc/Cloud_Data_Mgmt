CREATE TABLE ranking_2018(
   rank_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   ranking_date   DATE  NOT NULL
  ,ranking        INTEGER  NOT NULL
  ,player_id      INTEGER  NOT NULL
  ,ranking_points INTEGER  NOT NULL
  ,tours          INTEGER  NOT NULL
);