SELECT name FROM track
WHERE name ~* '(my|^my | my^| my |мой|^мой | мой^| мой )';

SELECT COUNT(a.name)  FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN 2019 AND 2020;

SELECT a.name FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_id
HAVING COUNT(t.track_id) = (
SELECT COUNT(track_id) FROM track
GROUP BY album_id
ORDER BY COUNT(track_id)
LIMIT 1);