DROP DATABASE IF EXISTS psandchill_music;

CREATE DATABASE psandchill_music;

USE psandchill_music;

CREATE TABLE song (
  ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  NAME VARCHAR(100) NOT NULL ,
  ARTIST VARCHAR(50) NOT NULL ,
  ALBUM VARCHAR(100) NOT NULL ,
  YEAR YEAR(4)
);

CREATE TABLE genre
(
  ID INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  GENRE VARCHAR(20) NOT NULL
);

CREATE TABLE song_genre
(
  SONG_ID INT(11) NOT NULL,
  GENRE_ID INT(11) NOT NULL,
  CONSTRAINT `PRIMARY` PRIMARY KEY (SONG_ID, GENRE_ID),
  CONSTRAINT song_genre_ibfk_1 FOREIGN KEY (SONG_ID) REFERENCES song (ID),
  CONSTRAINT song_genre_ibfk_2 FOREIGN KEY (GENRE_ID) REFERENCES genre (ID)
);
CREATE INDEX GENRE_ID ON song_genre (GENRE_ID);

INSERT INTO song(NAME, ARTIST, ALBUM, YEAR) VALUES
  ('My Song 1', 'My Artist 1', 'My Album 1', 1987),
  ('My Song 2', 'My Artist 2', 'My Album 2', 1934),
  ('My Song 3', 'My Artist 3', 'My Album 3', 1967),
  ('My Song 4', 'My Artist 4', 'My Album 4', 1998),
  ('My Song 5', 'My Artist 5', 'My Album 5', 2009),
  ('My Song 6', 'My Artist 6', 'My Album 6', 1999),
  ('My Song 7', 'My Artist 7', 'My Album 7', 1988),
  ('My Song 8', 'My Artist 8', 'My Album 8', 1989),
  ('My Song 9', 'My Artist 9', 'My Album 9', 1999),
  ('My Song 10', 'My Artist 10', 'My Album 10', 2001),
  ('My Song 11', 'My Artist 11', 'My Album 11', 1999),
  ('My Song 12', 'My Artist 12', 'My Album 12', 1999),
  ('My Song 13', 'My Artist 13', 'My Album 13', 1987),
  ('My Song 14', 'My Artist 14', 'My Album 14', 1987),
  ('My Song 15', 'My Artist 15', 'My Album 15', 1987),
  ('My Song 16', 'My Artist 16', 'My Album 16', 1987),
  ('My Song 17', 'My Artist 17', 'My Album 17', 1987),
  ('My Song 18', 'My Artist 18', 'My Album 18', 1987),
  ('My Song 19', 'My Artist 19', 'My Album 19', 1987),
  ('My Song 20', 'My Artist 20', 'My Album 20', 1987);

/*INSERT INTO genre*/

