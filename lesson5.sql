SHOW DATABASES;
CREATE DATABASE LES5;
USE LES5;
CREATE TABLE `users` (
  `user_id` int unsigned NOT NULL,
  `name` varchar(130),
  `created_at` varchar(130),
  `updated_at` varchar(130),
  PRIMARY KEY (`user_id`)
); 
SELECT * FROM users;

INSERT INTO users (user_id, name) VALUES
(1, 'Alex'), 
(2, 'Kris'), 
(3, 'Steeve');

-- task 1

UPDATE users SET created_at = CURRENT_TIMESTAMP;
UPDATE users SET updated_at = CURRENT_TIMESTAMP;

-- task 2

ALTER TABLE users MODIFY COLUMN created_at DATETIME;
ALTER TABLE users MODIFY COLUMN updated_at DATETIME;

-- task 3
CREATE TABLE storehouses_products (
  `id` int unsigned NOT NULL,
  `value` int,
  PRIMARY KEY (`id`)
); 

SELECT * FROM storehouses_products ORDER BY value DESC;

INSERT INTO storehouses_products (id) VALUES ('1'), ('2'), ('3'), ('4'), ('5');
UPDATE storehouses_products SET value = FLOOR(RAND() + 0.5);

-- task 4
SELECT
  *
FROM
  profiles
WHERE
  birthday LIKE '_____05___' OR birthday LIKE '_____08___';
  
-- task 4
SELECT * FROM profiles WHERE user_id IN (5, 1, 2);

-- task 5
SELECT ROUND(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday)) / 365.25), 0) AS AVG_Age FROM profiles;

-- task 6
SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W') AS day,
	COUNT(*) AS total
FROM
	profiles
GROUP BY
	day
ORDER BY
	total DESC;
    





