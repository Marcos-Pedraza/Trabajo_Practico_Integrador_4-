--
-- PostgreSQL database dump
--

\restrict CuynlJDQhySAhKt8Cqjg4gbHAIXFCgON0C3LZHyQ9VAtqf8y1yhd6IUIcgg3Mb5

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-10-07 17:11:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 16955)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 5158 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16957)
-- Name: articulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articulo (
    precioventa double precision NOT NULL,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    marca_id bigint,
    rubro_id bigint,
    codigo character varying(255),
    denominacion character varying(255),
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.articulo OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16956)
-- Name: articulo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articulo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articulo_id_seq OWNER TO postgres;

--
-- TOC entry 5160 (class 0 OID 0)
-- Dependencies: 219
-- Name: articulo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articulo_id_seq OWNED BY public.articulo.id;


--
-- TOC entry 222 (class 1259 OID 16968)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    condicion_iva_id bigint,
    domicilio_id bigint,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    cuit character varying(255),
    denominacion character varying(255),
    email character varying(255),
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16967)
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_seq OWNER TO postgres;

--
-- TOC entry 5161 (class 0 OID 0)
-- Dependencies: 221
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- TOC entry 224 (class 1259 OID 16980)
-- Name: condiciones_iva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condiciones_iva (
    codigoafip integer NOT NULL,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    denominacion character varying(255) NOT NULL,
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.condiciones_iva OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16979)
-- Name: condiciones_iva_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.condiciones_iva_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.condiciones_iva_id_seq OWNER TO postgres;

--
-- TOC entry 5162 (class 0 OID 0)
-- Dependencies: 223
-- Name: condiciones_iva_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.condiciones_iva_id_seq OWNED BY public.condiciones_iva.id;


--
-- TOC entry 226 (class 1259 OID 16992)
-- Name: contactos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contactos (
    id bigint NOT NULL,
    celular character varying(255),
    email character varying(255),
    telefono character varying(255)
);


ALTER TABLE public.contactos OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16991)
-- Name: contactos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contactos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contactos_id_seq OWNER TO postgres;

--
-- TOC entry 5163 (class 0 OID 0)
-- Dependencies: 225
-- Name: contactos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contactos_id_seq OWNED BY public.contactos.id;


--
-- TOC entry 228 (class 1259 OID 17002)
-- Name: domicilios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.domicilios (
    id bigint NOT NULL,
    nombrecalle character varying(255),
    numerocalle character varying(255),
    nombre_calle character varying(255),
    numero_calle character varying(255)
);


ALTER TABLE public.domicilios OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 17001)
-- Name: domicilios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.domicilios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.domicilios_id_seq OWNER TO postgres;

--
-- TOC entry 5164 (class 0 OID 0)
-- Dependencies: 227
-- Name: domicilios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.domicilios_id_seq OWNED BY public.domicilios.id;


--
-- TOC entry 230 (class 1259 OID 17012)
-- Name: factura_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura_venta (
    fechaemision date NOT NULL,
    importecobrado double precision NOT NULL,
    importesaldo double precision NOT NULL,
    importetotal double precision NOT NULL,
    caefechavencimiento timestamp(6) without time zone,
    cliente_id bigint,
    condicion_iva_id bigint NOT NULL,
    fechaanulacion timestamp(6) without time zone,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    numero bigint,
    punto_venta_id bigint NOT NULL,
    tipo_moneda_id bigint NOT NULL,
    cae character varying(255),
    estado character varying(255) NOT NULL,
    motivorechazo character varying(255),
    observaciones character varying(255),
    resultadoafip character varying(255),
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255),
    cae_fecha_vencimiento timestamp(6) without time zone,
    fecha_anulacion timestamp(6) without time zone,
    motivo_rechazo character varying(255),
    resultado_afip character varying(255)
);


ALTER TABLE public.factura_venta OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17030)
-- Name: factura_venta_detalle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.factura_venta_detalle (
    cantidad integer NOT NULL,
    preciounitario double precision NOT NULL,
    subtotal double precision NOT NULL,
    articulo_id bigint NOT NULL,
    factura_id bigint NOT NULL,
    id bigint NOT NULL
);


