--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

-- Started on 2019-03-31 18:01:36

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE restaurant_db;
--
-- TOC entry 2869 (class 1262 OID 17637)
-- Name: restaurant_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE restaurant_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';


ALTER DATABASE restaurant_db OWNER TO postgres;

\connect restaurant_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 2869
-- Name: DATABASE restaurant_db; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE restaurant_db IS 'Database which stores the information about the consumptions ordered by the clients and some data referred to the foods and drinks offered in the restaurant "LA MEJOR COCINA"';


--
-- TOC entry 4 (class 2615 OID 17638)
-- Name: restaurant; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA restaurant;


ALTER SCHEMA restaurant OWNER TO postgres;

--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA restaurant; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA restaurant IS 'Schema which groups the tables and other elements related to the information and data of the restaurant';


--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 202 (class 1259 OID 17660)
-- Name: camarero; Type: TABLE; Schema: restaurant; Owner: postgres
--

CREATE TABLE restaurant.camarero (
    idcamarero integer NOT NULL,
    nombre character varying(100),
    apellido1 character varying(100),
    apellido2 character varying(100)
);


ALTER TABLE restaurant.camarero OWNER TO postgres;

--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 202
-- Name: TABLE camarero; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON TABLE restaurant.camarero IS 'This table contains the information about the waiter who attends clients and diners.';


--
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN camarero.idcamarero; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.camarero.idcamarero IS 'In this field is stored the ID of this table, and it is also the primary key for this table';


--
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN camarero.nombre; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.camarero.nombre IS 'Field which contains the first name of the waiter.';


--
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN camarero.apellido1; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.camarero.apellido1 IS 'Field which contains the first last name of the waiter.';


--
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 202
-- Name: COLUMN camarero.apellido2; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.camarero.apellido2 IS 'Field which stores se second last name of the waiter';


--
-- TOC entry 201 (class 1259 OID 17658)
-- Name: Camarero_IdCamarero_seq; Type: SEQUENCE; Schema: restaurant; Owner: postgres
--

CREATE SEQUENCE restaurant."Camarero_IdCamarero_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant."Camarero_IdCamarero_seq" OWNER TO postgres;

--
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 201
-- Name: Camarero_IdCamarero_seq; Type: SEQUENCE OWNED BY; Schema: restaurant; Owner: postgres
--

ALTER SEQUENCE restaurant."Camarero_IdCamarero_seq" OWNED BY restaurant.camarero.idcamarero;


--
-- TOC entry 198 (class 1259 OID 17641)
-- Name: cliente; Type: TABLE; Schema: restaurant; Owner: postgres
--

CREATE TABLE restaurant.cliente (
    idcliente integer NOT NULL,
    nombre character varying(100),
    apellido1 character varying(100),
    apellido2 character varying(100),
    observaciones character varying(300)
);


ALTER TABLE restaurant.cliente OWNER TO postgres;

--
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 198
-- Name: TABLE cliente; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON TABLE restaurant.cliente IS 'Table which contains the information related to the clients';


--
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN cliente.idcliente; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cliente.idcliente IS 'Field which contains the ID for the client automatically generated. IdCliente is also the primary key for this table.';


--
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN cliente.nombre; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cliente.nombre IS 'This field contains the client''s first name. ';


--
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN cliente.apellido1; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cliente.apellido1 IS 'In this field is stored the first last name of the client.';


--
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN cliente.apellido2; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cliente.apellido2 IS 'Field which contains the second last name of the clients.';


--
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 198
-- Name: COLUMN cliente.observaciones; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cliente.observaciones IS 'Field which stores additional or complementary information about the client.';


--
-- TOC entry 197 (class 1259 OID 17639)
-- Name: Cliente_IdCliente_seq; Type: SEQUENCE; Schema: restaurant; Owner: postgres
--

CREATE SEQUENCE restaurant."Cliente_IdCliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant."Cliente_IdCliente_seq" OWNER TO postgres;

--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 197
-- Name: Cliente_IdCliente_seq; Type: SEQUENCE OWNED BY; Schema: restaurant; Owner: postgres
--

