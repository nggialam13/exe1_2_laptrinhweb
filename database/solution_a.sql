-- Câu 1
SELECT * FROM users
ORDER BY user_name ASC;

-- Câu 2
SELECT * FROM users
ORDER BY user_name ASC
LIMIT 7;

-- Câu 3
SELECT * FROM users
WHERE user_name LIKE '%a%'
ORDER BY user_name ASC;

-- Câu 4
SELECT * FROM users
WHERE user_name LIKE 'm%';

-- Câu 5
SELECT * FROM users
WHERE user_name LIKE '%i';

-- Câu 6
SELECT * FROM users
WHERE user_email LIKE '%@gmail.com';

-- Câu 7
SELECT * FROM users
WHERE user_email LIKE '%@gmail.com'
AND user_name LIKE 'm%';

-- Câu 8
SELECT * FROM users
WHERE user_email LIKE '%@gmail.com'
AND user_name LIKE '%i%'
AND LENGTH(user_name) > 5;

-- Câu 9
SELECT * FROM users
WHERE user_name LIKE '%a%'
AND LENGTH(user_name) BETWEEN 5 AND 9
AND user_email LIKE '%@gmail.com'
AND user_email LIKE '%i%@gmail.com';

-- Câu 10
SELECT * FROM users
WHERE 
(user_name LIKE '%a%' AND LENGTH(user_name) BETWEEN 5 AND 9)
OR
(user_name LIKE '%i%' AND LENGTH(user_name) < 9)
OR
(user_email LIKE '%@gmail.com' AND user_email LIKE '%i%');

