SELECT name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks) ;

SELECT name, duration FROM tracks
WHERE duration >= 210;

SELECT name, collection_year FROM collections
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT * FROM singers
WHERE name NOT LIKE '% %';

SELECT name FROM tracks
WHERE (string_to_array(LOWER(name), ' ') && ARRAY ['my'])
OR (string_to_array(LOWER(name), ' ') && ARRAY ['мой']);

SELECT name n, count(singer_id) FROM genres g
LEFT JOIN genresinger g2 ON g.genre_id = g2.genre_id
GROUP BY g."name"
;

SELECT count(track_id ) FROM albums a
LEFT JOIN tracks t ON a.album_id = t.album_id
WHERE album_year BETWEEN 2019 AND 2020
;

SELECT a."name", AVG(duration) FROM albums a 
LEFT JOIN tracks t ON a.album_id = t.album_id
GROUP BY a."name";

SELECT s."name" FROM singers s
WHERE s."name" NOT IN (
    SELECT s."name" FROM singers s 
    LEFT JOIN singeralbum s2 ON  s.singer_id = s2.singer_id
    LEFT JOIN albums a ON s2.album_id = a.album_id
    WHERE album_year = 2020);

--Романовский
SELECT c."name" FROM collections c
LEFT JOIN collectiontrack c2 ON c.collection_id = c2.collection_id
LEFT JOIN tracks t ON c2.track_id = t.track_id
LEFT JOIN albums a ON t.album_id = a.album_id
LEFT JOIN singeralbum s ON a.album_id = s.album_id
LEFT JOIN singers s2 ON s.singer_id = s2.singer_id
WHERE s2."name" = 'Романовский';