ALTER SEQUENCE restaurant."Cliente_IdCliente_seq" OWNED BY restaurant.cliente.idcliente;


--
-- TOC entry 204 (class 1259 OID 17668)
-- Name: cocinero; Type: TABLE; Schema: restaurant; Owner: postgres
--

CREATE TABLE restaurant.cocinero (
    idcocinero integer NOT NULL,
    nombre character varying(100),
    apellido1 character varying(100),
    apellido2 character varying(100)
);


ALTER TABLE restaurant.cocinero OWNER TO postgres;

--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 204
-- Name: TABLE cocinero; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON TABLE restaurant.cocinero IS 'Table which contains the information about the chefs who cook and prepare foods and drinks';


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN cocinero.idcocinero; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cocinero.idcocinero IS 'Field which saves the ID for this table. It is also its primary key ';


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN cocinero.nombre; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cocinero.nombre IS 'Field which contains the chef''s first name.';


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN cocinero.apellido1; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cocinero.apellido1 IS 'In this field is stodred the first last name of the chef.';


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 204
-- Name: COLUMN cocinero.apellido2; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.cocinero.apellido2 IS 'This field contains the second last name of the chef.';


--
-- TOC entry 203 (class 1259 OID 17666)
-- Name: Cocinero_IdCocinero_seq; Type: SEQUENCE; Schema: restaurant; Owner: postgres
--

CREATE SEQUENCE restaurant."Cocinero_IdCocinero_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant."Cocinero_IdCocinero_seq" OWNER TO postgres;

--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 203
-- Name: Cocinero_IdCocinero_seq; Type: SEQUENCE OWNED BY; Schema: restaurant; Owner: postgres
--

ALTER SEQUENCE restaurant."Cocinero_IdCocinero_seq" OWNED BY restaurant.cocinero.idcocinero;


--
-- TOC entry 208 (class 1259 OID 17710)
-- Name: detallefactura; Type: TABLE; Schema: restaurant; Owner: postgres
--

CREATE TABLE restaurant.detallefactura (
    iddetallefactura integer NOT NULL,
    idfactura integer,
    idcocinero integer,
    plato character varying(100),
    importe numeric(10,2)
);


ALTER TABLE restaurant.detallefactura OWNER TO postgres;

--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 208
-- Name: TABLE detallefactura; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON TABLE restaurant.detallefactura IS 'Table which contains the detail of foods and drinks from the ticket of payment';


--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN detallefactura.iddetallefactura; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.detallefactura.iddetallefactura IS 'This field contains the ID of the ticket of payment deails. It is also the primary key from this table.';


--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN detallefactura.idfactura; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.detallefactura.idfactura IS 'Field which contains the foreign key which references the ticket''s table';


--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN detallefactura.idcocinero; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.detallefactura.idcocinero IS 'Foreign key which associates the chef.';


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN detallefactura.plato; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.detallefactura.plato IS 'Field which contains the description of the food or drink consumed by client and diners';


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 208
-- Name: COLUMN detallefactura.importe; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.detallefactura.importe IS 'Field which stores the consumption''s cost value ';


--
-- TOC entry 207 (class 1259 OID 17708)
-- Name: DetalleFactura_IdDetalleFactura_seq; Type: SEQUENCE; Schema: restaurant; Owner: postgres
--

CREATE SEQUENCE restaurant."DetalleFactura_IdDetalleFactura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant."DetalleFactura_IdDetalleFactura_seq" OWNER TO postgres;

--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 207
-- Name: DetalleFactura_IdDetalleFactura_seq; Type: SEQUENCE OWNED BY; Schema: restaurant; Owner: postgres
--

ALTER SEQUENCE restaurant."DetalleFactura_IdDetalleFactura_seq" OWNED BY restaurant.detallefactura.iddetallefactura;


--
-- TOC entry 206 (class 1259 OID 17684)
-- Name: factura; Type: TABLE; Schema: restaurant; Owner: postgres
--

CREATE TABLE restaurant.factura (
    idfactura integer NOT NULL,
    idcliente integer,
    idcamarero integer,
    idmesa integer,
    fechafactura timestamp with time zone DEFAULT now()
);


ALTER TABLE restaurant.factura OWNER TO postgres;