ALTER TABLE public.factura_venta_detalle OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 17029)
-- Name: factura_venta_detalle_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factura_venta_detalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.factura_venta_detalle_id_seq OWNER TO postgres;

--
-- TOC entry 5165 (class 0 OID 0)
-- Dependencies: 231
-- Name: factura_venta_detalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factura_venta_detalle_id_seq OWNED BY public.factura_venta_detalle.id;


--
-- TOC entry 229 (class 1259 OID 17011)
-- Name: factura_venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.factura_venta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.factura_venta_id_seq OWNER TO postgres;

--
-- TOC entry 5166 (class 0 OID 0)
-- Dependencies: 229
-- Name: factura_venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.factura_venta_id_seq OWNED BY public.factura_venta.id;


--
-- TOC entry 234 (class 1259 OID 17043)
-- Name: listas_precios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listas_precios (
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    codigo character varying(255) NOT NULL,
    denominacion character varying(255) NOT NULL,
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.listas_precios OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 17055)
-- Name: listas_precios_articulos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listas_precios_articulos (
    precioventa double precision NOT NULL,
    articulo_id bigint NOT NULL,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    listaprecio_id bigint NOT NULL,
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255),
    precio_venta double precision NOT NULL,
    lista_precio_id bigint NOT NULL
);


ALTER TABLE public.listas_precios_articulos OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 17054)
-- Name: listas_precios_articulos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listas_precios_articulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.listas_precios_articulos_id_seq OWNER TO postgres;

--
-- TOC entry 5167 (class 0 OID 0)
-- Dependencies: 235
-- Name: listas_precios_articulos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listas_precios_articulos_id_seq OWNED BY public.listas_precios_articulos.id;


--
-- TOC entry 233 (class 1259 OID 17042)
-- Name: listas_precios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listas_precios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.listas_precios_id_seq OWNER TO postgres;

--
-- TOC entry 5168 (class 0 OID 0)
-- Dependencies: 233
-- Name: listas_precios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listas_precios_id_seq OWNED BY public.listas_precios.id;


--
-- TOC entry 238 (class 1259 OID 17068)
-- Name: marcas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marcas (
    codigo integer NOT NULL,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    denominacion character varying(255) NOT NULL,
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.marcas OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 17067)
-- Name: marcas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marcas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.marcas_id_seq OWNER TO postgres;

--
-- TOC entry 5169 (class 0 OID 0)
-- Dependencies: 237
-- Name: marcas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marcas_id_seq OWNED BY public.marcas.id;


--
-- TOC entry 240 (class 1259 OID 17080)
-- Name: punto_venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.punto_venta (
    numero integer NOT NULL,
    id bigint NOT NULL,
    descripcion character varying(255)
);


ALTER TABLE public.punto_venta OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 17079)
-- Name: punto_venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.punto_venta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.punto_venta_id_seq OWNER TO postgres;

--
-- TOC entry 5170 (class 0 OID 0)
-- Dependencies: 239
-- Name: punto_venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.punto_venta_id_seq OWNED BY public.punto_venta.id;


--
-- TOC entry 242 (class 1259 OID 17089)
-- Name: rubros; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rubros (
    codigo integer NOT NULL,
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    denominacion character varying(255) NOT NULL,
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.rubros OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 17088)
-- Name: rubros_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rubros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rubros_id_seq OWNER TO postgres;

--
-- TOC entry 5171 (class 0 OID 0)
-- Dependencies: 241
-- Name: rubros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rubros_id_seq OWNED BY public.rubros.id;


--
-- TOC entry 244 (class 1259 OID 17101)
-- Name: tipos_monedas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipos_monedas (
    fechacreacion timestamp(6) without time zone,
    fechamodificacion timestamp(6) without time zone,
    id bigint NOT NULL,
    codigoafip character varying(255) NOT NULL,
    denominacion character varying(255) NOT NULL,
    simbolo character varying(255) NOT NULL,
    usuariocreacion character varying(255),
    usuariomodificacion character varying(255),
    fecha_creacion timestamp(6) without time zone,
    fecha_modificacion timestamp(6) without time zone,
    usuario_creacion character varying(255),
    usuario_modificacion character varying(255)
);


ALTER TABLE public.tipos_monedas OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 17100)
-- Name: tipos_monedas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipos_monedas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tipos_monedas_id_seq OWNER TO postgres;

