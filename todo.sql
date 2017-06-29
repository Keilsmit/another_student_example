
CREATE TABLE mylist(
  id      SERIAL PRIMARY KEY,
  title   VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO mylist (title, details, priority, created_at) VALUES ('Clock', 'wake up by 7am', 5, current_timestamp - interval '24 hours');
INSERT INTO mylist (title, priority, created_at) VALUES ('shopping', 1, current_timestamp - interval '24 hours');
INSERT INTO mylist() VALUES ();
INSERT INTO mylist() VALUES ();
INSERT INTO mylist() VALUES ();

SELECT title FROM mylist WHERE created_at = null;
SELECT title FROM mylist WHERE priority > 1;

UPDATE mylist SET completed_at = current_timestamp WHERE id = 3;
DELETE * FROM mylist WHERE completed_at IS NOT NULL;
