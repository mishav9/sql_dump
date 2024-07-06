CREATE TABLE calls (
   from_id INT,
   to_id INT,
   duration INT

);




INSERT INTO calls (from_id, to_id, duration)
VALUES
   (1, 2, 59),
   (2, 1, 11),
   (1, 3, 20),
   (3, 4, 100),
   (3,4,200),
   (3,4,200),
   (4,3,499);
