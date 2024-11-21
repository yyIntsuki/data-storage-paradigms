--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1
-- Dumped by pg_dump version 17.1

-- Started on 2024-11-21 23:25:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4953 (class 0 OID 17336)
-- Dependencies: 218
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.address VALUES (1, '11120', 'Stockholm', 'Storgatan', 12);
INSERT INTO public.address VALUES (2, '41301', 'Gothenburg', 'Kungsgatan', 8);
INSERT INTO public.address VALUES (3, '21134', 'Malmö', 'Lindvägen', 10);
INSERT INTO public.address VALUES (4, '75220', 'Uppsala', 'Sveavägen', 22);
INSERT INTO public.address VALUES (5, '72212', 'Västerås', 'Hantverkargatan', 5);
INSERT INTO public.address VALUES (6, '90719', 'Umeå', 'Östermalmsgatan', 7);
INSERT INTO public.address VALUES (7, '35245', 'Växjö', 'Odenvägen', 18);
INSERT INTO public.address VALUES (8, '83190', 'Östersund', 'Åsgatan', 14);
INSERT INTO public.address VALUES (9, '62145', 'Visby', 'Ringvägen', 3);
INSERT INTO public.address VALUES (10, '98107', 'Kiruna', 'Rymdgatan', 6);


--
-- TOC entry 4955 (class 0 OID 17343)
-- Dependencies: 220
-- Data for Name: classroom; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.classroom VALUES (201, 'Main Building - Room 1');
INSERT INTO public.classroom VALUES (202, 'Main Building - Room 2');
INSERT INTO public.classroom VALUES (203, 'Annex - Room A');
INSERT INTO public.classroom VALUES (204, 'Annex - Room B');
INSERT INTO public.classroom VALUES (205, 'Main Building - Auditorium');
INSERT INTO public.classroom VALUES (206, 'Music Hall - Room 3');
INSERT INTO public.classroom VALUES (207, 'Music Hall - Room 4');
INSERT INTO public.classroom VALUES (208, 'Annex - Room C');
INSERT INTO public.classroom VALUES (209, 'Main Building - Room 3');
INSERT INTO public.classroom VALUES (210, 'Music Hall - Auditorium');


--
-- TOC entry 4974 (class 0 OID 17423)
-- Dependencies: 239
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person VALUES ('198502121234', 1, 'Erik Karlsson', 38);
INSERT INTO public.person VALUES ('199305055678', 2, 'Sofia Bergström', 30);
INSERT INTO public.person VALUES ('200012318765', 3, 'Anna Lund', 23);
INSERT INTO public.person VALUES ('198710154321', 4, 'Lars Johansson', 36);
INSERT INTO public.person VALUES ('199912253456', 5, 'Maria Andersson', 24);
INSERT INTO public.person VALUES ('200112116543', 6, 'Olof Svensson', 21);
INSERT INTO public.person VALUES ('199803037894', 7, 'Karin Nilsson', 25);
INSERT INTO public.person VALUES ('198609091235', 8, 'Fredrik Lindberg', 37);
INSERT INTO public.person VALUES ('200405173210', 9, 'Emma Persson', 19);
INSERT INTO public.person VALUES ('199702289876', 10, 'Johanna Eriksson', 26);


--
-- TOC entry 4978 (class 0 OID 17444)
-- Dependencies: 243
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.student VALUES (1, 3);
INSERT INTO public.student VALUES (2, 4);
INSERT INTO public.student VALUES (3, 2);
INSERT INTO public.student VALUES (4, 5);
INSERT INTO public.student VALUES (5, 1);
INSERT INTO public.student VALUES (6, 3);
INSERT INTO public.student VALUES (7, 2);
INSERT INTO public.student VALUES (8, 4);
INSERT INTO public.student VALUES (9, 3);
INSERT INTO public.student VALUES (10, 5);