--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 206
-- Name: TABLE factura; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON TABLE restaurant.factura IS 'Table in which is located the information about the tickets of payments for the clients';


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN factura.idfactura; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.factura.idfactura IS 'Field which contains the ID for the ticket which is also the primary key for this table ';


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN factura.idcliente; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.factura.idcliente IS 'Foreign key which references the client.';


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN factura.idcamarero; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.factura.idcamarero IS 'Foreign key which references the waiter who attends clients and diners.';


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN factura.idmesa; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.factura.idmesa IS 'Foreign key which references the table where are seated clients and diners.';


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 206
-- Name: COLUMN factura.fechafactura; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.factura.fechafactura IS 'This field contains the date and time of the ticket of payment';


--
-- TOC entry 205 (class 1259 OID 17682)
-- Name: Factura_IdFactura_seq; Type: SEQUENCE; Schema: restaurant; Owner: postgres
--

CREATE SEQUENCE restaurant."Factura_IdFactura_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant."Factura_IdFactura_seq" OWNER TO postgres;

--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 205
-- Name: Factura_IdFactura_seq; Type: SEQUENCE OWNED BY; Schema: restaurant; Owner: postgres
--

ALTER SEQUENCE restaurant."Factura_IdFactura_seq" OWNED BY restaurant.factura.idfactura;


--
-- TOC entry 200 (class 1259 OID 17652)
-- Name: mesa; Type: TABLE; Schema: restaurant; Owner: postgres
--

CREATE TABLE restaurant.mesa (
    idmesa integer NOT NULL,
    nummaxcomensales integer,
    ubicacion character varying(100)
);


ALTER TABLE restaurant.mesa OWNER TO postgres;

--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 200
-- Name: TABLE mesa; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON TABLE restaurant.mesa IS 'Table which contains the information about the table of the restaurant where is seated the client.';


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN mesa.idmesa; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.mesa.idmesa IS 'Field which contains the ID of the registry of the table. It is also the primary key of this table.';


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN mesa.nummaxcomensales; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.mesa.nummaxcomensales IS 'Field which contains the maximum number of diners which are allowed to be seated in the table.';


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 200
-- Name: COLUMN mesa.ubicacion; Type: COMMENT; Schema: restaurant; Owner: postgres
--

COMMENT ON COLUMN restaurant.mesa.ubicacion IS 'This field describes the location of the table in the restaurant.';


--
-- TOC entry 199 (class 1259 OID 17650)
-- Name: Mesa_IdMesa_seq; Type: SEQUENCE; Schema: restaurant; Owner: postgres
--

CREATE SEQUENCE restaurant."Mesa_IdMesa_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE restaurant."Mesa_IdMesa_seq" OWNER TO postgres;

--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 199
-- Name: Mesa_IdMesa_seq; Type: SEQUENCE OWNED BY; Schema: restaurant; Owner: postgres
--

ALTER SEQUENCE restaurant."Mesa_IdMesa_seq" OWNED BY restaurant.mesa.idmesa;


--
-- TOC entry 2704 (class 2604 OID 17663)
-- Name: camarero idcamarero; Type: DEFAULT; Schema: restaurant; Owner: postgres
--

ALTER TABLE ONLY restaurant.camarero ALTER COLUMN idcamarero SET DEFAULT nextval('restaurant."Camarero_IdCamarero_seq"'::regclass);


--
-- TOC entry 2702 (class 2604 OID 17644)
-- Name: cliente idcliente; Type: DEFAULT; Schema: restaurant; Owner: postgres
--

ALTER TABLE ONLY restaurant.cliente ALTER COLUMN idcliente SET DEFAULT nextval('restaurant."Cliente_IdCliente_seq"'::regclass);


--
-- TOC entry 2705 (class 2604 OID 17671)
-- Name: cocinero idcocinero; Type: DEFAULT; Schema: restaurant; Owner: postgres
--

ALTER TABLE ONLY restaurant.cocinero ALTER COLUMN idcocinero SET DEFAULT nextval('restaurant."Cocinero_IdCocinero_seq"'::regclass);


