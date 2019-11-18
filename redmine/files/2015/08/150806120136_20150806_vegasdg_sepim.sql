--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = sepim_datos, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: vegasdg_archivo_y_biblioteca; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_archivo_y_biblioteca (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254),
    imagen character varying(254)
);


ALTER TABLE vegasdg_archivo_y_biblioteca OWNER TO sepim;

--
-- Name: vegasdg_archivo_y_biblioteca_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_archivo_y_biblioteca_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_archivo_y_biblioteca_id_seq OWNER TO sepim;

--
-- Name: vegasdg_archivo_y_biblioteca_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_archivo_y_biblioteca_id_seq OWNED BY vegasdg_archivo_y_biblioteca.id;


--
-- Name: vegasdg_asesorias; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_asesorias (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(100),
    descri character varying(100)
);


ALTER TABLE vegasdg_asesorias OWNER TO sepim;

--
-- Name: vegasdg_asesorias_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_asesorias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_asesorias_id_seq OWNER TO sepim;

--
-- Name: vegasdg_asesorias_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_asesorias_id_seq OWNED BY vegasdg_asesorias.id;


--
-- Name: vegasdg_bares_y_restaurantes; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_bares_y_restaurantes (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254)
);


ALTER TABLE vegasdg_bares_y_restaurantes OWNER TO sepim;

--
-- Name: vegasdg_bares_y_restaurantes_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_bares_y_restaurantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_bares_y_restaurantes_id_seq OWNER TO sepim;

--
-- Name: vegasdg_bares_y_restaurantes_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_bares_y_restaurantes_id_seq OWNED BY vegasdg_bares_y_restaurantes.id;


