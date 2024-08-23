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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric(6,1),
    is_spherical boolean NOT NULL,
    age integer,
    has_life character varying(30),
    galaxy_id integer NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean NOT NULL,
    size text,
    is_spherical boolean,
    id text,
    moon_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_center text,
    is_spherical boolean NOT NULL,
    id text,
    planet_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
    nothing text,
    random text,
    id text,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_and_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_and_galaxy (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    star_and_galaxy_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.star_and_galaxy OWNER TO freecodecamp;

--
-- Name: star_and_galaxy_star_and_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_and_galaxy_star_and_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_and_galaxy_star_and_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_and_galaxy_star_and_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_and_galaxy_star_and_galaxy_id_seq OWNED BY public.star_and_galaxy.star_and_galaxy_id;


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star_and_galaxy star_and_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_and_galaxy ALTER COLUMN star_and_galaxy_id SET DEFAULT nextval('public.star_and_galaxy_star_and_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 8500.0, false, 8500, 'YES', 1, NULL);
INSERT INTO public.galaxy VALUES ('Andromoda', 1.5, true, 15, 'UNKNOWN', 2, NULL);
INSERT INTO public.galaxy VALUES ('Super Galaxy', 1.0, false, 1, 'YES', 3, NULL);
INSERT INTO public.galaxy VALUES ('Cat Galaxy', 150.0, false, 150, 'YES', 4, NULL);
INSERT INTO public.galaxy VALUES ('Nothingness', 50000.0, false, 50000, 'NO', 5, NULL);
INSERT INTO public.galaxy VALUES ('Spiral Galaxy', 10000.0, false, 10000, 'YES', 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 400, false, 'small', true, NULL, 1, 1);
INSERT INTO public.moon VALUES ('Rhea', 700, false, 'small', true, NULL, 8, 1);
INSERT INTO public.moon VALUES ('Water Moon', 3000, false, 'small', true, NULL, 10, 1);
INSERT INTO public.moon VALUES ('Poseidon', 2500, false, 'small', true, NULL, 13, 1);
INSERT INTO public.moon VALUES ('Faraway', 20000, true, 'small', true, NULL, 15, 1);
INSERT INTO public.moon VALUES ('Sonata', 5000, false, 'small', true, NULL, 16, 1);
INSERT INTO public.moon VALUES ('X-qe11', 7500, true, 'small', true, NULL, 17, 1);
INSERT INTO public.moon VALUES ('Ulipas', 500, false, 'small', true, NULL, 18, 1);
INSERT INTO public.moon VALUES ('Batus', 300, false, 'small', true, NULL, 19, 1);
INSERT INTO public.moon VALUES ('Big Moon', 800, false, 'big', true, NULL, 2, 10);
INSERT INTO public.moon VALUES ('Artemis', 2000, true, 'big', true, NULL, 3, 10);
INSERT INTO public.moon VALUES ('Monarchy', 10000, true, 'big', false, NULL, 6, 10);
INSERT INTO public.moon VALUES ('Lupis', 4000, true, 'big', true, NULL, 7, 10);
INSERT INTO public.moon VALUES ('Spiral Moon', 10000, true, 'big', false, NULL, 11, 10);
INSERT INTO public.moon VALUES ('Galaxis', 25000, true, 'extremely big', true, NULL, 5, 9);
INSERT INTO public.moon VALUES ('Azrak', 35000, true, 'very big', false, NULL, 14, 10);
INSERT INTO public.moon VALUES ('Great End', 50000, true, 'very big', false, NULL, 20, 10);
INSERT INTO public.moon VALUES ('Donut', 300, false, 'medium', false, NULL, 4, 11);
INSERT INTO public.moon VALUES ('Requim', 600, false, 'medium', true, NULL, 9, 11);
INSERT INTO public.moon VALUES ('Odeyssus', 1000, true, 'medium', true, NULL, 12, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 400, true, 'somewhat close', true, NULL, 1, 1);
INSERT INTO public.planet VALUES ('Mars', 400, true, 'a bit close', true, NULL, 2, 1);
INSERT INTO public.planet VALUES ('Mercury', 400, false, 'very close', true, NULL, 3, 1);
INSERT INTO public.planet VALUES ('Venus', 400, true, 'close', true, NULL, 4, 1);
INSERT INTO public.planet VALUES ('Jupiter', 700, false, 'not too close', true, NULL, 5, 1);
INSERT INTO public.planet VALUES ('Saturn', 800, false, 'getting less close', true, NULL, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', 900, false, 'a little far', true, NULL, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', 900, false, 'far', true, NULL, 8, 1);
INSERT INTO public.planet VALUES ('Diana', 750, false, 'somewhat far', true, NULL, 12, 2);
INSERT INTO public.planet VALUES ('The Edge', 10, true, 'edge of the universe', false, NULL, 11, 6);
INSERT INTO public.planet VALUES ('Spiral Planet', 1000, true, 'extremely close', false, NULL, 10, 5);
INSERT INTO public.planet VALUES ('Yazur', 5000, true, 'extremely far', false, NULL, 9, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 450, true, NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES ('Super Sun', 1600, true, NULL, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES ('Helios', 100, true, NULL, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES ('Dwarf Star', 3500, false, NULL, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES ('Great Star', 500, true, NULL, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES ('Black Hole', 4000, false, NULL, NULL, NULL, 6, 6);


--
-- Data for Name: star_and_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_and_galaxy VALUES (1, 1, 1, NULL);
INSERT INTO public.star_and_galaxy VALUES (1, 2, 2, NULL);
INSERT INTO public.star_and_galaxy VALUES (2, 3, 3, NULL);
INSERT INTO public.star_and_galaxy VALUES (3, 6, 4, NULL);
INSERT INTO public.star_and_galaxy VALUES (6, 5, 5, NULL);
INSERT INTO public.star_and_galaxy VALUES (5, 5, 6, NULL);


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
-- Name: star_and_galaxy_star_and_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_and_galaxy_star_and_galaxy_id_seq', 6, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


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
-- Name: planet planet_distance_from_center_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_center_key UNIQUE (distance_from_center);


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
-- Name: star_and_galaxy star_and_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_and_galaxy
    ADD CONSTRAINT star_and_galaxy_pkey PRIMARY KEY (star_and_galaxy_id);


--
-- Name: star_and_galaxy star_and_galaxy_star_and_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_and_galaxy
    ADD CONSTRAINT star_and_galaxy_star_and_galaxy_id_key UNIQUE (star_and_galaxy_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
-- Name: star_and_galaxy star_and_galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_and_galaxy
    ADD CONSTRAINT star_and_galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star_and_galaxy star_and_galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_and_galaxy
    ADD CONSTRAINT star_and_galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

