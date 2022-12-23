SELECT 
    m.title,
	CASE WHEN mi.rating <= 4 THEN 'poor'
    WHEN mi.rating > 4 AND mi.rating <= 7 THEN 'good'
    ELSE 'excellent' END AS rating,
    CASE WHEN mi.has_subtitles = 1 THEN 'english' 
	ELSE '-' END AS subtitles,
    mi.budget
FROM
    movies_additional_info AS mi
        JOIN
    movies AS m ON mi.id = m.movie_info_id
ORDER BY mi.budget DESC    
    