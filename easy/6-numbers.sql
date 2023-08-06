-- Question 24
-- Table my_numbers contains many numbers in column num including duplicated ones.
-- Can you write a SQL query to find the biggest number, which only appears once.

-- +---+
-- |num|
-- +---+
-- | 8 |
-- | 8 |
-- | 3 |
-- | 3 |
-- | 1 |
-- | 4 |
-- | 5 |
-- | 6 | 
-- For the sample data above, your query should return the following result:
-- +---+
-- |num|
-- +---+
-- | 6 |
-- Note:
-- If there is no such number, just output null.

-- Table

CREATE TABLE numbers (
  num INT
);

INSERT INTO numbers (num)
VALUES
  (8),
  (8),
  (3),
  (3),
  (1),
  (4),
  (5),
  (6);



-- Solution

SELECT num
FROM numbers
GROUP BY num
HAVING COUNT(num) = 1
ORDER BY num DESC
LIMIT 1;
