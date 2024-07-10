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
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_to_earth integer NOT NULL,
    distance_to_sun integer NOT NULL,
    size integer
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
    name character varying(20),
    distance_to_earth numeric(4,2) NOT NULL,
    distance_to_sun numeric(4,2) NOT NULL,
    diameter integer,
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
    name character varying(20),
    distance_to_earth numeric(4,2) NOT NULL,
    distance_to_sun numeric(4,2) NOT NULL,
    inhabited boolean,
    diameter integer,
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    color text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    distance_to_earth integer NOT NULL,
    distance_to_sun integer NOT NULL,
    size integer,
    active boolean,
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
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 27000, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 3, 3, 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 3, 3, 60000);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 0, 0, 14000);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 0, 0, 7000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 53, 53, 120000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 0.00, 1.00, 3474, 4);
INSERT INTO public.moon VALUES (22, 'Phobos', 0.61, 0.39, 22, 2);
INSERT INTO public.moon VALUES (23, 'Deimos', 0.28, 0.72, 12, 3);
INSERT INTO public.moon VALUES (24, 'Io', 0.00, 1.00, 3643, 4);
INSERT INTO public.moon VALUES (25, 'Europa', 0.52, 1.52, 3121, 5);
INSERT INTO public.moon VALUES (26, 'Ganymede', 4.20, 5.20, 5268, 6);
INSERT INTO public.moon VALUES (27, 'Callisto', 8.53, 9.58, 4821, 7);
INSERT INTO public.moon VALUES (28, 'Mimas', 18.21, 19.22, 396, 8);
INSERT INTO public.moon VALUES (29, 'Enceladus', 29.09, 30.05, 504, 9);
INSERT INTO public.moon VALUES (30, 'Tethys', 2.77, 2.77, 1062, 10);
INSERT INTO public.moon VALUES (31, 'Dione', 94.51, 94.63, 1123, 11);
INSERT INTO public.moon VALUES (32, 'Rhea', 43.01, 43.13, 1527, 12);
INSERT INTO public.moon VALUES (33, 'Titan', 50.50, 51.40, 5151, 13);
INSERT INTO public.moon VALUES (34, 'Iapetus', 8.53, 9.58, 1470, 7);
INSERT INTO public.moon VALUES (35, 'Miranda', 18.21, 19.22, 471, 8);
INSERT INTO public.moon VALUES (36, 'Ariel', 18.21, 19.22, 1158, 8);
INSERT INTO public.moon VALUES (37, 'Umbriel', 18.21, 19.22, 1169, 8);
INSERT INTO public.moon VALUES (38, 'Titania', 18.21, 19.22, 1576, 8);
INSERT INTO public.moon VALUES (39, 'Oberon', 18.21, 19.22, 1523, 8);
INSERT INTO public.moon VALUES (40, 'Triton', 29.09, 30.05, 2707, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mercury', 0.61, 0.39, false, 4880, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0.28, 0.72, false, 12104, 2);
INSERT INTO public.planet VALUES (5, 'Mars', 0.52, 1.52, false, 6779, 3);
INSERT INTO public.planet VALUES (6, 'Jupiter', 4.20, 5.20, false, 139820, 4);
INSERT INTO public.planet VALUES (7, 'Saturn', 8.53, 9.58, false, 116460, 5);
INSERT INTO public.planet VALUES (8, 'Uranus', 18.21, 19.22, false, 50724, 6);
INSERT INTO public.planet VALUES (9, 'Neptune', 29.09, 30.05, false, 49244, 1);
INSERT INTO public.planet VALUES (4, 'Earth', 0.00, 1.00, true, 12742, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', 2.77, 2.77, false, 940, 3);
INSERT INTO public.planet VALUES (11, 'Eris', 94.51, 9.63, false, 2326, 4);
INSERT INTO public.planet VALUES (12, 'Haumea', 43.01, 43.13, false, 1960, 5);
INSERT INTO public.planet VALUES (13, 'Makemake', 50.50, 51.40, false, 1434, 6);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (19, 'Terrestrial', 2, 'Gray');
INSERT INTO public.planet_type VALUES (20, 'Rocky', 2, 'Gray');
INSERT INTO public.planet_type VALUES (21, 'Terrestrial', 3, 'Yellow');
INSERT INTO public.planet_type VALUES (22, 'Rocky', 3, 'Yellow');
INSERT INTO public.planet_type VALUES (23, 'Terrestrial', 4, 'Blue');
INSERT INTO public.planet_type VALUES (24, 'Rocky', 4, 'Blue');
INSERT INTO public.planet_type VALUES (25, 'Gas Giant', 5, 'Orange');
INSERT INTO public.planet_type VALUES (26, 'Giant Planet', 5, 'Orange');
INSERT INTO public.planet_type VALUES (27, 'Gas Giant', 6, 'Yellow');
INSERT INTO public.planet_type VALUES (28, 'Giant Planet', 6, 'Yellow');
INSERT INTO public.planet_type VALUES (29, 'Gas Giant', 7, 'Yellow');
INSERT INTO public.planet_type VALUES (30, 'Giant Planet', 7, 'Yellow');
INSERT INTO public.planet_type VALUES (31, 'Ice Giant', 8, 'Blue');
INSERT INTO public.planet_type VALUES (32, 'Ice Giant', 9, 'Blue');
INSERT INTO public.planet_type VALUES (33, 'Dwarf Planet', 10, 'Brown');
INSERT INTO public.planet_type VALUES (34, 'Dwarf Planet', 11, 'Brown');
INSERT INTO public.planet_type VALUES (35, 'Dwarf Planet', 12, 'Brown');
INSERT INTO public.planet_type VALUES (36, 'Dwarf Planet', 13, 'Brown');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 268332, 268332, 200000, true, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 268332, 268332, 1227000, true, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', 268332, 268332, 870000, true, 1);
INSERT INTO public.star VALUES (4, 'Sirius A', 544584, 544584, 2380000, true, 1);
INSERT INTO public.star VALUES (5, 'Barnard''s Star', 375575, 375575, 200000, true, 6);
INSERT INTO public.star VALUES (6, 'Wolf 359', 474565, 474565, 145000, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_type planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_type_id);


--
-- Name: planet_type planet_types_planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_planet_types_id_key UNIQUE (planet_type_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: planet_type planet_types_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_types_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

