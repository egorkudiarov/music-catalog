CREATE TABLE IF NOT EXISTS genre(
    id SERIAL PRIMARY KEY,
    genre_title VARCHAR(64) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singer(
    id SERIAL PRIMARY KEY,
    singer_name VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_singer(
    id SERIAL PRIMARY KEY,
    genre_id INTEGER NOT NULL REFERENCES genre(id),
    singer_id INTEGER NOT NULL REFERENCES singer(id)
);

CREATE TABLE IF NOT EXISTS album(
    id SERIAL PRIMARY KEY,
    release_date DATE CHECK(release_date >= '2010-01-01') NOT NULL,
    album_title VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_album(
    id SERIAL PRIMARY KEY,
    singer_id INTEGER NOT NULL REFERENCES singer(id),
    album_id INTEGER NOT NULL REFERENCES album(id)  
);

CREATE TABLE IF NOT EXISTS track(
    id SERIAL PRIMARY KEY,
    album_id INTEGER NOT NULL REFERENCES album(id),
    duration INTEGER NOT NULL,
    track_title VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation(
    id SERIAL PRIMARY KEY,
    release_date DATE CHECK(release_date >= '2010-01-01') NOT NULL,
    compilation_title VARCHAR(128) NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation_track(
    id SERIAL PRIMARY KEY,
    compilation_id INTEGER NOT NULL REFERENCES compilation(id),
    track_id INTEGER NOT NULL REFERENCES track(id)  
    --to do, add comparison of album and compilation dates
);


