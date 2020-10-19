CREATE TABLE wta_matches_2018(
   match_id 	      INTEGER(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
   tourney_id         VARCHAR(32) NOT NULL
  ,tourney_name       VARCHAR(26) NOT NULL
  ,surface            VARCHAR(5) NOT NULL
  ,draw_size          INTEGER  NOT NULL
  ,tourney_level      VARCHAR(2) NOT NULL
  ,tourney_date       DATE  NOT NULL
  ,match_num          INTEGER  NOT NULL
  ,winner_id          INTEGER  NOT NULL
  ,winner_seed        INTEGER 
  ,winner_entry       VARCHAR(2)
  ,winner_name        VARCHAR(30) NOT NULL
  ,winner_hand        VARCHAR(1) NOT NULL
  ,winner_ht          INTEGER 
  ,winner_ioc         VARCHAR(3) NOT NULL
  ,winner_age         NUMERIC(13,10) NOT NULL
  ,winner_rank        INTEGER 
  ,winner_rank_points INTEGER 
  ,loser_id           INTEGER  NOT NULL
  ,loser_seed         INTEGER 
  ,loser_entry        VARCHAR(2)
  ,loser_name         VARCHAR(30) NOT NULL
  ,loser_hand         VARCHAR(1)
  ,loser_ht           INTEGER 
  ,loser_ioc          VARCHAR(3) NOT NULL
  ,loser_age          NUMERIC(13,10) NOT NULL
  ,loser_rank         INTEGER 
  ,loser_rank_points  INTEGER 
  ,score              VARCHAR(20) NOT NULL
  ,best_of            INTEGER  NOT NULL
  ,round              VARCHAR(4) NOT NULL
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