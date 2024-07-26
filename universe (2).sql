--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: commet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.commet (
    commet_id integer NOT NULL,
    name character varying(40),
    next_appearance_in_years integer NOT NULL,
    constrain name
);


ALTER TABLE public.commet OWNER TO freecodecamp;

--
-- Name: commet_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.commet_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.commet_comment_id_seq OWNER TO freecodecamp;

--
-- Name: commet_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.commet_comment_id_seq OWNED BY public.commet.commet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    radius_in_light_years integer,
    constraints name,
    distance_from_earth_in_light_years integer NOT NULL
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
    name character varying(40),
    planet_id integer NOT NULL,
    constrain name,
    tidally_locked boolean,
    description text
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
    name character varying(40),
    star_id integer NOT NULL,
    constrain name,
    habitable boolean,
    year_in_earth_years numeric
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
    name character varying(40),
    galaxy_id integer NOT NULL,
    constrain name,
    age_in_millions_of_years integer,
    type character varying(30)
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
-- Name: commet commet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet ALTER COLUMN commet_id SET DEFAULT nextval('public.commet_comment_id_seq'::regclass);


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
-- Data for Name: commet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.commet VALUES (1, 'C-LD4', 12, NULL);
INSERT INTO public.commet VALUES (2, 'C-RB1', 80, NULL);
INSERT INTO public.commet VALUES (3, 'C-HE9', 125, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G-AA1', 5436, 350, NULL, 50000);
INSERT INTO public.galaxy VALUES (2, 'G-ST4', 3354, 250, NULL, 38000);
INSERT INTO public.galaxy VALUES (3, 'G-RB3', 2583, 185, NULL, 22750);
INSERT INTO public.galaxy VALUES (4, 'G-PV3', 1534, 111, NULL, 22000);
INSERT INTO public.galaxy VALUES (5, 'G-NU9', 1874, 211, NULL, 2000);
INSERT INTO public.galaxy VALUES (6, 'G-LD5', 5394, 341, NULL, 6000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'M-DAA1-3', 3, NULL, true, NULL);
INSERT INTO public.moon VALUES (2, 'M-DAA3-2', 3, NULL, false, NULL);
INSERT INTO public.moon VALUES (3, 'M-VDT2-1', 3, NULL, false, NULL);
INSERT INTO public.moon VALUES (4, 'M-VDT2-1', 5, NULL, false, NULL);
INSERT INTO public.moon VALUES (5, 'M-DEG2-1', 7, NULL, true, NULL);
INSERT INTO public.moon VALUES (6, 'M-FTE1-1', 8, NULL, true, NULL);
INSERT INTO public.moon VALUES (7, 'M-FTE2-1', 9, NULL, true, NULL);
INSERT INTO public.moon VALUES (8, 'M-FTE2-2', 9, NULL, true, NULL);
INSERT INTO public.moon VALUES (9, 'M-FTE2-3', 9, NULL, true, NULL);
INSERT INTO public.moon VALUES (10, 'M-FTE2-4', 9, NULL, true, NULL);
INSERT INTO public.moon VALUES (11, 'M-FTE2-5', 9, NULL, true, NULL);
INSERT INTO public.moon VALUES (12, 'M-FTE2-6', 9, NULL, false, NULL);
INSERT INTO public.moon VALUES (13, 'M-FTE3-1', 10, NULL, false, NULL);
INSERT INTO public.moon VALUES (14, 'M-FTE3-2', 10, NULL, true, NULL);
INSERT INTO public.moon VALUES (15, 'M-FTE4-1', 11, NULL, false, NULL);
INSERT INTO public.moon VALUES (16, 'M-FTE4-2', 11, NULL, false, NULL);
INSERT INTO public.moon VALUES (17, 'M-FTE4-3', 11, NULL, false, NULL);
INSERT INTO public.moon VALUES (18, 'M-RDG3-1', 12, NULL, false, NULL);
INSERT INTO public.moon VALUES (19, 'M-RDG3-2', 12, NULL, false, NULL);
INSERT INTO public.moon VALUES (20, 'M-RDG3-3', 12, NULL, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'P-DAA1', 1, NULL, false, 1.25);
INSERT INTO public.planet VALUES (2, 'P-DAA2', 1, NULL, false, 7);
INSERT INTO public.planet VALUES (3, 'P-DAA3', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'P-VDT1', 3, NULL, true, 4);
INSERT INTO public.planet VALUES (5, 'P-VDT2', 3, NULL, false, 7);
INSERT INTO public.planet VALUES (6, 'P-DEG1', 4, NULL, false, 0.25);
INSERT INTO public.planet VALUES (7, 'P-DEG2', 4, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'P-FTE1', 5, NULL, false, 0.5);
INSERT INTO public.planet VALUES (9, 'P-FTE2', 5, NULL, true, 1.6);
INSERT INTO public.planet VALUES (10, 'P-FTE3', 5, NULL, true, 1.9);
INSERT INTO public.planet VALUES (11, 'P-FTE4', 5, NULL, false, 7);
INSERT INTO public.planet VALUES (12, 'P-RDG3', 6, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'S-DKR5', 1, NULL, 1456, NULL);
INSERT INTO public.star VALUES (2, 'S-DKR6', 1, NULL, 1556, NULL);
INSERT INTO public.star VALUES (3, 'S-DKR7', 1, NULL, 1526, NULL);
INSERT INTO public.star VALUES (4, 'S-OVF2', 2, NULL, 1126, NULL);
INSERT INTO public.star VALUES (5, 'S-GRD6', 3, NULL, 1786, NULL);
INSERT INTO public.star VALUES (6, 'S-PBF5', 4, NULL, 1853, NULL);


--
-- Name: commet_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.commet_comment_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: commet commet_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_constrain_key UNIQUE (constrain);


--
-- Name: commet commet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.commet
    ADD CONSTRAINT commet_pkey PRIMARY KEY (commet_id);


--
-- Name: galaxy galaxy_constraints_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constraints_key UNIQUE (constraints);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_constrain_key UNIQUE (constrain);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_constrain_key UNIQUE (constrain);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constrain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constrain_key UNIQUE (constrain);


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

