-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here
-- prep: launch psql in command line.
-- then type: CREATE DATABASE tournament;
-- \i tournament.sql
-- \q

\c tournament;

CREATE TABLE players (
	id_number serial primary key,
	name varchar (255),
	win int,
	lose int
);

CREATE TABLE matches (
	match_id_number serial primary key,
	winner  int references players(id_number),
	loser int references players(id_number)
);