--
-- Name: vegasdg_cajeros_bancos; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_cajeros_bancos (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_cajeros_bancos OWNER TO sepim;

--
-- Name: vegasdg_cajeros_bancos_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_cajeros_bancos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_cajeros_bancos_id_seq OWNER TO sepim;

--
-- Name: vegasdg_cajeros_bancos_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_cajeros_bancos_id_seq OWNED BY vegasdg_cajeros_bancos.id;


--
-- Name: vegasdg_callejero1; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_callejero1 (
    id integer NOT NULL,
    geom public.geometry(MultiLineString,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_callejero1 OWNER TO sepim;

--
-- Name: vegasdg_callejero1_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_callejero1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_callejero1_id_seq OWNER TO sepim;

--
-- Name: vegasdg_callejero1_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_callejero1_id_seq OWNED BY vegasdg_callejero1.id;


--
-- Name: vegasdg_callejero2; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_callejero2 (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254)
);


ALTER TABLE vegasdg_callejero2 OWNER TO sepim;

--
-- Name: vegasdg_callejero2_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_callejero2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_callejero2_id_seq OWNER TO sepim;

--
-- Name: vegasdg_callejero2_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_callejero2_id_seq OWNED BY vegasdg_callejero2.id;


--
-- Name: vegasdg_cementerios; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_cementerios (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_cementerios OWNER TO sepim;

--
-- Name: vegasdg_cementerios_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_cementerios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_cementerios_id_seq OWNER TO sepim;

--
-- Name: vegasdg_cementerios_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_cementerios_id_seq OWNED BY vegasdg_cementerios.id;


--
-- Name: vegasdg_clinicas_dentales; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_clinicas_dentales (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_clinicas_dentales OWNER TO sepim;

--
-- Name: vegasdg_clinicas_dentales_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_clinicas_dentales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_clinicas_dentales_id_seq OWNER TO sepim;

--
-- Name: vegasdg_clinicas_dentales_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_clinicas_dentales_id_seq OWNED BY vegasdg_clinicas_dentales.id;


--
-- Name: vegasdg_col_y_gua; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_col_y_gua (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254),
    url character varying(254)
);


ALTER TABLE vegasdg_col_y_gua OWNER TO sepim;

--
-- Name: vegasdg_col_y_gua_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_col_y_gua_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_col_y_gua_id_seq OWNER TO sepim;

--
-- Name: vegasdg_col_y_gua_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_col_y_gua_id_seq OWNED BY vegasdg_col_y_gua.id;


--
-- Name: vegasdg_comida_llevar; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_comida_llevar (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_comida_llevar OWNER TO sepim;

--
-- Name: vegasdg_comida_llevar_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_comida_llevar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_comida_llevar_id_seq OWNER TO sepim;

--
-- Name: vegasdg_comida_llevar_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_comida_llevar_id_seq OWNED BY vegasdg_comida_llevar.id;


--
-- Name: vegasdg_consultorios_medicos; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_consultorios_medicos (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254),
    url character varying(254)
);


ALTER TABLE vegasdg_consultorios_medicos OWNER TO sepim;

--
-- Name: vegasdg_consultorios_medicos_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_consultorios_medicos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_consultorios_medicos_id_seq OWNER TO sepim;

--
-- Name: vegasdg_consultorios_medicos_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_consultorios_medicos_id_seq OWNED BY vegasdg_consultorios_medicos.id;


--
-- Name: vegasdg_correos; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_correos (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_correos OWNER TO sepim;

--
-- Name: vegasdg_correos_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_correos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_correos_id_seq OWNER TO sepim;

--
-- Name: vegasdg_correos_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_correos_id_seq OWNED BY vegasdg_correos.id;


--
-- Name: vegasdg_edif_muni_actividades; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_edif_muni_actividades (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_edif_muni_actividades OWNER TO sepim;

--
-- Name: vegasdg_edif_muni_actividades_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_edif_muni_actividades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_edif_muni_actividades_id_seq OWNER TO sepim;

--
-- Name: vegasdg_edif_muni_actividades_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_edif_muni_actividades_id_seq OWNED BY vegasdg_edif_muni_actividades.id;


--
-- Name: vegasdg_edif_tramites_adm; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_edif_tramites_adm (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(100),
    descri character varying(254),
    imagen character varying(254),
    url character varying(100)
);


ALTER TABLE vegasdg_edif_tramites_adm OWNER TO sepim;

--
-- Name: vegasdg_edif_tramites_adm_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_edif_tramites_adm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_edif_tramites_adm_id_seq OWNER TO sepim;

--
-- Name: vegasdg_edif_tramites_adm_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_edif_tramites_adm_id_seq OWNED BY vegasdg_edif_tramites_adm.id;


--
-- Name: vegasdg_estaciones_servicio; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_estaciones_servicio (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_estaciones_servicio OWNER TO sepim;

--
-- Name: vegasdg_estaciones_servicio_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_estaciones_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_estaciones_servicio_id_seq OWNER TO sepim;

--
-- Name: vegasdg_estaciones_servicio_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_estaciones_servicio_id_seq OWNED BY vegasdg_estaciones_servicio.id;


--
-- Name: vegasdg_farmacias; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_farmacias (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    name character varying(254),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_farmacias OWNER TO sepim;

--
-- Name: vegasdg_farmacias_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_farmacias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_farmacias_id_seq OWNER TO sepim;

--
-- Name: vegasdg_farmacias_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_farmacias_id_seq OWNED BY vegasdg_farmacias.id;


--
-- Name: vegasdg_ferreteria_electrodomestico; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_ferreteria_electrodomestico (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_ferreteria_electrodomestico OWNER TO sepim;

--
-- Name: vegasdg_ferreteria_electrodomestico_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_ferreteria_electrodomestico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_ferreteria_electrodomestico_id_seq OWNER TO sepim;

--
-- Name: vegasdg_ferreteria_electrodomestico_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_ferreteria_electrodomestico_id_seq OWNED BY vegasdg_ferreteria_electrodomestico.id;


--
-- Name: vegasdg_gimnasios; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_gimnasios (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_gimnasios OWNER TO sepim;

--
-- Name: vegasdg_gimnasios_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_gimnasios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_gimnasios_id_seq OWNER TO sepim;

--
-- Name: vegasdg_gimnasios_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_gimnasios_id_seq OWNED BY vegasdg_gimnasios.id;


--
-- Name: vegasdg_inmobiliaria; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_inmobiliaria (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254)
);


ALTER TABLE vegasdg_inmobiliaria OWNER TO sepim;

--
-- Name: vegasdg_inmobiliaria_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_inmobiliaria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_inmobiliaria_id_seq OWNER TO sepim;

--
-- Name: vegasdg_inmobiliaria_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_inmobiliaria_id_seq OWNED BY vegasdg_inmobiliaria.id;


--
-- Name: vegasdg_inst_deportivas; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_inst_deportivas (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_inst_deportivas OWNER TO sepim;

--
-- Name: vegasdg_inst_deportivas_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_inst_deportivas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_inst_deportivas_id_seq OWNER TO sepim;

--
-- Name: vegasdg_inst_deportivas_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_inst_deportivas_id_seq OWNED BY vegasdg_inst_deportivas.id;


--
-- Name: vegasdg_lugares_de_interes; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_lugares_de_interes (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254),
    imagen character varying(254)
);


ALTER TABLE vegasdg_lugares_de_interes OWNER TO sepim;

--
-- Name: vegasdg_lugares_de_interes_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_lugares_de_interes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_lugares_de_interes_id_seq OWNER TO sepim;

--
-- Name: vegasdg_lugares_de_interes_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_lugares_de_interes_id_seq OWNED BY vegasdg_lugares_de_interes.id;


--
-- Name: vegasdg_monumentos; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_monumentos (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254),
    url character varying(254)
);


ALTER TABLE vegasdg_monumentos OWNER TO sepim;

--
-- Name: vegasdg_monumentos_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_monumentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_monumentos_id_seq OWNER TO sepim;

--
-- Name: vegasdg_monumentos_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_monumentos_id_seq OWNED BY vegasdg_monumentos.id;


--
-- Name: vegasdg_otros_comercios; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_otros_comercios (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_otros_comercios OWNER TO sepim;

--
-- Name: vegasdg_otros_comercios_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_otros_comercios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_otros_comercios_id_seq OWNER TO sepim;

--
-- Name: vegasdg_otros_comercios_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_otros_comercios_id_seq OWNED BY vegasdg_otros_comercios.id;


--
-- Name: vegasdg_panaderia_pasteleria; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_panaderia_pasteleria (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_panaderia_pasteleria OWNER TO sepim;

--
-- Name: vegasdg_panaderia_pasteleria_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_panaderia_pasteleria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_panaderia_pasteleria_id_seq OWNER TO sepim;

--
-- Name: vegasdg_panaderia_pasteleria_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_panaderia_pasteleria_id_seq OWNED BY vegasdg_panaderia_pasteleria.id;


--
-- Name: vegasdg_papeleria_prensa; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_papeleria_prensa (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_papeleria_prensa OWNER TO sepim;

--
-- Name: vegasdg_papeleria_prensa_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_papeleria_prensa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_papeleria_prensa_id_seq OWNER TO sepim;

--
-- Name: vegasdg_papeleria_prensa_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_papeleria_prensa_id_seq OWNED BY vegasdg_papeleria_prensa.id;


--
-- Name: vegasdg_peluqueria_estetica; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_peluqueria_estetica (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_peluqueria_estetica OWNER TO sepim;

--
-- Name: vegasdg_peluqueria_estetica_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_peluqueria_estetica_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_peluqueria_estetica_id_seq OWNER TO sepim;

--
-- Name: vegasdg_peluqueria_estetica_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_peluqueria_estetica_id_seq OWNED BY vegasdg_peluqueria_estetica.id;


--
-- Name: vegasdg_reforma_conts_carp; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_reforma_conts_carp (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(250),
    descri character varying(254)
);


ALTER TABLE vegasdg_reforma_conts_carp OWNER TO sepim;

--
-- Name: vegasdg_reforma_conts_carp_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_reforma_conts_carp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_reforma_conts_carp_id_seq OWNER TO sepim;

--
-- Name: vegasdg_reforma_conts_carp_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_reforma_conts_carp_id_seq OWNED BY vegasdg_reforma_conts_carp.id;


--
-- Name: vegasdg_ss_residencias; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_ss_residencias (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_ss_residencias OWNER TO sepim;

--
-- Name: vegasdg_ss_residencias_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_ss_residencias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_ss_residencias_id_seq OWNER TO sepim;

--
-- Name: vegasdg_ss_residencias_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_ss_residencias_id_seq OWNED BY vegasdg_ss_residencias.id;


--
-- Name: vegasdg_supermercados; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_supermercados (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_supermercados OWNER TO sepim;

--
-- Name: vegasdg_supermercados_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_supermercados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_supermercados_id_seq OWNER TO sepim;

--
-- Name: vegasdg_supermercados_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_supermercados_id_seq OWNED BY vegasdg_supermercados.id;


--
-- Name: vegasdg_talleres; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_talleres (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254),
    descri character varying(254)
);


ALTER TABLE vegasdg_talleres OWNER TO sepim;

--
-- Name: vegasdg_talleres_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_talleres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_talleres_id_seq OWNER TO sepim;

--
-- Name: vegasdg_talleres_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_talleres_id_seq OWNED BY vegasdg_talleres.id;


--
-- Name: vegasdg_tanatorios; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_tanatorios (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(254)
);


ALTER TABLE vegasdg_tanatorios OWNER TO sepim;

--
-- Name: vegasdg_tanatorios_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_tanatorios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_tanatorios_id_seq OWNER TO sepim;

--
-- Name: vegasdg_tanatorios_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_tanatorios_id_seq OWNED BY vegasdg_tanatorios.id;


--
-- Name: vegasdg_tiendas_ropa; Type: TABLE; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE TABLE vegasdg_tiendas_ropa (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,25830),
    nombre character varying(250),
    descri character varying(254)
);


ALTER TABLE vegasdg_tiendas_ropa OWNER TO sepim;

--
-- Name: vegasdg_tiendas_ropa_id_seq; Type: SEQUENCE; Schema: sepim_datos; Owner: sepim
--

CREATE SEQUENCE vegasdg_tiendas_ropa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vegasdg_tiendas_ropa_id_seq OWNER TO sepim;

--
-- Name: vegasdg_tiendas_ropa_id_seq; Type: SEQUENCE OWNED BY; Schema: sepim_datos; Owner: sepim
--

ALTER SEQUENCE vegasdg_tiendas_ropa_id_seq OWNED BY vegasdg_tiendas_ropa.id;


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_archivo_y_biblioteca ALTER COLUMN id SET DEFAULT nextval('vegasdg_archivo_y_biblioteca_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_asesorias ALTER COLUMN id SET DEFAULT nextval('vegasdg_asesorias_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_bares_y_restaurantes ALTER COLUMN id SET DEFAULT nextval('vegasdg_bares_y_restaurantes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_cajeros_bancos ALTER COLUMN id SET DEFAULT nextval('vegasdg_cajeros_bancos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_callejero1 ALTER COLUMN id SET DEFAULT nextval('vegasdg_callejero1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_callejero2 ALTER COLUMN id SET DEFAULT nextval('vegasdg_callejero2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_cementerios ALTER COLUMN id SET DEFAULT nextval('vegasdg_cementerios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_clinicas_dentales ALTER COLUMN id SET DEFAULT nextval('vegasdg_clinicas_dentales_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_col_y_gua ALTER COLUMN id SET DEFAULT nextval('vegasdg_col_y_gua_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_comida_llevar ALTER COLUMN id SET DEFAULT nextval('vegasdg_comida_llevar_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_consultorios_medicos ALTER COLUMN id SET DEFAULT nextval('vegasdg_consultorios_medicos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_correos ALTER COLUMN id SET DEFAULT nextval('vegasdg_correos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_edif_muni_actividades ALTER COLUMN id SET DEFAULT nextval('vegasdg_edif_muni_actividades_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_edif_tramites_adm ALTER COLUMN id SET DEFAULT nextval('vegasdg_edif_tramites_adm_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_estaciones_servicio ALTER COLUMN id SET DEFAULT nextval('vegasdg_estaciones_servicio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_farmacias ALTER COLUMN id SET DEFAULT nextval('vegasdg_farmacias_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_ferreteria_electrodomestico ALTER COLUMN id SET DEFAULT nextval('vegasdg_ferreteria_electrodomestico_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_gimnasios ALTER COLUMN id SET DEFAULT nextval('vegasdg_gimnasios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_inmobiliaria ALTER COLUMN id SET DEFAULT nextval('vegasdg_inmobiliaria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_inst_deportivas ALTER COLUMN id SET DEFAULT nextval('vegasdg_inst_deportivas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_lugares_de_interes ALTER COLUMN id SET DEFAULT nextval('vegasdg_lugares_de_interes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_monumentos ALTER COLUMN id SET DEFAULT nextval('vegasdg_monumentos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_otros_comercios ALTER COLUMN id SET DEFAULT nextval('vegasdg_otros_comercios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_panaderia_pasteleria ALTER COLUMN id SET DEFAULT nextval('vegasdg_panaderia_pasteleria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_papeleria_prensa ALTER COLUMN id SET DEFAULT nextval('vegasdg_papeleria_prensa_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_peluqueria_estetica ALTER COLUMN id SET DEFAULT nextval('vegasdg_peluqueria_estetica_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_reforma_conts_carp ALTER COLUMN id SET DEFAULT nextval('vegasdg_reforma_conts_carp_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_ss_residencias ALTER COLUMN id SET DEFAULT nextval('vegasdg_ss_residencias_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_supermercados ALTER COLUMN id SET DEFAULT nextval('vegasdg_supermercados_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_talleres ALTER COLUMN id SET DEFAULT nextval('vegasdg_talleres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_tanatorios ALTER COLUMN id SET DEFAULT nextval('vegasdg_tanatorios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: sepim_datos; Owner: sepim
--

ALTER TABLE ONLY vegasdg_tiendas_ropa ALTER COLUMN id SET DEFAULT nextval('vegasdg_tiendas_ropa_id_seq'::regclass);


--
-- Data for Name: vegasdg_archivo_y_biblioteca; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_archivo_y_biblioteca (id, geom, nombre, descri, imagen) FROM stdin;
1	0106000020E664000001000000010300000001000000070000003AE974285AE61A41E9272EF36A634F413724FCB78DE61A4161D52A5E6C634F41ECD0E8F795E61A41BC8337F466634F412B27421FDDE61A417E4933C268634F41C9FF296FE7E61A413245403763634F417C0447C06DE61A4104D247FE5F634F413AE974285AE61A41E9272EF36A634F41	Archivo del Ayuntamiento Vegas del Genil	Se encuentra en la primera planta del Ayuntamiento de Vegas del Genil. Horario de apertura de 7:45 a 14:15 (en horario de verano, del 15 de junio al 15 de septiembre), y de 7:45 a 15:15 (en horario de invierno) Tlfno.: 958 43 20 51	\N
2	0106000020E664000001000000010300000001000000050000008F8E107C80E91A412319FA837D634F4138A16CB88AE91A415EFDCC036F634F41D35A703065E91A415EFDCC036F634F419954FCC661E91A411419FA837D634F418F8E107C80E91A412319FA837D634F41	Edificio Selva Florida	La Biblioteca Municipal (Tlf: 958445577) se encuentra en la segunda planta de este edificio. Horario Invierno: Lunes a Jueves de 9:30 a 14 y de 17 a 20 h; Viernes de 9:30 a 14:30 h. En Verano: Lunes a Viernes de 8:30 a 14 h; Miércoles de 17:30 a 20:00 h.	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/11/estanterias.jpg" />
\.


--
-- Name: vegasdg_archivo_y_biblioteca_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_archivo_y_biblioteca_id_seq', 2, true);


--
-- Data for Name: vegasdg_asesorias; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_asesorias (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000002F6A2A8C97EB1A41D17B04B7D6624F41A6CB8FF2B0EB1A41BF7B04B7D6624F411CEC066AB9EB1A4116FCDC99CE624F41BA8AA103A0EB1A4119FCDC99CE624F412F6A2A8C97EB1A41D17B04B7D6624F41	ASEM Consulting	Asesoría y Gestoría
2	0106000020E66400000100000001030000000100000005000000F8D6CF3E89E81A41F02B8ABA83634F41471A1212ADE81A41CAAE150285634F41CF29B499B5E81A41C968673C82634F419CE92B7B93E81A415AA8A19881634F41F8D6CF3E89E81A41F02B8ABA83634F41	CODEM Asesoría	Asesoría, Contabilidad y Abogado
3	0106000020E66400000100000001030000000100000005000000759E9284A1E61A417101EE25CC614F4180CE781BBBE61A418B01EE25CC614F4174CE781BBBE61A41BDBE9C3ACA614F41A0A14C39A3E61A41D9BE9C3ACA614F41759E9284A1E61A417101EE25CC614F41	Mendias Prodent & Solver Asesoría Empresarial	Asesoría, Fiscalía y Contable
4	0106000020E66400000100000001030000000100000005000000639179374FEE1A41E384C834A1614F416B8150BF60EE1A41F084C834A1614F41BE6D44E765EE1A41DE3CCB0BA0614F4172BC744751EE1A415E3CCB0BA0614F41639179374FEE1A41E384C834A1614F41	JMA Gestión Integral	Asesor Fiscal, Contable y Laborales
5	0106000020E66400000100000001030000000100000005000000169ACFF807EA1A419B67B5D780634F41DEC341261EEA1A41326658FD7F634F41D7B9130819EA1A4147A1D8A47D634F41DB892D71FFE91A412C26C1C67F634F41169ACFF807EA1A419B67B5D780634F41	S&M Asesoría Sáez y Martín	Asesor, Fiscal y Contable
\.


--
-- Name: vegasdg_asesorias_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_asesorias_id_seq', 5, true);


--
-- Data for Name: vegasdg_bares_y_restaurantes; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_bares_y_restaurantes (id, geom, nombre) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000B8E1F922E9E51A416172FF186B634F4184483ABA1FE61A4141EB8A606C634F41D84BF46E21E61A41FA65A23E6A634F41F904F8E6FBE51A41E6E35C4267634F41B8E1F922E9E51A416172FF186B634F41	Cafetería y Bar "La Recacha"
2	0106000020E66400000100000001030000000100000005000000134B65FD82E31A417E8E0554A2634F419C7891DF9AE31A414643BD7DBB634F412DE48B2BD3E31A4194B63136BA634F4141CE753AC7E31A41690A1D32A0634F41134B65FD82E31A417E8E0554A2634F41	Cafetería y Bar "Rojas"
3	0106000020E664000001000000010300000001000000060000001CE024664CE31A4165586FF30C644F41C752931B88E31A4166D3E3AB0B644F41E3314F0C77E31A41A0B99F9CFA634F41DFC90E7540E31A417EB71306FE634F41D6C654C03EE31A4146384273FE634F411CE024664CE31A4165586FF30C644F41	Restaurante Alba Real
4	0106000020E6640000010000000103000000010000000500000003C2A7F30FEA1A41D88D5AB77E634F41C3CBD51115EA1A410E13FD8D82634F41C61946033EEA1A414654DA0F81634F41EA13D2993AEA1A41AC4E09CC7C634F4103C2A7F30FEA1A41D88D5AB77E634F41	Cafetería y Bar "El Quito Pino"
5	0106000020E664000001000000010300000001000000050000009C58D82E91EE1A4151027F0185624F4171B0DD0346EF1A410A70C59B7E624F41DFA6AFE540EF1A412726A36C78624F41AD57D82E91EE1A41EEF4962E7E624F419C58D82E91EE1A4151027F0185624F41	Cafetería y Bar "El Molino"
6	0106000020E66400000100000001030000000100000005000000FCAE0FBD8EF51A41EBE1B69A27624F412B4AF09FE0F51A41FB1BDA6724624F416F2D6645D1F51A416E17AC491F624F41D28B11F97BF51A414A9F4E2023624F41FCAE0FBD8EF51A41EBE1B69A27624F41	Bar "Chavarino"
7	0106000020E66400000100000001030000000100000005000000658061246AEE1A418F791141A1614F411BF229DC81EE1A41104610C5A1614F4190F229DC81EE1A41B0CD14D69F614F41E8AB5C346CEE1A41E41815B59F614F41658061246AEE1A418F791141A1614F41	Café y Bar "La Plaza"
8	0106000020E664000001000000010300000001000000060000008FFDCB9B3FEB1A41D3ABB60DC8614F41356BB1F34AEB1A418FFDB6ECC7614F413405925B58EB1A41ABB0B9C3C6614F41EE2F8D6B5AEB1A41BBD1BE92C4614F414353C2BB43EB1A41A2D0BE92C4614F418FFDCB9B3FEB1A41D3ABB60DC8614F41	Café y Bar "La Glorieta"
9	0106000020E6640000010000000103000000010000000700000053EEEED12AEE1A41D90F3810EC614F41733A9FD94CEE1A41A03D36D6EC614F4139FB97F14FEE1A41DE003C63EA614F41599FBE713FEE1A41892A3DDFE9614F412AC6D62135EE1A41E4AA3B84EA614F412AB0E7E92DEE1A41DC9D3C21EA614F4153EEEED12AEE1A41D90F3810EC614F41	Bar "La Tasquilla"
10	0106000020E664000001000000010300000001000000060000008FAC20075AE01A4138CE8FC12F624F41FD9F383453E01A418A1C0FCB36624F4103AD20075AE01A4169EFBC413E624F41D79A2B90D6E01A41B8EABC413E624F4167A71363DDE01A41930DCA1D2F624F418FAC20075AE01A4138CE8FC12F624F41	Restaurante y Mesón "JR"
11	0106000020E664000001000000010300000001000000050000005E7295940FC91A41227C227D18644F41E795935822C91A41B17CC5A217644F41DE85F1D019C91A417CB3D1E011644F416E5B7FA303C91A4137B52EBB12644F415E7295940FC91A41227C227D18644F41	Bar "La Tasquita"
12	0106000020E664000001000000010300000001000000070000004BE517A962C31A41D68844DF81634F41075D77B481C31A41D94F22FD83634F41F315C5AEB1C31A41005122FD83634F41FDFFCA09ACC31A418604067680634F41EF72715987C31A41C1A855D080634F41751B89C570C31A41F19BD8FD7D634F414BE517A962C31A41D68844DF81634F41	Cafetería "El Nogal"
13	0106000020E664000001000000010300000001000000050000001D89FE22E3C61A4104BBD97E74634F412BADFCE6F5C61A416FFD70B574634F41AEB37050F9C61A41ED3437A870634F412490728CE6C61A410F3437A870634F411D89FE22E3C61A4104BBD97E74634F41	Bar "25 de Abril"
14	0106000020E66400000100000001030000000100000005000000510FD4900EC71A41F7D291542E644F410CA8AA1336C71A415E8DF29F2D644F41389D2D4133C71A4100E225732A644F41C2EE5C1906C71A41C623C5272B644F41510FD4900EC71A41F7D291542E644F41	Café y Bar "D'Blanco"
15	0106000020E664000001000000010300000001000000050000001B8D4BC468C01A41F4116B5716644F41686BC9F1E4C01A41DC669E2A13644F41D73458D5D6C01A4183B2542B0D644F41BE6CD44C60C01A41B19FC00C11644F411B8D4BC468C01A41F4116B5716644F41	Bar "Gloria Bendita"
16	0106000020E6640000010000000103000000010000000400000066182F1491C51A41E128229196614F410EE776B3C6C51A41F45C8FB27A614F41788CE0BEE7C41A4164670C857D614F4166182F1491C51A41E128229196614F41	Restaurante "El Carmen"
17	0106000020E664000001000000010300000001000000060000005650B104AFE01A418BDE401D7A654F41D7DC0AB5D3E01A41902E0E6A6D654F41B808FFFEDEE01A41D2725EE45D654F41AFB7DA8187E01A413730BF2F5D654F417DFF8C8757E01A41669CA16879654F415650B104AFE01A418BDE401D7A654F41	Restaurante "La Báscula"
\.


--
-- Name: vegasdg_bares_y_restaurantes_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_bares_y_restaurantes_id_seq', 17, true);


--
-- Data for Name: vegasdg_cajeros_bancos; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_cajeros_bancos (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000005E1CC44932E91A418D10097C7D634F4136D5114462E91A41BDB158D67D634F414ED5114462E91A4107FA0ED777634F415032BEEE37E91A4134FA0ED777634F415E1CC44932E91A418D10097C7D634F41	Sucursal BMN	Sucursal BMN equipada con cajero automático exterior
2	0106000020E66400000100000001030000000100000005000000F6F32CFAD9E71A41B791309985634F41DB43517731E81A41E2E9C9F28B634F41EFA5B6DD4AE81A418091309985634F41C07509D8FBE71A416C7C36F47F634F41F6F32CFAD9E71A41B791309985634F41	Sucursal Caja Rural	Sucursal Caja Rural, equipada con cajero automático
3	0106000020E66400000100000001030000000100000005000000C49F0AEFC6E11A4195C2A5B0BD634F41ED2C649FEBE11A41553D6747BC634F4149017055E0E11A4180DA501BB3634F410249225BB0E11A4175447E93B5634F41C49F0AEFC6E11A4195C2A5B0BD634F41	Sucursal "La Caixa"	Sucursal "La Caixa", equipada con cajero automático con puerta de seguridad
4	0106000020E66400000100000001030000000100000005000000A8E9E1E464C31A41F628141282634F41E06041F083C31A412D4FA2D583634F4131039545AEC31A416F4FA2D583634F4138C2A6569DC31A417D5BD06D76634F41A8E9E1E464C31A41F628141282634F41	Sucursal Caja Rural	Sucursal Caja Rural, equipada con cajero automático
5	0106000020E664000001000000010300000001000000050000006ABAA30550C71A414D45F7AF80634F412BBE86655CC71A4121AAF6F180634F41ADD5759D63C71A415A0B03A97B634F41D467904558C71A41550B03A97B634F416ABAA30550C71A414D45F7AF80634F41	Cajero BMN	Cajero BMN
\.


--
-- Name: vegasdg_cajeros_bancos_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_cajeros_bancos_id_seq', 5, true);


--
-- Data for Name: vegasdg_callejero1; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_callejero1 (id, geom, nombre, descri) FROM stdin;
1	0105000020E6640000010000000102000000030000003A57E833E9E41A410D7F4623E9614F414140098D84E41A412C05C040B4614F41C4384FD882E41A4175635777B4614F41	Calle Apolo	\N
2	0105000020E6640000010000000102000000020000000339098D84E41A412CC685E4B4614F41E0D8B56709E71A416C31D61EB2614F41	Calle Atenea	\N
3	0105000020E664000001000000010200000008000000F2B23267CAE61A41EDB1D2D71B624F41A5322014DDE61A4180483CFF00624F41690B72C40BE71A4193267FCECE614F41133924C619E71A41137FFDA1BF614F41E673AD6F10E71A417F7FB335B2614F417B888417F9E61A41B88C37F4A5614F415E26496CF4E61A413EE137F4A5614F416E23496CF4E61A41B276CF5EA5614F41	Calle Tarramonta	\N
4	0105000020E664000001000000010200000003000000CF74898826E91A41D8F2D1F121624F419BD3489F64E91A41832157BFCF614F41F761AE057EE91A4140810AC59F614F41	Calle Acuario	\N
5	0105000020E66400000100000001020000000A000000D3FAEC82DBE61A416F9893C800624F41AFCAF4493AE91A41DCA7DEC706624F41369FA24F89E91A415D5E5B9A09624F41E920A4AA02EA1A416D4E9A030B624F410CBC667733EB1A416968E95D0B624F41E0591AD87CEB1A41E675BCE508624F41025B581C37EC1A41F81F7E7C07624F418C6BC13843ED1A4199637D9CF7614F4139EF27FAD5ED1A41B3DA6CABF8614F41F6BCF2C608EE1A4186230B60F9614F41	Calle Arenal	\N
6	0105000020E66400000100000001020000000900000068436E2DA7EB1A41AFD53A18DC614F416649203377EB1A41B758BD45D9614F41DEF6DDEE3BEB1A410468A719D0614F410A1AA9BB6EEB1A41EC5A91EDC6614F41785F68D2ACEB1A41D99D022AC5614F41B6E61B33F6EB1A41366291EDC6614F41A6388D4F04EC1A41DA4CA719D0614F412063339FDFEB1A41E11D7FDCD7614F41E850EBFFA9EB1A41ADF8EABDDB614F41	Plaza Circular	\N
7	0105000020E664000001000000010200000008000000DCBA9A882AE71A410A491856CE614F41791B2BC795E71A414A7EA619D0614F41DFFCDDEE3BEB1A411170A719D0614F41EF0D2CE96BEB1A41BB7980FCC7614F41E26468D2ACEB1A41B5435284C5614F4135FE9805F9EB1A41383091EDC6614F41AE6087F409EC1A416DD5F773D0614F417221E71014EE1A41182C58BFCF614F41	Avenida San Antón	\N
8	0105000020E6640000010000000102000000130000002646E5BB7CE41A41F4D0F94E0A624F41A4BB507D90E41A41DB0D6C8B08624F415D69F2CCEAE41A4141F3CC16E8614F41EC72BD991DE51A41962F7EDCD7614F413A069A773FE51A41915AE582D1614F414D19654472E51A412FAE79A1CD614F415AE39BD2B8E51A413D18C8FBCD614F417B05FD3851E61A41AFEA56BFCF614F412F16CE607EE61A41A97546CED0614F41BAF440D805E71A410B6646CED0614F41AEA642337FE71A4150A06D0BC9614F4195718C2D2EE81A41962FCA1BBE614F4128C9993E9CE81A411A9B252CB3614F41B7329B9915E91A4105C054C4A5614F41431A146C97E91A41E7471BB69E614F411BBC5D6646EA1A417F38934D97614F418AB7B1BB70EA1A41B8CBA43E96614F41DF72DC93C2EA1A41FEFD385D92614F417BD0187D03EB1A41E253494E91614F41	Calle Virgen de los Remedios	\N
9	0105000020E66400000100000001020000000300000084D7187D03EB1A41E80399A891614F412AEB859990EB1A41F09B98A891614F418E216A2D26EC1A4108277D218E614F41	Calle del Santo	\N
10	0105000020E6640000010000000102000000020000004A1EAF1669EB1A4111D280FCC7614F4188E08BF48AEB1A41581C99A891614F41	Calle Géminis	\N
11	0105000020E6640000010000000102000000020000005A039F60F3EB1A417A61E147C7614F413A1A708820EC1A413652CD7B8E614F41	Calle Virgen del Carmen	\N
12	0105000020E664000001000000010200000002000000867C6E2DA7EB1A4162B08A72DC614F415B981AD87CEB1A41F5BEBCE508624F41	Calle Aries	\N
13	0105000020E66400000100000001020000000200000087FC7C88A3EA1A4159FF39B80B624F410B68076C14EB1A41A6A1948D77614F41	Calle Bellavista	\N
14	0105000020E6640000010000000102000000020000003FE0D516F2E61A41FFC8DE07E7614F414DF4E3384BE91A4127002807ED614F41	Calle Piscis	\N
15	0105000020E66400000100000001020000000500000053D549D807E61A41404C0B2019624F41CB4F03944BE61A41B0280865CF614F41F5C56E555FE61A415167ECDDCB614F419F4486C148E61A41FE5931C2B7614F41CA9826B629E61A4106DAF378A6614F41	Calle Sagitario	\N
16	0105000020E6640000010000000102000000180000001D5E76B84BE41A41B65F7D0D0F624F417D93ED2F54E41A412D5C4F950C624F413107DC1E65E41A41E9EEC1D10A624F4191A341857EE41A41CF0DC2D10A624F41A85931CF08E51A413AA1166715624F41F402DE8AC9E61A41A2FC60661B624F41E9541F8576E81A41C507392923624F414464703599E91A4153FF382923624F41865B3B02CCE91A4133B6A30A27624F419D68794686EA1A410039160745624F415FD413E06CEA1A41D213F95F51624F41D6DE3C5D45EA1A41C108753254624F41BFD4719012EA1A41F52C4ADA41624F412C194D13BBE91A41FADA777234624F41CCD28DFC7CE91A41EBCF2B732E624F41CED4C88A44E91A4173224E552C624F418EC3FDBD11E91A41D2075F462B624F41D15B88DA25E61A411DEDE8CE22624F41578AFF512EE61A41725DD2A219624F415D5E88DA25E61A41B3F7D2A219624F41242811631DE61A413D4E987422624F415EB3D1C3E9E41A4122C26BFC1F624F41CE7E705D51E41A418E80384913624F41305D76B84BE41A4173FCCC670F624F41	Paseo de los Alamos	\N
17	0105000020E664000001000000010200000008000000706DFC7383EA1A416B2A666145624F416947D3F6AAEA1A4198F2F44437624F41E41455DA19EC1A41B0E0CB272F624F41A619C2F6A6EC1A4115C833CE28624F41C494FEDFE7EC1A4143A1FABF21624F41E10C412423ED1A4183C9BC7610624F4126B5AD40B0ED1A4102E4350E09624F41AA39D81802EE1A41C27CF7A407624F41	Calle del Retiro	\N
18	0105000020E6640000010000000102000000030000005BC7372421EE1A412C20E733C9614F4164DB084C4EEE1A412ED0E733C9614F41FB931913AFEF1A41FCB8E2F8BE614F41	Calle San José	\N
19	0105000020E664000001000000010200000006000000C1964F900AEE1A41E481D5E2F9614F41A23857467EEE1A4169932002F0614F411CCAFAF051EF1A41936FC0F6D0614F41FA9DEA3ADCEF1A41044DCDCCB5614F41855A1B6E28F01A41D184FC8498614F414A2E751E4DF01A41A147ECD379614F41	Calle Don Quijote de la Mancha	\N
20	0105000020E664000001000000010200000003000000FA88FB40C2E41A41984D5810F7614F41825F5CA75AE51A419FF1C2F1FA614F410FF9ECE5C5E51A411D9D917ECE614F41	Calle Libra	\N
21	0105000020E66400000100000001020000000200000070119D5779E81A413FA0DC986D624F410688465D47E91A4134C6ED092D624F41	Calle Neptuno	\N
22	0105000020E66400000100000001020000000200000050CA289663E91A417045C56C64624F410E83A7C3DFE91A41CC0012CC3A624F41	Calle Urano	\N
23	0105000020E6640000010000000102000000020000007A7947A7D5E71A41FA9225B863624F41EC728B468AE81A418C5021DD29624F41	Calle Venus	\N
24	0105000020E66400000100000001020000000200000041202AE0F1E71A414128FE9A5B624F419CD979359BE81A41AF3336A962624F41	Calle Jupiter	\N
25	0105000020E6640000010000000102000000020000004B852F0249EB1A411337281834624F41E839BEE53AEB1A414615132C0B624F41	Calle Miraflores	\N
26	0105000020E664000001000000010200000002000000FEF46FDA1FE91A412303DFDDA4614F412DBBDF9BB4E81A419A47811266614F41	Calle de las Huertas	\N
27	0105000020E66400000100000001020000000200000027D82D96E4E81A4126E7515A83614F417D4DBB2F48EA1A41AB4E3C2E7A614F41	Calle Rio de Ambroz	\N
28	0105000020E664000001000000010200000002000000CE3C38F15FE81A41B0D1C8B19B614F41C46B8AEB10E81A41B61220C766614F41	Calle Pedro de Mena	\N
29	0105000020E66400000100000001020000000500000054B194468CE71A413F7C01C0A2614F41A08C07BE13E81A4182CBB7C09C614F4102CA6824ACE81A418CB6C7B19B614F417607AB68E7E81A41D30624A2A0614F4133AC8DA103E91A4153D50C56A7614F41	Calle Marqués de las Torres de Oran	\N
30	0105000020E664000001000000010200000002000000C5196CDA9EE91A4161BB46C47E614F41B3F4A00D6CE91A41A98FD06C66614F41	Calle Cerro de Ambroz	\N
31	0105000020E6640000010000000102000000020000006FF345B3F7E91A41F9229A870B624F41BFE29B1563EA1A41E4B152C650614F41	Calle Sol	\N
32	0105000020E66400000100000001020000000300000024D9BE32B8ED1A418694F742B1614F41959C1288E2ED1A412983AE639B614F416812491629EE1A41B09B6BBF8F614F41	Calle Diego de Siloé	\N
33	0105000020E664000001000000010200000005000000044232BB2AF01A412120775594614F41CFEC986BD2EE1A41DAA51B658F614F41C138C6E82BEE1A418CE31B658F614F41A784E90A0AEE1A41686060298B614F4112D3D7E82FEC1A415196549386614F41	Calle Las Higueras	\N
34	0105000020E66400000100000001020000000B00000032DAF5D1E9EF1A41B9EAA7E8B0614F41C67BBA3237EE1A410A5C6324B5614F410BEED19E20EE1A41C10FE0F6B7614F4150FA4160B5ED1A41ED03F742B1614F412C5EA0105BED1A41F49180CBA8614F4106E3F20A0CED1A41ECCD4D189C614F41F12068279BEC1A419D74041996614F41F728CC323BEC1A417D1FDCFB8D614F418ABB607127EC1A41EB2A2D568E614F4104A9E39E24EC1A418D33053986614F41BFE57A8218EB1A41FA89F46777614F41	Calle Real de Ambroz	\N
35	0105000020E664000001000000010200000003000000E8F65A162DEC1A4195A62D767E614F413FBD02C181EC1A41ECEDEE0C7D614F41C19014E35BEE1A41A5F0E9B182614F41	Calle Miguel Hernandez	\N
36	0105000020E664000001000000010200000003000000ECF0607127EC1A415439A5ED86614F41FA115B162DEC1A417F38DE1B7E614F41D8BE47AAC4EB1A419554E5B658614F41	Calle Madrid	\N
37	0105000020E66400000100000001020000000200000004F302C181EC1A41D7738EC17D614F41AC8B78DD10EC1A418A8ECF8A4F614F41	Calle Barcelona	\N
38	0105000020E66400000100000001020000000200000038F24CBB30ED1A41EC2C6CDF7F614F4148ADA0105BED1A417F203C8C43614F41	Calle Valencia	\N
39	0105000020E664000001000000010200000005000000207381DD12EB1A41D64E44C277614F41F23E4F4F4DEA1A413641C4F44A614F41F064DCD7C5E91A41BD73037E3C614F41D3AD5DAA49E91A410288F7E737614F411AD55AF456E81A41EF2904BE1C614F41	Camino Cullar Vega	\N
40	0105000020E6640000010000000102000000040000001E71724973EF1A41A18C4ADD91614F4197138D6B4FF01A414476842B79614F41C021583882F01A41C439C9EF74614F4192DBB1E8A6F01A4178A0C8EF74614F41	Callejuela de la Acequia	\N
41	0105000020E66400000100000001020000000500000014630B77F5EC1A4126E0574ED0614F41AC28364F47ED1A4167275453A6614F418AA09BB560ED1A4173264362A7614F41ECFF834977ED1A41C92CB0639B614F41A621ADC64FED1A412FA423C089614F41	Calle José de Mora	\N
42	0105000020E664000001000000010200000003000000F31204D26CEE1A41085727DBA3614F419D7CF2C07DEE1A41E72939CCA2614F41773FB98D2FEF1A41A2017735A4614F41	Callejón de la Iglesia	\N
43	0105000020E6640000010000000102000000020000002C0B487121EF1A41E7C9D760B3614F4186E6A12146EF1A415940AB2891614F41	Calle de las Flores	\N
44	0105000020E664000001000000010200000002000000FB4DA621C7EE1A419C607835A4614F414B5B23F4C9EE1A4100136EBF8F614F41	Calle Almendro	\N
45	0105000020E664000001000000010200000003000000A2ECF2C07DEE1A41B239590EF0614F411A2983FFE8EE1A41BFDAC92AFE614F41D588C8F916F01A41D7FD41A206624F41	Calle Mina de las Monjas	\N
46	0105000020E664000001000000010200000002000000A90E98C6CAEF1A410BC8711533624F410791CE5411F01A41679790FC06624F41	Calle Ladislaokubala	\N
47	0105000020E6640000010000000102000000030000009F000F2DE8ED1A416F8302748E624F4139AC8D5A64EE1A41E8EAEFE735624F41BA7A79A46DEF1A4125BB856602624F41	Calle Alfredo Di Stefano	\N
48	0105000020E6640000010000000102000000020000009410D6F999EE1A4171E8E9AC2B624F41C897B18D2DF01A41AEBFB17E34624F41	Calle Luis Suárez	\N
49	0105000020E664000001000000010200000002000000B2E1BC3237EE1A414548118A53624F417C395016AAED1A41D09794B750624F41	Calle Miguel Muñoz	\N
103	0105000020E664000001000000010200000004000000AD23E1595EE71A4157EEDAE54B634F41522213E823E81A41E974D48A51634F41CC104BD1E3E81A4158D88FC655634F41C741F4D6B1E91A417E9CA1B754634F41	Calle Buenos Aires	\N
50	0105000020E66400000100000001020000000D000000AA0435440DED1A4103DA9B3690624F4166DBA45DDFED1A41EE8065768E624F41B0DE28F1E0EF1A4185067DB47E624F4180731E026DF01A4179A5DF5E7C624F414A39781615F11A4107FEA3B377624F413178092485F11A4155AF99DD71624F4119CDAC84E2F11A41683F248768624F41B29FE1F2AFF21A41C4F261C451624F410BE0FF5B53F31A411AA6175844624F41E4206CC3E8F31A41DBEBA1013B624F4197AD1788BFF41A41354BC21531624F41C6AC841697F61A41AD39A0A81C624F41D1ABBD36A1F71A41C7DA64FD17624F41	Camino del Chavarino (Camino Cantarranas)	\N
51	0105000020E664000001000000010200000008000000A597E4BA20EE1A41CDDDBBB1B7614F41C211F70D0EEE1A418C91C939FA614F416604450C00EE1A41AB0815A607624F41A94DCEB5F6ED1A41228A96D216624F41AD2EFE4A45ED1A41A7F2175844624F41755687F43BED1A41DAF2BCF167624F4120FB4B4937ED1A415773B47480624F4147D270EF11ED1A4154ED04CC90624F41	Calle Ancha	\N
52	0105000020E66400000100000001020000000200000038E55AF4C3EF1A41A9F39F4689614F41A9BEE37CBBEF1A41002169B842614F41	Calle Zaragoza	\N
53	0105000020E664000001000000010200000003000000E02080711BF01A417699BBAD9C614F41B3416405B1F01A418EE7BBAD9C614F4105797DCC13F11A416F703225A5614F41	Calle de los Alamos	\N
54	0105000020E664000001000000010200000004000000AC40614FBEEF1A416908CF79D5614F418C55CE6B4BF01A41EB5B276FB0614F41AD09AB496DF01A4130841CF99B614F41244C6A60ABF01A4189E7E42A75614F41	Calle Pozo de la Acequia	\N
55	0105000020E664000001000000010200000002000000B4956A60ABF01A4179F0348575614F41C78EE3322DF11A41677CC9A371614F41	Callejón del Caz	\N
56	0105000020E664000001000000010200000002000000D8D7DB6BCEEE1A41B619EB458F614F415C52C4FFE4EE1A41163359C743614F41	Calle Salamanca	\N
57	0105000020E6640000010000000102000000020000003563A5CC9CEC1A41B80EE1EF6A614F41FCD400D83AED1A4105966FB36C614F41	-	\N
58	0105000020E66400000100000001020000000200000075EE64E3DAEC1A41F860304A6B614F4122C7C4EEF9EC1A41DAAE48D644614F41	-	\N
59	0105000020E664000001000000010200000002000000489C90E3E4E71A415CCD9350B4614F411D0231D8C5E71A41AB7667F8A1614F41	Plaza Virgen de los Remedios	\N
60	0105000020E664000001000000010200000002000000D324168E31EC1A41E4904CEC07624F41C31CE7B55EEC1A410EC77589D0614F41	Escultor Sánchez Mesa	\N
61	0105000020E664000001000000010200000005000000938C92040FED1A41CBF8DC8891624F4190C8B935E4EB1A410C32E525D1624F4184C9038299EB1A41E7AD9D12E2624F41721360213CEB1A415043CA55FC624F411D165C6FFFEA1A41C90CC4D814634F41	Avenida Purchil	\N
62	0105000020E66400000100000001020000000B0000003B915C6FFFEA1A41532B2A6E15634F41EB6AAA6DF1EA1A419C446B041D634F417269AA6DF1EA1A4155EB5D9C32634F418868AA6DF1EA1A4124E8148943634F41FB056FC2ECEA1A4167E38FCA4F634F41EDC00ABFD0EA1A4189B30C0C5C634F4133196B10B0EA1A4113F7B92267634F41F0CB060D94EA1A4197E1614E6F634F41D44832F0A5E91A41A756E76581634F4177EAD07784E81A41E27AACBA7C634F419D68BA725AE81A41284B7BE57D634F41	Selva Florida	\N
63	0105000020E66400000100000001020000000D00000039E9924185E91A411E31477E9A634F41E2E8BA725AE81A41DB1D86BB83634F41134DCDC547E81A41214BB1A57F634F41D05ABDFD54E71A4182779BF973634F4122D015EBBAE61A41FB81663972634F41BA69AD3562E61A413F1E6C2475634F41D6198FCCBEE51A41F3D5ABBA7C634F41D6AF9509F6E41A418DAFC06688634F413BE28DA57CE41A41F30ED02791634F41D4F75837AFE31A41F3E819949E634F416C4B8C7E3AE31A412A038714A2634F4147FE65B11DE21A4194032955A7634F419A9643963DE11A4171E93D01B3634F41	Calle Calvario	\N
64	0105000020E66400000100000001020000000C000000ED3484F0A2E91A4168C5320C83634F41AC1EB19874E91A41FFA5F14099634F4169A39AC48BE91A4154146F269C634F411A06D2A9AAE91A41F2D4D002BC634F41A52DB19874E91A41D47383CDDD634F41544C63DF6CE91A414BBB3DCDF9634F41A94F63DF6CE91A412D500EA1FE634F412D03D403F9E81A4134BE21C416644F4162F1020619E81A41A74842D54C644F41B47619DA01E81A41D316F69F6E644F41900C30AEEAE71A41D4AD285093644F41E9DE046067E71A41359DDC1AB5644F41	Calle Real de Purchil	\N
65	0105000020E66400000100000001020000000400000059D51F006FE91A41DBBF8DC7F5634F41DEE657E92EEA1A41E20DA3D30E644F41539305EF7DEA1A41CC564CFE23644F41DE05A08864EA1A4136E3935D79644F41	Pasaje de San José	\N
66	0105000020E664000001000000010200000006000000A954699FA4E91A41704F5E74B9634F4110FA16A5F3E91A4160403C92BB634F418E604F9F9EEC1A41DE6B8D0CAC634F413C8DC62792EE1A41388B2786A2634F410D109C602BF01A417A2E28A692634F415A8410332CF11A4133CCDDA68C634F41	Calle Granada	\N
67	0105000020E6640000010000000102000000060000002C619477F6E91A419F248CECBB634F41F03D1D00EEE91A414CE4CB75AD634F41FAC7FF380AEA1A41C30A00699A634F414403F48215EA1A41B0AFA57895634F4122355B44A8EA1A415030ACF37F634F412CF1C4AA42EA1A4192ACF51276634F41	Calle Chirichi	\N
68	0105000020E66400000100000001020000000200000072FCC605BCEA1A414B7A452D96634F4119FD91D2EEEA1A410536F492B5634F41	Conde de Navas de Tajo	\N
69	0105000020E66400000100000001020000000600000082D313A572EA1A412F7C72E021644F41568373B091EA1A412B3E72E021644F4124BCEA279AEA1A419CDBA6B31E644F41CEE3907775EA1A412082BD1F08644F4156BD19006DEA1A412B207540F2634F41C14DAE3E59EA1A41D12B537EE4634F41	Calle de los Huertos	\N
70	0105000020E664000001000000010200000002000000F8CF5AE92EEA1A41B24CC17FD8634F41DFBC124AF9E91A4146AF8DECBB634F41	Callejón de la Acequia	\N
71	0105000020E664000001000000010200000002000000C270C6AA42EA1A41189D00E9D9634F41814FBC4FC7EA1A418EB8E8BCD0634F41	Callejón del Agua	\N
72	0105000020E66400000100000001020000000200000025723F7DC4EA1A41FBC93817D1634F415AE15C44A8EA1A418C47230BB8634F41	Callejón del Aire	\N
73	0105000020E6640000010000000102000000020000009D8426B661EA1A419EB922CBD7634F41AEBACC053DEA1A41C13C0129BA634F41	Callejón de la Parra	\N
74	0105000020E664000001000000010200000003000000DC363111DDE91A4145E847681F644F41037EA22DEBE91A4169D9204B17644F414852C14F48EA1A416796204B17644F41	Placeta de San José	\N
75	0105000020E664000001000000010200000002000000A8ADD6CC9BEC1A410B17E366AC634F418DF98F88DFEC1A414C50C57FD8634F41	Calle Terrobas	\N
76	0105000020E66400000100000001020000000400000053FB48D8BEEA1A410ACCE5C67C634F41C5B6A288E3EA1A41579DBEA974634F4190ECE4CC1EEB1A4195703B7C77634F413325F83887EB1A415D6F1FF573634F41	Calle Noracha	\N
77	0105000020E664000001000000010200000007000000ACBE14A5F1EA1A41A122D2FA43634F410EDA1100EAEB1A417403FA373C634F41F1DD393334ED1A41769A782A2F634F41D0D5CC2792EE1A41BE07348623634F41C27C641C71EF1A41AE188B3B1E634F4120E81DD8B4EF1A41CD3A8A3B1E634F41D1204A0B80F01A418F93CFFF19634F41	Vereda de San Ignacio	\N
78	0105000020E6640000010000000102000000030000009B26185BE4EB1A41ECE7FA373C634F419DDDF43806EC1A414973633E06634F41A292831CF8EB1A41E02E8C7BFE624F41	Calle Caliche	\N
79	0105000020E664000001000000010200000002000000761FCF7120ED1A41277518DF2F634F417356216CD1EC1A411AE037E6F3624F41	Calle Oficios	\N
80	0105000020E664000001000000010200000007000000BADB57E92CEB1A4168CE47B702634F411E9782C17EEB1A41E5A436C603634F411355C66033EC1A4110D70FA9FB624F41E56B7B1CF6EC1A4194BEA822F2624F415974E993FCED1A411C2FA3E7E7624F41E6008D3ED0EE1A41813BF341E8624F417F80F2A4E9EE1A414410D15FEA624F41	Vereda de los Pinos	\N
81	0105000020E664000001000000010200000002000000CCD77B1CF6EC1A410F89DBB50E634F412EAD8188DBEE1A414B25EEC6FD624F41	Calle Labradores	\N
82	0105000020E66400000100000001020000000200000051D6771C75ED1A4141F2CF1F0A634F410C65892D64ED1A4167873D41EE624F41	Calle Lavanderas	\N
83	0105000020E664000001000000010200000004000000C0B5F0EEF6ED1A419F2ED9D57D634F413AF7610B05EE1A41C4F467B96F634F4130828288DBEE1A411641EFC6FD624F41F4D37077ECEE1A4164A0D25FEA624F41	Calle Cauce del Río	\N
84	0105000020E6640000010000000102000000020000005938EB93FCED1A41BF02E19048634F41DD12398E2CEE1A4153E0A26727634F41	Callejón Cañaveral	\N
85	0105000020E664000001000000010200000002000000F04EC21624EE1A41711AB83360634F41F04EC21624EE1A41711AB83360634F41	-	\N
86	0105000020E6640000010000000102000000040000001FA8D5828CEE1A413F6DD33AA3634F413701701C73EE1A410AFF5B037B634F410A755E0B84EE1A41E231DB155E634F41F178BCBB29EE1A41EDCBDA155E634F41	Calle Chorrillo	\N
87	0105000020E664000001000000010200000003000000049497052FF11A4157323B018D634F41636DA7CC8FF21A41A41CB8D38F634F413627235504F41A415EBA872083634F41	Camino de Granada	\N
88	0105000020E66400000100000001020000000200000058A2AB60ACEF1A413E79433C97634F41DFC6A505B2EF1A414C0DEEC67C634F41	Calle Cortijo Nuevo	\N
89	0105000020E664000001000000010200000005000000F550423546F11A4188D03E108F634F4152459C85E9F01A4152A778A67E634F41DB0E0DAA75F01A4145A10D8D11634F4181719EDF37F01A4103E12612CB624F4100FD870B4FF01A419230F4DD7C624F41	Camino de San Ignacio	\N
90	0105000020E664000001000000010200000002000000ED46DFAE76F01A41975A6FBF12634F41904F7FB442F21A41040A99FC0A634F41	Calle San José de Calasanz	\N
91	0105000020E66400000100000001020000000200000044698748E0EE1A410F48600EF4624F4165EF082C4FF01A415C4D061EEF624F41	Calle Huerto de San Ignacio	\N
92	0105000020E6640000010000000102000000030000007BD51F2CD4ED1A41D8720C79E9624F410822010A77ED1A4194C4F29196624F41301E010A77ED1A41748B6A298F624F41	Calle Los Angeles de San Rafael	\N
93	0105000020E6640000010000000102000000040000006C258A926EED1A412A96F9EC90624F412BC0050AF8EC1A415F937044A9624F41ECE782DCFAEC1A419AA68450C2624F416354B6B44EEC1A419A7C24E5D2624F41	Calle Los Roquintos	\N
94	0105000020E6640000010000000102000000020000000A343AD160EA1A417D647BBABD624F41B9985D042AEC1A41638FE79BC1624F41	Calle Verbena	\N
95	0105000020E664000001000000010200000002000000F25D6F042EEA1A412A2691C6D6624F41E39A50F3BBEB1A412415BF3ED9624F41	Calle Alhelí	\N
96	0105000020E664000001000000010200000002000000F4709ADC7FEA1A41B8466A69EE624F41F932261B6AEB1A4110216969EE624F41	Calle Azahar	\N
97	0105000020E66400000100000001020000000500000027D0190AFCEA1A419939028314634F4100B45498C3EA1A41C8A53BB10B634F410164FC312DE91A41F5CCC9740D634F410232885F2CE81A414360D3EA21634F41D5F055C07BE51A413ECCA3323F634F41	Avenida de América	\N
98	0105000020E6640000010000000102000000020000006EECD7C5C0EA1A41CD333CB10B634F41772B301B6CEA1A4145A78195F7624F41	Calle Alameda	\N
99	0105000020E664000001000000010200000003000000C516F3D6B1E91A4119A381D080634F41626364F3BFE91A414411E9767A634F41ACDDFE8CA6E91A414C8F1BCF0D634F41	Calle La Cerca	\N
100	0105000020E6640000010000000102000000020000004841C7A3E6E81A414D888EC655634F418A374AD1E3E81A4113A3147413634F41	Calle Sao Paulo	\N
101	0105000020E66400000100000001020000000200000003B20C8D29E81A41D592D38A51634F4120C4895F2CE81A413769D5EA21634F41	Calle Caracas	\N
102	0105000020E66400000100000001020000000200000068DAE0595EE71A41B4252A404C634F4122BDE6B458E71A41611F3D712B634F41	Calle Lima	\N
104	0105000020E66400000100000001020000000400000033A9EE7BB7E91A41549E67696D634F413717ED203EE91A41DAA9071E6E634F41674899BA28E71A41A25AB28863634F41129EBCDC06E71A412AF8600E73634F41	Calle Colegios	\N
105	0105000020E664000001000000010200000002000000EDC77704AFE91A41F3BF6AC93D634F417C272E1BEBEA1A41B41F2B603C634F41	Calle La Paz	\N
106	0105000020E664000001000000010200000002000000D81A7804AFE91A4194D9046324634F41F083ABEDEDEA1A41D3FB54BD24634F41	Calle La Habana	\N
107	0105000020E664000001000000010200000003000000E02881159CEA1A41A5035EB378634F41FCA33476E5EA1A41454081B566634F4147B1B148E8EA1A4180EEF2F164634F41	Calle Alta	\N
108	0105000020E664000001000000010200000006000000B272A75F32E51A4142FCBC432E634F4176C6DDED78E51A41E637AA323F634F4149BD3143A3E51A414F729E5C5A634F41034968D1E9E51A414708A49764634F4115E45D766EE61A4162DEE73B70634F41683C1D8DACE61A414A2BC55972634F41	Calle San Antón	\N
109	0105000020E6640000010000000102000000020000006D68812CE8E31A417D79103988634F419FDCE6A3ECE51A41F06BF5F164634F41	Calle Santa María	\N
110	0105000020E664000001000000010200000002000000D8960AB5DFE31A41ECC561B378634F41CD953343A3E51A41B3CBA05C5A634F41	Calle Nuestra Señora del Rosario	\N
111	0105000020E664000001000000010200000002000000B2089BF34AE41A41903136BB36634F418289D7DC8BE41A417D36CEB46C634F41	Calle San Cecilio	\N
112	0105000020E6640000010000000102000000060000008111C970A4E31A41055FDCAA41634F416F5E055AE5E31A41294B62B378634F415B5B055AE5E31A413629B1ED88634F41F808176BD4E31A41C53B296591634F41C6174643A7E31A41326C726497634F411F0F4643A7E31A41AB2F49279F634F41	Calle San Nicolás	\N
113	0105000020E664000001000000010200000003000000A6B2C970A4E31A41D56B736497634F410EA37B7674E31A41D6A7C81992634F41CD1F4B4328E31A41B91E498C45634F41	Calle Nuestra Señora de los Dolores	\N
114	0105000020E664000001000000010200000002000000A0E6E88116E21A41A6CD7244A7634F4125F5C304BFE11A41E3C2BF034E634F41	Avenida Genil	\N
115	0105000020E66400000100000001020000000300000000C500EEFFE11A41B4972EC08B634F4138AF38D7BFE21A41C6BFB2ED88634F41ABB967AF92E21A416116A47C4A634F41	Avenida de Dilar	\N
116	0105000020E6640000010000000102000000030000000EBA4043A5E41A41F0A2B0928E634F414CB18E3DD5E41A41319592EB9A634F41AD1F7176F1E41A41D3727E7ADB634F41	Calle Alfonso X el Sabio	\N
117	0105000020E6640000010000000102000000060000006FF359E831E11A412EDCCEB4EB634F411CBB43D7C1E11A41F21AC31EE7634F4167AE33214CE21A41CEE673C4E6634F41271AB8A9C2E21A41188C95A6E4634F4139797176F1E41A415FE57E7ADB634F41230361C07BE51A41DF7BA25CD9634F41	Calle Virgen de las Huertas	\N
118	0105000020E66400000100000001020000000400000043592710DEE11A41F94EE4A014644F4103B1C704BFE11A417186C41EE7634F41BCCCF6DC91E11A410A3EA9D7C3634F416EB8695419E21A41B963CBB9C1634F41	Calle París	\N
119	0105000020E664000001000000010200000004000000F94CA63D5AE21A41085068CE11644F41F3E3BDA943E21A41CF0EC51EE7634F41AA156A5419E21A4178759E41BF634F41717B871BFDE11A415B935562A9634F41	Calle Madrid	\N
120	0105000020E6640000010000000102000000030000009F54A23DD9E21A417C0C351B05644F41FEE5367CC5E21A4117B6474CE4634F4140D76BAF92E21A41FD583ADBA5634F41	Calle Londres	\N
121	0105000020E664000001000000010200000002000000C1E0E1DC0CE41A41FC15BD432C644F41BA4DCA7023E41A4196468695F5634F41	Calle Juan Carlos I	\N
122	0105000020E664000001000000010200000003000000D06D595415E41A41D35E59DD12644F418B26CF70A4E31A41FAA8964614644F4185D7448D33E31A41DF336DAEA2634F41	Calle San Guillermo	\N
123	0105000020E66400000100000001020000000200000011D05CE831E11A4108A47169EC634F4156EE568D37E11A41F88EB3CD17644F41	Calle Roma	\N
124	0105000020E664000001000000010200000005000000D842D18875E61A41117FDEBD74634F4152C3BE3588E61A41909B9218A1634F41EEABE78D9FE61A418F71F51BBD634F41CE9410E6B6E61A41E8357648CC634F4195D574E9D2E61A413E51E28F09644F41	Calle Olivillo	\N
125	0105000020E664000001000000010200000002000000C76D9E3AF8E61A414DFCBE6E1E644F411A04AA01D8E81A4152595D231F644F41	Calle Almazara	\N
126	0105000020E664000001000000010200000004000000AEFEF54515E81A41CE9F7EA54C644F413692C512C9E71A4104D0C26948644F41E49CDB2339E71A416837D89551644F41F8C4F134A9E61A41A7C049B25F644F41	Calle Las Albercas	\N
127	0105000020E664000001000000010200000006000000618E7DDCE8F01A41C7B0AD9A45644F417AAE374270F11A4105E2D120C8634F419AE2E59141F11A41F16DF334BE634F41B20698934FF11A415F1D1B34B7634F41D182609A87F11A4130C5E473B5634F41F4E028A1BFF11A41FD323BEF8E634F41	-	\N
128	0105000020E6640000010000000102000000080000008F2A9EA944EF1A413111260ABD634F417935E69141F11A41FBA98C9FBD634F41E196213D46F11A417A2A211FBA634F41D295FC966BF11A41FE9DB49EB6634F41181A9C458CF11A41E9FEB49EB6634F41100AC59DA3F11A41A14EEA5EB8634F412CD8EDF5BAF11A412376C35FBF634F41F36A8667A4F21A41E01D5CCABE634F41	-	\N
129	0105000020E664000001000000010200000002000000C805FB48E7EE1A4106CC213F12644F416FA094E112F11A41A627002B1C644F41	-	\N
130	0105000020E66400000100000001020000000D000000EFE19C4C0CE11A41D52ACF132E654F417234628558E21A411F40D0B31F654F417045FDBD70E51A41E2F66537DE644F418B1A251363E71A4140194DB0B4644F4139EFB3BD95E81A415CF4328999644F4144DDA4846EEA1A41E6D36F9779644F415910871220EE1A41D2FAABA559644F41F46E7EA0EBF01A419A37037B46644F41339DF18311F21A41C0CDCB4C3B644F4180D2BC8350F41A41D7EE075B1B644F4134A72567E9F51A41FA1EB56503644F4154D6728375F71A41B28546A9DE634F41DAE0C12D5AFB1A418D1C4C29A5634F41	Camino Puente de Piedra	\N
131	0105000020E66400000100000001020000000B000000C08FB657F8CD1A41CE497B7EC6624F4193DCD11E05CE1A4163AE4B1065624F4174B90A3B77D01A41AF1816223D624F41CAF221C9E9D11A41AE36C42C25624F411E7680ACF5D31A41AB70C42C25624F413B3D61AC4ED51A418867C42C25624F41C9E85C73B4D61A417E29E0F331624F4153D3D8AB25DB1A41D2F6C38C33624F41710FB572E4DD1A413FCEE29323624F4109B1028F70DF1A416D25FD5A30624F41382CB7003DE01A41345253902B624F41	Camino de San Antón	\N
132	0105000020E6640000010000000102000000060000007D3D1F3836E01A41C415F5B62B624F410B5AD13944E01A41F2E3883628624F4172FD70E864E01A41CF38258C2A624F413A7A587F82E21A41148BCC5E14624F41471043A19AE31A41FD35291E0F624F412BB44EB750E41A4172B35AF30D624F41	-	\N
133	0105000020E664000001000000010200000006000000BBCF105DC5E01A4175DBC339B1634F419598A64624DF1A412CEC940DB6634F419F4C2DEFBFD71A41AA0C9BC6D9634F41C453B7C6BDD21A41BC31D3D89F634F412EC10DE8FECF1A41689579B5A3634F412ECDF10FA0CA1A41E95612A489634F41	Camino de Purchilejo	\N
134	0105000020E664000001000000010200000003000000AAAF8EEA10D51A417323025BBB634F41D3289D8BC1D41A41F20127C8CF634F416A2178E5E6D41A419CB0C8CF0E644F41	Calle Los Ciruelos	\N
135	0105000020E664000001000000010200000008000000CE3D7A33B6D71A4185EC5FE4DA634F417A5B628AB9D41A41142BD794E3634F41894D02B165D31A410FAD008CE4634F412581A43160D11A41B5B5D05FE9634F41082E5FE091CE1A41C3846CD2F8634F410CE30F5276CB1A41EBABD7180D644F41280F7DCCDAC41A4151B485AE34644F41CD99ACD86FBC1A41825B6A297B644F41	Avenida de la Vega	\N
136	0105000020E66400000100000001020000000300000072879409D5D41A41AFFBE8B4F8634F414CF77CC734D81A4103CDD9F3EF634F4103DCCAC526D81A414712B19BD8634F41	Calle La Malena	\N
137	0105000020E6640000010000000102000000020000008F0E59104CD21A41D4FD512AA1634F411B0D59104CD21A419FE9290B50634F41	Calle Chipre	\N
138	0105000020E664000001000000010200000002000000C14789A59AD11A415992B9BFA1634F41B4ADE9F679D11A414DE5328837634F41	Calle Los López	\N
139	0105000020E6640000010000000102000000020000004A345537CDD01A41F73888EAA2634F4173D63E32A3D01A411D3D12AD07634F41	Calle Creta	\N
140	0105000020E66400000100000001020000000200000008DE971F09D01A411828F17FA3634F41A3A8331CEDCF1A4132CDE7C20B634F41	Calle Sicilia	\N
141	0105000020E66400000100000001020000000200000080DE4DAC11CF1A416199185F44634F41B022D75508CF1A4136B79380F8624F41	Calle Cerdeña	\N
142	0105000020E664000001000000010200000002000000C0FB12010DCF1A41405D195F44634F41A16EB788ACD01A41BEBB7A0942634F41	Calle Corcega	\N
143	0105000020E66400000100000001020000000B000000289D5D104CD21A41197E96A050634F41BDCEEDF679D11A41848E378837634F4106E4361CEDCF1A415EAC832D0B634F41F776D95508CF1A415E4B9680F8624F41D150EB81B3CD1A410B716352DB624F41C034C5B496CC1A4111A16FBAC5624F412750E581F2CA1A41E0B9B4E2B1624F413801F7AD9DC91A4150DE158DAF624F4179F2D0E080C81A41467BDFCCAD624F413637CC0702C71A417A7B6D61A7624F41516D757E54C51A41E3B9BDB8B7624F41	Avenida del Mediterráneo	\N
144	0105000020E664000001000000010200000005000000CFFE6D79ACCA1A41E47D98678A634F415D1BB8C561CA1A414E4B197441634F4153F12E1C6BCA1A41ACC7DF5A21634F41D4C7786820CA1A41BF22B1BEE8624F417EAE5AFF7CC91A41F38758CA98624F41	Calle Alhambra	\N
145	0105000020E664000001000000010200000004000000C4FCA0C7F0CD1A419A0125F3FB634F411533FB1794CD1A41CCEF1705DE634F410ADEE69DF9CC1A41FC1E099396634F41484B78D3BBCC1A41E75E70D157634F41	Calle Antonio López Porras	\N
146	0105000020E664000001000000010200000002000000034748FC87CA1A41128F3B7062634F416ECB78D3BBCC1A419A0CC4BF59634F41	Calle Generalife	\N
147	0105000020E6640000010000000102000000030000004F4D79D3BBCC1A413C99C4BF59634F41D05821DD66CC1A41A58E4683D4624F41557CFE71E2CC1A412A4B0534C1624F41	Calle Nevada	\N
148	0105000020E664000001000000010200000002000000640D121769CA1A41BC3281EC1C634F4120E6A67B8DCC1A410F465D2A16634F41	Calle Indiana	\N
149	0105000020E66400000100000001020000000400000034848D7842CA1A4119EB97C005634F410C3A955B41CB1A41FCD59CF5FF624F41AA839F988ECB1A41208E44D203634F41D4FBBD4F76CC1A41A5049DF5FF624F41	Calle Virginia	\N
150	0105000020E6640000010000000102000000040000003689A44C2BCA1A417AAF5BA6EC624F41EEF347A239CB1A411A07B5C9E8624F41466C04267FCB1A41F4B85BA6EC624F4136B070966ECC1A41D86BDEC0E9624F41	Calle Carolina	\N
151	0105000020E6640000010000000102000000040000001747843BF5C91A4149EF717AD5624F4188F85E7622CB1A41EBEDA1A6D0624F418BABCD4060CB1A41541A727AD5624F41716923DD66CC1A416FCE4883D4624F41	Calle Florida	\N
152	0105000020E664000001000000010200000002000000993D1E54B6CA1A418D13F694D2624F41CBAA82E1A6CA1A41A2346BC1B1624F41	Calle Colorado	\N
153	0105000020E66400000100000001020000000400000034972E1AB4CC1A416C302D4D4A634F4181DA15EC7CCD1A417800035649634F41361A2029CACD1A41C5C3088B43634F4113B44A774DCE1A41150EDF9342634F41	Calle Arizona	\N
154	0105000020E664000001000000010200000002000000BDDBF73495CC1A41A248A7AE23634F418CA9AF043ECE1A411D6FD8DA1E634F41	Calle Dakota	\N
155	0105000020E664000001000000010200000002000000C3C05CC285CC1A41668A958B0B634F4172D2C6D826CE1A413640429D09634F41	Calle Nebraska	\N
156	0105000020E664000001000000010200000002000000007E0F097ECC1A416A16AC5FF4624F41F4B92129CACD1A412A640683F0624F41	Calle California	\N
260	0105000020E66400000100000001020000000200000050F4921841C51A41DF6608D5BE614F4187AF75885BC31A4138B3F07676614F41	Calle Jilguero	\N
157	0105000020E66400000100000001020000000500000008DA4C774DCE1A41B9A8B79C41634F41B40AFFBD45CE1A41E2B486EC1C634F410FBD15922ECE1A4168EEC5B706634F414839A7C7F0CD1A417637307AF1624F419A77D46FC2CD1A41D14F0783F0624F41	Calle Montana	\N
158	0105000020E664000001000000010200000002000000BFDBA0B905D01A41F39A820EA5634F411D8B19C190D01A414918AAD8FE634F41	Calle Encina	\N
159	0105000020E664000001000000010200000002000000CC48019359D11A414252159BE9634F418AC90D2AF5D01A41C2B42F20A3634F41	Calle Roble	\N
160	0105000020E664000001000000010200000004000000956F443A00CE1A419C41E2669B634F41B707E0AC0FCE1A41906477A4B0634F41CA8858B49ACE1A4122C0DA04FA634F41968308A144CF1A41FE8BD75329644F41	Calle Acacia	\N
161	0105000020E66400000100000001020000000200000093232C0CC9CE1A4107268A439F634F418CCFD1BB25CF1A4120C2A954D5634F41	Calle Abeto	\N
162	0105000020E664000001000000010200000002000000BB25041894CD1A4116904BFCDE634F4192C3C3CA3BD01A4181B48592CE634F41	Calle Pino	\N
163	0105000020E664000001000000010200000002000000FB100064F7CE1A416BBF9731BD634F41C2363F2C15D01A41FAE1736FB6634F41	Calle Paraiso	\N
164	0105000020E664000001000000010200000002000000835E60FD1ACA1A412BC8A4869C634F4168337C0206CD1A41BF59A5869C634F41	Calle Ramón y Cajal	\N
165	0105000020E664000001000000010200000003000000CF7EF6E309CC1A417F7F31A909644F419CD713266BCB1A412F812B9EAE634F416478D87A66CB1A411C9274B19D634F41	Calle Severo Ochoa	\N
166	0105000020E66400000100000001020000000200000006B43EBBF8C71A41413853BDFF634F411389721392CD1A415D4AB40EDF634F41	Calle Miguel de Cervantes	\N
167	0105000020E6640000010000000102000000020000000477DD2CA3CB1A41B9EBCB4CCF634F4180ECE5B75ECD1A41F609EF60C5634F41	Calle Jose Luís Nougues	\N
168	0105000020E66400000100000001020000000200000067BAC72779CB1A41261F3D5FB7634F41C2131EB126CD1A4199A65E73AD634F41	Calle 11 de Marzo	\N
169	0105000020E6640000010000000102000000020000008470BD3805CC1A41D82E34A909644F411357C1EA41CC1A413E8309182C644F41	Calle Maria Pineda	\N
170	0105000020E66400000100000001020000001200000070DC074D6AC41A412A3286524E634F4160311E5294C41A41447D8B3D51634F411E8A3457BEC41A414A51CCD358634F4110EE4A5CE8C41A416FFADB9461634F41F9F625B60DC51A413E437ED566634F41222765134FC51A411A3321166C634F41A26A7FCAB5C51A41B42E938172634F4176405ED617C61A41791A31D774634F41F5CE013775C61A41DE70CD2C77634F41C171E4F413C71A41C406CE2C77634F416ECD875571C71A41E4589D5778634F41D7390AC230C81A41242AA72D7E634F41FC444DD1AEC81A4120C4E7C385634F412C39B93844C91A41C83AF2998B634F41D277F89585C91A416087C0C48C634F41601E739ECBC91A41D20DF2998B634F412A26DB5324CA1A41B7478B048B634F4152AB590EA7CA1A415B65BBD989634F41	Calle Real de Belicena	\N
171	0105000020E6640000010000000102000000080000000E9F295216CA1A4120D9F2998B634F41D63BEEA611CA1A41B0431860BE634F4140B9DB5324CA1A41475094A1CA634F417B39F2584ECA1A41D0550AF8D3634F41A2CE43097DCA1A41219FEECEE0634F41BEF443097DCA1A4105FA238FE2634F41E6D01E63A2CA1A4172D41627F8634F416BC5F9BCC7CA1A4193EFDDD411644F41	Calle Escuelas	\N
172	0105000020E664000001000000010200000002000000531266FD1ACA1A41FFBB90B6C7634F41708EDD7A66CB1A41AC999833AF634F41	Calle Jacinto Benavente	\N
173	0105000020E664000001000000010200000004000000838519266BCB1A41086F9DE5EB634F410EA43A1A09CB1A4166AA415FB7634F4158DFC3C3FFCA1A41A5FE405FB7634F4106DCC3C3FFCA1A41B469A8F4B7634F41	Calle Pablo Picasso	\N
174	0105000020E664000001000000010200000003000000C68E0E10B5CA1A41D7EDFCFD04644F4148A007D37DCB1A419D13F227FF634F41F57F302B95CB1A411968D6FE0B644F41	Calle José Espronceda	\N
175	0105000020E664000001000000010200000004000000AD9F6CC58BC51A419F41DAC9B6634F4118BC32680BC81A4162DC54B2A4634F41A28FECCD92C81A41D37F23DDA5634F4132A30A3736C91A41853D23DDA5634F41	Calle Fray Plácido	\N
176	0105000020E6640000010000000102000000040000002D9D976B27C81A4162DFD990F0634F41108C03D3BCC81A416E3AB138D9634F41AC1A0FE972C91A418131FA4BC8634F4127057B5008CA1A4191B57D0ABC634F41	Calle Rafael Alberti	\N
177	0105000020E6640000010000000102000000020000003085D08B31C91A41A8838C72A6634F41739C828D3FC91A414EAB82BCF8634F41	Calle Gloria Fuertes	\N
178	0105000020E664000001000000010200000003000000E6DD47E23AC91A41A7A6EA51F9634F41F6A5E3DE1EC91A41F38D927D01644F411943A8331AC91A419AA3F1951A644F41	Calle Angel Ganivet	\N
179	0105000020E66400000100000001020000000200000013E6AF7051C81A41FA9126FDFD634F418A682A7997C81A415CD05E161E644F41	Calle Antonio Carvajal	\N
180	0105000020E664000001000000010200000002000000C3D2A1CFA0C81A41F0068E72A6634F41778F1826AAC81A410AADB823DC634F41	Calle Miguel de Unamuno	\N
181	0105000020E664000001000000010200000005000000D32CE96919C81A41BDAF27DDA5634F41088824151EC81A413314DD90F0634F41DFC5ADBE14C81A4164C74FFCF6634F4107F1CEB2B2C71A41B5A577540E644F4154F46D3A91C61A41D22EC7AB1E644F41	Calle Camilo José Cela	\N
182	0105000020E664000001000000010200000002000000A73B9407AEC71A41A07AE0E90E644F4141A737680BC81A41F03BCE9621644F41	Calle Rosalía de Castro	\N
183	0105000020E664000001000000010200000005000000BF80F1A650C71A41D377CB1DAB634F41CC00915571C71A417A255235BD634F41C5FC905571C71A41F3AAF6CEE0634F41E886595CA9C71A4153144726F1634F41F010AFBE14C81A4115377CE6F2634F41	Calle Maestra doña Angeles	\N
184	0105000020E66400000100000001020000000900000098D1A4ABB0C51A4189759C589B634F413E27C8CD8EC51A418D3BBF1AA9634F4188184BFB8BC51A4181C15119B5634F41466C39EA9CC51A4138D018EBBD634F41EDCEA4ABB0C51A414D2B0D35C9634F41955C172338C61A41DA254403F0634F413155651D68C61A41FE4A8DE205644F414235364595C61A41548F53941E644F4135CB1223B7C61A41A8C4F78329644F41	Calle Recogidas	\N
185	0105000020E6640000010000000102000000020000002862AB06ABC51A4118A03C0D9C634F41A839F08389C21A4165053CEDAB634F41	Calle Belén	\N
186	0105000020E664000001000000010200000002000000F10A1A124DC41A41F3A7B85FDE634F41251818C8BEC51A415B2CB97FCE634F41	Calle Reyes Católicos	\N
187	0105000020E6640000010000000102000000030000003F709A9A42C51A418C4A047FD4634F41C29BD68383C51A41D9634C3EFA634F410A2914C83DC61A410905638AF3634F41	-	\N
188	0105000020E664000001000000010200000002000000AC41808951C61A417A5D8CA7FB634F414F62A7BC9BC71A41B67E099AEE634F41	Calle Sevilla	\N
189	0105000020E66400000100000001020000000300000045EF257EB3C51A41BDA4C1DAC8634F418A5441FB08C71A4198D7FA08C0634F414E74A3BC1AC81A416B969F18BB634F41	Calle San Sebastián	\N
190	0105000020E664000001000000010200000002000000E91A7EE449C71A41A053535914644F419303FA5BD3C61A412261055FE4634F41	Calle Gran Capitán	\N
191	0105000020E66400000100000001020000000200000004BF35EA9AC61A41F5907380C8634F417018590C79C61A4146284C83B0634F41	Calle Gran Capitán	\N
192	0105000020E6640000010000000102000000030000006D4B53EAA0C31A417AA9456D6C634F41C2C955A093C41A411AF2891178634F411C1357FB0CC51A41429F47E8D5634F41	Calle Cristóbal Colón	\N
193	0105000020E66400000100000001020000000400000042C82FD9ADC51A41FBC593679C634F41DC45953FC7C51A4193E9A4589B634F41CE4ECA7294C51A413DF40C3F75634F41F4B03534A8C51A41F323906C72634F41	Callejón Cacerías	\N
194	0105000020E664000001000000010200000002000000F12DA861A1C71A4148C179C0A8634F411D7F9650B2C71A413DB609E47A634F41	Calle Victoria	\N
195	0105000020E66400000100000001020000000400000075EDB0062AC61A41E544CA3A99634F41F8486AC26DC61A41E5BEDB2B98634F418787DBDE7BC61A41DD18B3EE9F634F4167FDA206A7C71A415DA2CA3A99634F41	Calle San Marcos	\N
196	0105000020E66400000100000001020000000400000072BE8245CBC41A41252C867735644F41D5267BE151C41A4140BF7B81D7634F411CFE602AEBC31A417ADABD50A5634F418C2BAB76A0C31A4115D7F4496D634F41	Camino Ancho	\N
197	0105000020E664000001000000010200000002000000FE43A53969C41A41171699915C644F41AC0B8B8202C41A414B8E851E17644F41	Calle Cardenete	\N
198	0105000020E664000001000000010200000003000000EA9F9A23B3C31A417AD499915C644F4110D910537AC21A41F3D28990A3634F4180BED83270C11A41F33E517783634F41	Calle Carlos Cano	\N
199	0105000020E664000001000000010200000006000000696FA260EAC21A411D57739263644F41230E24A667C21A416569515E15644F41164E88A983C21A41D6567D4811644F41328F11537AC21A41DD7510C80D644F412EEF71A459C21A4156DA419D0C644F41CAFA09EF00C21A412B3D4DACD8634F41	Calle Miguel Ríos	\N
200	0105000020E664000001000000010200000002000000C31AD3F538C21A41F24AAF3D68644F410AC8112C38C11A410D8970C0CE634F41	Calle Juan Manuel Serrat	\N
201	0105000020E664000001000000010200000006000000A86DC8DF82C11A410139E11267644F410F19FC260EC11A410384304A1F644F411B5D602A2AC11A4174C85C341B644F414A9EE9D320C11A412EEA881E17644F41FA064A2500C11A41534CBAF315644F413117E26FA7C01A4156323283E5634F41	Calle Victor Manuel	\N
202	0105000020E664000001000000010200000015000000D03BAA285BBE1A410B4CAD8B2B644F41590C34F993BF1A4118AFD38A24644F41300C34F993BF1A419A04363522644F41238C21A6A6BF1A417146007520644F4142624AFEBDBF1A418180670A21644F41CCD737ABD0BF1A413DF9353522644F417FC8ED5E1BC01A412ED5670A21644F41FFD26FCBDAC01A41489893F41C644F41BA89E621E4C01A419FCDF59E1A644F415196E621E4C01A414F38C0DE18644F41004F5D78EDC01A410F80584918644F41482286D004C11A41D38A891E17644F41E460EAD320C11A411F85584918644F410262EAD320C11A41FAC38E091A644F41609ED4F538C21A41C1AD4D7312644F41A45B4B4C42C21A4115B7E1F20E644F419975FD4D50C21A413F94AB320D644F413AF0EAFA62C21A41D0CFAB320D644F41100E9DFC70C21A4145E2E1F20E644F4139EFC55488C21A41583918B310644F41C986A81227C31A41A0CBDC070C644F41	Calle Ketama	\N
203	0105000020E66400000100000001020000000300000074284973C3C01A41AB1D826869644F4188C2806C8BC01A41B95F35A33D644F415B7EDD0B2EC01A4158444E1AF4634F41	Calle Ana Belén	\N
204	0105000020E664000001000000010200000007000000DE122C0A20C01A416FD0EEE86C644F415AEC1153B9BF1A41F4C1420B28644F4154AB88A9C2BF1A4190070D4B26644F41920EC454C7BF1A41979E086023644F4156369BFCAFBF1A416073037520644F41ED7724A6A6BF1A419132037520644F41DF3CC0A28ABF1A4153CE6D9C05644F41	Calle Estrella Morente	\N
205	0105000020E66400000100000001020000000300000076FEE54865BF1A41DD515C6970644F41C13F6FF25BBF1A416DBCA96762644F41381F30951ABF1A41C953DC7527644F41	Calle Rosa López	\N
206	0105000020E6640000010000000102000000020000006185B2DA97BE1A41D96A76007F644F411428772F93BE1A412F22846869644F41	Calle Los Angeles	\N
207	0105000020E6640000010000000102000000020000003127316ED8BD1A41FDDBB2AB83644F41417FDFBDA9BD1A412CC52C9471644F41	Calle Miguel Gallardo	\N
208	0105000020E664000001000000010200000003000000809B265822BD1A41DCDA9CA659644F411FA7C62D85BE1A41815221654D644F419ED39DD56DBE1A417737E4602A644F41	Calle Tabaco Blues	\N
261	0105000020E664000001000000010200000002000000868F4D5786C41A41CE75EC8B73614F410E1937799EC51A4142E938519F614F41	Calle Ruiseñor	\N
209	0105000020E66400000100000001020000000B000000CB26F348E7C41A418AB8927735644F410700B4EBA5C41A41F2E699BB56644F41CFE201EA97C41A41AB0F43407D644F41F0CA4FE889C41A413C97D32D95644F412D423D959CC41A4103961132B8644F412073A198B8C41A417E18E2B5D7644F41BE3E3D959CC41A41DEDF4D36DB644F4136A5E73231C41A417F24580CE1644F41C8D0D4B801C31A41430D3BE3ED644F41805CA4FC70C21A4127EB7B79F5644F41EFF7DBF538C21A41E624336606654F41	Camino de los Guacharros	\N
210	0105000020E66400000100000001020000000200000063070C7553C61A418FAA85B62C644F41C827262CBAC61A41FE0D6D3F76644F41	Calle Aguayo	\N
211	0105000020E6640000010000000102000000050000005B3AEC80B5C61A41C3B66E3F76644F4168616A3B38C71A4132C08444A0644F4103BC0D9C95C71A41C79C07CACD644F4185D32753FCC71A411C698A4FFB644F41807C545D50C81A41B7AD11C02B654F41	Camino Puente de los Vados	\N
212	0105000020E664000001000000010200000002000000D843D32D46C11A41B7E98E81D7634F41E14B77DC27C41A41D02FD3A9C3634F41	Calle Enrique Morente	\N
213	0105000020E66400000100000001020000000800000065B768EDF2C11A41F29CB912B5634F41A02F569A05C21A4117E9BEFDB7634F41D9756C9F2FC21A4113A01D16D1634F41CE4895F746C21A415FB88A96D4634F41B5BBF54826C21A412A165EACD8634F41F98D91450AC21A4131255EACD8634F41E7F5F196E9C11A41D3555EACD8634F41AF5B52E8C8C11A41C37059C1D5634F41	Prolongación Miguel Rios	\N
214	0105000020E6640000010000000102000000050000002990ACD52EC11A412F9B50EBCF634F41A9C28E6C8BC01A41CB8222A8B5634F417D3EEFBD6AC01A41318049A7AE634F41952C3DBC5CC01A4100E560E59E634F4192B84F0F4AC01A41B4860F3570634F41	Glorieta de Atarfe	\N
215	0105000020E664000001000000010200000004000000A2B5C0281CC11A41889F9C3785634F4138BD28DE74C11A41FDA5FEE182634F415EA3D3A24BC21A41AED3162073634F41D464B2AEADC21A41E3A6EDC75B634F41	Glorieta de Atarfe	\N
216	0105000020E664000001000000010200000002000000257BA771B5C01A41B4D22F7EBB634F41AAC3F596E9C11A41E716E8A392634F41	Calle Cijuela	\N
217	0105000020E6640000010000000102000000070000007A23186445C01A41C0777BCA70634F41BFB0397F25C11A41A6AB3F1F6C634F411EA8719F2FC21A41F36388325B634F41543E7903A9C21A41249F88325B634F418712E56A3EC31A4117CD88325B634F41FADD277ABCC31A41C9FBB41C57634F4192C202D4E1C31A418360B51C57634F41	Calle San Cristobal	\N
218	0105000020E664000001000000010200000004000000A408416ED8BD1A413AAB59B67A634F41B63EDD91FEBE1A413EC9F70B7D634F4162DFFEACDEBF1A4172447CCA70634F41C207196445C01A41835A143570634F41	Camino del Cementerio	\N
219	0105000020E664000001000000010200000013000000BA287B0C2BC41A41F5E3CE3D4F634F417CC20C42EDC31A4149E51CF756634F41A1A050BEA7C31A410B50118D62634F410A08B54B98C31A4195F6DB2B6D634F415E425D5543C31A417BB19B6083634F41878B3207C0C21A41E970D87A9C634F4198AFDA106BC21A416CD17922A6634F4142416209E0C11A414374BC71B9634F4167C064632EC11A410FBA2283D3634F410D233A15ABC01A41377E3BDBE5634F41FF655D802FC01A41C022AD56F4634F41BCD75FDA7DBF1A41916FEFA507644F41FABEC6C1BCBE1A41484AAFDA1D644F41EF82859F50BE1A41E1A474442E644F4143C4C1380CBD1A41B1549A8A5E644F4102E55F056ABC1A41891B7E817B644F4174CB414E82BB1A412A3C09559C644F41799894BB26BA1A4180445EC7C7644F41F28E76043FB91A410FB1BFA3E7644F41	Camino de Santa Fe	\N
220	0105000020E664000001000000010200000003000000A13EDF3702C41A41B044CC1B54634F41CDD6E18190C21A41F3F721D14E634F41C5AC6A0A88C21A415CF1B4CF5A634F41	Calle Lepanto	\N
221	0105000020E664000001000000010200000004000000658372F91DC01A41FF21407842634F41A6E3205AE6C01A41BE4A68954A634F415B06A5E25CC11A414D28F0FD51634F41BEA14DE82AC21A41258F062A5B634F41	Calle Romilla	\N
222	0105000020E664000001000000010200000005000000ABE25F9EA0C11A41E9997290F5624F4169D6E2CB9DC11A41F5D77D26FA624F41286E28B5E0C01A415C40CAE049634F41E759B0E25EC01A4114ABA6BE6B634F4156D750D73FC01A41DAF8B15470634F41	Calle Fuente Vaqueros	\N
223	0105000020E664000001000000010200000005000000EAF7FEDC8EC01A41E628BEAFEB624F41F637EC7026C01A4101FE2D8C19634F41A1286F9E23C01A414E0EE22C43634F4134D780AF12C01A415EB9FD9356634F4113A2D4043DC01A4125E2B25470634F41	Calle Chauchina	\N
224	0105000020E664000001000000010200000004000000791F5D32BBBF1A41846D39022E634F411E78D65FB6C01A41D0B94AF32C634F419B974DD7BEC01A41F1E5FA982C634F41B0396CF91BC11A414512677A30634F41	Calle Láchar	\N
225	0105000020E66400000100000001020000000300000055FA6A4329C01A41BDA12F8C19634F41A4A5CC043BC11A41D04B951223634F413C44EB2698C11A419A73514E27634F41	Calle Albolote	\N
226	0105000020E66400000100000001020000000200000024B236105CC01A4199C358E901634F41687D927673C11A41BA1B0FCA0B634F41	Calle Maracena	\N
227	0105000020E66400000100000001020000000D000000297AE3F944C41A41C7B3F45949634F41B0C3914916C41A4128FE82EE42634F415092EEE8B8C31A412D0F742D3A634F41E790223044C31A4118C29A2C33634F4190DBD07F15C31A41267790562D634F418F2A4B6119C21A41BEF6439101634F4124806C55B7C11A419DE8967AF6624F418C7CDFF983C11A410F3AF924F4624F412F1370E0B1C01A413F4C51F9EB624F415F3195868CC01A41D51D51F9EB624F41BB41131ACDBF1A41BF5178F8E4624F41F9B3E60F79BF1A41F08E3C4DE0624F41DCDCA300FBBE1A415873CBE1D9624F41	Avenida de Haro	\N
228	0105000020E66400000100000001020000000D000000F05E6955F6BE1A4123DDCBE1D9624F41F9984BEC52BE1A41D62F24B6D1624F41E4EB6CE0F0BD1A418A61EEF5CF624F41B05BB37A69BD1A414E3324B6D1624F41F4CAF914E2BC1A41CD43F8CBD5624F413616690772BC1A41C9AB9521D8624F41259461A3F8BB1A417F819521D8624F4115135A3F7FBB1A411136FDB6D8624F4127EA002BD7BA1A41129AC10BD4624F41FE8FABC86BBA1A410F0724B6D1624F410A4408680EBA1A416D66BC20D1624F41D0A1431313BA1A412067BC20D1624F410AA5431313BA1A410CB823B6D1624F41	Camino del Arrollo Salado	\N
229	0105000020E66400000100000001020000000700000064FDEAAB81C41A414FBB810340634F41318BFDFE6EC41A41F627DFC23A634F414355B3B2B9C41A41AD916BFE15634F417CC1081525C51A41A230E71FCA624F41CC011F1A4FC51A4125DDC89DB8624F4111514FD6DFC51A41195097A861624F412197D87FD6C51A414BF1E4A653624F41	Calle La Caleta	\N
230	0105000020E664000001000000010200000009000000AED25E504EC41A419BA4C8844A634F41FA8DD5A657C41A41CAB1254445634F41691D755578C41A419736EA9840634F4117F1B764F6C41A418E46389732634F416C3802D8EDC51A41FE07007E12634F412B055F9ED2C61A41FE4E65BAF4624F4153D314521DC71A413C8A780DE2624F4125D6627751C81A419DCB0449BD624F4108A4BF3D36C91A41E0F2CC2F9D624F41	Avenida de la Constitución	\N
231	0105000020E664000001000000010200000004000000722842352FC61A41C8E4F1BC09634F41B0E49ED4D1C51A41B7EA4E7C04634F41F22942352FC61A41F0D5C120D1624F41548A7DE033C61A4156582272B0624F41	Calle Mallorca	\N
232	0105000020E6640000010000000102000000030000000A337E92AFC31A4182C84F7C04634F4136BCC4536AC41A4154DE59520A634F414BFB67B4C7C41A412AAAF2BC09634F41	Calle Olivos	\N
233	0105000020E6640000010000000102000000020000000BBDBC64F6C41A41A624A42C33634F415A88C03D75C61A41213D51433E634F41	Calle Las Viñas	\N
234	0105000020E66400000100000001020000000500000043DF2C5786C41A41F973216E3F634F41B9C0940CDFC41A413685302F48634F4199F3F80FFBC41A41D439FA6E46634F41808D647790C51A4121B80E1B52634F41B6D307D8EDC51A41D5D9E23056634F41	Callejón de las Revueltas	\N
235	0105000020E6640000010000000102000000030000003A65EF6E0BC81A41F098F54A7D634F41927EA17019C81A418C89A0086A634F41922066C514C81A41A5A1A0086A634F41	Calle Nueva	\N
236	0105000020E6640000010000000102000000030000002D370A2672C81A41526331F681634F410D7C202B9CC81A41BE4FEA1B59634F41F293D22CAAC81A41F6973D054E634F41	Calle Los Puentes	\N
237	0105000020E6640000010000000102000000030000000C05E4A618C71A4185896FA186634F41C194355747C71A4191A16FA186634F414953ACAD50C71A4154D9243579634F41	-	\N
238	0105000020E66400000100000001020000000300000023A57ACABCC21A4127D1ECA2E2624F412314F5D202C31A414A2AAC0CDB624F41C49FEDBC0DC51A411CA4DDE1D9624F41	Calle Ibiza	\N
239	0105000020E664000001000000010200000002000000FA307FA33BC41A415CFE4577DA624F41D29FF9AB81C41A410A039707B1624F41	Calle Cabrera	\N
240	0105000020E664000001000000010200000003000000FE12F36E4AC51A413954A7C8B9624F41989F92F628C41A414AC45C5CAC624F41CC33D9695FC21A41F4FCE273BE624F41	Calle Menorca	\N
241	0105000020E664000001000000010200000003000000851ADA695FC21A41A14EB29EBF624F419E587DCABCC21A410C27880DE2624F418367BC27FEC21A41A4510E25F4624F41	Calle Formentera	\N
242	0105000020E66400000100000001020000000300000062DBC416B1BF1A4113DE5738E3624F41C23700C2B5BF1A41710F03F6CF624F41F805291ACDBF1A41807CB889C2624F41	Calle Pedriza	\N
243	0105000020E664000001000000010200000003000000801C96F628C41A410D332F87AD624F41E994EB3152C31A41208BAAA861624F41B926E4CDD8C21A41BA7937E43C624F41	Calle Igualdad	\N
244	0105000020E6640000010000000102000000020000004074F74708C41A41DD73B445A1624F41B33AAD2295C51A41E9B790D88C624F41	Calle Fraternidad	\N
245	0105000020E6640000010000000102000000020000003CF2F00AD1C41A41AF683EEF97624F418277AA4916C41A4129E6355258624F41	Calle Esperanza	\N
246	0105000020E6640000010000000102000000020000000C4F38CC8BC51A41A025FA6D8D624F41463B2DB6D5C41A4159FB58664E624F41	Calle Solidaridad	\N
247	0105000020E664000001000000010200000003000000D1C6F20AD1C41A41F06F28914F624F41DEEC709E11C41A4148D8375258624F419B27FEABC0C11A41CB31D70079624F41	Calle Alegría	\N
248	0105000020E66400000100000001020000000200000087FBE51B9CC21A41E2624E1EBC624F41220234F34BC11A4162F8CCD154624F41	Calle Ilusión	\N
249	0105000020E6640000010000000102000000020000000071DFDE64C31A41BCA10E88B4624F41BA8EAB7097C21A411668947F6E624F41	Calle Libertad	\N
250	0105000020E6640000010000000102000000040000000273BCC3C3BF1A41AD66F33E69624F41B214729E50C11A412002D0D154624F416BB72779DDC21A410CFBD74E3C624F41325F417EC8C51A41E7FBBEB72D624F41	Calle Gaviota	\N
251	0105000020E66400000100000001020000000200000054DBDEB761BF1A41473120090D624F41ED77C8D979C01A41B93B16535F624F41	Calle Cuervo	\N
252	0105000020E66400000100000001020000000400000078A5AFFBD0BE1A41E62AB1F624624F41C2008318BFBF1A415D9F8DA968624F41AFB3528370C01A41403032438C624F410DC604857EC01A41F59D410495624F41	Avenida Andalucía	\N
253	0105000020E664000001000000010200000004000000230766FD9FC11A410C252110F7624F41DB3A3DA588C11A41E1CB5F4DE0624F413C9039F34BC11A417DD4FB49C4624F41254F9692EEC01A4147997047AF624F41	Avenida Andalucía	\N
254	0105000020E6640000010000000102000000020000008D3E002105C01A4148640A72FE614F41CA5F3BF34BC11A41866ED4D154624F41	Calle Aguila	\N
255	0105000020E664000001000000010200000002000000747F47E2BFC01A416C17289BF1614F418C17BE5F0BC21A41073CC12549624F41	Calle Cigüeña	\N
256	0105000020E66400000100000001020000000200000061959255B7C11A41891E24B0EE614F410FDEF2CDD8C21A413B7346E43C624F41	Calle Alcabarán	\N
257	0105000020E6640000010000000102000000030000008F4B5194BDC31A41CDBC0C3938624F418CC16772A5C21A415105529AEA614F41E6B6463083C01A41CC22613B9B614F41	Calle Cisne	\N
258	0105000020E664000001000000010200000003000000329FD7B2B9C41A41B39F036332624F418450C5388AC31A41B01BA683DF614F41C7B65D5CEFC11A41A293047CA0614F41	Calle Tórtola	\N
259	0105000020E664000001000000010200000003000000B18B7024A3C51A41A980267728624F414F6C35525CC41A419D19216CCD614F41B79CB77097C21A412DDA0DF987614F41	Calle Mirlo	\N
262	0105000020E664000001000000010200000006000000902629D8EDC51A413651E3B56D614F4166729C5578C41A412914B7CB71614F41469B77885BC31A4130D4590C77614F41F9E3F51B9CC21A412D5247B989614F41249E615CEFC11A41168D087CA0614F41270D44F34BC11A41F8C99869B8614F41	Calle Oropéndola	\N
263	0105000020E664000001000000010200000003000000C6BDBDAD4CBC1A4116BAF23DB0614F416A05526DF9BC1A417EB01452A6614F41F13AB2E51ABE1A41B8CE87F672614F41	Calle Azucena	\N
264	0105000020E664000001000000010200000002000000A03CE0A1EABB1A412D0B12A069614F4163F1A06BEBBC1A4193AAE47CA7614F41	Calle Magnolia	\N
265	0105000020E664000001000000010200000002000000FCE8783A16BE1A41B648F18B73614F413438096FC8BF1A4151B5C368B1614F41	Calle Geranios	\N
266	0105000020E6640000010000000102000000020000006C15A66BACBF1A411E8167A9B6614F412EB1B4339FC01A41FA642F9096614F41	Calle Rosal	\N
267	0105000020E664000001000000010200000011000000337C557BA1BB1A418AB3346DD7624F415EF7346A6BBB1A4150CD8B0CAA624F41253D62123DBB1A41929ED10C8E624F411046A334A9BB1A4163840CA37D624F417C835C5EA0BC1A41E1F328AC60624F41AAD40B4B4ABD1A4153BAE02753624F411AB81C6B96BE1A41D4E35B892C624F41457A30E530BF1A41D0211F6F13624F41A736033D5FBF1A41EC31D1B50B624F41712A4E9C18C01A41A6D13543FC614F41136CFD88C2C01A418699EDBEEE614F41DCE268F9B1C11A417A1C9AD0EC614F4104BD38F791C21A4168BE46E2EA614F41DE6056AE79C31A4183602855DE614F41A2FF736561C41A41D81E63EBCD614F4107A2911C49C51A417A63C778BE614F413F27B22D7FC51A41F794C778BE614F41	Avenida del Carmen	\N
268	0105000020E6640000010000000102000000020000003ED61694F9CD1A41E3617203C7624F418A97E20829CD1A4144C613ABD0624F41	-	\N
269	0105000020E66400000100000001020000001000000071E0CE8735E01A415D7195ABA0654F41C70A97EA08E11A416FAC47F85B654F417CA81CC7F3E01A416169E30C2F654F41A6A71CC7F3E01A411A6DD8C7DF644F41DF1197EA08E11A417EF5EEAD11644F41F41397EA08E11A41843B0520BD634F41707E110E1EE11A4118FB8A366B634F41AE52065548E11A419B8505CE06634F41CAA91CC7F3E01A41415AEFCFE1624F41450033399FE01A4170D574ACCC624F41CA93B8158AE01A41C182532F95624F41DD4F49AB4AE01A41A515C3471E624F41B81F814877DF1A410DA4A1CAE6614F41E144CF574FDE1A4108523260A7614F41BC53765FBBDD1A41CF68D9F38C614F41B32A6BA6E5DD1A4109226A894D614F41	-	\N
270	0105000020E66400000100000001020000000B00000058E3ACB138E11A41463E55A7B3634F41D71D845921E11A411B535A92B6634F41919FE4AA00E11A4158585A92B6634F41DC70CEA5D6E01A418B3655A7B3634F413107E1F8C3E01A4188ED1EE7B1634F41F7CC0951DBE01A417395E33BAD634F41469332A9F2E01A41BAD345E6AA634F4153C348AE1CE11A4164DE45E6AA634F41408A710634E11A41558EE33BAD634F412DE4ACB138E11A41D9368191AF634F41569A230842E11A418660867CB2634F41	-	\N
271	0105000020E66400000100000001020000000A000000EA0D875921E11A411C56EFFF2E654F41ED91E7AA00E11A4180CD2F9636654F41B3CDBE52E9E01A410560C80036654F41C20696FAD1E01A411AAF2AAB33654F416E406DA2BAE01A41B352EFFF2E654F414A60D1A5D6E01A4184C87D9428654F4172DB7054F7E01A413DAD78A925654F414767C20426E11A416FC97D9428654F413967C20426E11A41838E20D52D654F41EB0A875921E11A4125D456952F654F41	-	\N
272	0105000020E66400000100000001020000000F000000426DA94DBFE01A412E008E5531654F41312DB18AF6DF1A41CB9CFAD534654F41AD3E33D073DF1A41F260C90036654F41723E33D073DF1A412E5AF0FF2E654F4107AA207D86DF1A41B1ECAF6927654F410A35722DB5DF1A41091A0D2922654F41BF7FFBD6ABDF1A417943FAB5DC644F41EA116EA2BAE01A41E230CECBE0644F4124B632F7B5E01A41704A3EFE20654F41AE94CEF399E01A41937B1CEA2A654F413F3A934895E01A41390A8E5531654F4184773A34EDDF1A415A26934034654F41F01BFF88E8DF1A418522BA3F2D654F4112C2C3DDE3DF1A4137F5AF6927654F416E90ADD8B9DF1A411CBDA59321654F41	-	\N
\.


--
-- Name: vegasdg_callejero1_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_callejero1_id_seq', 272, true);


--
-- Data for Name: vegasdg_callejero2; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_callejero2 (id, geom, nombre) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000D5821A5D3DEE1A41761982CDAF614F418A6BF73A5FEE1A41A68683CDAF614F4139ACEB846AEE1A4105AE9F74A3614F4189F18B794BEE1A416651501AA3614F41D5821A5D3DEE1A41761982CDAF614F41	Plaza de la Cruz
2	0106000020E66400000100000001030000000100000005000000A8B6006319E81A416EC33153BF614F4129D8D18A46E81A415EFE15CCBB614F4195F3CB2F4CE81A4198AE9E54B3614F41B39DB268E9E71A41294D3D09B4614F41A8B6006319E81A416EC33153BF614F41	Plaza Virgen de los Remedios
3	0106000020E664000001000000010300000001000000050000000CD7B23E5BE91A41DE75CFF097634F4178FC00398BE91A41301C4BC39A634F41D5D5DD16ADE91A410EE6851182634F412A609BD271E91A41326635B781634F410CD7B23E5BE91A41DE75CFF097634F41	Plaza Mayor
4	0106000020E664000001000000010300000001000000050000006758DE71A5EA1A4133A3ACF37F634F4196E6C0AAC1EA1A418E663F127C634F411F2267FA9CEA1A41BEA1D33078634F41768484C180EA1A41781940127C634F416758DE71A5EA1A4133A3ACF37F634F41	Placeta Chirichi
5	0106000020E664000001000000010300000001000000050000009A02C6AA42EA1A41971E537EE4634F410F8F2B115CEA1A41FC39537EE4634F41F6E6CB053DEA1A41676AC07FD8634F411B73E37126EA1A417C3211DAD8634F419A02C6AA42EA1A41971E537EE4634F41	Placeta de los Huertos
6	0106000020E664000001000000010300000001000000050000003648F4EE77ED1A41704F9B0C2D634F414DB45FB08BED1A41F8E5ABFD2B634F41C3D28E885EED1A41D57F0E890B634F41AF7523C74AED1A416C1AAE3D0C634F413648F4EE77ED1A41704F9B0C2D634F41	Placeta Sastrerías
7	0106000020E6640000010000000103000000010000000400000035FAD392FDE51A41A9DCA49764634F412B8FFE6A4FE61A4124A27C5A6C634F4185DF6F875DE61A4161699A0160634F4135FAD392FDE51A41A9DCA49764634F41	Plaza de la Fusión
8	0106000020E664000001000000010300000001000000050000002251B82693E61A41C2B9BAC36D634F415DA2773DD1E61A4190CE49876F634F41CFE3E859DFE61A412D1A4FE269634F410795AC709EE61A41133D117968634F412251B82693E61A41C2B9BAC36D634F41	Glorieta del Fresno
9	0106000020E66400000100000001030000000100000005000000829DB570A0E51A41491050025A634F41001953C079E61A41C96C28E551634F4150FC581B74E61A41718046AC35634F41B4D15BC07BE51A41E5C74AE73F634F41829DB570A0E51A41491050025A634F41	Parque del Ferial
10	0106000020E664000001000000010300000001000000050000002B0BA96DA2CE1A41BD2F601FF7634F413391C7248ACF1A41B4156654F1634F410674428663CF1A415666D54BD6634F4159F223CF7BCE1A41D5C4A51FDB634F412B0BA96DA2CE1A41BD2F601FF7634F41	Parque Huerta del Pilar
11	0106000020E66400000100000001030000000100000006000000A141EC11C4C81A41D64BC3F00C644F41F6E793BC18C91A41ADEA342D0B644F417EE693BC18C91A410708E19700644F411975F3C737C91A4119AA572FF9634F417DFE7AF5B5C81A41F2C2C94B07644F41A141EC11C4C81A41D64BC3F00C644F41	Plaza de los Escritores
12	0106000020E6640000010000000103000000010000000700000000CAFE4AE8C41A41885E248B6E634F414577E83978C51A41C9C10D3F75634F41E6E7D0CD8EC51A41C4045D9975634F41EC57B961A5C51A4193D6401272634F41D74B64B101C51A418BD6FD6D66634F41F71FED39F9C41A414A731F5064634F4100CAFE4AE8C41A41885E248B6E634F41	Plaza Blas Infante
13	0106000020E6640000010000000103000000010000000500000080BDA35035C61A41063CFD4D76634F416EBB5BB1FFC51A417B4E0E3F75634F41130A4AA010C61A41449B571E8B634F41BDC8202338C61A41EEDB3A9787634F4180BDA35035C61A41063CFD4D76634F41	Plaza Andalucía
14	0106000020E66400000100000001030000000100000005000000A0DD4FB17CC71A41D4977BC0A8634F41598B2C8F9EC71A41F2708CB1A7634F413699A961A1C71A4109311B9599634F417DE74FB17CC71A41B48C09A49A634F41A0DD4FB17CC71A41D4977BC0A8634F41	Plaza San Marcos
15	0106000020E66400000100000001030000000100000004000000D943796761C01A4146E4FA4F9E634F41BDE5BF281CC11A4160CE9B3785634F41039A021158C01A412A26398D87634F41D943796761C01A4146E4FA4F9E634F41	Glorieta de Atarfe
16	0106000020E664000001000000010300000001000000040000005F34BA872CC41A41D22AA75B4E634F4193B2828E64C41A41B50EA75B4E634F4153D659364DC41A4185EC041B49634F415F34BA872CC41A41D22AA75B4E634F41	Plaza de la Constitución
17	0106000020E66400000100000001030000000100000005000000D03A6F024CC71A4151B6BB9F78634F41AB7D850776C71A419951233579634F418DF472B488C71A411C217B0971634F41EFFAE55855C71A410CB3137470634F41D03A6F024CC71A4151B6BB9F78634F41	Plaza de la Iglesia
18	0106000020E66400000100000001030000000100000005000000B568DFF4DBC61A418E0D7E628F634F417BF47EA3FCC61A4127F07D628F634F4120C7A7FB13C71A41224B070C86634F416CC51AA0E0C61A4128B36EA186634F41B568DFF4DBC61A418E0D7E628F634F41	Placeta de los Curtidores
\.


--
-- Name: vegasdg_callejero2_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_callejero2_id_seq', 18, true);


--
-- Data for Name: vegasdg_cementerios; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_cementerios (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000CC19D150AAE41A413C7603F709624F413E50D88714E51A413DDBF20D11624F410D44926F32E51A4178C916B701624F4145B79418C4E41A41FE541E7EFE614F41CC19D150AAE41A413C7603F709624F41	Cementerio Municipal de Ambroz	Lugar de culto y respeto a los que ya no están con nosotros
2	0106000020E664000001000000010300000001000000060000002C79A8B362EB1A414DA9C58672644F413B16434BB6EB1A41B25611BEAC644F410D59A69862EC1A4190CD110DA8644F41A682F74BF0EB1A41AAEC075A96644F41E932CDA5C5EB1A413DA3511D6F644F412C79A8B362EB1A414DA9C58672644F41	Cementerio Municipal de Purchil	Lugar de culto y respeto a los que ya no están con nosotros
3	0106000020E66400000100000001030000000100000005000000CCA4401435BE1A412B6C275F7B634F41BC794CCA29BE1A418521C09891634F4197F464918CBE1A416BDE20E490634F4122049B1FD3BE1A419EF165C87C634F41CCA4401435BE1A412B6C275F7B634F41	Cementerio Municipal de Belicena	Lugar de culto y respeto a las personas que ya no están con nosotros
\.


--
-- Name: vegasdg_cementerios_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_cementerios_id_seq', 3, true);


--
-- Data for Name: vegasdg_clinicas_dentales; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_clinicas_dentales (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000DA735D9C03E71A411FA6FECBC8614F41387D8BBA08E71A41439E2D88C4614F41475A8DF6F5E61A41205E9651C4614F41625D47ABF7E61A4190A6FECBC8614F41DA735D9C03E71A411FA6FECBC8614F41	Clínica Dental J&M	Estética Dental, Periodoncia, Ortodoncio, Endodoncia, Prótesis Dentales, Implantes, Servicio de Pología,...
2	0106000020E66400000100000001030000000100000005000000097F1B78BCE51A411EDF3A5779634F4176C51700E2E51A41861C18D977634F411BB2BBC3D7E51A411216A46F74634F41AB6BBF3BB2E51A41E4982FB775634F41097F1B78BCE51A411EDF3A5779634F41	Clínica Dental Purchil	\N
3	0106000020E664000001000000010300000001000000050000008D92B259B3C71A411009211D8A634F41E21787E9C5C71A41BB2020808A634F4146C57329CEC71A417EFA272687634F41FA52AB71B6C71A416A12278987634F418D92B259B3C71A411009211D8A634F41	Clínica Dental Vegas del Genil	\N
\.


--
-- Name: vegasdg_clinicas_dentales_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_clinicas_dentales_id_seq', 3, true);


--
-- Data for Name: vegasdg_col_y_gua; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_col_y_gua (id, geom, nombre, descri, url) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000EA8E38AC2DE91A419DDDC1A2A0614F4186CB2790D6E91A4186919F739A614F4110EF2554E9E91A41FD2F675388614F41B44EB08D0BE91A4131BAC3DE8D614F41EA8E38AC2DE91A419DDDC1A2A0614F41	C.E.I.P. Virgen de los Remedios	Colegio PÃºblico Virgen de los Remedios, Tlfno.: 958 893 957	\N
2	0106000020E66400000100000001030000000100000008000000A263E6531CE71A41156796FB62634F41B163E6531CE71A412DE50AB461634F41D9C3D3FBD7E71A41DFAC44C165634F4196ED4529EEE71A418F87E92252634F41E4695ABD1FE71A41583D24CE4C634F419C3699F77BE61A41440A756A53634F41DB1655E86AE61A418C9EFF135E634F41A263E6531CE71A41156796FB62634F41	C.E.I.P.S.O. Virgen de los Dolores	Colegio PÃºblico Virgen de los Dolores, Tlfno.: 958 893 868	<a href="http://colepurchil.com">MÃ¡s informaciÃ³n aquÃ­</a>
3	0106000020E664000001000000010300000001000000050000008DE55F9519CC1A41B7F7892105644F417EFAFC3F6CCD1A416019B25EFD634F41A87820624ACD1A41BA4E1F80E1634F41D12295C8E6CB1A414C8BA7E8E8634F418DE55F9519CC1A41B7F7892105644F41	C.E.I.P. La Almohada	Colegio PÃºblico La Almohada, Tlfno.: 958 893 802 y 958 445 084	<a href="http://www.juntadeandalucia.es/averroes/centros-tic/18001196/helvia/sitio/#">MÃ¡s informaciÃ³n aquÃ­</a>
4	0106000020E664000001000000010300000001000000060000008B30087990C91A41FE27E0F6EF634F4139941B4072CA1A414BFCEBACE4634F413A941B4072CA1A4183D55DE9E2634F419FB69D12F6C91A41D26F92FCBF634F417A30087990C91A41F83159CEC8634F418B30087990C91A41FE27E0F6EF634F41	Colegio Infantil "La Almohada"	Colegio Infantil "La Almohada", Tlfno.: 958 893 802 y 958 445 084	<a href="http://www.juntadeandalucia.es/averroes/centros-tic/18001196/helvia/sitio/index.cgi?wid_seccion=1&amp;wid_item=2">MÃ¡s informaciÃ³n aquÃ­</a>
5	0106000020E6640000010000000103000000010000000600000089A29EE0A5E11A41081EC76ADB634F411C8C88EF99E11A41AEC5BC68CE634F415F6216C283E11A41D46E0F41C2634F413DFCD52A4DE11A4167EC83F9C0634F41AA08BEFD53E11A4170A052B2DC634F4189A29EE0A5E11A41081EC76ADB634F41	GuarderÃ­a "Los Pitufos"	GuarderÃ­a Municipal, Tlfno.: 958 431 378	\N
\.


--
-- Name: vegasdg_col_y_gua_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_col_y_gua_id_seq', 5, true);


--
-- Data for Name: vegasdg_comida_llevar; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_comida_llevar (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000001FAD2FA349EA1A41FBFEE45171634F4118DD153A63EA1A41C27AFC2F6F634F4130B0E9574BEA1A4110B165486A634F41037A8F572EEA1A41B4354E6A6C634F411FAD2FA349EA1A41FBFEE45171634F41	Salsadero	Cocina Casera, Asadero de Pollos,...
2	0106000020E664000001000000010300000001000000050000002A66B59937EE1A41DBDB7BE5D4614F4114A7A38848EE1A411CDC7BE5D4614F41809C26B645EE1A412B8E5F5ED1614F41C570326C3AEE1A41088E5F5ED1614F412A66B59937EE1A41DBDB7BE5D4614F41	D'Pizza	Pizzería, Asadero de Pollos, Bocadillería,...
3	0106000020E664000001000000010300000001000000040000000D861B6E9ABE1A41BADE8B6228644F41F8695DB2D5BE1A412CFB9C5327644F418649E63ACDBE1A415901B49F20644F410D861B6E9ABE1A41BADE8B6228644F41	Asadero Javi	Pollos Asados, Comidas Caseras, ...
4	0106000020E6640000010000000103000000010000000500000024D6FC8FEBC41A410F933552B4634F418B3762F604C51A418D0DF7E8B2634F413401F1D9F6C41A4133130E35AC634F41A9B58518E3C41A4176130E35AC634F4124D6FC8FEBC41A410F933552B4634F41	Paraiso Joselillo	Pizzas, Kebab, Bocadillos, Hamburguesas, Sandwichs, Ensaladas,...
\.


--
-- Name: vegasdg_comida_llevar_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_comida_llevar_id_seq', 4, true);


--
-- Data for Name: vegasdg_consultorios_medicos; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_consultorios_medicos (id, geom, nombre, descri, url) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000F954107C80E91A41ACCDF9837D634F41BF676CB88AE91A4197B1CC036F634F414021703065E91A4198B1CC036F634F41FA1AFCC661E91A4165CDF9837D634F41F954107C80E91A41ACCDF9837D634F41	Edificio Selva Florida	Los Servicios Sanitarios de la Barriada de Purchil se encuentran en este Edificio en la planta baja	<a href="http://ws003.juntadeandalucia.es/pls/intersas/servicios.tramite_enlinea_citamedico">Más información aquí</a>
2	0106000020E66400000100000001030000000100000005000000990704CF25EE1A4155F98728F4614F41A88DD85E38EE1A412F5E876AF4614F41F25D5DF66CEE1A41E2C496D7ED614F41AEC8FCE628EE1A4184FE9A09EC614F41990704CF25EE1A4155F98728F4614F41	Consultorio Médico de Ambroz	Edificio dedicado al Servicio de Atención Médica en la Barriada de Ambroz	<a href="http://ws003.juntadeandalucia.es/pls/intersas/servicios.tramite_enlinea_citamedico">Más información aquí</a>
3	0106000020E6640000010000000103000000010000000500000017A6F99958C71A412E50E6D7A8634F4158F0A9A17AC71A41496DE8F0A7634F4107D5D70967C71A41853404159C634F41B3C92EEA41C71A41806402DB9C634F4117A6F99958C71A412E50E6D7A8634F41	Consultorio Médico de Belicena	Edificio dedicado al Servicio de Atención Médica de la Barriada de Belicena	<a href="http://ws003.juntadeandalucia.es/pls/intersas/servicios.tramite_enlinea_citamedico">Más información aquí</a>
\.


--
-- Name: vegasdg_consultorios_medicos_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_consultorios_medicos_id_seq', 3, true);


--
-- Data for Name: vegasdg_correos; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_correos (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000070000004EF4798144C31A41DE3353DE07644F41287744738AC31A41BDAF6ABC05644F41D83302A066C31A41F04E8F76F4634F415EED051841C31A41E4D11ABEF5634F41C80A907250C31A416DE6D3D400644F4100D7EF2635C31A41B8E830AF01644F414EF4798144C31A41DE3353DE07644F41	Edificio Carlos Cano	Edificio dedicado a varios servicios como Guadalinfo, Correos y los Servicios Sociales de Belicena en la planta baja, y tambien se desarrollan actividades diversas en su primera planta.
2	0106000020E66400000100000001030000000100000005000000000CA55EBBE91A412F3BA268C2634F4180BC74FECFE91A415A53A1CBC2634F41FCD36336D7E91A41CDA0B1D5BB634F41EAE38CAEC5E91A41C2A0B1D5BB634F41000CA55EBBE91A412F3BA268C2634F41	Edificio de Correos	Edificio dedicado al servicio de Correos
\.


--
-- Name: vegasdg_correos_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_correos_id_seq', 2, true);


--
-- Data for Name: vegasdg_edif_muni_actividades; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_edif_muni_actividades (id, geom, nombre, descri) FROM stdin;
1	0106000020E6640000010000000103000000010000000500000038104FB88BE91A4159DD1337B3614F41A1857722C9E91A414F9CD9DAB3614F41619C8D13D5E91A410FFD7DEDA4614F41AD24ABF495E91A4159BE89DCA3614F4138104FB88BE91A4159DD1337B3614F41	Sala "Alhambra"	Nave Municipal dedicada a varios usos entre ellos también se utiliza para desarrollar actividades relacionadas con festejos municipales y actividades deportivas como el Voleibol.
2	0106000020E6640000010000000103000000010000000700000006A96C409BE81A41A772BBBECB614F419A3FCD4FDFE81A41005FBC5BCB614F41B77ED437DCE81A4152D1C775C6614F41A6A10988C5E81A41DD82C796C6614F41B10B0C80C4E81A41357FD40BC1614F41B96A65589EE81A41069BD36EC1614F4106A96C409BE81A41A772BBBECB614F41	Edificio Clara Campoamor	Edificio dedicado a varias actividades docentes y talleres culturales además de algunas actividades deportivas.
3	0106000020E6640000010000000103000000010000000500000071B63C23A2CF1A4150889007F0634F41705BC6AAD4CF1A4150DB939CEE634F415A97EA32C5CF1A41C17EAAF1E4634F41395B63A391CF1A41C9C5A71AE6634F4171B63C23A2CF1A4150889007F0634F41	Nave Municipal de Belicena	Nave dedicada al desarrollo de actividades relacionadas con los festejos municipales, además de actividades deportivas como Tenis de Mesa.
4	0106000020E66400000100000001030000000100000005000000430D467367E61A410FB200FB6A634F41BE44EAA28EE61A41C44AFE026C634F411488D4EA97E61A415FE40EEC64634F4167E62DC371E61A4188FD100564634F41430D467367E61A410FB200FB6A634F41	Sala de Plenos y Juntas del Ayntamiento	En esta sala tienen lugar los plenos del Ayuntamiento además de exposiciones y otras actividades docentes y/o culturales
5	0106000020E66400000100000001030000000100000005000000AE9EF4095FE61A41F4AA701152634F41A29EE9AEE3E61A41A495766C4C634F41AE89EF09DEE61A41A12F110633634F41ED7D7D9256E61A41B5E65A0539634F41AE9EF4095FE61A41F4AA701152634F41	Edificio de Usos Culturales de la Vega	Edificio aun en construcción, pero que sin embargo ya tiene dependencias acabadas y que se utilizan actualmente para actividades de asociaciones musicales y algunos talleres.
6	0106000020E6640000010000000103000000010000000600000034AEBF9885EE1A41AA9E680A85624F41E27BFCDC3FEF1A41FE2ABEBF7F624F41A0D2D915DBEF1A41F6A219D074624F4123C2982C19F01A413DB9C03F40624F4147F46643DAEE1A415A9749C837624F4134AEBF9885EE1A41AA9E680A85624F41	Campo de Futbol "El Molino"	Campo de Futbol Municipal, donde se desarrollan actividades deportivas.
7	0106000020E66400000100000001030000000100000007000000066DD64B0CCD1A4145C4E3FE07644F414E9CEC5036CD1A414B4FAF9724644F41E02D20BF03CE1A41F3CBD45D57644F41AA3DE43A41CF1A41F19ACA8751644F41C99C104595CF1A41DF48E2C541644F4116808B2699CE1A417A3C9E7DFD634F41066DD64B0CCD1A4145C4E3FE07644F41	Polideportivo "Las Peregrinas"	Polideportivo Municipal dedicado al desarrollo de actividades deportivas.
8	0106000020E66400000100000001030000000100000005000000753FFA1706C51A41D81F0DAC82614F4154F73CB7BAC51A414C1590D97F614F41D9ECBFE4B7C51A41C8B890F96F614F4189BC1D3AE4C41A41D3655D2673614F41753FFA1706C51A41D81F0DAC82614F41	Pistas de Tenis	Pistas dedicadas al desarrollo de Actividades deportivas como el Tenis.
9	0106000020E664000001000000010300000001000000070000003847C56940C31A41971C325808644F415CCC8F5B86C31A41671378A306644F41638FC1F165C31A413D750527F5634F416D47C56940C31A411AB3F937F6634F41A2644FC44FC31A41F3911B1801644F41EF30AF7834C31A41598C78F201644F413847C56940C31A41971C325808644F41	Edificio Carlos Cano	Edificio dedicado a diversas actividades docentes asi como talleres culturales y además se encuentra en este centro la sala Guadalinfo, también se desarrollan actividades deportivas como Aerobic y Pilates.
10	0106000020E664000001000000010300000001000000060000003E77C05C4DC61A41EEAC4B3222644F41E9B7487B6FC61A4159A9917D20644F411EE2BAA885C61A41A0A0C0391C644F41735108E438C61A41965C218CF7634F414BCA833DF1C51A4170E009AEF9634F413E77C05C4DC61A41EEAC4B3222644F41	Centro de Interpretación de la Vega	Edificio dedicado al desarrollo de actividades culturales, así como exposiciones.
11	0106000020E664000001000000010300000001000000050000008A9B549F34E81A41136A86767B634F41173DFBC65AE81A41E84D845D7C634F41FED2F8CE5BE81A41F087888F7A634F4186C74FAF36E81A4130A48AA879634F418A9B549F34E81A41136A86767B634F41	Hogar del Pensionista	Espacio dedicado a los Jubilados, donde pasan el tiempo que ellos desean realizando todo tipo de actividades.
12	0106000020E6640000010000000103000000010000000500000064E50F8F42C31A41A2022351FA634F412F7DE6116AC31A41A01E3442F9634F41347DE6116AC31A41EC8D7806F5634F4185CF15EA3CC31A413F726715F6634F4164E50F8F42C31A41A2022351FA634F41	Hogar del Pensionista de Belicena	\N
13	0106000020E66400000100000001030000000100000008000000342B6D679EBE1A4184E8046A26644F4135A3CC72BDBE1A4122E8046A26644F415EB8C617C3BE1A4128C276A624644F41D2D83D8FCBBE1A41E1C176A624644F4144F9B406D4BE1A41FA62C60025644F41860432D9D6BE1A41813C383D23644F41D1AD4945C0BE1A4190B6F9D321644F41342B6D679EBE1A4184E8046A26644F41	Casa de la Música	Edificio dedicado a la Banda de Música Municipal y a otras Actividades Culturales
\.


--
-- Name: vegasdg_edif_muni_actividades_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_edif_muni_actividades_id_seq', 13, true);


--
-- Data for Name: vegasdg_edif_tramites_adm; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_edif_tramites_adm (id, geom, nombre, descri, imagen, url) FROM stdin;
1	0106000020E6640000010000000103000000010000000700000061F674285AE61A41C7382EF36A634F415C31FCB78DE61A413EE62A5E6C634F4111DEE8F795E61A41979437F466634F414834421FDDE61A416E5A33C268634F41E30C2A6FE7E61A410E56403763634F41A41147C06DE61A41D2E247FE5F634F4161F674285AE61A41C7382EF36A634F41	Ayuntamiento Vegas del Genil	Situado en Glorieta del Fresno, NÂº1 en la Barriada de Purchil. CP: 18102. Desde Ã©l pueden realizarse todas las gestiones propias de la AdministraciÃ³n. Horario Invierno: 7:45 a 15:15; 17:00 a 19:30. En Verano (de 15 de junio a 15 septiembre): 7:45 a 14	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/94/Ayuntamiento Vegas del Genil.jpg" />	<a href="http://www.vegasdelgenil.es/">MÃ¡s InformaciÃ³n</a>
2	0106000020E664000001000000010300000001000000050000006377EDBF62E91A411CF5B0887D634F416696A2B782E91A41A3DCB1257D634F41D4438FF78AE91A41012BD25A6F634F41AC63E1E767E91A41C7DDD17B6F634F416377EDBF62E91A411CF5B0887D634F41	Edificio Selva Florida	Edifcio dedicado a varios servicios como Consultorio MÃ©dico en su planta baja, servicios sociales y Juzgado de paz en la primera planta y biblioteca en la segunda planta.	\N	\N
3	0106000020E66400000100000001030000000100000005000000A2CFDC1DDAE61A41A458D7296D634F415B88727D07E71A4161A0D4526E634F41A77466A50CE71A4179C7DCD76A634F41DA51CE4DE0E61A41E57EDFAE69634F41A2CFDC1DDAE61A41A458D7296D634F41	Edificio de Seguridad Ciudadana	En este edificio se encuentran las dependencias Policiales Municipales en la planta baja y en la primera planta se encuentra la Oficina de ProtecciÃ³n Civil	\N	\N
\.


--
-- Name: vegasdg_edif_tramites_adm_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_edif_tramites_adm_id_seq', 3, true);


--
-- Data for Name: vegasdg_estaciones_servicio; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_estaciones_servicio (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000003A6C6EE55AE01A4181BF0C6A2F644F41497CE6ECE5E01A417ABF0C6A2F644F41497CE6ECE5E01A41A258FF7B11644F41396C6EE55AE01A419C58FF7B11644F413A6C6EE55AE01A4181BF0C6A2F644F41	Estación de Servicio "Vegas del Genil"	Estación de Servicio Repsol "Vegas del Genil", reparto de Gasóleo a domicilio.
2	0106000020E66400000100000001030000000100000005000000382747B900EB1A41D18572816F644F41A50E42B97FEB1A419E9606A06B644F4104A25F8063EB1A41B008FC2957644F41693C415E06EB1A41DCA94B8457644F41382747B900EB1A41D18572816F644F41	Estación de Servicio "Low Cost"	Estación de Servicio "Low Cost" Tu gasolina de Siempre al mejor precio.
\.


--
-- Name: vegasdg_estaciones_servicio_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_estaciones_servicio_id_seq', 2, true);


--
-- Data for Name: vegasdg_farmacias; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_farmacias (id, geom, name, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000C7A671A4C0ED1A41BDFC68C31E624F41641354DDDCED1A4197451FC418624F4196BC6B49C6ED1A41D96130B517624F41D76583B5AFED1A41E1187AB41D624F41C7A671A4C0ED1A41BDFC68C31E624F41	Farmacia	Farmacia	Farmacia de la Barriada de Ambroz
2	0106000020E664000001000000010300000001000000050000001CAEA257AFE81A4194B5782885634F417C8A6D07C6E81A417CE676EE85634F41DCE06327CAE81A41AE6D7BFF83634F4194C5918FB6E81A4163A27C7B83634F411CAEA257AFE81A4194B5782885634F41	Farmacia	Farmacia	Farmacia de la Barriada de Purchil
3	0106000020E664000001000000010300000001000000050000003A7D52CCBAC71A416BF6E6CA80634F41D4D3F0DBE8C71A41FE38DBDB81634F41F0D6AA90EAC71A41D3B395DF7E634F411584C635BEC71A4135310A987D634F413A7D52CCBAC71A416BF6E6CA80634F41	Farmacia	Farmacia	Farmacia de la Barriada de Belicena
\.


--
-- Name: vegasdg_farmacias_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_farmacias_id_seq', 3, true);


--
-- Data for Name: vegasdg_ferreteria_electrodomestico; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_ferreteria_electrodomestico (id, geom, nombre, descri) FROM stdin;
1	0106000020E6640000010000000103000000010000000500000014529B2AA8E21A414F7824B4AE634F41178281C1C1E21A41E3B65E10AE634F41C87853A3BCE21A41A2ACD317A8634F41C9486D0CA3E21A41A5EC6A4EA8634F4114529B2AA8E21A414F7824B4AE634F41	Ferretería HITOS	\N
2	0106000020E6640000010000000103000000010000000500000017FA82B60BEE1A410A777E360A624F415EBE5E2E1BEE1A41C4417DBA0A624F418340505E21EE1A41EE0286FD06624F41D9A66FF613EE1A41C838877906624F4117FA82B60BEE1A410A777E360A624F41	Ferretería San Guillermo	\N
3	0106000020E66400000100000001030000000100000005000000C6694D87BBE91A4124D74024B1634F41FE1A1D27D0E91A418EBE41C1B0634F41916D30E7C7E91A41CB194BC2AC634F413EE85B57B5E91A415A984967AD634F41C6694D87BBE91A4124D74024B1634F41	Master Cadena	Electrodomésticos y Electricidad
4	0106000020E664000001000000010300000001000000050000008E8F4C2C37C41A41C40838716F634F412216D1D27EC41A412C8FDA4773634F415526735A87C41A41D4C9FD1470634F4148B9BE594DC41A41B70321E26C634F418E8F4C2C37C41A41C40838716F634F41	Ferretería HITOS	\N
\.


--
-- Name: vegasdg_ferreteria_electrodomestico_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_ferreteria_electrodomestico_id_seq', 4, true);


--
-- Data for Name: vegasdg_gimnasios; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_gimnasios (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000008FAF073BC4CF1A4193FE86FCEE634F41ECDEB44013D01A410536A9DEEC634F41E2B3C0F607D01A411A163267E4634F413A79961EB6CF1A41A0DD0F85E6634F418FAF073BC4CF1A4193FE86FCEE634F41	AM Sport	Gimnasio
2	0106000020E6640000010000000103000000010000000500000044889C68BAEC1A418A9EFFBC04634F4139C2B01DD9EC1A41731DD14F04634F4103B20E96D0EC1A41D4D1AE20FE624F41D17BB495B3EC1A41E9114657FE624F4144889C68BAEC1A418A9EFFBC04634F41	Gimnasio - Club "Vargas"	\N
\.


--
-- Name: vegasdg_gimnasios_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_gimnasios_id_seq', 2, true);


--
-- Data for Name: vegasdg_inmobiliaria; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_inmobiliaria (id, geom, nombre) FROM stdin;
1	0106000020E66400000100000001030000000100000006000000DD57AFBB58E81A419D434C8081634F4186206E9374E81A41F73E49CA82634F412E6358DB7DE81A411E3553897E634F4120CA777370E81A41238353687E634F412844A3E35DE81A412EB3512E7F634F41DD57AFBB58E81A419D434C8081634F41	Agencia Inmobiliaria "Purchil y Casa"
\.


--
-- Name: vegasdg_inmobiliaria_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_inmobiliaria_id_seq', 1, true);


--
-- Data for Name: vegasdg_inst_deportivas; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_inst_deportivas (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000A984868C7FEE1A4139D340ED85624F41DE194759B0EF1A411F66ADEE79624F41BD8AE24D10F01A41A270D78B42624F415EE027DCD9EE1A418992FFC83A624F41A984868C7FEE1A4139D340ED85624F41	Campo de Futbol "El Molino"	Campo de Futbol Municipal situado en la barriada de Ambroz, en él se desarrollan actividades deportivas tanto para niños como para mayores.
2	0106000020E664000001000000010300000001000000070000003C5814DD16CD1A419D0E11641F644F4123A72DFFF2CD1A41FA2A758A58644F41FE6DA62CEECE1A416C5D31E64C644F411B7A2E5A6CCE1A41406393712C644F41E31B77541BCF1A412D5D2DEB22644F419A736A43ADCE1A41B518D97508644F413C5814DD16CD1A419D0E11641F644F41	Polideportivo "Las Peregrinas"	Instalaciones deportivas donde se desarrollan gran cantidad de actividades para todas las edades. Está situado en la barriada de Belicena.
3	0106000020E66400000100000001030000000100000005000000D94AB32705C51A412DA8C02E82614F4114A372B1BBC51A4162A4A99F7F614F4154832EA2AAC51A4186887C1F71614F410E2E29CDF5C41A41290C654173614F41D94AB32705C51A412DA8C02E82614F41	Pistas de Tennis del Ventorrillo	Pistas dedicadas al desarrollo de actividades deportivas, como el Tenis.
4	0106000020E66400000100000001030000000100000005000000C90C52B88BE91A4165C91737B3614F4170807A22C9E91A41DE8ADDDAB3614F41FB969013D5E91A411CEE81EDA4614F414820AEF495E91A4171AC8DDCA3614F41C90C52B88BE91A4165C91737B3614F41	Sala "Alhambra"	Nave Municipal dedicada a varios usos, entre ellos también se utiliza para desarrollar actividades deportivas como el Volebol.
5	0106000020E66400000100000001030000000100000007000000242BC96940C31A41E813365808644F414AAE935B86C31A41970F7CA306644F41DE71C5F165C31A410F6F0927F5634F411C2BC96940C31A41DCAFFD37F6634F41D34753C44FC31A413C861F1801644F41A414B37834C31A4130867CF201644F41242BC96940C31A41E813365808644F41	Edificio Carlos Cano	Edificio dedicado a diversas actividades, entre ellas Aerobic y Pilates.
6	0106000020E6640000010000000103000000010000000700000051A86F409BE81A41EC5DBFBECB614F41863DD04FDFE81A417B46C05BCB614F41607CD737DCE81A4171BFCB75C6614F4104A00C88C5E81A41F271CB96C6614F41140A0F80C4E81A41446DD80BC1614F41746968589EE81A415386D76EC1614F4151A86F409BE81A41EC5DBFBECB614F41	Edificio Clara Campoamor	Edificio dedicado a varias actividades, entre ellas actividades deportivas como Yoga
7	0106000020E664000001000000010300000001000000050000005C4B4023A2CF1A417B7D9407F0634F41BFEFC9AAD4CF1A4112CF979CEE634F418E2BEE32C5CF1A419574AEF1E4634F4189F066A391CF1A4122BDAB1AE6634F415C4B4023A2CF1A417B7D9407F0634F41	Nave Municipal de Belicena	Nave dedicada al desarrollo de actividades, entre ellas actividades deportivas como Tenis de Mesa
\.


--
-- Name: vegasdg_inst_deportivas_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_inst_deportivas_id_seq', 7, true);


--
-- Data for Name: vegasdg_lugares_de_interes; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_lugares_de_interes (id, geom, nombre, descri, imagen) FROM stdin;
1	0106000020E6640000010000000103000000010000000A000000396317FF52E91A418DE4272194634F412680A15962E91A415C84A9B583634F412826499532E91A4176037B4883634F41D21C1B772DE91A416849290E86634F416E09BF3A23E91A41264A290E86634F414800911C1EE91A4146D63F4E8D634F41E0DF4C0D0DE91A415BD63F4E8D634F41AEE97A2B12E91A410F9962CC8E634F416FDC92580BE91A415A9E1C8190634F41396317FF52E91A418DE4272194634F41	Iglesia Virgen de los Dolores	La obra comienza en 1540. Resaltan hermosas tallas de Pedro de Mena del siglo XVII	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/5b/Iglesia Virgen Dolores_2.jpg" />
2	0106000020E66400000100000001030000000100000005000000C1FC949674EE1A412B3787F5A7614F417983193DBCEE1A415EB8123DA9614F41C4898DA6BFEE1A4139AEE41EA4614F41060D371E7DEE1A416D6DF00DA3614F41C1FC949674EE1A412B3787F5A7614F41	Iglesia de la Virgen de los Remedios	Iglesia de la barriada de Ambroz de reciente construcción. Fué contruida para sustituir las celebraciónes religiosas en la antigua capilla de la barriada actualmente en proyecto de restauración por desprendimiento del tejado.	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/d8/Iglesia Virgen Remedios_2.jpg" />
3	0106000020E6640000010000000103000000010000000500000020813C5DCDE71A4153C5DB2EB9614F41D99DC6B7DCE71A41864350E7B7614F41C5770E3FC8E71A419AB7F35BB2614F413854107BB5E71A41C7F9E76CB3614F4120813C5DCDE71A4153C5DB2EB9614F41	Ermita de los Marqueses de las Torres de Orán	En el siglo XVIII la familia nobiliaria MARQUESES DE LAS TORRES DE ORÁN, construye una casa grande de labor que disponía de capilla particular (oratorio) y permitió que los vecinos acudieran a ella para los cultos.	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/83/Ermita Marqueses_2.jpg" />
4	0106000020E6640000010000000103000000010000000500000007C1CE387FC71A41398C41A276634F41A564DD39D6C71A41DB8B9E7C77634F41B271C50CDDC71A41107DFCF46E634F4134D170C087C71A4152BD932B6F634F4107C1CE387FC71A41398C41A276634F41	Iglesia de la Virgen del Rosario	Antigua mezquita. Iglesia del siglo XVIII dedicada a San Sebastián.	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/ee/Iglesia Virgen Rosario_2.jpg" />
5	0106000020E66400000100000001030000000100000005000000A07990BC48C61A41B60E259720644F4114F072DB87C61A41A2C976D11D644F41904C64DA30C61A4192FC344DF5634F41E4D2C706F0C51A4177837A49F8634F41A07990BC48C61A41B60E259720644F41	Centro de Interpretación de la Vega	El Centro de Interpretación de la Vega de Granada (CIV) está ubicado en un antiguo secadero de tabaco construido en 1953 siendo uno de los mejores ejemplos de este tipo de construcciones en ladrillo y madera tan característicos del paisaje de la Vega gra	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/2b/CI Vega_2.jpg" />
6	0106000020E66400000100000001030000000100000005000000575FF1836EB91A41A80EAB12DC644F411736BD3CE3B91A4145E6F325CB644F41A84C4E2311B91A4121AD104FBE644F41C0DF6F17AFB81A414893917BCD644F41575FF1836EB91A41A80EAB12DC644F41	Cortijo Cristo de las Cañas	En la carretera de Belicena a Santa Fe. Bastante bien conservado y en uso. Destaca su arquitectura y su masa arbórea. En la entrada se encuentra la Ermita del Cristo de las Cañas con placeta abalaustrada delantera.	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/17/Cortijo Cristo Cañas_2.jpg" />
\.


--
-- Name: vegasdg_lugares_de_interes_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_lugares_de_interes_id_seq', 6, true);


--
-- Data for Name: vegasdg_monumentos; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_monumentos (id, geom, nombre, descri, url) FROM stdin;
1	0106000020E6640000010000000103000000010000000500000014101D90DEF51A41CFA7D90983634F415B535F6302F61A417EF0418487634F41C56975540EF61A410A2D1F0686634F419C29ED35ECF51A4141254EC281634F4114101D90DEF51A41CFA7D90983634F41	Puente del Francés	Puente de sillería, representativo de la arquitectura francesa del primer tercio del siglo XIX	<img src="http://www.juntadeandalucia.es/institutodeestadisticaycartografia/callejeromunicipal/imagenes/fb/Puente del Frances.jpg" />
\.


--
-- Name: vegasdg_monumentos_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_monumentos_id_seq', 1, true);


--
-- Data for Name: vegasdg_otros_comercios; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_otros_comercios (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000004B2ADDE574CA1A413FC57E1B89634F4146A23CF193CA1A41ED7FDF6688634F415697BF1E91CA1A417EAE847683634F41F9345AB877CA1A419650D4D083634F414B2ADDE574CA1A413FC57E1B89634F41	Informática Belicena	Material de Oficina, Papelería, Tienda Informática, Reparación de Equipos Informáticos...
2	0106000020E66400000100000001030000000100000005000000DD11A9759EE01A4149A422B5E4644F41E03220EDA6E01A410657895BDE644F41888713DC38E01A415F3C786ADF644F413C9D0D813EE01A4155E0C169E5644F41DD11A9759EE01A4149A422B5E4644F41	Concesionario TOWCA	Concesionario de Motos Towca
3	0106000020E66400000100000001030000000100000007000000825B5B7B6EE01A41AB8736612D654F41AA9C496A7FE01A41DD7C36612D654F41F7E9B42B93E01A4112A35E9E25654F41F82BA31AA4E01A419F69530821654F414074193733E01A416ACA03AE20654F418075193733E01A41DDA0C4242F654F41825B5B7B6EE01A41AB8736612D654F41	TIFÓN	Venta de Mobiliario para el Hogar
4	0106000020E66400000100000001030000000100000005000000628F13DC38E01A41DF4C48721C654F418319A9759EE01A41730CA9BD1B654F417519A9759EE01A411E565FBE15654F412985960936E01A413B555FBE15654F41628F13DC38E01A41DF4C48721C654F41	Sofás Granada	\N
5	0106000020E66400000100000001030000000100000005000000137F193733E01A412C5D5FBE15654F4178292648A1E01A4192AA0F6415654F41962A2648A1E01A417E9415BF0F654F413C7E193733E01A41CD9615BF0F654F41137F193733E01A412C5D5FBE15654F41	Divermoto	Concesionario Aprillia - Peugeot
6	0106000020E664000001000000010300000001000000050000009E7B9C6430E01A411CFACBBF09654F41203CA31AA4E01A410BF4CBBF09654F417E302648A1E01A41CB45990CFD644F41C36F1F922DE01A41DFBFD775FE644F419E7B9C6430E01A411CFACBBF09654F41	Colchonerías y Sofás "El Rey"	\N
7	0106000020E66400000100000001030000000100000005000000523A1BED25E11A4150EEF4577B654F41F5647CAE37E21A41AC6F33C17C654F413D5AFFDB34E21A4126F922F06D654F41AC5015922BE11A412520B1B36F654F41523A1BED25E11A4150EEF4577B654F41	Cocinas "Larios"	Exposición y Venta
8	0106000020E6640000010000000103000000010000000500000016373F4D77E31A41A849D03B9A634F41E2C698FD9BE31A417401318799634F410F85AA0E8BE31A41CA1DC5A595634F413C2145A871E31A416A5E645A96634F4116373F4D77E31A41A849D03B9A634F41	Agrovegas	Venta de Productos Fitosanitarios, Semillas y Plantas, Accesorios y Alimentación para Mascotas
9	0106000020E66400000100000001030000000100000005000000F0470C6982E91A414EC914E2AE634F416A69507893E91A4120807DABAE634F413E6596C391E91A4176BBA078AB634F4156470C6982E91A41EA44CFE5AB634F41F0470C6982E91A414EC914E2AE634F41	Óptica Vegas del Genil	\N
10	0106000020E66400000100000001030000000100000005000000602B07DF81F51A4131EDDE7A29624F4139D9A678E9F41A410A4078D42F624F415B9E71451CF51A4180EA933B43624F418ED8D706AFF51A41AA8DFAE13C624F41602B07DF81F51A4131EDDE7A29624F41	Centro Ecuestre "Vega Genil"	Clases, Paseos y Excursiones a Caballo, Pupilaje (Cursos y Doma), Paseos en Coches de Caballo por la Vega, Visitas Escolares, Campamentos de Verano,...
11	0106000020E664000001000000010300000001000000050000003CDF105BF9C61A41733761262B644F416222FF490AC71A41DA75666135644F4130E5C9163DC71A41F15CD89D33644F41318EE18226C71A41B35772172A644F413CDF105BF9C61A41733761262B644F41	Droguería y Perfumería "Carmen"	Cosmética, Higiene Personal, Limpieza del Hogar, Mercería, Pinturas, Mascotas, ...
12	0106000020E66400000100000001030000000100000007000000425FF19A94EE1A41104D26D05A644F418C7494FBF1EE1A416FB1C09378644F411146C02C88F01A411E12E16EA8644F41AB053A5C10F21A419DF6DB83A5644F415780FA2511F31A41E9ED298297644F413D208CE5FCF01A41A6E7382348644F41425FF19A94EE1A41104D26D05A644F41	Club de Campo de Granada	\N
13	0106000020E6640000010000000103000000010000000500000087D46E6F97C61A4169BCF97A4F644F41777E7B8005C71A410A9D6BB74D644F4138D0AA58D8C61A416548E9A940644F412CA97A258CC61A410F52667C43644F4187D46E6F97C61A4169BCF97A4F644F41	Cafés Aguayo	\N
14	0106000020E66400000100000001030000000100000005000000BA3946217DE71A4169AB234973634F41D4C01AB18FE71A41AB88213074634F4150AD0ED994E71A418CC1256272634F41566541317FE71A4164F526DE71634F41BA3946217DE71A4169AB234973634F41	Administración de Loterías y Estanco	Venta de Tabaco, Fotocopias, Administración de loterías del Estado
15	0106000020E664000001000000010300000001000000080000001206EE242DE01A41C59E00B22B624F412626659C35E01A4179AD94D027624F41BE8D8E190EE01A4163E4677815624F41AC20ACE0F1DF1A41228DCE1E0F624F4130821CA286DF1A4195C8568716624F4196821CA286DF1A41A167DECF2D624F414ADFBDF1E0DF1A41C9223F1B2D624F411206EE242DE01A41C59E00B22B624F41	FORCH	Materiales de Automoción
16	0106000020E66400000100000001030000000100000005000000E226AFF1DBE31A414561C9D89E634F41874D676AF0E31A4117AC8E2DA4634F4165AA79E321E41A41482903E6A2634F41A5A6BF2E20E41A419F998FCB9A634F41E226AFF1DBE31A414561C9D89E634F41	GUFEMA	Trabajos del Hierro, Maquinaria Agrícola, Todo tipo de Puertas, Cerraduras,...
\.


--
-- Name: vegasdg_otros_comercios_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_otros_comercios_id_seq', 16, true);


--
-- Data for Name: vegasdg_panaderia_pasteleria; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_panaderia_pasteleria (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000007000000DE2510A93CEE1A4148477AFAC0614F41625F245E5BEE1A41E3C3EEB2BF614F416869527C60EE1A412D871131C1614F414A89968B71EE1A412E05E3C3C0614F41F978F40369EE1A41C8BB1D6FBB614F41F328CA5D3EEE1A417DFD1180BC614F41DE2510A93CEE1A4148477AFAC0614F41	Panadería Croissantería "Los Cinco Sentidos"	\N
2	0106000020E66400000100000001030000000100000006000000CB11774B5AE81A41537765877C634F4109425DE273E81A419CF5D93F7B634F41F64B8B0079E81A41B3AB14EB75634F41EC11774B5AE81A410B30FD0C78634F410E1F5F1E61E81A41CEB3E52E7A634F41CB11774B5AE81A41537765877C634F41	Panadería "Peinado"	Pastelería, Bollería, Helados.
3	0106000020E66400000100000001030000000100000007000000F7888D5CCCC21A4192CBC4D7CA634F415B8D461810C31A41C446866EC9634F41EE6CCFA007C31A4156732B7EC4634F41A3F56F95E8C21A4132147BD8C4634F415CBFFE78DAC21A41DC52B406BC634F41523D229BB8C21A419036A315BD634F41F7888D5CCCC21A4192CBC4D7CA634F41	Panadería & Croissantería "Crema y Caramelo"	\N
4	0106000020E6640000010000000103000000010000000500000028D2BED583C61A4196D042B173634F41042FD14EB5C61A41FA90085574634F41BA25A330B0C61A41B5CC88FC71634F4104CF042182C61A41714B5A8F71634F4128D2BED583C61A4196D042B173634F41	Panadería "Retamero"	\N
5	0106000020E6640000010000000103000000010000000500000060EB18F78DC71A41152405150E644F41FC07A3519DC71A419CE110040D644F41B0FE743398C71A4145984BAF07644F41D5D1485180C71A417999A88908644F4160EB18F78DC71A41152405150E644F41	Pastelerías "La Deseada"	\N
\.


--
-- Name: vegasdg_panaderia_pasteleria_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_panaderia_pasteleria_id_seq', 5, true);


--
-- Data for Name: vegasdg_papeleria_prensa; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_papeleria_prensa (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000006E4B8D0D1EEA1A4123DB8FCC74634F414778B9EF35EA1A412457A7AA72634F419851017721EA1A4183109C0A6F634F4190288F490BEA1A41671356BF70634F416E4B8D0D1EEA1A4123DB8FCC74634F41	Librería Vegas del Genil	Papelería, Revistas, Juguetes, Bisutería, Complementos, Regalos,...
2	0106000020E664000001000000010300000001000000050000008356D813F5C61A41D8B520E035644F41F3EEDBC531C71A414EDF51B534644F41DDCF77C215C71A4131540C342A644F41BA91AFBBDDC61A41FD9542F42B644F418356D813F5C61A41D8B520E035644F41	Librería - Papelería "Papiro"	Libros de Texto, Libros en General, Material Escolar, Fotocopias, Plastificados, Encuadernaciones, Regalos,...
3	0106000020E6640000010000000103000000010000000500000052D9E5E574CA1A412506881B89634F41835045F193CA1A41D9C3E86688634F414745C81E91CA1A4149F08D7683634F41F2E362B877CA1A413D92DDD083634F4152D9E5E574CA1A412506881B89634F41	Informática Belicena	Material de Oficina, Papelería, Tienda Informática,...
\.


--
-- Name: vegasdg_papeleria_prensa_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_papeleria_prensa_id_seq', 3, true);


--
-- Data for Name: vegasdg_peluqueria_estetica; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_peluqueria_estetica (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000F716B004EEEC1A4127F8170757624F41C2914CD82EED1A418B75E99956624F4184914CD82EED1A416FAC52B251624F41D0196AB9EFEC1A41FE2C244551624F41F716B004EEEC1A4127F8170757624F41	Peluquería y Estética "Carmen Tomás"	\N
2	0106000020E6640000010000000103000000010000000500000001E5BA6A01E71A418DE96B94C8614F41EDEA2ED404E71A4116632698C5614F41AFCAEAC4F3E61A419E218F61C5614F415CC4765BF0E61A41ABE76B94C8614F4101E5BA6A01E71A418DE96B94C8614F41	Peluquería "Rubios"	Fotodepilación, Estética, Extensiones, Masajes y Quiromasajes, Tratamientos Corporales y Capilares,...
3	0106000020E66400000100000001030000000100000005000000480AF4A8D5E41A416303D9A994634F41ECCDBE7508E51A4124570C7D91634F410461DC3CECE41A410D85B18C8C634F41A1A88E42BCE41A41068F2E5F8F634F41480AF4A8D5E41A416303D9A994634F41	Peluquería y Solarium "Tn"	\N
4	0106000020E664000001000000010300000001000000050000002A1C8B1A85E91A41B6E3EC55DD634F4166B4619DACE91A4111258C0ADE634F4118EBD2B9BAE91A410770420BD8634F41387373AE9BE91A417CB3E1BFD8634F412A1C8B1A85E91A41B6E3EC55DD634F41	Peluquería Unisex	\N
5	0106000020E66400000100000001030000000100000005000000DC964B090DEE1A41088B197366634F4129E3B6CA20EE1A412B761FCE60634F411161DAECFEED1A41E38F30BF5F634F41C92A69D0F0ED1A41978B197366634F41DC964B090DEE1A41088B197366634F41	Peluquería Canina "Zoraican"	\N
6	0106000020E6640000010000000103000000010000000500000027B40E49FFC81A4119BD44B418644F41A07CCD201BC91A417E3F460F18644F413026D70017C91A41AD494C7B15644F41F2C71A21FAC81A41162A4A6216644F4127B40E49FFC81A4119BD44B418644F41	Peluquería Unisex "ILEA"	\N
7	0106000020E66400000100000001030000000100000005000000B8600CA665C01A413B4F137716644F4118FECF6D7FC01A41D18414F315644F414B12DC457AC01A41178D1A5F13644F41A435119663C01A41445619E313644F41B8600CA665C01A413B4F137716644F41	Peluquería "IF"	\N
8	0106000020E6640000010000000103000000010000000500000042B83025DFC61A4180B1AB8A9F634F4160E32B35E1C61A414BA7A51EA2634F412CE70E95EDC61A41C88FA6BBA1634F41EEBB1385EBC61A41A34CAC489F634F4142B83025DFC61A4180B1AB8A9F634F41	Peluquería "Sofi"	\N
9	0106000020E66400000100000001030000000100000005000000150488DED9E71A41B9EE442362644F41C52A4057EEE71A41D6EE442362644F410931B4C0F1E71A4136A67FCE5C644F410B0BFC47DDE71A410AA67FCE5C644F41150488DED9E71A41B9EE442362644F41	Peluquería Unisex "Clary"	\N
10	0106000020E66400000100000001030000000100000005000000ADDA077D4FEB1A418AF066B21F624F41B430A68C7DEB1A41456F38451F624F413824BEB976EB1A4124E638941A624F4195D74DC84DEB1A41E3A5A15D1A624F41ADDA077D4FEB1A418AF066B21F624F41	Peluquería "Lorena Madrid"	Imagen Personal, Recogidos, Extensiones, Bonos de Novia, Uñas de Gel,...
\.


--
-- Name: vegasdg_peluqueria_estetica_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_peluqueria_estetica_id_seq', 10, true);


--
-- Data for Name: vegasdg_reforma_conts_carp; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_reforma_conts_carp (id, geom, nombre, descri) FROM stdin;
1	0106000020E6640000010000000103000000010000000500000042D77416CCE31A41875FF13077634F413E167CFEC8E31A41006DFA5273634F41BE70F27696E31A411D86F9B573634F41F231EB8E99E31A41AEDBEFD577634F4142D77416CCE31A41875FF13077634F41	Reformas "Israel"	Cristalería, Carpintería de aluminio, mosquiteras, mamparas,rejas, toldos,...
2	0106000020E66400000100000001030000000100000006000000B8682F1763E91A4160081F606B634F41748CC76E8FE91A41D63C20DC6A634F41BACBCE568CE91A41D71035F761634F417CA836FF5FE91A413B8E339C62634F41A31239F75EE91A41F28D339C62634F41B8682F1763E91A4160081F606B634F41	Carpintería "Moreno"	Cocinas, puertas, muebles a medida, armarios empotrados, barandas,...
3	0106000020E664000001000000010300000001000000050000002825C772C9DF1A41D1234C0F03654F417DCCD38337E01A41C8224C0F03654F41BDC156B134E01A41C9ADA1C4FD644F41BD194AA0C6DF1A410A6A0210FD644F412825C772C9DF1A41D1234C0F03654F41	Cristalería "Josma"	Carpintería de Aluminio, Cristalería, Mamparas de Baño, Mosquiteras, Instalaciones Comerciales...
4	0106000020E664000001000000010300000001000000050000000DB49F398FDF1A411DA291AA0F654F4181D416B197DF1A41A7EA47AB09654F4126CBA43910DF1A413B8B97050A654F4195EB1BB118DF1A413E43E10410654F410DB49F398FDF1A411DA291AA0F654F41	DECO-ART	\N
5	0106000020E6640000010000000103000000010000000500000044BFB40C9BCF1A4116495D91EF634F41C10FDFB2C5CF1A41F4046980EE634F4164F25458B6CF1A4131B4D2E7E4634F41A3A89E1B8FCF1A416A365E2FE6634F4144BFB40C9BCF1A4116495D91EF634F41	Metalúrgica Belicena	Carpintería de Aluminio PVC, Mamparas de Baño, Cerramientos, Mosquiteras, Muros de Cortina, Puertas Residenciales, Puertas Seccionales,...
6	0106000020E66400000100000001030000000100000005000000B250562D0FDD1A410B8F0D32B9634F41BCDDAFDD33DD1A41FB4C6E7DB8634F419E91441C20DD1A411BA25216A5634F41ADE473F4F2DC1A415D43A270A5634F41B250562D0FDD1A410B8F0D32B9634F41	Hermanos Pérez Alarcón	Carpintería Metálica, Trabajos de Forja,...
7	0106000020E66400000100000001030000000100000005000000AFA667EC7DEA1A419B1DE5626E644F4173F3D7DDA6EA1A41BF9CB6F56D644F4151F01D29A5EA1A417CD1C23368644F41C0A921A17FEA1A41E39288D768644F41AFA667EC7DEA1A419B1DE5626E644F41	Artesanos "VegaFerro"	Carpintería Metálica, Trabajos de Forja,...
8	0106000020E6640000010000000103000000010000000500000058A47F6979DB1A419C086870B9634F416D9DBB52BADB1A4130832907B8634F41093C56ECA0DB1A41E5EFB80A9A634F41292D205E5ADB1A4186D3A7199B634F4158A47F6979DB1A419C086870B9634F41	C.V.Glass	Central Vidriera Granadina
\.


--
-- Name: vegasdg_reforma_conts_carp_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_reforma_conts_carp_id_seq', 8, true);


--
-- Data for Name: vegasdg_ss_residencias; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_ss_residencias (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000002669EDBF62E91A4179E2B0887D634F412488A2B782E91A41FEC9B1257D634F419F358FF78AE91A415818D25A6F634F417555E1E767E91A41FECAD17B6F634F412669EDBF62E91A4179E2B0887D634F41	Edificio Selva Florida	Edificio dedicado a varios servicios como Consultorio MÃ©dico en su planta baja, servicios sociales y Juzgado de paz en la primera planta y biblioteca en la segunda planta.
2	0106000020E66400000100000001030000000100000007000000C5107A8144C31A41EA5053DE07644F418E9344738AC31A41F5CC6ABC05644F41445002A066C31A41236C8F76F4634F41D809061841C31A41C6EE1ABEF5634F413127907250C31A414103D4D400644F4172F3EF2635C31A41880531AF01644F41C5107A8144C31A41EA5053DE07644F41	Edificio Carlos Cano	Edificio dedicado a varios servicios como Guadalinfo, Correos y los Servicios Sociales de Belicena en la planta baja, y tambien se desarrollan actividades diversas en su primera planta.
3	0106000020E664000001000000010300000001000000080000007F4B8DD76DCE1A412E0E2EDF90634F4141A52790AECF1A4180D821A196634F41BA8129CC9BCF1A41336756115A634F41D1F176074FCF1A41EAD7E2F651634F41A6BB1C0732CF1A413F8392A946634F4133385215ECCE1A418F03C11647634F41D054BBF572CE1A414410A9E94D634F417F4B8DD76DCE1A412E0E2EDF90634F41	Residencia "Maria Zayas"	Residencia dedicada a la FundaciÃ³n Zayas
\.


--
-- Name: vegasdg_ss_residencias_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_ss_residencias_id_seq', 3, true);


--
-- Data for Name: vegasdg_supermercados; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_supermercados (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000005000000C2888B406FE61A413C184484C7614F41F8BFE5408CE61A41E3174484C7614F41B0C29FF58DE61A4164D77E2FC2614F417D888B406FE61A41DF9044D3C2614F41C2888B406FE61A413C184484C7614F41	Covirán de Ambroz	Supermercado de Alimentación Covirán
2	0106000020E66400000100000001030000000100000005000000D8BCC0B36CEE1A4112F8BAC7AE614F4130D790597AEE1A41312B52FEAE614F4171E0BE777FEE1A41016475CBAB614F4134C9A88673EE1A41086875CBAB614F41D8BCC0B36CEE1A4112F8BAC7AE614F41	Comestibles Encarnita	Tienda de Alimentación en General
3	0106000020E66400000100000001030000000100000005000000B68441E2D9EE1A414BD4DB09C3614F41D3BB9BE2F6EE1A41899AE7F8C1614F4150B9E12DF5EE1A41F38E2D44C0614F41F78441E2D9EE1A41E4CEC47AC0614F41B68441E2D9EE1A414BD4DB09C3614F41	Tienda de Alimentación	Supermercado de Alimentación General
4	0106000020E66400000100000001030000000100000005000000C8ABFCF139EA1A41A23F48DC72634F41BCFD269864EA1A4142730ECF6E634F411AD0FAB54CEA1A41C2AAD4C16A634F414E7ED00F22EA1A41C22C1ABE6D634F41C8ABFCF139EA1A41A23F48DC72634F41	Covirán de Purchil	Supermercado de Alimentación Covirán
5	0106000020E664000001000000010300000001000000050000000208CBB59BE71A411CD7492975634F41C5CB9582CEE71A4198FED7EC76634F41DDD61255D1E71A416C94AA7474634F41231DC55AA1E71A417C741CB172634F410208CBB59BE71A411CD7492975634F41	Alimentación "Barranco"	Tienda de Alimentación en General
6	0106000020E66400000100000001030000000100000005000000CE5F513DEDE71A41D39B1E1782634F41E493F18808E81A410318073984634F41ADB4359819E81A41CD94C13C81634F412A7DDB97FCE71A41535270517F634F41CE5F513DEDE71A41D39B1E1782634F41	Frutería Purchil	\N
7	0106000020E66400000100000001030000000100000005000000FDA0D3AE3AEE1A41E6FECDD6C7614F41260EB6E756EE1A41D61BDFC7C6614F412DED3E704EEE1A417B98A05EC5614F41B3AB50813DEE1A41E25201AAC4614F41FDA0D3AE3AEE1A41E6FECDD6C7614F41	Frutería de Ambroz	\N
8	0106000020E664000001000000010300000001000000060000004C1B7115DFE81A419563E4937C634F4186B3479806E91A418A67E4937C634F415BB4479806E91A419D7978B278634F41CC9D4DF300E91A411EF5394977634F41761B7115DFE81A41F5DA285878634F414C1B7115DFE81A419563E4937C634F41	Pescadería Pepi	Pescados y Mariscos
9	0106000020E66400000100000001030000000100000005000000146932B4ACC51A416DA75B0186634F41B78B3078BFC51A41E9E0955D85634F417F7F48A5B8C51A411DD77ECE82634F417762BE4AA9C51A417C5BAD3B83634F41146932B4ACC51A416DA75B0186634F41	Pescadería Sanchez	Pescados y Marsicos de Motril
10	0106000020E6640000010000000103000000010000000500000018E7812B4DC51A41A9C6AA619F634F41F8EDF59450C51A414682CDDFA0634F415A2BC4FE70C51A411AC5AA619F634F4132280A4A6FC51A41B7C1F0AC9D634F4118E7812B4DC51A41A9C6AA619F634F41	Alimentación "La Tendeta"	Tienda de Alimentación en General
11	0106000020E664000001000000010300000001000000050000006DBFEC68AEC51A418DCD947093634F4152BFEC68AEC51A41BB4B092992634F41AA9EA8599DC51A411389A05F92634F41C3A1620E9FC51A41C5925A1494634F416DBFEC68AEC51A418DCD947093634F41	Frutería Rafalillo	\N
12	0106000020E66400000100000001030000000100000005000000203A266E4AC71A41D0B387FE99634F414584DCAA71C71A41B7F3648098634F418879AE8C6CC71A41B32F884D95634F41B62984E641C71A41B02DE52796634F41203A266E4AC71A41D0B387FE99634F41	Alimentación "Adriana"	Tienda de Alimentación en General
13	0106000020E6640000010000000103000000010000000500000055E784F8F2C81A41CB28196B86634F41478AD84D1DC91A413830963D89634F41EAAA4FC525C91A416F613B4D84634F41A807FC6FFBC81A41DA965D2F82634F4155E784F8F2C81A41CB28196B86634F41	Covirán de Belicena	Supermercado de Alimentación Covirán
14	0106000020E66400000100000001030000000100000005000000D40438C929C71A4109E8584C2A644F41760E66E72EC71A417DAD357F2D644F41618802BB6FC71A416168E4932B644F41768548066EC71A4152E39E9728644F41D40438C929C71A4109E8584C2A644F41	Supermercado SPAR	Supermercado de la Empresa SPAR
15	0106000020E6640000010000000103000000010000000500000014B138D18CEF1A418DD03477BE614F4110D436959FEF1A41CE0F6FD3BD614F4192F47AA4B0EF1A412EC70659B9614F4155DAAAFEA2EF1A41FF04E4DAB7614F4114B138D18CEF1A418DD03477BE614F41	Alimentación "Conchita"	Tienda de Alimentación en General
16	0106000020E664000001000000010300000001000000050000006C8B0CCC0BE91A41E0EB164702624F4182CE4E9F2FE91A417E2EAE7D02624F41C7DEF02638E91A41791CAF1BF9614F4170953AEA10E91A4143195241F8614F416C8B0CCC0BE91A41E0EB164702624F41	Tienda de Alimentación	Tienda minorista de Alimentación en General
17	0106000020E664000001000000010300000001000000050000000E82AE24F5C71A413FE9139F83634F4198D5927F21C81A41D96A9FE684634F41D8E534072AC81A412CE4FC0F81634F41378F96F7FBC71A412DA108FF7F634F410E82AE24F5C71A413FE9139F83634F41	Frutería "Daniela"	\N
\.


--
-- Name: vegasdg_supermercados_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_supermercados_id_seq', 17, true);


--
-- Data for Name: vegasdg_talleres; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_talleres (id, geom, nombre, descri) FROM stdin;
1	0106000020E664000001000000010300000001000000050000002E8AFB1245EE1A41D925EA2C1B634F41862696AA98EE1A41F7E3F51B1A634F41D1363832A1EE1A41EBD86A2314634F41DC769FD63AEE1A41BD93BC5D11634F412E8AFB1245EE1A41D925EA2C1B634F41	Talleres "Reinol"	Chapa, Pintura, Mecánica y Neumáticos
2	0106000020E664000001000000010300000001000000050000004880CE2017CE1A4185F17954A9634F4125DDE09948CE1A413CF01C7AA8634F41CAD3B27B43CE1A4147DDC03D9E634F41347D146C15CE1A41FE5B92D09D634F414880CE2017CE1A4185F17954A9634F41	Talleres "Reyes"	\N
3	0106000020E66400000100000001030000000100000005000000DD3B573BA0E01A413166C10402654F419C86E0E496E01A41C99F1EC4FC644F416284EF8547E01A41100B8659FD644F41A1DE2A314CE01A41C83C902F03654F41DD3B573BA0E01A413166C10402654F41	Avilés	Centro First Stop. Neumáticos, Alineaciones, Amortiguadores, Frenos, Equilibrados, Baterías, Aceites, Filtros,...
\.


--
-- Name: vegasdg_talleres_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_talleres_id_seq', 3, true);


--
-- Data for Name: vegasdg_tanatorios; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_tanatorios (id, geom, nombre) FROM stdin;
1	0106000020E664000001000000010300000001000000050000008D3AEAC56DE01A41FE5B4C470F654F4166B4783D9EE01A4139F74C050F654F41D6747155A1E01A41AD745BD508654F418F3AEAC56DE01A41178D5A3809654F418D3AEAC56DE01A41FE5B4C470F654F41	Tanatorio Vegas del Genil
\.


--
-- Name: vegasdg_tanatorios_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_tanatorios_id_seq', 1, true);


--
-- Data for Name: vegasdg_tiendas_ropa; Type: TABLE DATA; Schema: sepim_datos; Owner: sepim
--

COPY vegasdg_tiendas_ropa (id, geom, nombre, descri) FROM stdin;
1	0106000020E66400000100000001030000000100000006000000C5057A2353E91A4139D464F59E634F416B45024275E91A41A39170E49D634F41BB381A6F6EE91A41538D59559B634F416518D65F5DE91A41358A9FA099634F415EEBA97D45E91A41B98FB62F9C634F41C5057A2353E91A4139D464F59E634F41	Confecciones "Carmela"	Moda Infantil, Complementos, Corsetería, Calzado,...
2	0106000020E66400000100000001030000000100000005000000E339F9F4E5E81A41ACE2FE0583634F41DD5FB16DFAE81A41F3612D7383634F41C86625D7FDE81A41166073BE81634F4135432713EBE81A413EDE445181634F41E339F9F4E5E81A41ACE2FE0583634F41	Barranco	Lencería, Moda, Ropa de Hogar, Complementos, Artículos de Bebé,...
3	0106000020E66400000100000001030000000100000005000000D7CE81B257EF1A41E57D8173AF614F418F0222FE72EF1A41E2FD5206AF614F41E5FE674971EF1A416FB9011BAD614F41D4CE81B257EF1A41403A3088AD614F41D7CE81B257EF1A41E57D8173AF614F41	Moda y Complementos "Yolanda"	Lencería, Bisutería, Calzado, Perfumería,...
4	0106000020E66400000100000001030000000100000005000000EE821457FCC51A411A5E70E182634F4102AB2C07F2C51A416DC36F2383634F4164012327F6C51A41384F67BF86634F412E05068702C61A417D9C679E86634F41EE821457FCC51A411A5E70E182634F41	La Plaza	Ropa Infantil, Bebé y Hogar, Corsetería, Lencería,...
5	0106000020E66400000100000001030000000100000005000000B8CF800573E61A41476E20B8CB614F4186F9F23289E61A41736E20B8CB614F4198FCACE78AE61A4178690929C9614F4180C90C9C6FE61A4153690929C9614F41B8CF800573E61A41476E20B8CB614F41	+ K Barato	Moda infantil y Juvenil.
\.


--
-- Name: vegasdg_tiendas_ropa_id_seq; Type: SEQUENCE SET; Schema: sepim_datos; Owner: sepim
--

SELECT pg_catalog.setval('vegasdg_tiendas_ropa_id_seq', 5, true);


--
-- Name: vegasdg_archivo_y_biblioteca_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_archivo_y_biblioteca
    ADD CONSTRAINT vegasdg_archivo_y_biblioteca_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_asesorias_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_asesorias
    ADD CONSTRAINT vegasdg_asesorias_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_bares_y_restaurantes_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_bares_y_restaurantes
    ADD CONSTRAINT vegasdg_bares_y_restaurantes_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_cajeros_bancos_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_cajeros_bancos
    ADD CONSTRAINT vegasdg_cajeros_bancos_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_callejero1_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_callejero1
    ADD CONSTRAINT vegasdg_callejero1_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_callejero2_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_callejero2
    ADD CONSTRAINT vegasdg_callejero2_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_cementerios_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_cementerios
    ADD CONSTRAINT vegasdg_cementerios_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_clinicas_dentales_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_clinicas_dentales
    ADD CONSTRAINT vegasdg_clinicas_dentales_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_col_y_gua_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_col_y_gua
    ADD CONSTRAINT vegasdg_col_y_gua_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_comida_llevar_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_comida_llevar
    ADD CONSTRAINT vegasdg_comida_llevar_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_consultorios_medicos_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_consultorios_medicos
    ADD CONSTRAINT vegasdg_consultorios_medicos_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_correos_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_correos
    ADD CONSTRAINT vegasdg_correos_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_edif_muni_actividades_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_edif_muni_actividades
    ADD CONSTRAINT vegasdg_edif_muni_actividades_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_edif_tramites_adm_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_edif_tramites_adm
    ADD CONSTRAINT vegasdg_edif_tramites_adm_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_estaciones_servicio_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_estaciones_servicio
    ADD CONSTRAINT vegasdg_estaciones_servicio_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_farmacias_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_farmacias
    ADD CONSTRAINT vegasdg_farmacias_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_ferreteria_electrodomestico_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_ferreteria_electrodomestico
    ADD CONSTRAINT vegasdg_ferreteria_electrodomestico_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_gimnasios_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_gimnasios
    ADD CONSTRAINT vegasdg_gimnasios_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_inmobiliaria_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_inmobiliaria
    ADD CONSTRAINT vegasdg_inmobiliaria_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_inst_deportivas_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_inst_deportivas
    ADD CONSTRAINT vegasdg_inst_deportivas_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_lugares_de_interes_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_lugares_de_interes
    ADD CONSTRAINT vegasdg_lugares_de_interes_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_monumentos_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_monumentos
    ADD CONSTRAINT vegasdg_monumentos_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_otros_comercios_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_otros_comercios
    ADD CONSTRAINT vegasdg_otros_comercios_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_panaderia_pasteleria_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_panaderia_pasteleria
    ADD CONSTRAINT vegasdg_panaderia_pasteleria_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_papeleria_prensa_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_papeleria_prensa
    ADD CONSTRAINT vegasdg_papeleria_prensa_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_peluqueria_estetica_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_peluqueria_estetica
    ADD CONSTRAINT vegasdg_peluqueria_estetica_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_reforma_conts_carp_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_reforma_conts_carp
    ADD CONSTRAINT vegasdg_reforma_conts_carp_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_ss_residencias_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_ss_residencias
    ADD CONSTRAINT vegasdg_ss_residencias_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_supermercados_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_supermercados
    ADD CONSTRAINT vegasdg_supermercados_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_talleres_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_talleres
    ADD CONSTRAINT vegasdg_talleres_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_tanatorios_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_tanatorios
    ADD CONSTRAINT vegasdg_tanatorios_pkey PRIMARY KEY (id);


--
-- Name: vegasdg_tiendas_ropa_pkey; Type: CONSTRAINT; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

ALTER TABLE ONLY vegasdg_tiendas_ropa
    ADD CONSTRAINT vegasdg_tiendas_ropa_pkey PRIMARY KEY (id);


--
-- Name: sidx_vegasdg_archivo_y_biblioteca; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_archivo_y_biblioteca ON vegasdg_archivo_y_biblioteca USING gist (geom);


--
-- Name: sidx_vegasdg_asesorias; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_asesorias ON vegasdg_asesorias USING gist (geom);


--
-- Name: sidx_vegasdg_bares_y_restaurantes; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_bares_y_restaurantes ON vegasdg_bares_y_restaurantes USING gist (geom);


--
-- Name: sidx_vegasdg_cajeros_bancos; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_cajeros_bancos ON vegasdg_cajeros_bancos USING gist (geom);


--
-- Name: sidx_vegasdg_callejero1; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_callejero1 ON vegasdg_callejero1 USING gist (geom);


--
-- Name: sidx_vegasdg_callejero2; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_callejero2 ON vegasdg_callejero2 USING gist (geom);


--
-- Name: sidx_vegasdg_cementerios; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_cementerios ON vegasdg_cementerios USING gist (geom);


--
-- Name: sidx_vegasdg_clinicas_dentales; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_clinicas_dentales ON vegasdg_clinicas_dentales USING gist (geom);


--
-- Name: sidx_vegasdg_col_y_gua; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_col_y_gua ON vegasdg_col_y_gua USING gist (geom);


--
-- Name: sidx_vegasdg_comida_llevar; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_comida_llevar ON vegasdg_comida_llevar USING gist (geom);


--
-- Name: sidx_vegasdg_consultorios_medicos; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_consultorios_medicos ON vegasdg_consultorios_medicos USING gist (geom);


--
-- Name: sidx_vegasdg_correos; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_correos ON vegasdg_correos USING gist (geom);


--
-- Name: sidx_vegasdg_edif_muni_actividades; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_edif_muni_actividades ON vegasdg_edif_muni_actividades USING gist (geom);


--
-- Name: sidx_vegasdg_edif_tramites_adm; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_edif_tramites_adm ON vegasdg_edif_tramites_adm USING gist (geom);


--
-- Name: sidx_vegasdg_estaciones_servicio; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_estaciones_servicio ON vegasdg_estaciones_servicio USING gist (geom);


--
-- Name: sidx_vegasdg_farmacias; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_farmacias ON vegasdg_farmacias USING gist (geom);


--
-- Name: sidx_vegasdg_ferreteria_electrodomestico; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_ferreteria_electrodomestico ON vegasdg_ferreteria_electrodomestico USING gist (geom);


--
-- Name: sidx_vegasdg_gimnasios; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_gimnasios ON vegasdg_gimnasios USING gist (geom);


--
-- Name: sidx_vegasdg_inmobiliaria; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_inmobiliaria ON vegasdg_inmobiliaria USING gist (geom);


--
-- Name: sidx_vegasdg_inst_deportivas; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_inst_deportivas ON vegasdg_inst_deportivas USING gist (geom);


--
-- Name: sidx_vegasdg_lugares_de_interes; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_lugares_de_interes ON vegasdg_lugares_de_interes USING gist (geom);


--
-- Name: sidx_vegasdg_monumentos_geom; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_monumentos_geom ON vegasdg_monumentos USING gist (geom);


--
-- Name: sidx_vegasdg_otros_comercios; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_otros_comercios ON vegasdg_otros_comercios USING gist (geom);


--
-- Name: sidx_vegasdg_panaderia_pasteleria; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_panaderia_pasteleria ON vegasdg_panaderia_pasteleria USING gist (geom);


--
-- Name: sidx_vegasdg_papeleria_prensa; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_papeleria_prensa ON vegasdg_papeleria_prensa USING gist (geom);


--
-- Name: sidx_vegasdg_peluqueria_estetica; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_peluqueria_estetica ON vegasdg_peluqueria_estetica USING gist (geom);


--
-- Name: sidx_vegasdg_reforma_conts_carp; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_reforma_conts_carp ON vegasdg_reforma_conts_carp USING gist (geom);


--
-- Name: sidx_vegasdg_ss_residencias; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_ss_residencias ON vegasdg_ss_residencias USING gist (geom);


--
-- Name: sidx_vegasdg_supermercados; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_supermercados ON vegasdg_supermercados USING gist (geom);


--
-- Name: sidx_vegasdg_talleres; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_talleres ON vegasdg_talleres USING gist (geom);


--
-- Name: sidx_vegasdg_tanatorios; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_tanatorios ON vegasdg_tanatorios USING gist (geom);


--
-- Name: sidx_vegasdg_tiendas_ropa; Type: INDEX; Schema: sepim_datos; Owner: sepim; Tablespace: 
--

CREATE INDEX sidx_vegasdg_tiendas_ropa ON vegasdg_tiendas_ropa USING gist (geom);


--
-- PostgreSQL database dump complete
--