--
-- TOC entry 4956 (class 0 OID 17349)
-- Dependencies: 221
-- Data for Name: contact_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contact_student VALUES (1, 1);
INSERT INTO public.contact_student VALUES (2, 2);
INSERT INTO public.contact_student VALUES (3, 3);
INSERT INTO public.contact_student VALUES (4, 4);
INSERT INTO public.contact_student VALUES (5, 5);
INSERT INTO public.contact_student VALUES (6, 6);
INSERT INTO public.contact_student VALUES (7, 7);
INSERT INTO public.contact_student VALUES (8, 8);
INSERT INTO public.contact_student VALUES (9, 9);
INSERT INTO public.contact_student VALUES (10, 10);


--
-- TOC entry 4958 (class 0 OID 17355)
-- Dependencies: 223
-- Data for Name: email; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.email VALUES ('erik.karlsson@example.com', 1);
INSERT INTO public.email VALUES ('sofia.bergstrom@example.com', 2);
INSERT INTO public.email VALUES ('anna.lund@example.com', 3);
INSERT INTO public.email VALUES ('lars.johansson@example.com', 4);
INSERT INTO public.email VALUES ('maria.andersson@example.com', 5);
INSERT INTO public.email VALUES ('olof.svensson@example.com', 6);
INSERT INTO public.email VALUES ('karin.nilsson@example.com', 7);
INSERT INTO public.email VALUES ('fredrik.lindberg@example.com', 8);
INSERT INTO public.email VALUES ('emma.persson@example.com', 9);
INSERT INTO public.email VALUES ('johanna.eriksson@example.com', 10);


--
-- TOC entry 4971 (class 0 OID 17412)
-- Dependencies: 236
-- Data for Name: lesson_type_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lesson_type_info VALUES ('Individual', 500);
INSERT INTO public.lesson_type_info VALUES ('Group', 300);
INSERT INTO public.lesson_type_info VALUES ('Ensemble', 400);
INSERT INTO public.lesson_type_info VALUES ('Online', 350);
INSERT INTO public.lesson_type_info VALUES ('Masterclass', 600);


--
-- TOC entry 4959 (class 0 OID 17361)
-- Dependencies: 224
-- Data for Name: ensemble; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ensemble VALUES ('Ensemble', 'Classical');


--
-- TOC entry 4960 (class 0 OID 17366)
-- Dependencies: 225
-- Data for Name: group_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.group_lesson VALUES ('Group', 'Guitar');


--
-- TOC entry 4961 (class 0 OID 17371)
-- Dependencies: 226
-- Data for Name: individual_lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.individual_lesson VALUES ('Individual', 'Piano');


--
-- TOC entry 4962 (class 0 OID 17376)
-- Dependencies: 227
-- Data for Name: instructor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructor VALUES (1, 'Guitar');
INSERT INTO public.instructor VALUES (2, 'Piano');
INSERT INTO public.instructor VALUES (3, 'Violin');
INSERT INTO public.instructor VALUES (4, 'Drums');
INSERT INTO public.instructor VALUES (5, 'Flute');
INSERT INTO public.instructor VALUES (6, 'Saxophone');
INSERT INTO public.instructor VALUES (7, 'Trumpet');
INSERT INTO public.instructor VALUES (8, 'Cello');
INSERT INTO public.instructor VALUES (9, 'Clarinet');
INSERT INTO public.instructor VALUES (10, 'Double Bass');


--
-- TOC entry 4964 (class 0 OID 17382)
-- Dependencies: 229
-- Data for Name: instructor_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructor_payment VALUES (1, 4500, '2024-11-01 10:00:00', 1);
INSERT INTO public.instructor_payment VALUES (2, 5200, '2024-11-03 12:00:00', 2);
INSERT INTO public.instructor_payment VALUES (3, 4800, '2024-11-05 14:30:00', 3);
INSERT INTO public.instructor_payment VALUES (4, 5000, '2024-11-07 16:00:00', 4);
INSERT INTO public.instructor_payment VALUES (5, 5500, '2024-11-10 11:00:00', 5);
INSERT INTO public.instructor_payment VALUES (6, 4600, '2024-11-12 13:00:00', 6);
INSERT INTO public.instructor_payment VALUES (7, 4200, '2024-11-14 15:30:00', 7);
INSERT INTO public.instructor_payment VALUES (8, 4800, '2024-11-16 17:00:00', 8);
INSERT INTO public.instructor_payment VALUES (9, 5300, '2024-11-18 09:00:00', 9);
INSERT INTO public.instructor_payment VALUES (10, 5700, '2024-11-20 10:30:00', 10);


