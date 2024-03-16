SELECT track_title, duration 
  FROM track
 WHERE duration = (SELECT MAX(duration) FROM track);

SELECT track_title, duration 
  FROM track
 WHERE duration >= 210; 

SELECT compilation_title
  FROM compilation
 WHERE release_date BETWEEN '2018-01-01' AND '2021-01-01';

SELECT singer_name
  FROM singer
 WHERE singer_name NOT LIKE '% %';

SELECT track_title
  FROM track
 WHERE LOWER(track_title) LIKE '%my%';

SELECT genre_title, COUNT(singer_id) 
  FROM genre_singer
  JOIN genre ON genre_singer.genre_id = genre.id
 GROUP BY genre_title;

SELECT count(track_title)
  FROM track
  JOIN album ON track.album_id = album.id
 WHERE release_year BETWEEN '2019-01-01' AND '2021-01-01';
 
SELECT album_title, AVG(duration) 
  FROM track
  JOIN album ON track.album_id = album.id
 GROUP BY album_title;

SELECT singer_name 
  FROM singer_album
  JOIN singer ON singer.id = singer_album.singer_id
  JOIN  album ON  album.id = singer_album.album_id
 WHERE release_year NOT BETWEEN '2020-01-01' AND '2021-01-01';
 
SELECT distinct compilation_title 
  FROM compilation 
  JOIN compilation_track ON compilation_track.compilation_id = compilation.id  
  JOIN track ON track.id = compilation_track.track_id 
  JOIN singer_album ON singer_album.album_id = track.album_id
  JOIN singer ON singer.id = singer_album.singer_id 
 WHERE singer_id = 1;