--Задание 2

SELECT name, duration FROM track
WHERE duration = (SELECT MAX(duration) FROM track);

SELECT name FROM track
WHERE duration >= '00:03:30';

SELECT name FROM collection
WHERE release_year BETWEEN 2018 AND 2020;

SELECT name FROM singer
WHERE name NOT LIKE '% %';

SELECT name FROM track
WHERE name LIKE '%мой%' OR name LIKE '%my%';

--Задание 3

SELECT g.name, COUNT(s.genre_id)  FROM genre g
JOIN singer_genre s ON g.genre_id = s.genre_id
GROUP BY g.name;

SELECT COUNT(t.name)  FROM track t
JOIN track_collection tc ON t.track_id = tc.track_id
JOIN collection c ON tc.collection_id = c.collection_id
WHERE c.release_year BETWEEN 2019 AND 2020;

SELECT a.name, AVG(t.duration) FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name;

SELECT name FROM singer
WHERE name NOT IN (
SELECT s.name FROM singer s
JOIN singer_album sa ON s.singer_id = sa.singer_id 
JOIN album a ON sa.album_id = a.album_id
WHERE a.release_year = 2020);

SELECT c.name FROM singer s
JOIN singer_album sa ON s.singer_id = sa.singer_id 
JOIN album a ON sa.album_id = a.album_id 
JOIN track t ON a.album_id = t.album_id
JOIN track_collection tc ON t.track_id = tc.track_id
JOIN collection c ON tc.collection_id = c.collection_id
WHERE s.name = 'Red Hot Chili Peppers'
GROUP BY c.name;

--Задание 4

SELECT a.name FROM singer s
JOIN singer_album sa ON s.singer_id = sa.singer_id 
JOIN album a ON sa.album_id = a.album_id 
WHERE s.name IN (
SELECT s.name FROM singer s
JOIN singer_genre sg ON s.singer_id = sg.singer_id 
GROUP BY s.name
HAVING COUNT(*) > 1);

SELECT t.name FROM track t
FULL JOIN track_collection tc ON t.track_id = tc.track_id
WHERE tc.collection_id IS NULL;

SELECT DISTINCT s.name FROM singer s
JOIN singer_album sa ON s.singer_id = sa.singer_id 
JOIN album a ON sa.album_id = a.album_id 
JOIN track t ON a.album_id = t.album_id
WHERE t.duration = (SELECT MIN(duration) FROM track);


SELECT a.name FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name
HAVING COUNT(*) = (
SELECT COUNT(*) FROM track
WHERE album_id = (SELECT album_id FROM track
GROUP BY album_id
ORDER BY COUNT(*)
LIMIT 1));