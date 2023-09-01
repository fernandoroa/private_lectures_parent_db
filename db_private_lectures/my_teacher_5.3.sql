CREATE DATABASE my_teacher;
\c my_teacher

--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.10.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.10.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    id integer NOT NULL,
    avatar_url text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    school_year text NOT NULL,
    hour_intensity text NOT NULL,
    birth timestamp without time zone NOT NULL,
    teacher_id integer NOT NULL
);


--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    avatar_url text NOT NULL,
    name text NOT NULL,
    birth timestamp without time zone NOT NULL,
    education_level text NOT NULL,
    lecture_type text NOT NULL,
    subjects_taught text NOT NULL,
    created_at timestamp without time zone NOT NULL
);


--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.students (id, avatar_url, name, email, school_year, hour_intensity, birth, teacher_id) FROM stdin;
9	https://source.unsplash.com/collection/3465564/500x500	Daniel Spielberg	spi@gmail.com	Ensino médio 3	5	2012-12-12 00:00:00	10
10	https://source.unsplash.com/collection/3465564/500x500	Anna Bran	anna@gmail.com	Ensino médio 1	5	2012-02-02 00:00:00	12
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teachers (id, avatar_url, name, birth, education_level, lecture_type, subjects_taught, created_at) FROM stdin;
10	https://source.unsplash.com/collection/3465564/500x500	Clark Dean	2002-12-12 00:00:00	doutorado	distance	tecnologia, programação	2023-08-12 00:00:00
11	https://source.unsplash.com/collection/772333/500x500	Daniel Ford	1982-02-02 00:00:00	ensino_superior_completo	distance	Matemática	2023-09-01 00:00:00
12	https://source.unsplash.com/collection/772333/500x500	Henry Donald	1993-03-03 00:00:00	doutorado	present	tecnologia	2023-09-01 00:00:00
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.students_id_seq', 10, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teachers_id_seq', 12, true);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