--
-- TOC entry 5172 (class 0 OID 0)
-- Dependencies: 243
-- Name: tipos_monedas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipos_monedas_id_seq OWNED BY public.tipos_monedas.id;


--
-- TOC entry 246 (class 1259 OID 17114)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    apellido character varying(255) NOT NULL,
    clave character varying(255) NOT NULL,
    nombre character varying(255) NOT NULL,
    usuario character varying(255) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17113)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 5173 (class 0 OID 0)
-- Dependencies: 245
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4921 (class 2604 OID 16960)
-- Name: articulo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo ALTER COLUMN id SET DEFAULT nextval('public.articulo_id_seq'::regclass);


--
-- TOC entry 4922 (class 2604 OID 16971)
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- TOC entry 4923 (class 2604 OID 16983)
-- Name: condiciones_iva id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condiciones_iva ALTER COLUMN id SET DEFAULT nextval('public.condiciones_iva_id_seq'::regclass);


--
-- TOC entry 4924 (class 2604 OID 16995)
-- Name: contactos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactos ALTER COLUMN id SET DEFAULT nextval('public.contactos_id_seq'::regclass);


--
-- TOC entry 4925 (class 2604 OID 17005)
-- Name: domicilios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilios ALTER COLUMN id SET DEFAULT nextval('public.domicilios_id_seq'::regclass);


--
-- TOC entry 4926 (class 2604 OID 17015)
-- Name: factura_venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta ALTER COLUMN id SET DEFAULT nextval('public.factura_venta_id_seq'::regclass);


--
-- TOC entry 4927 (class 2604 OID 17033)
-- Name: factura_venta_detalle id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta_detalle ALTER COLUMN id SET DEFAULT nextval('public.factura_venta_detalle_id_seq'::regclass);


--
-- TOC entry 4928 (class 2604 OID 17046)
-- Name: listas_precios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios ALTER COLUMN id SET DEFAULT nextval('public.listas_precios_id_seq'::regclass);


--
-- TOC entry 4929 (class 2604 OID 17058)
-- Name: listas_precios_articulos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios_articulos ALTER COLUMN id SET DEFAULT nextval('public.listas_precios_articulos_id_seq'::regclass);


--
-- TOC entry 4930 (class 2604 OID 17071)
-- Name: marcas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas ALTER COLUMN id SET DEFAULT nextval('public.marcas_id_seq'::regclass);


--
-- TOC entry 4931 (class 2604 OID 17083)
-- Name: punto_venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.punto_venta ALTER COLUMN id SET DEFAULT nextval('public.punto_venta_id_seq'::regclass);


--
-- TOC entry 4932 (class 2604 OID 17092)
-- Name: rubros id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rubros ALTER COLUMN id SET DEFAULT nextval('public.rubros_id_seq'::regclass);


--
-- TOC entry 4933 (class 2604 OID 17104)
-- Name: tipos_monedas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_monedas ALTER COLUMN id SET DEFAULT nextval('public.tipos_monedas_id_seq'::regclass);


