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

CREATE TABLE task1 (
    id integer NOT NULL,
    phone character varying(255) NOT NULL
);


ALTER TABLE task1 OWNER TO wapclick;


CREATE SEQUENCE task1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task1_id_seq OWNER TO wapclick;

ALTER SEQUENCE task1_id_seq OWNED BY task1.id;

INSERT INTO task1 VALUES (1, '8(915)234 23-12');
INSERT INTO task1 VALUES (2, '7 926111 2345');
INSERT INTO task1 VALUES (3, '9039772525');
INSERT INTO task1 VALUES (4, '90392713151');
INSERT INTO task1 VALUES (5, 'Телефонный номер89152025598');
INSERT INTO task1 VALUES (6, 'тел: 96132141223');
INSERT INTO task1 VALUES (7, '+7(495)202-15-16');
INSERT INTO task1 VALUES (8, '84952921516');
INSERT INTO task1 VALUES (9, '8-926-111-23-45');
INSERT INTO task1 VALUES (10, '8112564302');
INSERT INTO task1 VALUES (11, '84952021516');
INSERT INTO task1 VALUES (12, '');
INSERT INTO task1 VALUES (13, '375296863801');
INSERT INTO task1 VALUES (14, '+380967231126');
