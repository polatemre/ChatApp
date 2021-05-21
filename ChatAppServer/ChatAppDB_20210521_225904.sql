--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: messageId; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."messageId"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 3123123123
    CACHE 1;


ALTER TABLE public."messageId" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Message" (
    "Id" integer DEFAULT nextval('public."messageId"'::regclass) NOT NULL,
    "userId" integer,
    "roomId" integer,
    message text,
    type smallint
);


ALTER TABLE public."Message" OWNER TO postgres;

--
-- Name: roomId; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."roomId"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 234123123
    CACHE 1;


ALTER TABLE public."roomId" OWNER TO postgres;

--
-- Name: Room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Room" (
    "Id" integer DEFAULT nextval('public."roomId"'::regclass) NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public."Room" OWNER TO postgres;

--
-- Name: userId; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."userId"
    START WITH 0
    INCREMENT BY 1
    MINVALUE 0
    MAXVALUE 3231235
    CACHE 1;


ALTER TABLE public."userId" OWNER TO postgres;

--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    "Id" integer DEFAULT nextval('public."userId"'::regclass) NOT NULL,
    "userName" character varying NOT NULL,
    password character varying NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Data for Name: Message; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: Room; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Room" VALUES
	(0, 'Oda1'),
	(1, 'Oda2');


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."User" VALUES
	(0, 'emre', '123123'),
	(2, 'polat', '123123'),
	(3, 'eren', '123123'),
	(4, 'kerem', '123123');


--
-- Name: messageId; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."messageId"', 0, false);


--
-- Name: roomId; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."roomId"', 1, true);


--
-- Name: userId; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."userId"', 4, true);


--
-- Name: Message Message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "Message_pkey" PRIMARY KEY ("Id");


--
-- Name: Room Room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Room"
    ADD CONSTRAINT "Room_pkey" PRIMARY KEY ("Id");


--
-- Name: Message unique_Message_Id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Message"
    ADD CONSTRAINT "unique_Message_Id" UNIQUE ("Id");


--
-- Name: User unique_User_Id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "unique_User_Id" PRIMARY KEY ("Id");


--
-- PostgreSQL database dump complete
--

