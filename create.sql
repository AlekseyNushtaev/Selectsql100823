CREATE TABLE IF NOT EXISTS album (
album_id SERIAL PRIMARY KEY,
name VARCHAR(60),
release_year INTEGER CHECK (release_year < 2024)
);

CREATE TABLE IF NOT EXISTS singer (
singer_id SERIAL PRIMARY KEY,
name VARCHAR(60)
);


CREATE TABLE IF NOT EXISTS genre (
genre_id SERIAL PRIMARY KEY,
name VARCHAR(60)
);

CREATE TABLE IF NOT EXISTS collection (
collection_id SERIAL PRIMARY KEY,
name VARCHAR(60),
release_year INTEGER CHECK (release_year < 2024)
);

CREATE TABLE IF NOT EXISTS track (
track_id SERIAL PRIMARY KEY,
name VARCHAR(60),
duration TIME,
album_id INTEGER REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS track_collection (
	track_id INTEGER REFERENCES track(track_id),
	collection_id INTEGER REFERENCES collection(collection_id),
	CONSTRAINT t_c PRIMARY KEY (track_id, collection_id)
);

CREATE TABLE IF NOT EXISTS singer_album (
	singer_id INTEGER REFERENCES singer(singer_id),
	album_id INTEGER REFERENCES album(album_id),
	CONSTRAINT s_a PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS singer_genre (
	singer_id INTEGER REFERENCES singer(singer_id),
	genre_id INTEGER REFERENCES genre(genre_id),
	CONSTRAINT s_g PRIMARY KEY (singer_id, genre_id)
);