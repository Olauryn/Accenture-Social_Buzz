----To create te table and insert the datasets into the database
CREATE TABLE content_type (content_id VARCHAR PRIMARY KEY,
						  content_type VARCHAR,
						  category VARCHAR); 
						  
						  
CREATE TABLE reaction(content_id VARCHAR,
						   reaction_type VARCHAR,
						   date_time DATE);
					
						   
CREATE TABLE reaction_type(reaction_type VARCHAR,
					 sentiment VARCHAR,
					 score INT);		

SELECT* FROM content_type;
SELECT* FROM reaction;
SELECT* FROM reaction_type;

---To join the three tables
SELECT c.content_type, c.category, r.reaction_type, t.score
FROM content_type c
LEFT JOIN reaction r
ON c.content_id=r.content_id
JOIN reaction_type t
ON t.reaction_type=r.reaction_type;


---To get the top 5 categories with the largest popularity
WITH P1 AS (SELECT c.category, t.score
			FROM content_type c
			LEFT JOIN reaction r
			ON c.content_id=r.content_id
			JOIN reaction_type t
			ON t.reaction_type=r.reaction_type),

P2 AS (SELECT category, score, 
	SUM (score) OVER (PARTITION BY category) AS sum_total
	FROM P1
	ORDER BY sum_total DESC)

SELECT DISTINCT (category), sum_total 
FROM P2
ORDER BY sum_total DESC
LIMIT 5;

---How many unique categories are there?

SELECT COUNT(DISTINCT c.category)
FROM content_type c
LEFT JOIN reaction r
ON c.content_id=r.content_id
JOIN reaction_type t
ON t.reaction_type=r.reaction_type;

----How many reactions are there to the most popular category?.
			
WITH P1 AS (SELECT c.category, t.score, r.reaction_type
			FROM content_type c
			LEFT JOIN reaction r
			ON c.content_id=r.content_id
			JOIN reaction_type t
			ON t.reaction_type=r.reaction_type),

P2 AS (SELECT category, score, reaction_type,
	SUM (score) OVER (PARTITION BY category) AS sum_total
	FROM P1
	ORDER BY sum_total DESC),

P3 AS (SELECT DISTINCT (category) AS category, sum_total, reaction_type
	   FROM P2
	   ORDER BY sum_total DESC),

 P4 AS (SELECT  COUNT (DISTINCT reaction_type) AS reaction_type, category, sum_total 
		FROM P3
		GROUP BY category, sum_total, reaction_type)

SELECT  DISTINCT (category), sum_total,
SUM (reaction_type) OVER (PARTITION BY category) AS reaction_count
FROM P4
ORDER BY sum_total DESC
LIMIT 5;

---What was the date with the most post?
SELECT count (c.content_id) AS most_post,  r.date_time 
FROM content_type c
LEFT JOIN reaction r
ON c.content_id=r.content_id
JOIN reaction_type t
ON t.reaction_type=r.reaction_type
group by date_time
ORDER BY most_post DESC;



-----What was the month with the most post?
SELECT count (c.content_id) AS most_post, DATE_PART ('month', r.date_time) AS month
FROM content_type c
LEFT JOIN reaction r
ON c.content_id=r.content_id
JOIN reaction_type t
ON t.reaction_type=r.reaction_type
group by month
ORDER BY most_post DESC;
