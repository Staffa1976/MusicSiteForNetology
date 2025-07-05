CREATE TABLE IF NOT EXISTS  Genres (
genre_id SERIAL PRIMARY KEY,
name VARCHAR(50) UNIQUE
);

CREATE TABLE IF NOT EXISTS Singers (
singer_id SERIAL PRIMARY KEY,
name VARCHAR(255) UNIQUE
);

CREATE TABLE IF NOT EXISTS GenreSinger(
genre_id INTEGER REFERENCES Genres(genre_id),
singer_id INTEGER REFERENCES Singers(singer_id),
CONSTRAINT pk PRIMARY KEY (genre_id, singer_id)
);


CREATE TABLE IF NOT EXISTS Albums (
album_id SERIAL PRIMARY KEY,
name VARCHAR(100),
album_year INTEGER 
);

CREATE TABLE IF NOT EXISTS Tracks (
track_id SERIAL PRIMARY KEY,
name VARCHAR(255) UNIQUE,
duration INTEGER,
album_id INTEGER NOT NULL REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS SingerAlbum(
singer_id INTEGER REFERENCES Singers(singer_id),
album_id INTEGER REFERENCES Albums(album_id),
CONSTRAINT tpk PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Collections (
collection_id SERIAL PRIMARY KEY,
name VARCHAR(100),
collection_year INTEGER 
);

CREATE TABLE IF NOT EXISTS CollectionTrack(
collection_id INTEGER REFERENCES Collections(collection_id),
track_id INTEGER REFERENCES Tracks (track_id),
CONSTRAINT thpk PRIMARY KEY (collection_id, track_id)
);

