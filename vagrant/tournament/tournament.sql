-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

\c vagrant
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament
CREATE TABLE players (
	id_number serial primary key,
	name text,
	win int,
	lose int
);

CREATE TABLE matches (
	match_id_number serial,
	winner  text,
	loser text
);