--
-- TOC entry 2708 (class 2604 OID 17713)
-- Name: detallefactura iddetallefactura; Type: DEFAULT; Schema: restaurant; Owner: postgres
--

ALTER TABLE ONLY restaurant.detallefactura ALTER COLUMN iddetallefactura SET DEFAULT nextval('restaurant."DetalleFactura_IdDetalleFactura_seq"'::regclass);


--
-- TOC entry 2706 (class 2604 OID 17687)
-- Name: factura idfactura; Type: DEFAULT; Schema: restaurant; Owner: postgres
--

ALTER TABLE ONLY restaurant.factura ALTER COLUMN idfactura SET DEFAULT nextval('restaurant."Factura_IdFactura_seq"'::regclass);


--
-- TOC entry 2703 (class 2604 OID 17655)
-- Name: mesa idmesa; Type: DEFAULT; Schema: restaurant; Owner: postgres
--

ALTER TABLE ONLY restaurant.mesa ALTER COLUMN idmesa SET DEFAULT nextval('restaurant."Mesa_IdMesa_seq"'::regclass);


--
-- TOC entry 2857 (class 0 OID 17660)
-- Dependencies: 202
-- Data for Name: camarero; Type: TABLE DATA; Schema: restaurant; Owner: postgres
--

INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (1, 'Darya', 'Riordan', 'Yakutin');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (2, 'Frederica', 'Charette', 'Radmer');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (3, 'Ransom', 'McTrustam', 'Ffoulkes');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (4, 'Birch', 'Marnes', 'Preene');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (5, 'Adella', 'McCurrie', 'Arundel');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (6, 'Georgy', 'Zoren', 'Weller');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (7, 'Donnie', 'Townley', 'Flanaghan');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (8, 'Drucill', 'Heningham', 'O''Flaherty');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (9, 'Ruby', 'Ashborn', 'Ivic');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (10, 'Bobina', 'Corfield', 'Hillburn');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (11, 'Rem', 'Parcall', 'Loblie');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (12, 'Sterling', 'Trattles', 'Seifert');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (13, 'Mic', 'Markovich', 'Canton');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (14, 'Sansone', 'Wilkison', 'Meachem');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (15, 'Rosemaria', 'Showl', 'Shillam');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (16, 'Serena', 'Vennings', 'Spanswick');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (17, 'Dorothy', 'Szymonowicz', 'Dempster');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (18, 'Grace', 'Molineux', 'Kingaby');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (19, 'Taddeusz', 'Uden', 'Rozanski');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (20, 'Blanche', 'Shernock', 'Cloonan');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (21, 'Maurise', 'Dovington', 'Challoner');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (22, 'Teri', 'Gutcher', 'Sheasby');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (23, 'Jaymie', 'Lockitt', 'Grimsley');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (24, 'Rana', 'Klulisek', 'Ovanesian');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (25, 'Tracie', 'Toffetto', 'Rives');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (26, 'Wendall', 'Delgadillo', 'Verni');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (27, 'Tome', 'Ruckhard', 'Cornfield');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (28, 'Hunfredo', 'Halsworth', 'Coaker');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (29, 'Fons', 'Lockitt', 'Northall');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (30, 'Munroe', 'Quarlis', 'Headings');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (31, 'Leona', 'Iles', 'Bertie');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (32, 'Elinor', 'Moncur', 'Ganley');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (33, 'Rivi', 'Pinch', 'Billiard');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (34, 'Glad', 'Jira', 'Chippindale');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (35, 'Banky', 'Osman', 'Espadate');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (36, 'Hildagarde', 'Hexam', 'Kinchlea');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (37, 'Honey', 'Janicek', 'Oels');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (38, 'Rinaldo', 'Wellwood', 'Hargroves');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (39, 'Chiquia', 'Pincked', 'Ivantyev');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (40, 'Brandyn', 'Carss', 'Darben');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (41, 'Franny', 'Gaskill', 'Ringham');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (42, 'Roy', 'Howsin', 'Townson');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (43, 'Earvin', 'Minchi', 'Maith');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (44, 'Constantine', 'Gunderson', 'Waddingham');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (45, 'Hewitt', 'Barkes', 'Faragan');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (46, 'Dorothee', 'Angeli', 'Sumbler');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (47, 'Darryl', 'Rothon', 'Lawman');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (48, 'Britta', 'Brawson', 'Hodcroft');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (49, 'Casandra', 'Penas', 'Maughan');
INSERT INTO restaurant.camarero (idcamarero, nombre, apellido1, apellido2) VALUES (50, 'Sherilyn', 'Ferrillio', 'Holbie');


