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
 
SELECT (SELECT genre_title FROM genre WHERE id = genre_id), COUNT(singer_id)  
  FROM genre_singer
group by genre_id;

SELECT count(track_title)
  FROM track
 WHERE album_id IN (SELECT id FROM album WHERE release_date  BETWEEN '2019-01-01' AND '2021-01-01');
 
SELECT (SELECT album_title FROM album WHERE id = album_id), AVG(duration) 
  FROM track
group by album_id;

SELECT (SELECT singer_name FROM singer WHERE id = singer_id)  
  FROM singer_album
 WHERE singer_id NOT IN (SELECT singer_id FROM singer_album WHERE album_id IN (SELECT id FROM album WHERE release_date  BETWEEN '2020-01-01' AND '2021-01-01'));
 
SELECT compilation_title 
  FROM compilation 
 WHERE id IN (SELECT compilation_id FROM compilation_track WHERE track_id IN (SELECT id FROM track WHERE album_id IN (SELECT album_id FROM singer_album WHERE singer_id = 1)));