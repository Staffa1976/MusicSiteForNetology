SELECT name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks) ;

SELECT name, duration FROM tracks
WHERE duration >= 210;

SELECT name, collection_year FROM collections
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT * FROM singers
WHERE name NOT LIKE '% %';

SELECT name FROM tracks
WHERE name ILIKE '%my%' OR name ILIKE '%мой%';

SELECT name n, count(singer_id) FROM genres g
LEFT JOIN genresinger g2 ON g.genre_id = g2.genre_id
GROUP BY g."name"
;

SELECT a."name", count(track_id ) FROM albums a
LEFT JOIN tracks t ON a.album_id = t.album_id
WHERE album_year BETWEEN 2019 AND 2020
GROUP BY a."name" 
;

SELECT a."name", AVG(duration) FROM albums a 
LEFT JOIN tracks t ON a.album_id = t.album_id
GROUP BY a."name";

SELECT s."name", s2.album_id, a.album_year   FROM singers s
left JOIN singeralbum s2   ON s.singer_id = s2.singer_id
LEFT JOIN albums a ON s2.album_id = a.album_id
WHERE a.album_year != 2020
; 

--Thomas Anders
SELECT c."name" FROM collections c 
LEFT JOIN trackcollection t ON c.collection_id = t.collection_id
LEFT JOIN tracksinger t2 ON t.track_id = t2.track_id
JOIN singers s ON t2.singer_id = 1
GROUP BY c."name"

;


