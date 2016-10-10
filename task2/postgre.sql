SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;


CREATE TABLE task2 (
    id integer NOT NULL,
    date timestamp(0) without time zone NOT NULL,
    phone character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE task2 OWNER TO wapclick;


CREATE SEQUENCE task2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task2_id_seq OWNER TO wapclick;

ALTER SEQUENCE task2_id_seq OWNED BY task2.id;

INSERT INTO task2 VALUES (1248, '2013-09-13 12:25:06', '89039773006', 'Катя');
INSERT INTO task2 VALUES (2011, '2013-09-12 18:21:02', '89653734042', 'Коля');
INSERT INTO task2 VALUES (2567, '2013-09-15 12:01:02', '89269620096', 'Сергей');
INSERT INTO task2 VALUES (3092, '2013-09-13 11:21:02', '89112564242', 'Дмитрий');
INSERT INTO task2 VALUES (5832, '2013-09-13 19:22:03', '89039773006', 'Катя');
INSERT INTO task2 VALUES (7881, '2013-09-14 18:21:02', '89039773006', 'Екатерина');
INSERT INTO task2 VALUES (8993, '2013-09-16 21:42:07', '89653734042', 'Николай');

