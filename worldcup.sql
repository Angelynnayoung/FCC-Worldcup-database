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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (2, 2, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 3, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 1, 2, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 3, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 4, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 2, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 1, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 4, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 5, 14, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 2, 15, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 6, 16, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 3, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 7, 18, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 8, 19, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 1, 11, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 9, 11, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (18, 10, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 11, 10, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 9, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 10, 13, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 11, 2, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 6, 12, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 9, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 6, 20, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 12, 8, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 1, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 9, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 10, 16, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 13, 23, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 11, 14, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 2, 24, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (33, 1, 3, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (34, 2, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (35, 3, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (36, 1, 2, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (37, 3, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (38, 4, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (39, 2, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 1, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 4, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 5, 14, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (43, 2, 15, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 6, 16, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 3, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 7, 18, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 8, 19, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 1, 11, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 9, 11, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (50, 10, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (51, 11, 10, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (52, 9, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (53, 10, 13, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 11, 2, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (55, 6, 12, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (56, 9, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (57, 6, 20, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 12, 8, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 1, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 9, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 10, 16, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 13, 23, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 11, 14, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 2, 24, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (65, 1, 3, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 2, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 3, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 1, 2, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 3, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 4, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 2, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 1, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 4, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 5, 14, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 2, 15, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 6, 16, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 3, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 7, 18, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 8, 19, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 1, 11, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 9, 11, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 10, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 11, 10, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 9, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 10, 13, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 11, 2, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 6, 12, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 9, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 6, 20, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 12, 8, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 1, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 9, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 10, 16, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 13, 23, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 11, 14, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 2, 24, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (97, 1, 3, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (98, 2, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (99, 3, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (100, 1, 2, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (101, 3, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (102, 4, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (103, 2, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (104, 1, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (105, 4, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (106, 5, 14, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (107, 2, 15, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (108, 6, 16, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (109, 3, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (110, 7, 18, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (111, 8, 19, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (112, 1, 11, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (113, 9, 11, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (114, 10, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (115, 11, 10, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (116, 9, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (117, 10, 13, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (118, 11, 2, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (119, 6, 12, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (120, 9, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (121, 6, 20, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (122, 12, 8, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (123, 1, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (124, 9, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (125, 10, 16, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (126, 13, 23, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (127, 11, 14, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (128, 2, 24, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (129, 1, 3, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (130, 2, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (131, 3, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (132, 1, 2, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (133, 3, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (134, 4, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (135, 2, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (136, 1, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (137, 4, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (138, 5, 14, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (139, 2, 15, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (140, 6, 16, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (141, 3, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (142, 7, 18, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (143, 8, 19, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (144, 1, 11, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (145, 9, 11, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (146, 10, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (147, 11, 10, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (148, 9, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (149, 10, 13, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (150, 11, 2, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (151, 6, 12, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (152, 9, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (153, 6, 20, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (154, 12, 8, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (155, 1, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (156, 9, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (157, 10, 16, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (158, 13, 23, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (159, 11, 14, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (160, 2, 24, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (161, 1, 3, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (162, 2, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (163, 3, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (164, 1, 2, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (165, 3, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (166, 4, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (167, 2, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (168, 1, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (169, 4, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (170, 5, 14, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (171, 2, 15, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (172, 6, 16, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (173, 3, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (174, 7, 18, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (175, 8, 19, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (176, 1, 11, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (177, 9, 11, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (178, 10, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (179, 11, 10, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (180, 9, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (181, 10, 13, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (182, 11, 2, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (183, 6, 12, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (184, 9, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (185, 6, 20, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (186, 12, 8, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (187, 1, 21, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (188, 9, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (189, 10, 16, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (190, 13, 23, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (191, 11, 14, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (192, 2, 24, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Belgium');
INSERT INTO public.teams VALUES (3, 'Croatia');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (5, 'Sweden');
INSERT INTO public.teams VALUES (6, 'Brazil');
INSERT INTO public.teams VALUES (7, 'Russia');
INSERT INTO public.teams VALUES (8, 'Uruguay');
INSERT INTO public.teams VALUES (9, 'Germany');
INSERT INTO public.teams VALUES (10, 'Netherlands');
INSERT INTO public.teams VALUES (11, 'Argentina');
INSERT INTO public.teams VALUES (12, 'Colombia');
INSERT INTO public.teams VALUES (13, 'Costa Rica');
INSERT INTO public.teams VALUES (14, 'Switzerland');
INSERT INTO public.teams VALUES (15, 'Japan');
INSERT INTO public.teams VALUES (16, 'Mexico');
INSERT INTO public.teams VALUES (17, 'Denmark');
INSERT INTO public.teams VALUES (18, 'Spain');
INSERT INTO public.teams VALUES (19, 'Portugal');
INSERT INTO public.teams VALUES (20, 'Chile');
INSERT INTO public.teams VALUES (21, 'Nigeria');
INSERT INTO public.teams VALUES (22, 'Algeria');
INSERT INTO public.teams VALUES (23, 'Greece');
INSERT INTO public.teams VALUES (24, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

