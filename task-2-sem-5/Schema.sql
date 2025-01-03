CREATE TABLE person (
    person_id INT NOT NULL UNIQUE,
    personal_num VARCHAR(12) NOT NULL UNIQUE,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (person_id);



CREATE TABLE address (
    address_id INT GENERATED ALWAYS AS IDENTITY,
    zip VARCHAR(30) NOT NULL,
    city VARCHAR(20) NOT NULL,
    street VARCHAR(30) NOT NULL,
    house_nr INT NOT NULL
);

ALTER TABLE address ADD CONSTRAINT PK_address PRIMARY KEY (address_id);



CREATE TABLE person_address (
    address_id INT NOT NULL,
    person_id INT NOT NULL
);

ALTER TABLE person_address ADD CONSTRAINT PK_person_address PRIMARY KEY (address_id, person_id);
ALTER TABLE person_address ADD CONSTRAINT FK_address_person_address FOREIGN KEY (address_id) REFERENCES address (address_id);
ALTER TABLE person_address ADD CONSTRAINT FK_person_person_address FOREIGN KEY (person_id) REFERENCES person (person_id);



CREATE TABLE email (
    email_id INT GENERATED ALWAYS AS IDENTITY,
    email_address VARCHAR(40) NOT NULL UNIQUE
);

ALTER TABLE email ADD CONSTRAINT PK_email PRIMARY KEY (email_id);



CREATE TABLE person_email (
    email_id INT NOT NULL,
    person_id INT NOT NULL
);

ALTER TABLE person_email ADD CONSTRAINT PK_person_email PRIMARY KEY (email_id, person_id);
ALTER TABLE person_email ADD CONSTRAINT FK_email_person_email FOREIGN KEY (email_id) REFERENCES email (email_id);
ALTER TABLE person_email ADD CONSTRAINT FK_person_person_email FOREIGN KEY (person_id) REFERENCES person (person_id);



CREATE TABLE telephone (
    telephone_id INT GENERATED ALWAYS AS IDENTITY,
    telephone_nr VARCHAR(15) NOT NULL UNIQUE
);

ALTER TABLE telephone ADD CONSTRAINT PK_telephone PRIMARY KEY (telephone_id);



CREATE TABLE person_telephone (
    telephone_id INT NOT NULL,
    person_id INT NOT NULL
);

ALTER TABLE person_telephone ADD CONSTRAINT PK_person_telephone PRIMARY KEY (telephone_id, person_id);
ALTER TABLE person_telephone ADD CONSTRAINT FK_telephone_person_telephone FOREIGN KEY (telephone_id) REFERENCES telephone (telephone_id);
ALTER TABLE person_telephone ADD CONSTRAINT FK_person_person_telephone FOREIGN KEY (person_id) REFERENCES person (person_id);



CREATE TABLE skill_level (
    skill_level_id INT GENERATED ALWAYS AS IDENTITY,
    skill_level VARCHAR(20)
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (skill_level_id);



CREATE TABLE student (
    student_id INT NOT NULL UNIQUE,
    skill_level INT NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);
ALTER TABLE student ADD CONSTRAINT FK_person_student FOREIGN KEY (student_id) REFERENCES person (person_id);
ALTER TABLE student ADD CONSTRAINT FK_skill_level_student FOREIGN KEY (skill_level) REFERENCES skill_level (skill_level_id);



CREATE TABLE siblings (
    student_id_1 INT NOT NULL,
    student_id_2 INT NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (student_id_1, student_id_2);
ALTER TABLE siblings ADD CONSTRAINT FK_student_siblings_0 FOREIGN KEY (student_id_1) REFERENCES student (student_id);
ALTER TABLE siblings ADD CONSTRAINT FK_student_siblings FOREIGN KEY (student_id_2) REFERENCES student (student_id);



CREATE TABLE contact_student (
    student_id INT NOT NULL,
    contact_id INT NOT NULL
);

ALTER TABLE contact_student ADD CONSTRAINT PK_contact_student PRIMARY KEY (student_id, contact_id);
ALTER TABLE contact_student ADD CONSTRAINT FK_person_contact_student FOREIGN KEY (contact_id) REFERENCES person (person_id);
ALTER TABLE contact_student ADD CONSTRAINT FK_student_contact_student FOREIGN KEY (student_id) REFERENCES student (student_id);



CREATE TABLE instructor (
    instructor_id INT NOT NULL UNIQUE,
    instrument_taught VARCHAR(30) NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (instructor_id);
ALTER TABLE instructor ADD CONSTRAINT FK_person_instructor FOREIGN KEY (instructor_id) REFERENCES person (person_id);



CREATE TABLE instructor_schedule_slot (
    start_time TIMESTAMP NOT NULL,
    instructor_id INT NOT NULL,
    activity VARCHAR(30) NOT NULL,
    end_time TIMESTAMP NOT NULL
);

ALTER TABLE instructor_schedule_slot ADD CONSTRAINT PK_instructor_schedule_slot PRIMARY KEY (start_time, instructor_id);
ALTER TABLE instructor_schedule_slot ADD CONSTRAINT FK_instructor_instructor_schedule_slot FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);



CREATE TABLE instrument (
    instrument_id INT GENERATED ALWAYS AS IDENTITY,
    instrument_type VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    price_per_day INT NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (instrument_id);



CREATE TABLE individual_instrument (
    individual_instrument_id INT GENERATED ALWAYS AS IDENTITY,
    instrument_id INT NOT NULL,
    serial_nr INT NOT NULL
);

ALTER TABLE individual_instrument ADD CONSTRAINT PK_individual_instrument PRIMARY KEY (individual_instrument_id);
ALTER TABLE individual_instrument ADD CONSTRAINT FK_instrument_individual_instrument FOREIGN KEY (instrument_id) REFERENCES instrument (instrument_id);



CREATE TABLE instrument_rental (
    student_id INT NOT NULL,
    individual_instrument_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL
);

ALTER TABLE instrument_rental ADD CONSTRAINT PK_instrument_rental PRIMARY KEY (student_id, individual_instrument_id);
ALTER TABLE instrument_rental ADD CONSTRAINT FK_student_instrument_rental FOREIGN KEY (student_id) REFERENCES student (student_id);
ALTER TABLE instrument_rental ADD CONSTRAINT FK_individual_instrument_instrument_rental FOREIGN KEY (individual_instrument_id) REFERENCES individual_instrument (individual_instrument_id);



CREATE TABLE lesson_type_info (
    lesson_type_id INT NOT NULL UNIQUE,
    lesson_type VARCHAR(35),
    price INT NOT NULL,
    min_allowed INT NOT NULL,
    max_allowed INT NOT NULL
);

ALTER TABLE lesson_type_info ADD CONSTRAINT PK_lesson_type_info PRIMARY KEY (lesson_type_id);



CREATE TABLE classroom (
    room_id INT GENERATED ALWAYS AS IDENTITY,
    classroom_location VARCHAR(50)
);

ALTER TABLE classroom ADD CONSTRAINT FK_classroom PRIMARY KEY (room_id);


CREATE TABLE lesson (
    lesson_id INT GENERATED ALWAYS AS IDENTITY,
    skill_level INT NOT NULL,
    room_id INT NOT NULL,
    lesson_type INT NOT NULL,
    instructor_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);
ALTER TABLE lesson ADD CONSTRAINT FK_classroom_lesson FOREIGN KEY (room_id) REFERENCES classroom (room_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_type_info_lesson FOREIGN KEY (lesson_type) REFERENCES lesson_type_info (lesson_type_id);
ALTER TABLE lesson ADD CONSTRAINT FK_instructor_lesson FOREIGN KEY (instructor_id) REFERENCES instructor (instructor_id);
ALTER TABLE lesson ADD CONSTRAINT FK_skill_level_lesson FOREIGN KEY (skill_level) REFERENCES skill_level (skill_level_id);



CREATE TABLE participation (
    lesson_id INT NOT NULL,
    student_id INT NOT NULL
);

ALTER TABLE participation ADD CONSTRAINT PK_participation PRIMARY KEY (lesson_id, student_id);
ALTER TABLE participation ADD CONSTRAINT FK_lesson_participation FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);
ALTER TABLE participation ADD CONSTRAINT FK_student_participation FOREIGN KEY (student_id) REFERENCES student (student_id);



CREATE TABLE single_instrument_lesson (
    lesson_id INT NOT NULL UNIQUE,
    instrument VARCHAR(30)
);

ALTER TABLE single_instrument_lesson ADD CONSTRAINT PK_single_instrument_lesson PRIMARY KEY (lesson_id);
ALTER TABLE single_instrument_lesson ADD CONSTRAINT FK_lesson_single_instrument_lesson FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);



CREATE TABLE ensemble (
    lesson_id INT NOT NULL UNIQUE,
    genre VARCHAR(30)
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);
ALTER TABLE ensemble ADD CONSTRAINT FK_lesson_ensemble FOREIGN KEY (lesson_id) REFERENCES lesson (lesson_id);