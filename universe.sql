--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_parsec integer,
    million_solar_masses integer,
    velocity_in_km_per_s numeric(5,2),
    constellation text,
    has_life boolean,
    has_been_explored boolean
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
    name character varying(30) NOT NULL,
    size_in_km integer,
    mass_in_sextillion_kg integer,
    velocity_in_km_per_s numeric(5,2),
    constellation text,
    columnhas_life boolean,
    has_been_explored boolean,
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
    name character varying(30) NOT NULL,
    size_in_km integer,
    mass_in_sextillion_kg integer,
    velocity_in_km_per_s numeric(5,2),
    columnconstellation text,
    has_life boolean,
    has_been_explored boolean,
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_light_years integer,
    mass_in_sextillion_kg integer,
    velocity_in_km_per_s numeric(5,2),
    constellation text,
    has_life boolean,
    has_been_explored boolean
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_km integer,
    mass_in_sextillion_kg integer,
    velocity_in_km_per_s numeric(5,2),
    constellation text,
    has_life boolean,
    has_been_explored boolean,
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 27, 1150000, 552.20, 'Sagittarius', true, true);
INSERT INTO public.galaxy VALUES (2, 'antennae galaxies', 150, NULL, NULL, 'Corvus', false, false);
INSERT INTO public.galaxy VALUES (3, 'Copernicus-ABC123', 1230, 11600000, 343.20, 'Celestical dolphin', true, false);
INSERT INTO public.galaxy VALUES (4, 'Copernicus-ABC123-beta', 90, 640000, 766.20, 'Celestical dolphin', false, false);
INSERT INTO public.galaxy VALUES (5, 'Copernicus-ABC123-omega', 999, 93840000, 799.20, 'Celestical dolphin', NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Prometheus-Beta-0', 1, 138400, 981.20, 'Celestical unicorn', NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (7, 'moon6', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.moon VALUES (8, 'moon7', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (9, 'moon8', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (10, 'moon9', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (11, 'moon10', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (12, 'moon11', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (13, 'moon12', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (14, 'moon13', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (15, 'moon14', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.moon VALUES (16, 'moon15', NULL, NULL, NULL, NULL, false, false, 5);
INSERT INTO public.moon VALUES (17, 'moon16', NULL, NULL, NULL, NULL, false, false, 5);
INSERT INTO public.moon VALUES (18, 'moon17', NULL, NULL, NULL, NULL, false, false, 5);
INSERT INTO public.moon VALUES (19, 'moon18', NULL, NULL, NULL, NULL, false, false, 5);
INSERT INTO public.moon VALUES (20, 'moon19', NULL, NULL, NULL, NULL, false, false, 6);
INSERT INTO public.moon VALUES (21, 'moon20', NULL, NULL, NULL, NULL, false, false, 6);
INSERT INTO public.moon VALUES (22, 'moon21', NULL, NULL, NULL, NULL, false, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, false, false, 1);
INSERT INTO public.planet VALUES (10, 'A', NULL, NULL, NULL, NULL, false, false, 2);
INSERT INTO public.planet VALUES (11, 'B', NULL, NULL, NULL, NULL, false, false, 2);
INSERT INTO public.planet VALUES (12, 'C', NULL, NULL, NULL, NULL, false, false, 2);
INSERT INTO public.planet VALUES (13, 'D1', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.planet VALUES (14, 'D2', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.planet VALUES (15, 'D3', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.planet VALUES (16, 'D4', NULL, NULL, NULL, NULL, false, false, 3);
INSERT INTO public.planet VALUES (17, 'E1', NULL, NULL, NULL, NULL, false, false, 4);
INSERT INTO public.planet VALUES (18, 'E2', NULL, NULL, NULL, NULL, false, false, 4);
INSERT INTO public.planet VALUES (19, 'E3', NULL, NULL, NULL, NULL, false, false, 4);
INSERT INTO public.planet VALUES (20, 'E4', NULL, NULL, NULL, NULL, false, false, 4);
INSERT INTO public.planet VALUES (21, 'E5', NULL, NULL, NULL, NULL, false, false, 4);
INSERT INTO public.planet VALUES (22, 'E6', NULL, NULL, NULL, NULL, false, false, 4);
INSERT INTO public.planet VALUES (23, 'F1', NULL, NULL, NULL, NULL, false, false, 5);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'solar_system1', NULL, NULL, NULL, NULL, false, false);
INSERT INTO public.solar_system VALUES (2, 'solar_system2', NULL, NULL, NULL, NULL, false, false);
INSERT INTO public.solar_system VALUES (3, 'solar_system3', NULL, NULL, NULL, NULL, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The sun', 1400000, 1900000000, 617.70, NULL, false, false, 1);
INSERT INTO public.star VALUES (2, 'Kepler-32', 700000, 800000000, NULL, 'Cygnus', false, false, 1);
INSERT INTO public.star VALUES (3, 'Kepler-34b', 30000, 20000000, NULL, 'Cygnus', false, false, 1);
INSERT INTO public.star VALUES (4, 'Jul-b-Omega', 3000, 1000000, 32.30, NULL, false, false, 3);
INSERT INTO public.star VALUES (5, 'Jul-b-Omega-2', 3000, 1000000, 32.30, NULL, false, false, 4);
INSERT INTO public.star VALUES (6, 'Jul-b-Omega-3', 3000, 1000000, 32.30, NULL, false, false, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


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


