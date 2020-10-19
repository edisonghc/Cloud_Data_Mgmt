CREATE TABLE wta_qual_matches(
   qual_id 	      INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   tourney_id         VARCHAR(24) NOT NULL
  ,tourney_name       VARCHAR(31) NOT NULL
  ,surface            VARCHAR(6) NOT NULL
  ,draw_size          INTEGER  NOT NULL
  ,tourney_level      VARCHAR(3) NOT NULL
  ,tourney_date       DATE  NOT NULL
  ,match_num          INTEGER  NOT NULL
  ,winner_id          INTEGER  NOT NULL
  ,winner_seed        INTEGER 
  ,winner_entry       VARCHAR(3)
  ,winner_name        VARCHAR(34) NOT NULL
  ,winner_hand        VARCHAR(1)
  ,winner_ht          INTEGER 
  ,winner_ioc         VARCHAR(3) NOT NULL
  ,winner_age         NUMERIC(13,10)
  ,winner_rank        INTEGER 
  ,winner_rank_points INTEGER 
  ,loser_id           INTEGER  NOT NULL
  ,loser_seed         INTEGER 
  ,loser_entry        VARCHAR(3)
  ,loser_name         VARCHAR(35) NOT NULL
  ,loser_hand         VARCHAR(1)
  ,loser_ht           INTEGER 
  ,loser_ioc          VARCHAR(3) NOT NULL
  ,loser_age          NUMERIC(13,10)
  ,loser_rank         INTEGER 
  ,loser_rank_points  INTEGER 
  ,score              VARCHAR(21)
  ,best_of            INTEGER  NOT NULL
  ,round              VARCHAR(3) NOT NULL
  ,minutes            INTEGER 
  ,w_ace              INTEGER 
  ,w_df               INTEGER 
  ,w_svpt             INTEGER 
  ,w_1stIn            INTEGER 
  ,w_1stWon           INTEGER 
  ,w_2ndWon           INTEGER 
  ,w_SvGms            INTEGER 
  ,w_bpSaved          INTEGER 
  ,w_bpFaced          INTEGER 
  ,l_ace              INTEGER 
  ,l_df               INTEGER 
  ,l_svpt             INTEGER 
  ,l_1stIn            INTEGER 
  ,l_1stWon           INTEGER 
  ,l_2ndWon           INTEGER 
  ,l_SvGms            INTEGER 
  ,l_bpSaved          INTEGER 
  ,l_bpFaced          INTEGER 
);