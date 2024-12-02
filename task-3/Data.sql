INSERT INTO person (person_id, personal_num, first_name, last_name)
VALUES
(1, '198203051234', 'Erik', 'Svensson'),
(2, '199509182345', 'Anna', 'Johansson'),
(3, '200001012222', 'Lina', 'Bergström'),
(4, '197308076543', 'Oskar', 'Lindgren'),
(5, '199807183456', 'Emma', 'Karlsson'),
(6, '198412049876', 'Johan', 'Nyström'),
(7, '199212155678', 'Sofia', 'Andersson'),
(8, '200305093211', 'Nils', 'Olsson'),
(9, '199702253123', 'Elin', 'Persson'),
(10, '198608296789', 'Maja', 'Eriksson');

INSERT INTO address (zip, city, street, house_nr)
VALUES
('11122', 'Stockholm', 'Drottninggatan', 12),
('41301', 'Göteborg', 'Avenyn', 45),
('22350', 'Lund', 'Sankt Petri Kyrkogata', 18),
('70361', 'Örebro', 'Storgatan', 4),
('75223', 'Uppsala', 'Dragarbrunnsgatan', 27),
('21134', 'Malmö', 'Lilla Torg', 9),
('87130', 'Härnösand', 'Nybrogatan', 32),
('83132', 'Östersund', 'Prästgatan', 56),
('97127', 'Luleå', 'Storgatan', 22),
('62156', 'Visby', 'Adelsgatan', 11);

