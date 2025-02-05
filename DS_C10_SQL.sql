use football_data;

# 1) Performance Analysis:- Which players scored the most goals in a season?

SELECT player_name_x, season, SUM(goals) AS total_goals FROM football_db
GROUP BY player_name_x, season
ORDER BY total_goals DESC
LIMIT 10;

# 2) Player Profile and Market Value:- What is the average market value of players grouped by their position?

SELECT position_x, AVG(market_value_in_eur) AS avg_market_value FROM football_db
GROUP BY position_x
ORDER BY avg_market_value DESC;

# 3) Team Comparison:- What is the total number of goals scored by home and away teams?

SELECT 
    SUM(home_club_goals) AS total_home_goals, 
    SUM(away_club_goals) AS total_away_goals
FROM football_db;

# 4) Attendance and Stadium Analysis:- Which stadium had the highest average attendance?

SELECT stadium, AVG(attendance) AS avg_attendance FROM football_db
GROUP BY stadium
ORDER BY avg_attendance DESC
LIMIT 1;

# 5) Referee Analysis:- Which referee officiated the most games?
SELECT referee, COUNT(DISTINCT game_id) AS games_officiated FROM football_db
GROUP BY referee
ORDER BY games_officiated DESC
LIMIT 5;

# 6) Substitution Patterns:- What is the average substitution minute for each team?

SELECT home_club_name, AVG(minute) AS avg_substitution_minute FROM football_db
WHERE minute IS NOT NULL
GROUP BY home_club_name
ORDER BY avg_substitution_minute;

# 7) Event Analysis:- What are the most common event types?

SELECT type_x, COUNT(*) AS event_count FROM football_db
GROUP BY type_x
ORDER BY event_count DESC;

# 8) Competition Analysis:- Which competition has the highest average goals per match?

SELECT competition_id_x, AVG(home_club_goals + away_club_goals) AS avg_goals FROM football_db
GROUP BY competition_id_x
ORDER BY avg_goals DESC
LIMIT 1;

# 9) Player Attributes and Demographics:- What is the average height of players for each position?

SELECT position_x, AVG(height_in_cm) AS avg_height FROM football_db
GROUP BY position_x
ORDER BY avg_height DESC;

# 10) Contract Management:- Which agent manages the most players?

SELECT agent_name, COUNT(DISTINCT player_id) AS player_count FROM football_db
GROUP BY agent_name
ORDER BY player_count DESC
LIMIT 1;


