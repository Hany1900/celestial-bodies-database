--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(100),
    alien_int1 integer NOT NULL,
    alien_int2 integer NOT NULL,
    alien_numeric1 numeric(10,4),
    alien_text text,
    alien_bool1 boolean,
    alien_bool2 boolean
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    galaxy_int1 integer NOT NULL,
    galaxy_int2 integer NOT NULL,
    galaxy_numeric1 numeric(10,4),
    galaxy_text text,
    galaxy_bool1 boolean,
    galaxy_bool2 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100),
    moon_int1 integer NOT NULL,
    moon_int2 integer NOT NULL,
    moon_numeric1 numeric(10,4),
    moon_text text,
    moon_bool1 boolean,
    moon_bool2 boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100),
    planet_int1 integer NOT NULL,
    planet_int2 integer NOT NULL,
    planet_numeric1 numeric(10,4),
    planet_text text,
    planet_bool1 boolean,
    planet_bool2 boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100),
    star_int1 integer NOT NULL,
    star_int2 integer NOT NULL,
    star_numeric1 numeric(10,4),
    star_text text,
    star_bool1 boolean,
    star_bool2 boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'G1', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.alien VALUES (2, 'G2', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.alien VALUES (3, 'G3', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.alien VALUES (4, 'G4', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.alien VALUES (5, 'G5', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.alien VALUES (6, 'G6', 1, 1, 1.0000, 'G Text', true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.galaxy VALUES (2, 'G2', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.galaxy VALUES (3, 'G3', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.galaxy VALUES (4, 'G4', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.galaxy VALUES (5, 'G5', 1, 1, 1.0000, 'G Text', true, false);
INSERT INTO public.galaxy VALUES (6, 'G6', 1, 1, 1.0000, 'G Text', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'G1', 1, 1, 1.0000, 'G Text', true, false, 1);
INSERT INTO public.moon VALUES (2, 'G2', 1, 1, 1.0000, 'G Text', true, false, 2);
INSERT INTO public.moon VALUES (3, 'G3', 1, 1, 1.0000, 'G Text', true, false, 3);
INSERT INTO public.moon VALUES (4, 'G4', 1, 1, 1.0000, 'G Text', true, false, 4);
INSERT INTO public.moon VALUES (5, 'G5', 1, 1, 1.0000, 'G Text', true, false, 5);
INSERT INTO public.moon VALUES (6, 'G6', 1, 1, 1.0000, 'G Text', true, false, 6);
INSERT INTO public.moon VALUES (7, 'G19', 1, 1, 1.0000, 'G Text', true, false, 7);
INSERT INTO public.moon VALUES (8, 'G20', 1, 1, 1.0000, 'G Text', true, false, 8);
INSERT INTO public.moon VALUES (9, 'G21', 1, 1, 1.0000, 'G Text', true, false, 9);
INSERT INTO public.moon VALUES (10, 'G22', 1, 1, 1.0000, 'G Text', true, false, 10);
INSERT INTO public.moon VALUES (11, 'G23', 1, 1, 1.0000, 'G Text', true, false, 11);
INSERT INTO public.moon VALUES (12, 'G24', 1, 1, 1.0000, 'G Text', true, false, 12);
INSERT INTO public.moon VALUES (13, 'G7', 1, 1, 1.0000, 'G Text', true, false, 1);
INSERT INTO public.moon VALUES (14, 'G8', 1, 1, 1.0000, 'G Text', true, false, 2);
INSERT INTO public.moon VALUES (15, 'G9', 1, 1, 1.0000, 'G Text', true, false, 3);
INSERT INTO public.moon VALUES (16, 'G10', 1, 1, 1.0000, 'G Text', true, false, 4);
INSERT INTO public.moon VALUES (17, 'G11', 1, 1, 1.0000, 'G Text', true, false, 5);
INSERT INTO public.moon VALUES (18, 'G12', 1, 1, 1.0000, 'G Text', true, false, 6);
INSERT INTO public.moon VALUES (19, 'G13', 1, 1, 1.0000, 'G Text', true, false, 7);
INSERT INTO public.moon VALUES (20, 'G14', 1, 1, 1.0000, 'G Text', true, false, 8);
INSERT INTO public.moon VALUES (21, 'G15', 1, 1, 1.0000, 'G Text', true, false, 9);
INSERT INTO public.moon VALUES (22, 'G16', 1, 1, 1.0000, 'G Text', true, false, 10);
INSERT INTO public.moon VALUES (23, 'G17', 1, 1, 1.0000, 'G Text', true, false, 11);
INSERT INTO public.moon VALUES (24, 'G18', 1, 1, 1.0000, 'G Text', true, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'G1', 1, 1, 1.0000, 'G Text', true, false, 1);
INSERT INTO public.planet VALUES (2, 'G2', 1, 1, 1.0000, 'G Text', true, false, 2);
INSERT INTO public.planet VALUES (3, 'G3', 1, 1, 1.0000, 'G Text', true, false, 3);
INSERT INTO public.planet VALUES (4, 'G4', 1, 1, 1.0000, 'G Text', true, false, 4);
INSERT INTO public.planet VALUES (5, 'G5', 1, 1, 1.0000, 'G Text', true, false, 6);
INSERT INTO public.planet VALUES (6, 'G6', 1, 1, 1.0000, 'G Text', true, false, 6);
INSERT INTO public.planet VALUES (7, 'G7', 1, 1, 1.0000, 'G Text', true, false, 1);
INSERT INTO public.planet VALUES (8, 'G8', 1, 1, 1.0000, 'G Text', true, false, 2);
INSERT INTO public.planet VALUES (9, 'G9', 1, 1, 1.0000, 'G Text', true, false, 3);
INSERT INTO public.planet VALUES (10, 'G10', 1, 1, 1.0000, 'G Text', true, false, 4);
INSERT INTO public.planet VALUES (11, 'G11', 1, 1, 1.0000, 'G Text', true, false, 5);
INSERT INTO public.planet VALUES (12, 'G12', 1, 1, 1.0000, 'G Text', true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'G1', 1, 1, 1.0000, 'G Text', true, false, 1);
INSERT INTO public.star VALUES (2, 'G2', 1, 1, 1.0000, 'G Text', true, false, 2);
INSERT INTO public.star VALUES (3, 'G3', 1, 1, 1.0000, 'G Text', true, false, 3);
INSERT INTO public.star VALUES (4, 'G4', 1, 1, 1.0000, 'G Text', true, false, 4);
INSERT INTO public.star VALUES (5, 'G5', 1, 1, 1.0000, 'G Text', true, false, 5);
INSERT INTO public.star VALUES (6, 'G6', 1, 1, 1.0000, 'G Text', true, false, 6);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien alien_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_name_key UNIQUE (name);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