--
-- TOC entry 2853 (class 0 OID 17641)
-- Dependencies: 198
-- Data for Name: cliente; Type: TABLE DATA; Schema: restaurant; Owner: postgres
--

INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (1, 'Barbe', 'Bygate', 'Marwood', 'hhWrv-398-coZ5YO');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (2, 'Lockwood', 'Scotting', 'Lissandrini', '6zdR5-817-mPhHF6');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (3, 'Mallory', 'Baldick', 'Pitt', 'BGmE2-833-beUmIW');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (4, 'Charmaine', 'Guyet', 'Francecione', 'fvmOh-243-TraCbx');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (5, 'Mabelle', 'Weepers', 'Spellman', 'pDuNM-106-ZwZd0E');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (6, 'Floria', 'Winsome', 'Kruse', 'YZeM7-536-r5cI2y');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (7, 'Fernanda', 'Francois', 'Golsby', 'AOc8b-054-IAuYaw');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (8, 'Rozalie', 'Hards', 'MacDowall', 'XVgVA-106-NBwZkL');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (9, 'Sayres', 'Westgate', 'Mabb', '6dGcd-284-TIJQHV');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (10, 'Malchy', 'Isenor', 'Troake', '8xVh3-336-qwc7wd');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (11, 'Catherine', 'Koopman', 'Venner', 'CwQAt-801-lW5QkU');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (12, 'Teirtza', 'Calderbank', 'Tume', 'pDMXM-974-pA5V3f');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (13, 'Chad', 'Carless', 'Domanski', 'znEAL-344-OUJ7cz');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (14, 'Walt', 'Trazzi', 'Bavidge', '2FNXW-866-dRg8R4');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (15, 'Prissie', 'Olyff', 'Lockart', '9WWk8-830-HdgLsl');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (16, 'Emelita', 'Albers', 'Robken', '1hPu2-818-7SyKXv');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (17, 'Hugibert', 'Diggin', 'Deverille', 'mMRz3-210-JnjcUs');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (18, 'Jackie', 'Bruckenthal', 'Hedditch', 'zmia3-428-Zb0L6h');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (19, 'Maure', 'MacFadzan', 'Allder', 'j1Y7R-588-4KKOVf');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (20, 'Shara', 'Ladbury', 'De Beneditti', 'qnktu-742-sC8ooT');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (21, 'Connor', 'Yashaev', 'Pentycross', 'R7aZR-120-hfcp63');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (22, 'Malva', 'Bett', 'Roobottom', 't8MFQ-137-bmg5t4');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (23, 'Joelly', 'Harrild', 'Benzi', 'aXbYS-960-LmikG5');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (24, 'Tobiah', 'Mackleden', 'Albury', 'wHRSl-534-2uX3oD');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (25, 'Dianna', 'Brain', 'Gorry', 'svRhz-816-LccqR7');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (26, 'Eleanore', 'Poat', 'Brownsea', 'dRAQe-621-9KiyVk');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (27, 'Antonella', 'Proffer', 'O''Hare', 'dbkpk-851-QqGRu7');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (28, 'Sukey', 'Shepcutt', 'Demcak', 'S3s3U-451-kpxEng');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (29, 'Tiffany', 'Holberry', 'Atter', 'lntLh-982-jEq4KV');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (30, 'Louie', 'Robshaw', 'Cotsford', 'i45JZ-964-NEPDO4');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (31, 'Maxim', 'Cashin', 'Gonnard', 'CpXQQ-806-lCXldy');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (32, 'Rodina', 'Iveagh', 'McDirmid', 'rQZUn-183-aXBbVH');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (33, 'Terese', 'Grzegorek', 'Copas', 'bSIro-358-DKt07P');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (34, 'Giulia', 'Yeend', 'Timlett', 'd4Q40-766-SrpJFh');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (35, 'Muire', 'Cranton', 'Tolman', 'L6kv4-026-AJOhk0');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (36, 'Robby', 'Schimmang', 'Oxbury', 'r8pFt-855-cswSDO');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (37, 'Barbie', 'Biesterfeld', 'Partner', '4Gycu-851-ltL2zX');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (38, 'Osbert', 'Papierz', 'Candelin', 'GjVse-790-x4cgpc');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (39, 'Burr', 'Falck', 'Minifie', 'rNxb6-364-p0b2MV');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (40, 'Francyne', 'Esh', 'Halse', '6ayVa-331-1W7aja');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (41, 'Dorine', 'Whiteoak', 'O''Hagirtie', '0kCuy-518-zC8kow');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (42, 'Shay', 'Maly', 'Ullock', 'XR80p-085-1RZ3JQ');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (43, 'Maddalena', 'Mateiko', 'Hrinishin', 'ka6g1-177-fg8etH');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (44, 'Sean', 'Scarrott', 'Dowling', 'IJTN0-626-zxW2F1');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (45, 'Llewellyn', 'Blaver', 'Loggie', 'UwJ4s-402-PyYOpr');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (46, 'Krishna', 'Kornilov', 'Limeburn', 'dRrkZ-988-sfDL65');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (47, 'Duff', 'Wolstencroft', 'Glencorse', '2xppl-211-a4mPNq');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (48, 'Correna', 'McIlory', 'Wildber', 'Av8os-423-JlsAUP');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (49, 'Gran', 'Donnersberg', 'Kores', 'znu10-898-P0pZvQ');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (50, 'Brigg', 'Qualtro', 'Dradey', '3Dh9l-389-6DFZsZ');
INSERT INTO restaurant.cliente (idcliente, nombre, apellido1, apellido2, observaciones) VALUES (0, 'luis', 'quiroga', 'agredo', 'sdsds');


