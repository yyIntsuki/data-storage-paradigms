--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    address_id integer NOT NULL,
    zip character varying(30) NOT NULL,
    city character varying(30) NOT NULL,
    street character varying(30) NOT NULL,
    house_nr integer NOT NULL
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.address_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.address_address_id_seq OWNER TO postgres;

--
-- Name: address_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.address_address_id_seq OWNED BY public.address.address_id;


--
-- Name: classroom; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.classroom (
    room_id integer NOT NULL,
    location character varying(50) NOT NULL
);


ALTER TABLE public.classroom OWNER TO postgres;

--
-- Name: classroom_room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.classroom_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.classroom_room_id_seq OWNER TO postgres;

--
-- Name: classroom_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.classroom_room_id_seq OWNED BY public.classroom.room_id;


--
-- Name: contact_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contact_student (
    contact_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.contact_student OWNER TO postgres;

--
-- Name: email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.email (
    email_address character varying(50) NOT NULL,
    email_id integer NOT NULL
);


ALTER TABLE public.email OWNER TO postgres;

--
-- Name: email_email_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.email_email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.email_email_id_seq OWNER TO postgres;

--
-- Name: email_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.email_email_id_seq OWNED BY public.email.email_id;


--
-- Name: ensemble; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ensemble (
    lesson_type character varying(50) NOT NULL,
    genre character varying(50) NOT NULL
);


ALTER TABLE public.ensemble OWNER TO postgres;

--
-- Name: group_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_lesson (
    lesson_type character varying(50) NOT NULL,
    instrument character varying(40) NOT NULL
);


ALTER TABLE public.group_lesson OWNER TO postgres;

--
-- Name: individual_lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_lesson (
    lesson_type character varying(50) NOT NULL,
    instrument character varying(40) NOT NULL
);


ALTER TABLE public.individual_lesson OWNER TO postgres;

--
-- Name: instructor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor (
    instructor_id integer NOT NULL,
    instrument_taught character varying(30) NOT NULL
);


ALTER TABLE public.instructor OWNER TO postgres;

--
-- Name: instructor_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_payment (
    payment_id integer NOT NULL,
    amount integer NOT NULL,
    payment_date timestamp(6) without time zone NOT NULL,
    instructor_id integer NOT NULL
);


ALTER TABLE public.instructor_payment OWNER TO postgres;

--
-- Name: instructor_payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructor_payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.instructor_payment_payment_id_seq OWNER TO postgres;

--
-- Name: instructor_payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructor_payment_payment_id_seq OWNED BY public.instructor_payment.payment_id;


--
-- Name: instructor_schedule_slot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructor_schedule_slot (
    instructor_id integer NOT NULL,
    end_time timestamp(6) without time zone NOT NULL,
    activity character varying(50) NOT NULL,
    start_time timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.instructor_schedule_slot OWNER TO postgres;

--
-- Name: instrument; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrument (
    instrument_id integer NOT NULL,
    type character varying(50) NOT NULL,
    brand character varying(50) NOT NULL,
    stock integer NOT NULL,
    price_per_day integer NOT NULL
);


ALTER TABLE public.instrument OWNER TO postgres;

--
-- Name: instrument_instrument_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrument_instrument_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.instrument_instrument_id_seq OWNER TO postgres;

--
-- Name: instrument_instrument_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrument_instrument_id_seq OWNED BY public.instrument.instrument_id;


--
-- Name: instrument_rental; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrument_rental (
    start_date timestamp without time zone NOT NULL,
    end_date timestamp without time zone NOT NULL,
    instrument_id integer NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.instrument_rental OWNER TO postgres;

--
-- Name: lesson; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson (
    lesson_id integer NOT NULL,
    level integer NOT NULL,
    room_id integer NOT NULL,
    lesson_type character varying(50) NOT NULL,
    instructor_id integer NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone NOT NULL
);


ALTER TABLE public.lesson OWNER TO postgres;

--
-- Name: lesson_lesson_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lesson_lesson_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lesson_lesson_id_seq OWNER TO postgres;

--
-- Name: lesson_lesson_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lesson_lesson_id_seq OWNED BY public.lesson.lesson_id;


--
-- Name: lesson_type_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lesson_type_info (
    lesson_type character varying(50) NOT NULL,
    price integer NOT NULL
);


ALTER TABLE public.lesson_type_info OWNER TO postgres;

--
-- Name: participation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.participation (
    student_id integer NOT NULL,
    lesson_id integer NOT NULL
);


ALTER TABLE public.participation OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person (
    personal_num character varying(12) NOT NULL,
    person_id integer NOT NULL,
    full_name character varying(50) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.person OWNER TO postgres;

--
-- Name: person_address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_address (
    address_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.person_address OWNER TO postgres;

--
-- Name: person_email; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.person_email (
    email_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.person_email OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.person_person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.person_person_id_seq OWNER TO postgres;

--
-- Name: person_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.person_person_id_seq OWNED BY public.person.person_id;


--
-- Name: siblings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.siblings (
    student_id integer NOT NULL,
    student_id_0 integer NOT NULL
);


ALTER TABLE public.siblings OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    student_id integer NOT NULL,
    skill_level integer NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_payment (
    payment_id integer NOT NULL,
    amount integer NOT NULL,
    payment_date timestamp(6) without time zone NOT NULL,
    student_id integer NOT NULL
);


ALTER TABLE public.student_payment OWNER TO postgres;

--
-- Name: student_payment_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_payment_payment_id_seq OWNER TO postgres;

--
-- Name: student_payment_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_payment_payment_id_seq OWNED BY public.student_payment.payment_id;


--
-- Name: telephone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telephone (
    telephone_id integer NOT NULL,
    telephone_nr character varying(20) NOT NULL
);


ALTER TABLE public.telephone OWNER TO postgres;

--
-- Name: telephone_person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telephone_person (
    telephone_id integer NOT NULL,
    person_id integer NOT NULL
);


ALTER TABLE public.telephone_person OWNER TO postgres;

--
-- Name: telephone_telephone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telephone_telephone_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.telephone_telephone_id_seq OWNER TO postgres;

--
-- Name: telephone_telephone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telephone_telephone_id_seq OWNED BY public.telephone.telephone_id;


--
-- Name: address address_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public.address_address_id_seq'::regclass);


--
-- Name: classroom room_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom ALTER COLUMN room_id SET DEFAULT nextval('public.classroom_room_id_seq'::regclass);


--
-- Name: email email_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email ALTER COLUMN email_id SET DEFAULT nextval('public.email_email_id_seq'::regclass);


--
-- Name: instructor_payment payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_payment ALTER COLUMN payment_id SET DEFAULT nextval('public.instructor_payment_payment_id_seq'::regclass);


--
-- Name: instrument instrument_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument ALTER COLUMN instrument_id SET DEFAULT nextval('public.instrument_instrument_id_seq'::regclass);


--
-- Name: lesson lesson_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson ALTER COLUMN lesson_id SET DEFAULT nextval('public.lesson_lesson_id_seq'::regclass);


--
-- Name: person person_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person ALTER COLUMN person_id SET DEFAULT nextval('public.person_person_id_seq'::regclass);


--
-- Name: student_payment payment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_payment ALTER COLUMN payment_id SET DEFAULT nextval('public.student_payment_payment_id_seq'::regclass);


--
-- Name: telephone telephone_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telephone ALTER COLUMN telephone_id SET DEFAULT nextval('public.telephone_telephone_id_seq'::regclass);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- Name: classroom classroom_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.classroom
    ADD CONSTRAINT classroom_pkey PRIMARY KEY (room_id);


--
-- Name: contact_student contact_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_student
    ADD CONSTRAINT contact_student_pkey PRIMARY KEY (contact_id, student_id);


--
-- Name: email email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_pkey PRIMARY KEY (email_id);


--
-- Name: ensemble ensemble_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT ensemble_pkey PRIMARY KEY (lesson_type);


--
-- Name: group_lesson group_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT group_lesson_pkey PRIMARY KEY (lesson_type);


--
-- Name: individual_lesson individual_lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT individual_lesson_pkey PRIMARY KEY (lesson_type);


--
-- Name: instructor_payment instructor_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_payment
    ADD CONSTRAINT instructor_payment_pkey PRIMARY KEY (payment_id);


--
-- Name: instructor instructor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (instructor_id);


--
-- Name: instructor_schedule_slot instructor_schedule_slot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_schedule_slot
    ADD CONSTRAINT instructor_schedule_slot_pkey PRIMARY KEY (instructor_id, start_time);


--
-- Name: instrument instrument_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument
    ADD CONSTRAINT instrument_pkey PRIMARY KEY (instrument_id);


--
-- Name: instrument_rental instrument_rental_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT instrument_rental_pkey PRIMARY KEY (instrument_id, student_id);


--
-- Name: lesson lesson_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_pkey PRIMARY KEY (lesson_id);


--
-- Name: lesson_type_info lesson_type_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson_type_info
    ADD CONSTRAINT lesson_type_info_pkey PRIMARY KEY (lesson_type);


--
-- Name: participation participation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participation
    ADD CONSTRAINT participation_pkey PRIMARY KEY (student_id, lesson_id);


--
-- Name: person_address person_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_address
    ADD CONSTRAINT person_address_pkey PRIMARY KEY (address_id);


--
-- Name: person_email person_email_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_email
    ADD CONSTRAINT person_email_pkey PRIMARY KEY (email_id, person_id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (person_id);


--
-- Name: siblings siblings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT siblings_pkey PRIMARY KEY (student_id, student_id_0);


--
-- Name: student_payment student_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_payment
    ADD CONSTRAINT student_payment_pkey PRIMARY KEY (payment_id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);


--
-- Name: telephone_person telephone_person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telephone_person
    ADD CONSTRAINT telephone_person_pkey PRIMARY KEY (telephone_id);


--
-- Name: telephone telephone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telephone
    ADD CONSTRAINT telephone_pkey PRIMARY KEY (telephone_id);


--
-- Name: fki_person_student; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_person_student ON public.student USING btree (student_id);


--
-- Name: fki_person_student_FK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_person_student_FK" ON public.student USING btree (student_id);


--
-- Name: fki_person_telephone_person_FK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_person_telephone_person_FK" ON public.telephone_person USING btree (person_id);


--
-- Name: person_address address_person_address_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_address
    ADD CONSTRAINT address_person_address_fkey FOREIGN KEY (address_id) REFERENCES public.address(address_id) NOT VALID;


--
-- Name: person_email email_person_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_email
    ADD CONSTRAINT email_person_email_fkey FOREIGN KEY (email_id) REFERENCES public.email(email_id) NOT VALID;


--
-- Name: instructor_payment instructor_instructor_payment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_payment
    ADD CONSTRAINT instructor_instructor_payment_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructor(instructor_id) NOT VALID;


--
-- Name: instructor_schedule_slot instructor_instructor_schedule_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor_schedule_slot
    ADD CONSTRAINT instructor_instructor_schedule_fkey FOREIGN KEY (instructor_id) REFERENCES public.instructor(instructor_id) NOT VALID;


--
-- Name: instrument_rental instrument_instrument_rental_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT instrument_instrument_rental_fkey FOREIGN KEY (instrument_id) REFERENCES public.instrument(instrument_id) NOT VALID;


--
-- Name: participation lesson_participation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participation
    ADD CONSTRAINT lesson_participation_fkey FOREIGN KEY (lesson_id) REFERENCES public.lesson(lesson_id) NOT VALID;


--
-- Name: ensemble lesson_type_info_ensemble_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ensemble
    ADD CONSTRAINT lesson_type_info_ensemble_fkey FOREIGN KEY (lesson_type) REFERENCES public.lesson_type_info(lesson_type) NOT VALID;


--
-- Name: group_lesson lesson_type_info_group_lesson_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_lesson
    ADD CONSTRAINT lesson_type_info_group_lesson_fkey FOREIGN KEY (lesson_type) REFERENCES public.lesson_type_info(lesson_type) NOT VALID;


--
-- Name: individual_lesson lesson_type_info_individual_lesson_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_lesson
    ADD CONSTRAINT lesson_type_info_individual_lesson_fkey FOREIGN KEY (lesson_type) REFERENCES public.lesson_type_info(lesson_type) NOT VALID;


--
-- Name: lesson lesson_type_info_lesson_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lesson
    ADD CONSTRAINT lesson_type_info_lesson_fkey FOREIGN KEY (lesson_type) REFERENCES public.lesson_type_info(lesson_type) NOT VALID;


--
-- Name: contact_student person_contact_student_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_student
    ADD CONSTRAINT person_contact_student_fkey FOREIGN KEY (contact_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: instructor person_instructor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT person_instructor_fkey FOREIGN KEY (instructor_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: person_address person_person_address_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_address
    ADD CONSTRAINT person_person_address_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: person_email person_person_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.person_email
    ADD CONSTRAINT person_person_email_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: student person_student_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT person_student_fkey FOREIGN KEY (student_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: telephone_person person_telephone_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telephone_person
    ADD CONSTRAINT person_telephone_person_fkey FOREIGN KEY (person_id) REFERENCES public.person(person_id) NOT VALID;


--
-- Name: contact_student student_contact_student_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contact_student
    ADD CONSTRAINT student_contact_student_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: instrument_rental student_instrument_rental_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrument_rental
    ADD CONSTRAINT student_instrument_rental_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: participation student_participation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.participation
    ADD CONSTRAINT student_participation_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: siblings student_sibling_0_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT student_sibling_0_fkey FOREIGN KEY (student_id_0) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: siblings student_sibling_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.siblings
    ADD CONSTRAINT student_sibling_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: student_payment student_student_payment_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_payment
    ADD CONSTRAINT student_student_payment_fkey FOREIGN KEY (student_id) REFERENCES public.student(student_id) NOT VALID;


--
-- Name: telephone_person telephone_telephone_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telephone_person
    ADD CONSTRAINT telephone_telephone_person_fkey FOREIGN KEY (telephone_id) REFERENCES public.telephone(telephone_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

