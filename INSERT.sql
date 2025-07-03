INSERT INTO genres ("name")
VALUES ('Европоп'), ('Камерная музыка'), ('Психоделический фолк');

INSERT INTO genres ("name")
VALUES ('Средневековый металл');

INSERT INTO singers ("name")
VALUES ('Thomas Anders'), ('Франц Шуберт'), ('Феликс Мендельсон'), ('Tim Buckley'), ('Lucina'), ('In Extremo'), ('Haggard');

SELECT * FROM singers;

INSERT INTO genresinger ("genre_id", "singer_id")
VALUES ('1', '1'), ('2', '2'), ('2', '3'), ('3', '4'), ('3', '5'), ('4', '6'), ('4', '7'); 

INSERT INTO albums ("name", "album_year")
VALUES ('Pures Leben', '2017'), ('Goodbuy and Hello', '1967'), ('Quid Pro Quo', '2016');

INSERT INTO tracks ("name", "duration", "album_id")
VALUES ('Sternenregen', '222', '1'), ('Feuerwerk', '212', '1'), ('Hallucination', '296', '2'), ('Morning Glory', '171', '2'),
('Stortebeker', '215', '3'), ('Moonshiner', '272', '3');

INSERT INTO tracksinger ("track_id", "singer_id")
VALUES ('1', '1'), ('2', '1'), ('3', '2'), ('4', '2'), ('5', '3'), ('6', '3');

INSERT INTO collections ("name", "collection_year")
VALUES ('Collection-18', '2018'), ('Collection-19', '2019'), ('Collection-23', '2023'), ('Collection-24', '2024'); 

INSERT INTO trackcollection ("track_id", "collection_id")
VALUES (1, 1), (1, 4), (2, 2), (2, 4), (3, 1), (3, 2), (3, 3), (4, 1), (4, 3), (4, 4), (5, 2), (5, 3), (5, 4), (6, 1), (6, 2), (6, 3);


INSERT INTO tracks ("name", "duration", "album_id")
VALUES ('Love Of My Own', 523, 1);

INSERT INTO albums ("name", album_year)
VALUES ('Kompass zur Sonne', 2020);

INSERT INTO albums ("name", album_year)
VALUES ('Zooom', 2020);

INSERT INTO tracks ("name", duration, album_id)
VALUES ('Gehören wir dazu', 153, 5);

INSERT INTO tracks ("name", duration, album_id)
VALUES ('Lügenpack', 223, 4);

INSERT INTO singeralbum (singer_id, album_id)
VALUES (1, 1), (4, 2), (6, 3), (6, 4), (1, 5);

