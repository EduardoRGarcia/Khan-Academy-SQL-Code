CREATE TABLE video_game_store (id INTEGER PRIMARY KEY, video_game TEXT, time_to_beat_min INTEGER, rating INTEGER, price INTEGER);


INSERT INTO video_game_store VALUES (1, "Halo 3", 480, 4.5, 60);
INSERT INTO video_game_store VALUES (2, "Halo 2", 480, 5, 30);
INSERT INTO video_game_store VALUES (3, "GOW", 600, 5, 70);
INSERT INTO video_game_store VALUES (4, "Halo 2", 480, 5, 30);
INSERT INTO video_game_store VALUES (5, "GOW2", 650, 4.8, 70);
INSERT INTO video_game_store VALUES (6, "Destiny", 300, 3.4, 20);
INSERT INTO video_game_store VALUES (7, "Destiny 2", 400, 3.9, 40);

SELECT 
*
FROM video_game_store;

SELECT

video_game, price

FROM video_game_store

ORDER BY price DESC;