--
-- TOC entry 2859 (class 0 OID 17668)
-- Dependencies: 204
-- Data for Name: cocinero; Type: TABLE DATA; Schema: restaurant; Owner: postgres
--

INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (1, 'Sibeal', 'Adiscot', 'Laguerre');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (2, 'See', 'Bebbell', 'de Clercq');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (3, 'Birch', 'Foskew', 'Chazette');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (4, 'Myrah', 'Cumine', 'Guisby');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (5, 'Cassandry', 'Dibb', 'Cunniam');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (6, 'Georgie', 'Goscomb', 'Flippelli');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (7, 'Rosene', 'Penley', 'Sebrook');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (8, 'Charmain', 'Mordecai', 'Raddon');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (9, 'Dino', 'Weymouth', 'Cogin');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (10, 'Sauveur', 'Gitthouse', 'Laverack');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (11, 'Harlie', 'Chadbourne', 'Sellar');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (12, 'Sayer', 'McTavy', 'Grzeszczak');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (13, 'Keven', 'Emm', 'Don');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (14, 'Pincas', 'Uphill', 'Hatherall');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (15, 'George', 'McCrackan', 'Ellingsworth');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (16, 'Brunhilda', 'Andreasson', 'Beare');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (17, 'Denney', 'Piercy', 'Loade');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (18, 'Annabal', 'Restill', 'Guillotin');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (19, 'Ruthi', 'Mixture', 'Guiton');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (20, 'Concordia', 'McClintock', 'Brilon');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (21, 'Fleming', 'Synan', 'Kaye');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (22, 'Ashlie', 'Gately', 'Gate');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (23, 'Fairlie', 'Ryman', 'Dorre');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (24, 'Dona', 'Soanes', 'Busst');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (25, 'Caren', 'Gladhill', 'Rivenzon');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (26, 'Jim', 'Fosdike', 'Wilber');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (27, 'Carry', 'Landon', 'O''Hartnett');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (28, 'Lynde', 'Markie', 'Dotterill');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (29, 'Rancell', 'Salvati', 'Petheridge');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (30, 'Dominga', 'Putt', 'Bruckman');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (31, 'Adams', 'Woodthorpe', 'Tanzig');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (32, 'Margaux', 'Spurett', 'Silber');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (33, 'Samaria', 'Sommerled', 'Lantry');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (34, 'Derrick', 'Janczyk', 'Iowarch');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (35, 'Hazel', 'Aleshkov', 'Olivello');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (36, 'Etta', 'Morley', 'Trouncer');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (37, 'North', 'Yapp', 'Werndley');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (38, 'Dyana', 'Labet', 'Hurcombe');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (39, 'Guthrie', 'Nel', 'Bratley');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (40, 'Zebulen', 'Mungham', 'Ryan');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (41, 'Dominick', 'Walding', 'Helbeck');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (42, 'Aurlie', 'MacGorrie', 'Locks');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (43, 'Leontyne', 'Westmarland', 'Sarver');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (44, 'Helge', 'Bruneton', 'Shenton');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (45, 'Dougie', 'Daskiewicz', 'Forsbey');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (46, 'Lindi', 'Larratt', 'Holligan');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (47, 'Demetris', 'Margerrison', 'Capaldi');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (48, 'Sebastiano', 'Woolvett', 'Klimpke');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (49, 'Kellie', 'Orrum', 'Evans');
INSERT INTO restaurant.cocinero (idcocinero, nombre, apellido1, apellido2) VALUES (50, 'Demetre', 'Joret', 'Poleykett');


