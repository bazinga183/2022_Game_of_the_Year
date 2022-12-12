CREATE TABLE goty (
	index text,
	game varchar(32),
	username varchar(32),
	user_score int,
	review_date date,
	comments varchar,
	thumbs_up int,
	total_thumb_ratings int
);

SELECT *
FROM goty;