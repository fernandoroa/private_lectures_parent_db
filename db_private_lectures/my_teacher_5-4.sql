CREATE DATABASE my_teacher;
\c my_teacher

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-0ubuntu0.23.04.1)

-- Started on 2023-09-14 11:26:57 -03

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
-- TOC entry 214 (class 1259 OID 16417)
-- Name: students; Type: TABLE; Schema: public; Owner: fernando
--

CREATE TABLE public.students (
    id integer NOT NULL,
    avatar_url text NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    school_year text NOT NULL,
    hour_intensity integer NOT NULL,
    birth timestamp without time zone NOT NULL,
    teacher_id integer NOT NULL
);


ALTER TABLE public.students OWNER TO fernando;

--
-- TOC entry 215 (class 1259 OID 16422)
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: fernando
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO fernando;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 215
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernando
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- TOC entry 216 (class 1259 OID 16423)
-- Name: teachers; Type: TABLE; Schema: public; Owner: fernando
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


ALTER TABLE public.teachers OWNER TO fernando;

--
-- TOC entry 217 (class 1259 OID 16428)
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: fernando
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_id_seq OWNER TO fernando;

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 217
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: fernando
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- TOC entry 3240 (class 2604 OID 16429)
-- Name: students id; Type: DEFAULT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- TOC entry 3241 (class 2604 OID 16430)
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- TOC entry 3388 (class 0 OID 16417)
-- Dependencies: 214
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: fernando
--

COPY public.students (id, avatar_url, name, email, school_year, hour_intensity, birth, teacher_id) FROM stdin;
9	https://source.unsplash.com/collection/3465564/500x500	Daniel Spielberg	spi@gmail.com	Ensino médio 3	5	2012-12-12 00:00:00	10
10	https://source.unsplash.com/collection/3465564/500x500	Anna Bran	anna@gmail.com	Ensino médio 1	5	2012-02-02 00:00:00	12
11	https://source.unsplash.com/collection/3465564/500x500	Bradley Thompson	brad@gmail.com	Ensino médio 1	15	2013-02-12 00:00:00	11
12	https://source.unsplash.com/collection/3465564/500x500	Cynthia Elver	cynthia@gmail.com	Ensino médio 1	16	2012-02-12 00:00:00	11
13	https://source.unsplash.com/collection/3465564/500x500	Francis Galton	francisd@gmail.com	Ensino médio 2	20	2014-02-12 00:00:00	11
14	https://source.unsplash.com/collection/3465564/500x500	Gabriel Clinton	gabriel@gmail.com	Ensino médio 3	10	2010-02-12 00:00:00	11
15	https://source.unsplash.com/collection/3465564/500x500	Hillary Thompson	hillary@gmail.com	Ensino médio 1	10	2005-02-12 00:00:00	11
16	https://source.unsplash.com/collection/3465564/500x500	Indiana Couper	indiana@gmail.com	Ensino médio 1	9	2008-02-12 00:00:00	11
17	https://source.unsplash.com/collection/3465564/500x500	John Koepfer	john@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
18	https://source.unsplash.com/collection/3465564/500x500	Lilia Koepfer	lilia@gmail.com	Ensino médio 2	18	2005-02-12 00:00:00	11
19	https://source.unsplash.com/collection/3465564/500x500	Marilyn Koepfer	marilyn@gmail.com	Ensino médio 2	18	2005-02-12 00:00:00	11
20	https://source.unsplash.com/collection/3465564/500x500	Noah Koepfer	noah@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
21	https://source.unsplash.com/collection/3465564/500x500	Oskar Koepfer	oskar@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
22	https://source.unsplash.com/collection/3465564/500x500	Patrick Koepfer	patrick@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
23	https://source.unsplash.com/collection/3465564/500x500	Randolph Koepfer	randolph@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
24	https://source.unsplash.com/collection/3465564/500x500	Sandra Koepfer	sandra@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
25	https://source.unsplash.com/collection/3465564/500x500	Tannia Koepfer	tannia@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
26	https://source.unsplash.com/collection/3465564/500x500	Ur Koepfer	ur@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
29	https://source.unsplash.com/collection/3465564/500x500	Bart Koepfer	bart@gmail.com	Ensino médio 1	18	2005-02-12 00:00:00	11
27	https://source.unsplash.com/collection/3465564/500x500	Vivian Koepfer	vivian@gmail.com	Ensino médio 1	20	2005-02-12 00:00:00	11
28	https://source.unsplash.com/collection/3465564/500x500	Abel Koepfer	abel@gmail.com	Ensino médio 1	19	2005-02-12 00:00:00	11
\.


--
-- TOC entry 3390 (class 0 OID 16423)
-- Dependencies: 216
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: fernando
--

COPY public.teachers (id, avatar_url, name, birth, education_level, lecture_type, subjects_taught, created_at) FROM stdin;
10	https://source.unsplash.com/collection/3465564/500x500	Clark Dean	2002-12-12 00:00:00	doutorado	distance	tecnologia, programação	2023-08-12 00:00:00
11	https://source.unsplash.com/collection/772333/500x500	Daniel Ford	1982-02-02 00:00:00	ensino_superior_completo	distance	Matemática	2023-09-01 00:00:00
12	https://source.unsplash.com/collection/772333/500x500	Henry Donald	1993-03-03 00:00:00	doutorado	present	tecnologia	2023-09-01 00:00:00
\.


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 215
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fernando
--

SELECT pg_catalog.setval('public.students_id_seq', 30, true);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 217
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: fernando
--

SELECT pg_catalog.setval('public.teachers_id_seq', 12, true);


--
-- TOC entry 3243 (class 2606 OID 16432)
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 16434)
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: fernando
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


-- Completed on 2023-09-14 11:26:57 -03

--
-- PostgreSQL database dump complete
--