--
-- TOC entry 2863 (class 0 OID 17710)
-- Dependencies: 208
-- Data for Name: detallefactura; Type: TABLE DATA; Schema: restaurant; Owner: postgres
--



--
-- TOC entry 2861 (class 0 OID 17684)
-- Dependencies: 206
-- Data for Name: factura; Type: TABLE DATA; Schema: restaurant; Owner: postgres
--



--
-- TOC entry 2855 (class 0 OID 17652)
-- Dependencies: 200
-- Data for Name: mesa; Type: TABLE DATA; Schema: restaurant; Owner: postgres
--

INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (1, 4, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (2, 3, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (3, 9, 'Balcón');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (5, 3, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (7, 2, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (8, 3, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (9, 2, 'Balcón');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (11, 3, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (12, 5, 'Balcón');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (13, 6, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (14, 3, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (15, 5, 'Balcón');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (16, 8, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (17, 4, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (19, 6, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (20, 7, 'Segundo piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (4, 2, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (6, 2, 'Balcón');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (10, 2, 'Primer piso');
INSERT INTO restaurant.mesa (idmesa, nummaxcomensales, ubicacion) VALUES (18, 2, 'Balcón');


--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 201
-- Name: Camarero_IdCamarero_seq; Type: SEQUENCE SET; Schema: restaurant; Owner: postgres
--

SELECT pg_catalog.setval('restaurant."Camarero_IdCamarero_seq"', 50, true);


--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 197
-- Name: Cliente_IdCliente_seq; Type: SEQUENCE SET; Schema: restaurant; Owner: postgres
--

SELECT pg_catalog.setval('restaurant."Cliente_IdCliente_seq"', 50, true);


--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 203
-- Name: Cocinero_IdCocinero_seq; Type: SEQUENCE SET; Schema: restaurant; Owner: postgres
--

SELECT pg_catalog.setval('restaurant."Cocinero_IdCocinero_seq"', 50, true);


--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 207
-- Name: DetalleFactura_IdDetalleFactura_seq; Type: SEQUENCE SET; Schema: restaurant; Owner: postgres
--

SELECT pg_catalog.setval('restaurant."DetalleFactura_IdDetalleFactura_seq"', 1, false);


--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 205
-- Name: Factura_IdFactura_seq; Type: SEQUENCE SET; Schema: restaurant; Owner: postgres
--

SELECT pg_catalog.setval('restaurant."Factura_IdFactura_seq"', 1, false);


--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 199
-- Name: Mesa_IdMesa_seq; Type: SEQUENCE SET; Schema: restaurant; Owner: postgres
--

SELECT pg_catalog.setval('restaurant."Mesa_IdMesa_seq"', 20, true);


--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-03-31 18:01:36

--
-- PostgreSQL database dump complete
--

