INSERT INTO genre(genre_title)
VALUES ('Rock'),
       ('Rap'),
       ('Electronic');


INSERT INTO singer(singer_name)
VALUES ('The Generic'),
       ('DR. G.E.N'),
       ('John Gen'),
       ('G3n3r1c');

INSERT INTO genre_singer(genre_id, singer_id)
VALUES (1, 1),
       (2, 2),
       (1, 3),
       (3, 4);


INSERT INTO album(release_year, album_title)
VALUES ('2019-04-30', 'The Generic'), 
       ('2021-10-19', '2002'), 
       ('2020-04-08', 'Coloured Album'), 
       ('2019-01-01', 'Paradise'), 
       ('2018-03-23', 'Rand0m Acc3ss M3m0r13s');

INSERT INTO singer_album(singer_id, album_id)
VALUES (1, 1),
       (2, 2),
       (1, 3),
       (3, 4),
       (4, 5);


INSERT INTO track(album_id, duration, track_title)
VALUES (1, 186, 'Im So Tired'),
       (1, 267, 'While I play my guitar'), 
       (1, 203, 'Birthday'),
       (2, 160, 'My Crew'),   
       (2, 176, 'Still G.E.N'),
       (3, 210, 'My Generation'),  
       (3, 023, 'My Generation(solo only)'), 
       (4, 473, 'For Whom the Bell Tolls'),
       (4, 380, 'The gothic ballad'),
       (5, 198, 'M0th3rb0ard'),
       (5, 224, 'C0ntact'),
       (5, 247, 'G3t Lucky');


INSERT INTO compilation(release_year, compilation_title)
VALUES ('2018-11-30', 'Covers'),
       ('2019-11-30', '2019 Top Charts'),
       ('2020-11-30', 'Best of The Generic '),
       ('2021-11-30', '2021 Top Charts');

INSERT INTO compilation_track(compilation_id, track_id)
VALUES (1, 10),
       (1, 11), 
       (1, 12),
       (2, 2),
       (2, 8),
       (2, 12),
       (3, 6),
       (3, 2),
       (3, 3),
       (3, 1),
       (4, 4),
       (4, 2),
       (4, 12);