CREATE TABLE PLAYERS_D (
  Player_id VARCHAR(9) NOT NULL PRIMARY KEY,
  Player_name VARCHAR(55) NOT NULL
);

CREATE TABLE PLAYERS_STATS_F (
  player_id VARCHAR(9) NOT NULL,
  playing_season INT NOT NULL,
  position VARCHAR(10) NOT NULL,
  age INT NOT NULL,
  team VARCHAR(5) NOT NULL,
  games_played INT NOT NULL,
  minutes_played FLOAT NOT NULL,
  field_goals_made FLOAT NOT NULL,
  field_goals_percentage FLOAT NOT NULL,
  three_points_made FLOAT NOT NULL,
  three_points_attempted FLOAT NOT NULL,
  three_point_percentage FLOAT NOT NULL,
  effective_field_goal_percentage FLOAT NOT NULL,
  free_throw_percentage FLOAT NOT NULL,
  total_rebounds FLOAT NOT NULL,
  assists FLOAT NOT NULL,
  steals FLOAT NOT NULL,
  blocks FLOAT NOT NULL,
  turnovers FLOAT NOT NULL,
  points FLOAT NOT NULL,
  assist_to_turnover_ratio FLOAT NOT NULL,
  PRIMARY KEY (player_id, playing_season),
  CONSTRAINT fk_player_id_stats
    FOREIGN KEY (player_id)
      REFERENCES PLAYERS_D(player_id)
);

CREATE TABLE PLAYERS_SALARY_F (
  Player_id VARCHAR(9) NOT NULL,
  playing_season INT NOT NULL,
  Salary FLOAT NOT NULL,
  PRIMARY KEY (player_id, playing_season),
  CONSTRAINT fk_player_id_salary
    FOREIGN KEY (player_id)
      REFERENCES PLAYERS_D(player_id)
);


CREATE TABLE players_category_reporting (

  cluster varchar(10) NOT NULL, 
  player_id VARCHAR(9) NOT NULL,
  player_positions VARCHAR(100) NOT NULL,	
  no_of_games_played INT NOT NULL,
  no_of_minutes_played FLOAT NOT NULL,
  field_goals_percentage FLOAT NOT NULL,
  three_point_percentage FLOAT NOT NULL,
  effective_field_goal_percentage FLOAT NOT NULL,
  free_throw_percentage FLOAT NOT NULL,
  total_rebounds FLOAT NOT NULL,
  no_of_assists FLOAT NOT NULL,
  no_of_steals FLOAT NOT NULL,
  no_of_blocks FLOAT NOT NULL,
  no_of_turnovers FLOAT NOT NULL,
  points FLOAT NOT NULL,
  player_salary FLOAT NOT NULL,
  tier varchar(20) NOT NULL,	
  PRIMARY KEY (player_id)
  
  );
  
  
  
  CREATE TABLE nba_per_year_salary_cap (

  playing_season INT NOT NULL, 
  Salary FLOAT NOT NULL,	
  PRIMARY KEY (playing_season)
  
  );