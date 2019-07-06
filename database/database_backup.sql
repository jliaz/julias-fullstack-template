--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

-- Started on 2019-07-05 21:07:09

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

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16403)
-- Name: template_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.template_table (
    name text,
    id integer NOT NULL
);


ALTER TABLE public.template_table OWNER TO postgres;

--
-- TOC entry 2813 (class 0 OID 0)
-- Dependencies: 196
-- Name: TABLE template_table; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.template_table IS 'fullstack template';


--
-- TOC entry 2807 (class 0 OID 16403)
-- Dependencies: 196
-- Data for Name: template_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.template_table (name, id) FROM stdin;
lorem ipsum	1
probable spork	2
twisted tree	3
\.


--
-- TOC entry 2685 (class 2606 OID 16412)
-- Name: template_table id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.template_table
    ADD CONSTRAINT id PRIMARY KEY (id);


-- Completed on 2019-07-05 21:07:09

--
-- PostgreSQL database dump complete
--

