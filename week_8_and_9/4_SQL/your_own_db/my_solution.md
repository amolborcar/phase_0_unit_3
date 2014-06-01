<!-- ## Show the terminal output here.  -->

-- Create/Initialize the database
sqlite nba.db

-- Create the teams table
CREATE TABLE teams (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(64) NOT NULL,
city VARCHAR(64) NOT NULL,
wins INTEGER,
losses INTEGER,
coach VARCHAR(64) NOT NULL
);

-- Create the players table
CREATE TABLE players (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(64) NOT NULL,
last_name VARCHAR(64) NOT NULL,
age INTEGER NOT NULL,
number INTEGER NOT NULL,
position VARCHAR(64) NOT NULL,
team_id INTEGER NOT NULL,
FOREIGN KEY(team_id) REFERENCES teams(id)
);

-- Insert a team into the teams table
INSERT INTO teams
(name, city, wins, losses, coach)
VALUES
('Spurs', 'San Antonio', 62, 20, 'Gregg Popovich');

-- Insert 10 players into the players table
INSERT INTO players
(first_name, last_name, age, number, position, team_id)
VALUES
('Tim', 'Duncan', 38, 21, 'PF', 1),
('Tony', 'Parker', 32, 9, 'PG', 1),
('Manu', 'Ginobili', 36, 20, 'SG', 1),
('Kawhi', 'Leonard', 22, 2, 'SF', 1),
('Danny', 'Green', 26, 4, 'SG', 1),
('Boris', 'Diaw', 32, 33, 'PF', 1),
('Tiago', 'Splitter', 29, 22, 'C', 1),
('Patty', 'Mills', 25, 8, 'PG', 1),
('Cory', 'Joseph', 22, 5, 'PG', 1),
('Matt', 'Bonner', 34, 15, 'PF', 1);

-- Select statement that joins tables

SELECT first_name, last_name, age, number, position, coach
FROM players join teams on players.team_id = teams.id;