INSERT INTO person_address (address_id, person_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO email (email_address)
VALUES
('erik.svensson@example.com'),
('anna.johansson@example.com'),
('lina.bergstrom@example.com'),
('oskar.lindgren@example.com'),
('emma.karlsson@example.com'),
('johan.nystrom@example.com'),
('sofia.andersson@example.com'),
('nils.olsson@example.com'),
('elin.persson@example.com'),
('maja.eriksson@example.com');

INSERT INTO person_email (email_id, person_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO telephone (telephone_nr)
VALUES
('0701234567'),
('0739876543'),
('0723456789'),
('0765432123'),
('0709871234'),
('0736547890'),
('0721239876'),
('0767891234'),
('0702345678'),
('0738765432');

INSERT INTO person_telephone (telephone_id, person_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO skill_level (skill_level)
VALUES
('Beginner'),
('Intermediate'),
('Advanced');

INSERT INTO student (student_id, skill_level)
VALUES
(1, 1), 
(2, 2), 
(3, 1), 
(4, 3), 
(5, 2), 
(6, 3), 
(7, 1), 
(8, 3), 
(9, 2), 
(10, 1); 

INSERT INTO siblings (student_id_1, student_id_2)
VALUES
(1, 3),
(2, 5),
(4, 6),
(7, 10),
(8, 9);

INSERT INTO contact_student (student_id, contact_id)
VALUES
(1, 2),
(3, 4),
(5, 6),
(7, 8),
(9, 10),
(2, 1),
(4, 3),
(6, 5),
(8, 7),
(10, 9);

INSERT INTO instructor (instructor_id, instrument_taught)
VALUES
(1, 'Piano'),
(2, 'Violin'),
(3, 'Guitar'),
(4, 'Drums'),
(5, 'Flute'),
(6, 'Cello'),
(7, 'Saxophone'),
(8, 'Trumpet'),
(9, 'Clarinet'),
(10, 'Bass');

INSERT INTO instructor_schedule_slot (start_time, instructor_id, activity, end_time)
VALUES
('2024-11-01 09:00:00', 1, 'Lesson', '2024-11-01 10:00:00'),
('2024-11-02 10:00:00', 2, 'Lesson', '2024-11-02 11:00:00'),
('2024-11-03 11:30:00', 3, 'Lesson', '2024-11-03 12:30:00'),
('2024-11-10 14:00:00', 4, 'Lesson', '2024-11-10 15:00:00'),
('2024-11-15 15:30:00', 5, 'Lesson', '2024-11-15 16:30:00'),
('2024-11-20 09:00:00', 6, 'Lesson', '2024-11-20 10:00:00'),
('2024-11-22 11:00:00', 7, 'Lesson', '2024-11-22 12:00:00'),
('2024-11-25 13:00:00', 8, 'Lesson', '2024-11-25 14:00:00'),
('2024-11-28 10:00:00', 9, 'Lesson', '2024-11-28 11:00:00'),
('2024-11-30 16:00:00', 10, 'Lesson', '2024-11-30 17:00:00');

INSERT INTO instrument (instrument_type, brand, price_per_day)
VALUES
('Piano', 'Yamaha', 100),
('Violin', 'Stradivarius', 150),
('Guitar', 'Fender', 80),
('Drums', 'Pearl', 120),
('Flute', 'Muramatsu', 70),
('Cello', 'Stentor', 130),
('Saxophone', 'Selmer', 110),
('Trumpet', 'Bach', 90),
('Clarinet', 'Buffet', 60),
('Bass', 'Ibanez', 140);

INSERT INTO individual_instrument (instrument_id, serial_nr)
VALUES
(1, 101001),
(1, 101002),
(2, 202001),
(2, 202002),
(3, 303001),
(4, 404001),
(5, 505001),
(6, 606001),
(7, 707001),
(8, 808001),
(9, 909001),
(10, 1001001);

INSERT INTO instrument_rental (student_id, individual_instrument_id, start_time, end_time)
VALUES
(1, 1, '2024-11-01 10:00:00', '2024-12-01 10:00:00'),
(2, 3, '2024-11-05 12:00:00', '2024-11-20 12:00:00'),
(3, 5, '2024-11-10 14:00:00', '2024-11-25 14:00:00'),
(4, 6, '2024-11-15 09:00:00', '2024-11-30 09:00:00'),
(5, 7, '2024-11-20 11:00:00', '2024-12-05 11:00:00'),
(6, 8, '2024-11-25 16:00:00', '2024-12-10 16:00:00'),
(7, 9, '2024-11-01 13:00:00', '2024-11-30 13:00:00'),
(8, 10, '2024-11-05 15:00:00', '2024-12-05 15:00:00'),
(9, 4, '2024-11-15 08:00:00', '2024-12-01 08:00:00'),
(10, 2, '2024-11-10 10:00:00', '2024-11-30 10:00:00');

INSERT INTO lesson_type_info (lesson_type, price, min_allowed, max_allowed)
VALUES
('Individual Lesson', 500, 1, 1),
('Group Lesson', 300, 2, 10),
('Ensemble', 200, 5, 20);

INSERT INTO classroom (classroom_location)
VALUES
('Main Building - Room 101'),
('Main Building - Room 102'),
('East Wing - Room 201'),
('East Wing - Room 202'),
('West Wing - Room 301'),
('West Wing - Room 302'),
('North Annex - Room 401'),
('North Annex - Room 402'),
('South Annex - Room 501'),
('South Annex - Room 502');

INSERT INTO lesson (skill_level, room_id, lesson_type, instructor_id, start_time, end_time)
VALUES
(1, 1, 'Individual Lesson', 1, '2024-11-01 09:00:00', '2024-11-01 10:00:00'),
(2, 2, 'Group Lesson', 2, '2024-11-02 10:00:00', '2024-11-02 11:30:00'),
(3, 3, 'Ensemble', 3, '2024-11-03 11:00:00', '2024-11-03 12:30:00'),
(1, 4, 'Individual Lesson', 4, '2024-11-10 14:00:00', '2024-11-10 15:00:00'),
(2, 5, 'Group Lesson', 5, '2024-11-15 15:30:00', '2024-11-15 16:30:00'),
(3, 6, 'Ensemble', 6, '2024-11-20 09:00:00', '2024-11-20 10:30:00'),
(1, 7, 'Individual Lesson', 7, '2024-11-22 11:00:00', '2024-11-22 12:00:00'),
(2, 8, 'Group Lesson', 8, '2024-11-25 13:00:00', '2024-11-25 14:30:00'),
(3, 9, 'Ensemble', 9, '2024-11-28 10:00:00', '2024-11-28 11:30:00'),
(1, 10, 'Individual Lesson', 10, '2024-11-30 16:00:00', '2024-11-30 17:00:00'),

(1, 1, 'Individual Lesson', 1, '2024-01-15 09:00:00', '2024-01-15 10:00:00'),
(2, 2, 'Group Lesson', 2, '2024-02-20 10:00:00', '2024-02-20 11:30:00'),
(3, 3, 'Ensemble', 3, '2024-03-10 11:00:00', '2024-03-10 12:30:00'),
(1, 4, 'Individual Lesson', 4, '2024-04-05 14:00:00', '2024-04-05 15:00:00'),
(2, 5, 'Group Lesson', 5, '2024-05-25 15:30:00', '2024-05-25 16:30:00'),
(3, 6, 'Ensemble', 6, '2024-06-18 09:00:00', '2024-06-18 10:30:00'),
(1, 7, 'Individual Lesson', 7, '2024-07-22 11:00:00', '2024-07-22 12:00:00'),
(2, 8, 'Group Lesson', 8, '2024-08-14 13:00:00', '2024-08-14 14:30:00'),
(3, 9, 'Ensemble', 9, '2024-09-09 10:00:00', '2024-09-09 11:30:00'),
(1, 10, 'Individual Lesson', 10, '2024-10-12 16:00:00', '2024-10-12 17:00:00'),
(2, 1, 'Group Lesson', 1, '2024-11-01 09:00:00', '2024-11-01 10:30:00'),
(3, 2, 'Ensemble', 2, '2024-12-20 14:00:00', '2024-12-20 15:30:00');

INSERT INTO single_instrument_lesson (lesson_id, instrument)
VALUES
(1, 'Piano'),
(4, 'Violin'),
(7, 'Guitar'),
(10, 'Flute');

INSERT INTO ensemble (lesson_id, genre)
VALUES
(3, 'Classical'),
(6, 'Jazz'),
(9, 'Rock'),
(12, 'Pop');


INSERT INTO participation (lesson_id, student_id)
VALUES
(3, 1),
(3, 2),
(6, 3),
(6, 4),
(9, 5),
(9, 6),
(12, 7),
(12, 8),
(12, 9),
(12, 10);

UPDATE lesson_type_info
SET max_allowed = 10
WHERE lesson_type = 'Ensemble';

INSERT INTO lesson (skill_level, room_id, lesson_type, instructor_id, start_time, end_time)
VALUES
(1, 1, 'Individual Lesson', 1, '2024-12-01 09:00:00', '2024-12-01 10:00:00'),
(2, 2, 'Group Lesson', 1, '2024-12-01 11:00:00', '2024-12-01 12:30:00'),
(3, 3, 'Ensemble', 2, '2024-12-02 10:00:00', '2024-12-02 11:30:00'),
(1, 4, 'Individual Lesson', 2, '2024-12-02 14:00:00', '2024-12-02 15:00:00'),
(2, 5, 'Group Lesson', 3, '2024-12-03 09:00:00', '2024-12-03 10:30:00'),
(3, 6, 'Ensemble', 3, '2024-12-03 11:00:00', '2024-12-03 12:30:00'),
(1, 7, 'Individual Lesson', 4, '2024-12-04 10:00:00', '2024-12-04 11:00:00'),
(2, 8, 'Group Lesson', 4, '2024-12-04 13:00:00', '2024-12-04 14:30:00'),
(3, 9, 'Ensemble', 5, '2024-12-05 09:00:00', '2024-12-05 10:30:00'),
(1, 10, 'Individual Lesson', 5, '2024-12-05 11:00:00', '2024-12-05 12:00:00'),
(2, 1, 'Group Lesson', 1, '2024-12-06 10:00:00', '2024-12-06 11:30:00'),
(3, 2, 'Ensemble', 2, '2024-12-06 14:00:00', '2024-12-06 15:30:00'),
(1, 3, 'Individual Lesson', 3, '2024-12-07 09:00:00', '2024-12-07 10:00:00'),
(2, 4, 'Group Lesson', 3, '2024-12-07 11:00:00', '2024-12-07 12:30:00'),
(3, 5, 'Ensemble', 4, '2024-12-08 10:00:00', '2024-12-08 11:30:00'),
(1, 6, 'Individual Lesson', 4, '2024-12-08 13:00:00', '2024-12-08 14:00:00');

INSERT INTO person (person_id, personal_num, first_name, last_name)
VALUES
(21, '200301012121', 'Felix', 'Andersson'),
(22, '200105202222', 'Nora', 'Svensson'),
(23, '200307152323', 'Isak', 'Johansson'),
(24, '200409252424', 'Ella', 'Karlsson'),
(25, '200512032525', 'Axel', 'Bergström'),
(26, '200605192626', 'Lilly', 'Eriksson'),
(27, '200710212727', 'Oscar', 'Nyström'),
(28, '200809052828', 'Alma', 'Olsson'),
(29, '200911122929', 'Hugo', 'Persson'),
(30, '201002152030', 'Ellen', 'Lindgren'),
(31, '201103182131', 'Theo', 'Karlsson');

INSERT INTO student (student_id, skill_level)
VALUES
(21, 1),
(22, 2),
(23, 3),
(24, 1),
(25, 2),
(26, 3),
(27, 1),
(28, 2),
(29, 3),
(30, 1),
(31, 2);

INSERT INTO participation (lesson_id, student_id)
VALUES
(21, 1), (21, 2), (21, 3), (21, 4), (21, 5),
(22, 6), (22, 7), (22, 8), (22, 9), (22, 10), (23, 21), (23, 22), (23, 23),
(24, 24), (24, 25), (24, 26), (24, 27), (24, 28), (24, 29), (24, 30), (24, 31);

INSERT INTO participation (lesson_id, student_id)
VALUES
(25, 6), (25, 7), (25, 8), (25, 9), (25, 10);

INSERT INTO ensemble (lesson_id, genre)
VALUES
(26, 'Jazz'),
(29, 'Blues');

INSERT INTO lesson (skill_level, room_id, lesson_type, instructor_id, start_time, end_time)
VALUES
(3, 8, 'Ensemble', 6, '2024-12-04 12:00:00', '2024-12-04 13:30:00');

UPDATE lesson
SET lesson_type = 'Ensemble'
WHERE lesson_id IN (26, 29);

INSERT INTO ensemble (lesson_id, genre)
VALUES
(21, 'Classical'),
(22, 'Jazz'),
(23, 'Rock'),
(24, 'Pop');

INSERT INTO participation (lesson_id, student_id)
VALUES
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), 
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (3, 22), (3, 23), 
(4, 24), (4, 25), (4, 26), (4, 27), (4, 28), (4, 29), 
(4, 30), (4, 31);

INSERT INTO lesson (skill_level, room_id, lesson_type, instructor_id, start_time, end_time)
VALUES
(3, 3, 'Ensemble', 2, '2024-12-04 10:00:00', '2024-12-04 11:30:00'),
(3, 5, 'Ensemble', 3, '2024-12-05 14:00:00', '2024-12-05 15:30:00'),
(3, 7, 'Ensemble', 4, '2024-12-06 16:00:00', '2024-12-06 17:30:00'),
(3, 9, 'Ensemble', 5, '2024-12-07 13:00:00', '2024-12-07 14:30:00');


INSERT INTO ensemble (lesson_id, genre)
VALUES
(34, 'Classical'),
(35, 'Jazz'),
(33, 'Pop');

INSERT INTO lesson (skill_level, room_id, lesson_type, instructor_id, start_time, end_time)
VALUES
(3, 10, 'Ensemble', 6, '2024-12-08 15:00:00', '2024-12-08 16:30:00');

INSERT INTO ensemble (lesson_id, genre)
VALUES
(30, 'Pop');

INSERT INTO participation (lesson_id, student_id)
VALUES
(30, 1), (30, 2), (30, 3), (30, 4), (30, 5),
(30, 6), (30, 7), (30, 8), (30, 9), (30, 10);


INSERT INTO person (person_id, personal_num, first_name, last_name)
VALUES
(38, '201203152038', 'Maja', 'Eriksson'),
(39, '201105202039', 'Albin', 'Eriksson'),
(40, '201305122040', 'Vera', 'Eriksson'),
(41, '200909182041', 'Leo', 'Svensson'),
(42, '201012152042', 'Ida', 'Svensson'),
(43, '201107032043', 'Arvid', 'Svensson');

INSERT INTO student (student_id, skill_level)
VALUES
(38, 1),
(39, 2),
(40, 3),
(41, 1),
(42, 2),
(43, 3);

INSERT INTO siblings (student_id_1, student_id_2)
VALUES
(38, 39), 
(38, 40), 
(39, 40), 

(41, 42), 
(41, 43), 
(42, 43); 


