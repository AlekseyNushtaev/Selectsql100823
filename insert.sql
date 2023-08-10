INSERT INTO singer
VALUES(1, 'Red Hot Chili Peppers'), (2, 'Lady Gaga'), (3, 'Linkin Park'), (4, '50 cent'), (5, 'Akon');

INSERT INTO genre
VALUES(1, 'Alternative rock'), (2, 'Funk'), (3, 'Rap metal'), (4, 'Rap'), (5, 'Pop');

INSERT INTO singer_genre
VALUES(1, 1), (1, 2), (2, 5), (3, 1), (3, 3), (4, 4), (5, 4);

INSERT INTO album
VALUES(1, 'Californication', 1998), (2, 'By the way', 2002), (3, 'Meteora', 2003), (4, 'Road to revolution', 2008), 
(5, 'The Fame', 2008), (6, 'Get Rich or Die Tryin', 2003), (7, 'Power of Equality', 2019), (8, 'Imagine album', 2020);

INSERT INTO singer_album
VALUES(1, 1), (1, 2), (1, 7), (2, 5), (2, 8), (3, 3), (3, 4), (4, 6), (4, 8);

INSERT INTO track
VALUES(1, 'Californication', '00:05:21', 1), (2, 'Otherside', '00:04:15', 1), (3, 'By the way', '00:03:38', 2),
(4, 'Cant stop', '00:02:38', 2), (5, 'My song', '00:03:29', 2), (6, 'Breaking the habbit', '00:04:20', 3),
(7, 'Faint', '00:02:42', 3), (8, 'Numb/Encore', '00:03:02', 4), (9, 'Given up', '00:03:16', 4), 
(10, 'Paparazzi', '00:04:15', 5), (11, 'My love', '00:07:15', 5), (12, 'PIMP', '00:05:20', 6),
(13, 'In da club', '00:03:40', 6), (14, 'The power of equality', '00:06:40', 7), (15, 'Pop rap', '00:03:00', 8),
(16, 'Oh my God', '00:05:00', 8);

INSERT INTO collection
VALUES(1, 'Linkin Park vol 1', 2018), (2, 'Lady Gaga vol 1', 2019), (3, 'Alternative', 2021), (4, 'RHCP vol 1', 2022);

INSERT INTO track_collection
VALUES(6, 1), (7, 1), (8, 1), (9, 1), (10, 2), (11, 2), (15, 2), (16, 2), (3, 3), (4, 3), (5, 3), (6, 3), (1, 4), (2, 4), (3, 4), (4, 4);
