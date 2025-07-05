INSERT INTO genres ("name")
VALUES ('Шансон'), ('Блюз'), ('Фолк'), ('Классика');

INSERT INTO singers ("name")
VALUES ('Иванов Иван'), ('Крутая Плесень'), ('Синий Дым'), ('Романовский'), ('Haggard');

INSERT INTO genresinger ("genre_id", "singer_id")
VALUES ('1', '3'), ('2', '2'), ('3', '1'), ('3', '5'), ('4', '4'); 

INSERT INTO albums ("name", "album_year")
VALUES ('Альбом 1', '2017'), ('Альбом 2', '2018'), ('Альбом 3', '2019'), ('Альбом 4', '2020'), ('Альбом 5', '2021');

INSERT INTO tracks ("name", "duration", "album_id")
VALUES ('My own', '222', '1'), ('Own my', '212', '2'), ('My', '296', '3'), ('Oh my God', '171', '4'), ('Myself', '245', '5'), ('By myself', '365', '1'),
('Bemy self', '215', '2'), ('Myself by', '272', '3'), ('By myself by', '412', '4'), ('Beemy', '145', '5'), ('Premyne', '356', '5');

INSERT INTO collections ("name", "collection_year")
VALUES ('Collection-18', '2018'), ('Collection-19', '2019'), ('Collection-23', '2023'), ('Collection-24', '2024'); 

INSERT INTO collectiontrack  ("collection_id", "track_id")
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (1, 5), (2, 6), (3, 7), (4, 8), (1, 9), (2, 10), (3, 11), (4, 1), (1, 2), (2, 3), (3, 4), (4, 5);

INSERT INTO singeralbum (singer_id, album_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5);
