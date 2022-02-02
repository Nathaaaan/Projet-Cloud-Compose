--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1

-- Started on 2022-02-02 10:27:21

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

--
-- TOC entry 3315 (class 1262 OID 16384)
-- Name: dbcloud; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dbcloud WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE dbcloud OWNER TO postgres;

\connect dbcloud

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

--
-- TOC entry 210 (class 1259 OID 16392)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 16385)
-- Name: sensitivity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sensitivity (
    question_id integer NOT NULL,
    game_name character varying(255),
    player_name character varying(255),
    resolution_value character varying(255),
    sensitivity_value double precision NOT NULL
);


ALTER TABLE public.sensitivity OWNER TO postgres;

--
-- TOC entry 3308 (class 0 OID 16385)
-- Dependencies: 209
-- Data for Name: sensitivity; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sensitivity (question_id, game_name, player_name, resolution_value, sensitivity_value) VALUES (1, 'CoD: Vanguard', 'Natix', '16/9', 6.9);
INSERT INTO public.sensitivity (question_id, game_name, player_name, resolution_value, sensitivity_value) VALUES (5, 'CoD: Vanguard', 'Laeru', '16/9', 12);
INSERT INTO public.sensitivity (question_id, game_name, player_name, resolution_value, sensitivity_value) VALUES (6, 'CoD: Vanguard', 'Laeru', '16/9', 12);
INSERT INTO public.sensitivity (question_id, game_name, player_name, resolution_value, sensitivity_value) VALUES (7, 'CoD: Vanguard', 'Laeru', '16/9', 12);


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 210
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 9, true);


--
-- TOC entry 3168 (class 2606 OID 16391)
-- Name: sensitivity sensitivity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sensitivity
    ADD CONSTRAINT sensitivity_pkey PRIMARY KEY (question_id);


-- Completed on 2022-02-02 10:27:21

--
-- PostgreSQL database dump complete
--

