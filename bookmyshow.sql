CREATE TABLE Movie(id INT PRIMARY KEY AUTO_INCREMENT,
    movie_title VARCHAR(100) NOT NULL,
    language VARCHAR(50),
    rating DECIMAL(2,1),
    genre VARCHAR(50));

INSERT INTO Movie(movie_title,language,rating,genre)
VALUES 
('F1','English',9,'Sports'),
('BAHUBALI','Telugu',9,'Fantasy'), 
('RRR','Telugu',9,'Action');

CREATE TABLE Theatre(theatre_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
location VARCHAR(100),
city VARCHAR(50));

INSERT INTO Theatre (name, location, city) VALUES
('PVR Cinemas', 'Nexus Mall', 'Bangalore'),
('INOX', 'Phoenix Mall', 'Bangalore');

CREATE TABLE Screen (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theatre_id INT,
    screen_name VARCHAR(50),
    capacity INT,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id)
);

INSERT INTO Screen (theatre_id, screen_name, capacity) VALUES
(1, 'Screen 1', 200),
(1, 'Screen 2', 150),
(2, 'Screen A', 180);

CREATE TABLE Show_details (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    screen_id INT,
    show_date DATE,
    start_time TIME,
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    FOREIGN KEY (screen_id) REFERENCES Screen(screen_id)
);

INSERT INTO Show_details (movie_id, screen_id, show_date, start_time) VALUES
(1, 1, '2025-09-23', '18:00:00'),
(2, 1, '2025-09-23', '21:00:00'),
(3, 2, '2025-09-23', '19:00:00'),
(1, 3, '2025-09-23', '20:00:00');