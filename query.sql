SELECT
    s.show_id,
    m.movie_title AS movie_title,
    t.name AS theatre_name,
    sc.screen_name,
    s.show_date,
    s.start_time
FROM
    Show_details s
JOIN
    Screen sc ON s.screen_id = sc.screen_id
JOIN
    Theatre t ON sc.theatre_id = t.theatre_id
JOIN
    Movie m ON s.movie_id = m.id
WHERE
    s.show_date = '2025-09-23'
    AND t.name = 'PVR Cinemas';
