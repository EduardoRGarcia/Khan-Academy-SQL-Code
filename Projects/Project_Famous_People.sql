/*table of famous people*/
CREATE TABLE famous_people (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
        married_to INTEGER);
    
INSERT INTO famous_people (fullname, married_to) VALUES ("Joe Smo","4");
INSERT INTO famous_people (fullname,  married_to) VALUES ("Derek Lo", "5");
INSERT INTO famous_people (fullname,  married_to) VALUES ("Jesus Jo", "6");
INSERT INTO famous_people (fullname,  married_to) VALUES ("Jannel Smo", "1");
INSERT INTO famous_people (fullname,  married_to) VALUES ("Jessica Lo", "2");
INSERT INTO famous_people (fullname,  married_to) VALUES ("Krista Jo", "3");

/* List of movies*/
CREATE TABLE movie_stars (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Movie_name TEXT,
    movie_star_id INTEGER);
INSERT INTO movie_stars (Movie_name, movie_star_id) VALUES ("The Happening", "1");
INSERT INTO movie_stars (Movie_name, movie_star_id) VALUES ("Closer", "3");
INSERT INTO movie_stars (Movie_name, movie_star_id) VALUES ("The Return", "1");
INSERT INTO movie_stars (Movie_name, movie_star_id) VALUES ("Christmas Miracle", "2");
INSERT INTO movie_stars (Movie_name, movie_star_id) VALUES ("The End", "1");
INSERT INTO movie_stars (Movie_name, movie_star_id) VALUES ("Another Love Story", "2");

/*table about song names and home state*/
CREATE TABLE singer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    song_name TEXT,
    home_state TEXT,
    singer_id INTEGER);
insert into singer (song_name, home_state, singer_id) values ("Hello", "NY", "4");
insert into singer (song_name, home_state, singer_id) values ("Goodbye", "NY", "4");
insert into singer (song_name, home_state, singer_id) values ("Nevermind", "NY", "4");
insert into singer (song_name, home_state, singer_id) values ("Here Again", "CA", "5");
insert into singer (song_name, home_state, singer_id) values ("Leaving Again", "CA", "5");
insert into singer (song_name, home_state, singer_id) values ("Hello New World", "CA", "5");
insert into singer (song_name, home_state, singer_id) values ("What comes next", "KA", "6");

/*Query to find which famous people are married to who*/

SELECT
famous_people.fullname,
partner.fullname
FROM famous_people
    JOIN famous_people partner
    ON famous_people.married_to = partner.id;
    
/*which famous people where in which movies*/
SELECT 
famous_people.fullname,
movie_stars.Movie_name
FROM famous_people
    LEFT JOIN movie_stars
    ON famous_people.id = movie_stars.movie_star_id;

/*What famous people are singers and what song and home state they are from*/
SELECT
famous_people.fullname as name,
singer.song_name,
singer.home_state 
FROM famous_people
    JOIN singer
    ON famous_people.id = singer.singer_id
    
    