--
-- TOC entry 4965 (class 0 OID 17388)
-- Dependencies: 230
-- Data for Name: instructor_schedule_slot; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructor_schedule_slot VALUES (1, '2024-11-21 10:00:00', 'Lesson', '2024-11-21 09:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (1, '2024-11-21 11:15:00', 'Preparation', '2024-11-21 10:15:00');
INSERT INTO public.instructor_schedule_slot VALUES (2, '2024-11-21 13:30:00', 'Group Lesson', '2024-11-21 12:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (2, '2024-11-21 15:00:00', 'Meeting', '2024-11-21 14:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (3, '2024-11-21 09:45:00', 'Lesson', '2024-11-21 09:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (3, '2024-11-21 10:30:00', 'Consultation', '2024-11-21 10:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (4, '2024-11-21 12:30:00', 'Masterclass', '2024-11-21 11:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (5, '2024-11-21 16:00:00', 'Lesson', '2024-11-21 15:00:00');
INSERT INTO public.instructor_schedule_slot VALUES (6, '2024-11-21 17:15:00', 'Practice', '2024-11-21 16:15:00');
INSERT INTO public.instructor_schedule_slot VALUES (7, '2024-11-21 09:30:00', 'Lesson', '2024-11-21 08:00:00');


--
-- TOC entry 4967 (class 0 OID 17394)
-- Dependencies: 232
-- Data for Name: instrument; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instrument VALUES (1, 'Guitar', 'Yamaha', 10, 50);
INSERT INTO public.instrument VALUES (2, 'Piano', 'Kawai', 5, 100);
INSERT INTO public.instrument VALUES (3, 'Violin', 'Stradivarius', 7, 70);
INSERT INTO public.instrument VALUES (4, 'Drums', 'Pearl', 4, 80);
INSERT INTO public.instrument VALUES (5, 'Flute', 'Yamaha', 8, 40);
INSERT INTO public.instrument VALUES (6, 'Saxophone', 'Selmer', 6, 60);
INSERT INTO public.instrument VALUES (7, 'Trumpet', 'Bach', 5, 55);
INSERT INTO public.instrument VALUES (8, 'Cello', 'Larsen', 3, 75);
INSERT INTO public.instrument VALUES (9, 'Clarinet', 'Buffet', 9, 50);
INSERT INTO public.instrument VALUES (10, 'Double Bass', 'Thomann', 2, 90);


--
-- TOC entry 4968 (class 0 OID 17400)
-- Dependencies: 233
-- Data for Name: instrument_rental; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instrument_rental VALUES ('2024-11-01 10:00:00', '2024-11-10 10:00:00', 1, 1);
INSERT INTO public.instrument_rental VALUES ('2024-11-05 12:00:00', '2024-11-15 12:00:00', 2, 2);
INSERT INTO public.instrument_rental VALUES ('2024-11-07 14:00:00', '2024-11-14 14:00:00', 3, 3);
INSERT INTO public.instrument_rental VALUES ('2024-11-10 16:00:00', '2024-11-20 16:00:00', 4, 4);
INSERT INTO public.instrument_rental VALUES ('2024-11-12 08:00:00', '2024-11-22 08:00:00', 5, 5);
INSERT INTO public.instrument_rental VALUES ('2024-11-14 10:30:00', '2024-11-24 10:30:00', 6, 6);
INSERT INTO public.instrument_rental VALUES ('2024-11-16 09:15:00', '2024-11-26 09:15:00', 7, 7);
INSERT INTO public.instrument_rental VALUES ('2024-11-18 11:45:00', '2024-11-28 11:45:00', 8, 8);
INSERT INTO public.instrument_rental VALUES ('2024-11-20 13:00:00', '2024-11-30 13:00:00', 9, 9);
INSERT INTO public.instrument_rental VALUES ('2024-11-22 15:30:00', '2024-12-02 15:30:00', 10, 10);


--
-- TOC entry 4970 (class 0 OID 17406)
-- Dependencies: 235
-- Data for Name: lesson; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.lesson VALUES (101, 1, 201, 'Individual', 1, '2024-11-21 10:00:00', '2024-11-21 11:00:00');
INSERT INTO public.lesson VALUES (102, 2, 202, 'Group', 2, '2024-11-21 12:00:00', '2024-11-21 13:00:00');
INSERT INTO public.lesson VALUES (103, 3, 203, 'Ensemble', 3, '2024-11-21 14:00:00', '2024-11-21 15:30:00');
INSERT INTO public.lesson VALUES (104, 2, 204, 'Online', 4, '2024-11-21 16:00:00', '2024-11-21 17:00:00');
INSERT INTO public.lesson VALUES (105, 4, 205, 'Masterclass', 5, '2024-11-21 18:00:00', '2024-11-21 19:30:00');
INSERT INTO public.lesson VALUES (106, 1, 206, 'Group', 2, '2024-11-22 09:00:00', '2024-11-22 10:30:00');


--
-- TOC entry 4972 (class 0 OID 17417)
-- Dependencies: 237
-- Data for Name: participation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.participation VALUES (1, 101);
INSERT INTO public.participation VALUES (2, 102);
INSERT INTO public.participation VALUES (3, 103);
INSERT INTO public.participation VALUES (4, 101);
INSERT INTO public.participation VALUES (5, 104);
INSERT INTO public.participation VALUES (6, 102);
INSERT INTO public.participation VALUES (7, 103);
INSERT INTO public.participation VALUES (8, 105);
INSERT INTO public.participation VALUES (9, 106);
INSERT INTO public.participation VALUES (10, 104);


--
-- TOC entry 4975 (class 0 OID 17429)
-- Dependencies: 240
-- Data for Name: person_address; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person_address VALUES (1, 1);
INSERT INTO public.person_address VALUES (2, 2);
INSERT INTO public.person_address VALUES (3, 3);
INSERT INTO public.person_address VALUES (4, 4);
INSERT INTO public.person_address VALUES (5, 5);
INSERT INTO public.person_address VALUES (6, 6);
INSERT INTO public.person_address VALUES (7, 7);
INSERT INTO public.person_address VALUES (8, 8);
INSERT INTO public.person_address VALUES (9, 9);
INSERT INTO public.person_address VALUES (10, 10);


--
-- TOC entry 4976 (class 0 OID 17434)
-- Dependencies: 241
-- Data for Name: person_email; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.person_email VALUES (1, 1);
INSERT INTO public.person_email VALUES (2, 2);
INSERT INTO public.person_email VALUES (3, 3);
INSERT INTO public.person_email VALUES (4, 4);
INSERT INTO public.person_email VALUES (5, 5);
INSERT INTO public.person_email VALUES (6, 6);
INSERT INTO public.person_email VALUES (7, 7);
INSERT INTO public.person_email VALUES (8, 8);
INSERT INTO public.person_email VALUES (9, 9);
INSERT INTO public.person_email VALUES (10, 10);


--
-- TOC entry 4977 (class 0 OID 17439)
-- Dependencies: 242
-- Data for Name: siblings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.siblings VALUES (1, 2);
INSERT INTO public.siblings VALUES (3, 5);
INSERT INTO public.siblings VALUES (6, 7);


--
-- TOC entry 4980 (class 0 OID 17450)
-- Dependencies: 245
-- Data for Name: student_payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.student_payment VALUES (1, 1000, '2024-11-01 10:00:00', 1);
INSERT INTO public.student_payment VALUES (2, 1200, '2024-11-03 14:30:00', 2);
INSERT INTO public.student_payment VALUES (3, 800, '2024-11-05 09:15:00', 3);
INSERT INTO public.student_payment VALUES (4, 900, '2024-11-07 16:45:00', 4);
INSERT INTO public.student_payment VALUES (5, 1100, '2024-11-10 11:00:00', 5);
INSERT INTO public.student_payment VALUES (6, 950, '2024-11-12 13:20:00', 6);
INSERT INTO public.student_payment VALUES (7, 700, '2024-11-15 15:10:00', 7);
INSERT INTO public.student_payment VALUES (8, 1150, '2024-11-18 17:00:00', 8);
INSERT INTO public.student_payment VALUES (9, 1250, '2024-11-20 08:30:00', 9);
INSERT INTO public.student_payment VALUES (10, 1050, '2024-11-22 10:45:00', 10);


--
-- TOC entry 4982 (class 0 OID 17457)
-- Dependencies: 247
-- Data for Name: telephone; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.telephone VALUES (1, '+46701234567');
INSERT INTO public.telephone VALUES (2, '+46702345678');
INSERT INTO public.telephone VALUES (3, '+46703456789');
INSERT INTO public.telephone VALUES (4, '+46704567890');
INSERT INTO public.telephone VALUES (5, '+46705678901');
INSERT INTO public.telephone VALUES (6, '+46706789012');
INSERT INTO public.telephone VALUES (7, '+46707890123');
INSERT INTO public.telephone VALUES (8, '+46708901234');
INSERT INTO public.telephone VALUES (9, '+46709012345');
INSERT INTO public.telephone VALUES (10, '+46701123456');


--
-- TOC entry 4983 (class 0 OID 17463)
-- Dependencies: 248
-- Data for Name: telephone_person; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.telephone_person VALUES (1, 1);
INSERT INTO public.telephone_person VALUES (2, 2);
INSERT INTO public.telephone_person VALUES (3, 3);
INSERT INTO public.telephone_person VALUES (4, 4);
INSERT INTO public.telephone_person VALUES (5, 5);
INSERT INTO public.telephone_person VALUES (6, 6);
INSERT INTO public.telephone_person VALUES (7, 7);
INSERT INTO public.telephone_person VALUES (8, 8);
INSERT INTO public.telephone_person VALUES (9, 9);
INSERT INTO public.telephone_person VALUES (10, 10);


--
-- TOC entry 4989 (class 0 OID 0)
-- Dependencies: 217
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.address_address_id_seq', 10, true);


--
-- TOC entry 4990 (class 0 OID 0)
-- Dependencies: 219
-- Name: classroom_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.classroom_room_id_seq', 1, false);


--
-- TOC entry 4991 (class 0 OID 0)
-- Dependencies: 222
-- Name: email_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.email_email_id_seq', 1, false);


--
-- TOC entry 4992 (class 0 OID 0)
-- Dependencies: 228
-- Name: instructor_payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructor_payment_payment_id_seq', 1, false);


--
-- TOC entry 4993 (class 0 OID 0)
-- Dependencies: 231
-- Name: instrument_instrument_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrument_instrument_id_seq', 1, false);


--
-- TOC entry 4994 (class 0 OID 0)
-- Dependencies: 234
-- Name: lesson_lesson_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lesson_lesson_id_seq', 1, false);


--
-- TOC entry 4995 (class 0 OID 0)
-- Dependencies: 238
-- Name: person_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.person_person_id_seq', 10, true);


--
-- TOC entry 4996 (class 0 OID 0)
-- Dependencies: 244
-- Name: student_payment_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_payment_payment_id_seq', 10, true);


--
-- TOC entry 4997 (class 0 OID 0)
-- Dependencies: 246
-- Name: telephone_telephone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telephone_telephone_id_seq', 1, false);


-- Completed on 2024-11-21 23:25:51

--
-- PostgreSQL database dump complete
--