--
-- TOC entry 4934 (class 2604 OID 17117)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 5126 (class 0 OID 16957)
-- Dependencies: 220
-- Data for Name: articulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articulo (precioventa, fechacreacion, fechamodificacion, id, marca_id, rubro_id, codigo, denominacion, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
15000	2026-10-07 12:04:05.922	\N	1	1	1	A001	Teclado Mecanico	admin	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5128 (class 0 OID 16968)
-- Dependencies: 222
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (condicion_iva_id, domicilio_id, fechacreacion, fechamodificacion, id, cuit, denominacion, email, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
1	1	2026-10-07 12:04:05.933	\N	1	20-12345678-9	Empresa Test S.A.	cliente@test.com	admin	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5130 (class 0 OID 16980)
-- Dependencies: 224
-- Data for Name: condiciones_iva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.condiciones_iva (codigoafip, fechacreacion, fechamodificacion, id, denominacion, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
1	2026-10-07 12:04:05.928	\N	1	Responsable Inscripto	admin	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5132 (class 0 OID 16992)
-- Dependencies: 226
-- Data for Name: contactos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contactos (id, celular, email, telefono) FROM stdin;
\.


--
-- TOC entry 5134 (class 0 OID 17002)
-- Dependencies: 228
-- Data for Name: domicilios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.domicilios (id, nombrecalle, numerocalle, nombre_calle, numero_calle) FROM stdin;
1	San Martin	123	\N	\N
\.


--
-- TOC entry 5136 (class 0 OID 17012)
-- Dependencies: 230
-- Data for Name: factura_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura_venta (fechaemision, importecobrado, importesaldo, importetotal, caefechavencimiento, cliente_id, condicion_iva_id, fechaanulacion, fechacreacion, fechamodificacion, id, numero, punto_venta_id, tipo_moneda_id, cae, estado, motivorechazo, observaciones, resultadoafip, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion, cae_fecha_vencimiento, fecha_anulacion, motivo_rechazo, resultado_afip) FROM stdin;
2026-10-07	30000	0	30000	\N	1	1	\N	2026-10-07 12:04:05.941	\N	1	1001	1	1	\N	EMITIDA	\N	\N	\N	admin	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5138 (class 0 OID 17030)
-- Dependencies: 232
-- Data for Name: factura_venta_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.factura_venta_detalle (cantidad, preciounitario, subtotal, articulo_id, factura_id, id) FROM stdin;
2	15000	30000	1	1	1
\.


--
-- TOC entry 5140 (class 0 OID 17043)
-- Dependencies: 234
-- Data for Name: listas_precios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listas_precios (fechacreacion, fechamodificacion, id, codigo, denominacion, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
\.


--
-- TOC entry 5142 (class 0 OID 17055)
-- Dependencies: 236
-- Data for Name: listas_precios_articulos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listas_precios_articulos (precioventa, articulo_id, fechacreacion, fechamodificacion, id, listaprecio_id, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion, precio_venta, lista_precio_id) FROM stdin;
\.


--
-- TOC entry 5144 (class 0 OID 17068)
-- Dependencies: 238
-- Data for Name: marcas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marcas (codigo, fechacreacion, fechamodificacion, id, denominacion, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
20	2026-10-07 12:04:05.92	\N	1	Logitech	admin	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5146 (class 0 OID 17080)
-- Dependencies: 240
-- Data for Name: punto_venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.punto_venta (numero, id, descripcion) FROM stdin;
1	1	Punto Central 01
\.


--
-- TOC entry 5148 (class 0 OID 17089)
-- Dependencies: 242
-- Data for Name: rubros; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rubros (codigo, fechacreacion, fechamodificacion, id, denominacion, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
10	2026-10-07 12:04:05.915	\N	1	Perifericos	admin	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5150 (class 0 OID 17101)
-- Dependencies: 244
-- Data for Name: tipos_monedas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tipos_monedas (fechacreacion, fechamodificacion, id, codigoafip, denominacion, simbolo, usuariocreacion, usuariomodificacion, fecha_creacion, fecha_modificacion, usuario_creacion, usuario_modificacion) FROM stdin;
2026-10-07 12:04:05.93	\N	1	ARS	Pesos Argentinos	$	admin	\N	\N	\N	\N	\N
\.


--
-- TOC entry 5152 (class 0 OID 17114)
-- Dependencies: 246
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, apellido, clave, nombre, usuario) FROM stdin;
1	Perez	1234	Juan	admin
\.


--
-- TOC entry 5174 (class 0 OID 0)
-- Dependencies: 219
-- Name: articulo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articulo_id_seq', 1, true);


--
-- TOC entry 5175 (class 0 OID 0)
-- Dependencies: 221
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 1, true);


--
-- TOC entry 5176 (class 0 OID 0)
-- Dependencies: 223
-- Name: condiciones_iva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condiciones_iva_id_seq', 1, true);


--
-- TOC entry 5177 (class 0 OID 0)
-- Dependencies: 225
-- Name: contactos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contactos_id_seq', 1, false);


--
-- TOC entry 5178 (class 0 OID 0)
-- Dependencies: 227
-- Name: domicilios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.domicilios_id_seq', 1, true);


--
-- TOC entry 5179 (class 0 OID 0)
-- Dependencies: 231
-- Name: factura_venta_detalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factura_venta_detalle_id_seq', 1, true);


--
-- TOC entry 5180 (class 0 OID 0)
-- Dependencies: 229
-- Name: factura_venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.factura_venta_id_seq', 1, true);


--
-- TOC entry 5181 (class 0 OID 0)
-- Dependencies: 235
-- Name: listas_precios_articulos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listas_precios_articulos_id_seq', 1, false);


--
-- TOC entry 5182 (class 0 OID 0)
-- Dependencies: 233
-- Name: listas_precios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listas_precios_id_seq', 1, false);


--
-- TOC entry 5183 (class 0 OID 0)
-- Dependencies: 237
-- Name: marcas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marcas_id_seq', 1, true);


--
-- TOC entry 5184 (class 0 OID 0)
-- Dependencies: 239
-- Name: punto_venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.punto_venta_id_seq', 1, true);


--
-- TOC entry 5185 (class 0 OID 0)
-- Dependencies: 241
-- Name: rubros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rubros_id_seq', 1, true);


--
-- TOC entry 5186 (class 0 OID 0)
-- Dependencies: 243
-- Name: tipos_monedas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipos_monedas_id_seq', 1, true);


--
-- TOC entry 5187 (class 0 OID 0)
-- Dependencies: 245
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);


--
-- TOC entry 4936 (class 2606 OID 16966)
-- Name: articulo articulo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT articulo_pkey PRIMARY KEY (id);


--
-- TOC entry 4938 (class 2606 OID 16978)
-- Name: cliente cliente_domicilio_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_domicilio_id_key UNIQUE (domicilio_id);


--
-- TOC entry 4940 (class 2606 OID 16976)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 4942 (class 2606 OID 16990)
-- Name: condiciones_iva condiciones_iva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condiciones_iva
    ADD CONSTRAINT condiciones_iva_pkey PRIMARY KEY (id);


--
-- TOC entry 4944 (class 2606 OID 17000)
-- Name: contactos contactos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contactos
    ADD CONSTRAINT contactos_pkey PRIMARY KEY (id);


--
-- TOC entry 4946 (class 2606 OID 17010)
-- Name: domicilios domicilios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.domicilios
    ADD CONSTRAINT domicilios_pkey PRIMARY KEY (id);


--
-- TOC entry 4950 (class 2606 OID 17041)
-- Name: factura_venta_detalle factura_venta_detalle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta_detalle
    ADD CONSTRAINT factura_venta_detalle_pkey PRIMARY KEY (id);


--
-- TOC entry 4948 (class 2606 OID 17028)
-- Name: factura_venta factura_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta
    ADD CONSTRAINT factura_venta_pkey PRIMARY KEY (id);


--
-- TOC entry 4954 (class 2606 OID 17066)
-- Name: listas_precios_articulos listas_precios_articulos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios_articulos
    ADD CONSTRAINT listas_precios_articulos_pkey PRIMARY KEY (id);


--
-- TOC entry 4952 (class 2606 OID 17053)
-- Name: listas_precios listas_precios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios
    ADD CONSTRAINT listas_precios_pkey PRIMARY KEY (id);


--
-- TOC entry 4956 (class 2606 OID 17078)
-- Name: marcas marcas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marcas
    ADD CONSTRAINT marcas_pkey PRIMARY KEY (id);


--
-- TOC entry 4958 (class 2606 OID 17087)
-- Name: punto_venta punto_venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.punto_venta
    ADD CONSTRAINT punto_venta_pkey PRIMARY KEY (id);


--
-- TOC entry 4960 (class 2606 OID 17099)
-- Name: rubros rubros_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rubros
    ADD CONSTRAINT rubros_pkey PRIMARY KEY (id);


--
-- TOC entry 4962 (class 2606 OID 17112)
-- Name: tipos_monedas tipos_monedas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipos_monedas
    ADD CONSTRAINT tipos_monedas_pkey PRIMARY KEY (id);


--
-- TOC entry 4964 (class 2606 OID 17126)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4973 (class 2606 OID 17167)
-- Name: factura_venta_detalle fk1wbt2eo0dnhim6s1oh8qpaeuj; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta_detalle
    ADD CONSTRAINT fk1wbt2eo0dnhim6s1oh8qpaeuj FOREIGN KEY (articulo_id) REFERENCES public.articulo(id);


--
-- TOC entry 4975 (class 2606 OID 17198)
-- Name: listas_precios_articulos fk56lx40bm4vdvpykr8g1rutty1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios_articulos
    ADD CONSTRAINT fk56lx40bm4vdvpykr8g1rutty1 FOREIGN KEY (lista_precio_id) REFERENCES public.listas_precios(id);


--
-- TOC entry 4969 (class 2606 OID 17152)
-- Name: factura_venta fk59ike8yho2972gmg3w6r7qig1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta
    ADD CONSTRAINT fk59ike8yho2972gmg3w6r7qig1 FOREIGN KEY (condicion_iva_id) REFERENCES public.condiciones_iva(id);


--
-- TOC entry 4965 (class 2606 OID 17127)
-- Name: articulo fk5l62yj614pr3un397bbium3bb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk5l62yj614pr3un397bbium3bb FOREIGN KEY (marca_id) REFERENCES public.marcas(id);


--
-- TOC entry 4967 (class 2606 OID 17137)
-- Name: cliente fk69rj1dy1086yepehvdxs6m18o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk69rj1dy1086yepehvdxs6m18o FOREIGN KEY (condicion_iva_id) REFERENCES public.condiciones_iva(id);


--
-- TOC entry 4966 (class 2606 OID 17132)
-- Name: articulo fk765fk44jk2573jjsr7xxiuesy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articulo
    ADD CONSTRAINT fk765fk44jk2573jjsr7xxiuesy FOREIGN KEY (rubro_id) REFERENCES public.rubros(id);


--
-- TOC entry 4970 (class 2606 OID 17162)
-- Name: factura_venta fk7qg75lljm10qlvx9uppucjw5n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta
    ADD CONSTRAINT fk7qg75lljm10qlvx9uppucjw5n FOREIGN KEY (tipo_moneda_id) REFERENCES public.tipos_monedas(id);


--
-- TOC entry 4976 (class 2606 OID 17182)
-- Name: listas_precios_articulos fka2axsqv3gb0bqivrjxft5lu5o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios_articulos
    ADD CONSTRAINT fka2axsqv3gb0bqivrjxft5lu5o FOREIGN KEY (listaprecio_id) REFERENCES public.listas_precios(id);


--
-- TOC entry 4971 (class 2606 OID 17157)
-- Name: factura_venta fkb6wyq1b7gxxh5p9qbahgww9q5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta
    ADD CONSTRAINT fkb6wyq1b7gxxh5p9qbahgww9q5 FOREIGN KEY (punto_venta_id) REFERENCES public.punto_venta(id);


--
-- TOC entry 4968 (class 2606 OID 17142)
-- Name: cliente fkdt45kra5slvd0d57eaaipm31a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fkdt45kra5slvd0d57eaaipm31a FOREIGN KEY (domicilio_id) REFERENCES public.domicilios(id);


--
-- TOC entry 4972 (class 2606 OID 17147)
-- Name: factura_venta fkhwuwudrv0r4sflktrji97ay8m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta
    ADD CONSTRAINT fkhwuwudrv0r4sflktrji97ay8m FOREIGN KEY (cliente_id) REFERENCES public.cliente(id);


--
-- TOC entry 4977 (class 2606 OID 17177)
-- Name: listas_precios_articulos fkiybch8evc43v6flyycqk1bigt; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listas_precios_articulos
    ADD CONSTRAINT fkiybch8evc43v6flyycqk1bigt FOREIGN KEY (articulo_id) REFERENCES public.articulo(id);


--
-- TOC entry 4974 (class 2606 OID 17172)
-- Name: factura_venta_detalle fkq8ub7hx33xfj7yfaj4059npba; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.factura_venta_detalle
    ADD CONSTRAINT fkq8ub7hx33xfj7yfaj4059npba FOREIGN KEY (factura_id) REFERENCES public.factura_venta(id);


--
-- TOC entry 5159 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2026-10-07 17:11:06

--
-- PostgreSQL database dump complete
--

\unrestrict CuynlJDQhySAhKt8Cqjg4gbHAIXFCgON0C3LZHyQ9VAtqf8y1yhd6IUIcgg3Mb5

