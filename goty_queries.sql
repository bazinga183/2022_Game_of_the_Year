CREATE TABLE goty (
	index text,
	game varchar(32),
	console varchar(16),
	username varchar(32),
	user_score int,
	review_date date,
	comments varchar,
	thumbs_up int,
	total_thumb_ratings int
);

SELECT 
	game,
	console, 
	COUNT(user_score) AS "Total User Score Ratings",
	ROUND(AVG(user_score), 2) AS "Average User Score",
	ROUND(AVG(thumbs_up), 2) AS "Average Helpful Thumbs Up Per Comment",
	ROUND(AVG(total_thumb_ratings), 2) AS "Average Thumbs Per Comment"
FROM goty
GROUP BY game, console;