--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: auto_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auto_data (
    auto_id integer NOT NULL,
    body_id integer NOT NULL,
    mark_id integer NOT NULL,
    model_id integer NOT NULL,
    "USD" integer,
    "UAH" integer,
    "EUR" integer,
    year integer,
    status_id integer,
    race character varying,
    race_int integer,
    fuel_id integer NOT NULL,
    fuel_int double precision,
    gearbox_id integer NOT NULL,
    drive_id integer,
    drive_name character varying,
    category_id integer NOT NULL,
    damage boolean,
    href character varying,
    "VIN" character varying,
    state_id integer NOT NULL,
    city_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE public.auto_data OWNER TO postgres;

--
-- Name: auto_data_auto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auto_data_auto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auto_data_auto_id_seq OWNER TO postgres;

--
-- Name: auto_data_auto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auto_data_auto_id_seq OWNED BY public.auto_data.auto_id;


--
-- Name: bodystyles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bodystyles (
    id integer NOT NULL,
    category_id integer NOT NULL,
    name character varying,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.bodystyles OWNER TO postgres;

--
-- Name: bodystyles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bodystyles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bodystyles_id_seq OWNER TO postgres;

--
-- Name: bodystyles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bodystyles_id_seq OWNED BY public.bodystyles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying,
    state_id integer NOT NULL,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.countries_id_seq OWNER TO postgres;

--
-- Name: countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;


--
-- Name: fuel_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fuel_types (
    id integer NOT NULL,
    name character varying,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.fuel_types OWNER TO postgres;

--
-- Name: fuel_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fuel_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuel_types_id_seq OWNER TO postgres;

--
-- Name: fuel_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fuel_types_id_seq OWNED BY public.fuel_types.id;


--
-- Name: gearboxes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gearboxes (
    id integer NOT NULL,
    name character varying,
    category_id integer NOT NULL,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.gearboxes OWNER TO postgres;

--
-- Name: gearboxes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gearboxes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gearboxes_id_seq OWNER TO postgres;

--
-- Name: gearboxes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gearboxes_id_seq OWNED BY public.gearboxes.id;


--
-- Name: main_market_data_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.main_market_data_view AS
SELECT
    NULL::integer AS auto_id,
    NULL::integer AS year,
    NULL::character varying AS mark_name,
    NULL::integer AS mark_id,
    NULL::character varying AS model_name,
    NULL::integer AS model_id,
    NULL::integer AS price,
    NULL::character varying AS bodystyle,
    NULL::integer AS body_id;


ALTER TABLE public.main_market_data_view OWNER TO postgres;

--
-- Name: marks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marks (
    id integer NOT NULL,
    category_id integer NOT NULL,
    name character varying,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.marks OWNER TO postgres;

--
-- Name: marks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marks_id_seq OWNER TO postgres;

--
-- Name: marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marks_id_seq OWNED BY public.marks.id;


--
-- Name: models; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.models (
    id integer NOT NULL,
    name character varying,
    category_id integer NOT NULL,
    mark_id integer NOT NULL,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.models OWNER TO postgres;

--
-- Name: models_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.models_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.models_id_seq OWNER TO postgres;

--
-- Name: models_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;


--
-- Name: old_count_by_mark_model; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.old_count_by_mark_model AS
 SELECT count(auto_data.auto_id) AS count,
    marks.id AS mark_id,
    marks.name AS mark_name,
    models.id AS model_id,
    models.name AS model_name
   FROM ((public.auto_data
     LEFT JOIN public.marks ON ((auto_data.mark_id = marks.id)))
     LEFT JOIN public.models ON ((auto_data.model_id = models.id)))
  GROUP BY marks.name, models.name, marks.id, models.id
  ORDER BY (count(auto_data.auto_id)) DESC;


ALTER TABLE public.old_count_by_mark_model OWNER TO postgres;

--
-- Name: old_count_marks; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.old_count_marks AS
 SELECT count(auto_data.auto_id) AS count_marks,
    marks.name
   FROM (public.auto_data
     LEFT JOIN public.marks ON ((marks.id = auto_data.mark_id)))
  GROUP BY marks.name
  ORDER BY (count(auto_data.auto_id)) DESC;


ALTER TABLE public.old_count_marks OWNER TO postgres;

--
-- Name: old_marks_price_year; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.old_marks_price_year AS
SELECT
    NULL::bigint AS count,
    NULL::character varying AS mark_name,
    NULL::integer AS avg_price,
    NULL::integer AS avg_year;


ALTER TABLE public.old_marks_price_year OWNER TO postgres;

--
-- Name: scrapper_info; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.scrapper_info (
    id integer NOT NULL,
    last_page integer,
    last_scrapper_date timestamp without time zone
);


ALTER TABLE public.scrapper_info OWNER TO postgres;

--
-- Name: scrapper_info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.scrapper_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scrapper_info_id_seq OWNER TO postgres;

--
-- Name: scrapper_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.scrapper_info_id_seq OWNED BY public.scrapper_info.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.states (
    id integer NOT NULL,
    name character varying,
    added_by_sync boolean,
    created_at timestamp without time zone
);


ALTER TABLE public.states OWNER TO postgres;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO postgres;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- Name: auto_data auto_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data ALTER COLUMN auto_id SET DEFAULT nextval('public.auto_data_auto_id_seq'::regclass);


--
-- Name: bodystyles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bodystyles ALTER COLUMN id SET DEFAULT nextval('public.bodystyles_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);


--
-- Name: fuel_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fuel_types ALTER COLUMN id SET DEFAULT nextval('public.fuel_types_id_seq'::regclass);


--
-- Name: gearboxes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gearboxes ALTER COLUMN id SET DEFAULT nextval('public.gearboxes_id_seq'::regclass);


--
-- Name: marks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks ALTER COLUMN id SET DEFAULT nextval('public.marks_id_seq'::regclass);


--
-- Name: models id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);


--
-- Name: scrapper_info id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scrapper_info ALTER COLUMN id SET DEFAULT nextval('public.scrapper_info_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- Data for Name: auto_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auto_data (auto_id, body_id, mark_id, model_id, "USD", "UAH", "EUR", year, status_id, race, race_int, fuel_id, fuel_int, gearbox_id, drive_id, drive_name, category_id, damage, href, "VIN", state_id, city_id, created_at, updated_at) FROM stdin;
34621243	5	28	269	10200	379542	9427	2007	0	220 тыс. км	220	4	2	2	1	\N	1	f	/auto_honda_cr_v_34621243.html	SHSRE58707U025049	11	11	2023-06-08 18:07:48.218287	2023-06-08 18:07:48.21829
34621612	3	28	265	5950	221518	5502	2008	0	290 тыс. км	290	4	1.8	2	2	\N	1	f	/auto_honda_civic_34621612.html	NLAFD767x8Wxxxx56	10	612	2023-06-08 19:11:55.44319	2023-06-08 19:11:55.443191
34621603	3	6	49	14500	539835	13408	2012	0	269 тыс. км	269	1	3	2	1	\N	1	f	/auto_audi_a6_34621603.html	WAUZZZ4GxCNxxxx06	10	210	2023-06-08 19:11:55.453163	2023-06-08 19:11:55.453164
34621629	14	76	27504	3000	111689	2774	2000	0	36 тыс. км	36	1	0	1	6	\N	2	f	/auto_suzuki_gsx_34621629.html		1	1	2023-06-08 19:11:55.454586	2023-06-08 19:11:55.454588
34621601	4	62	35649	12500	465374	11559	2020	0	27 тыс. км	27	1	0.9	4	2	\N	1	f	/auto_renault_sandero_stepway_34621601.html	VF15SRA1x65xxxx49	10	10	2023-06-08 19:11:55.459215	2023-06-08 19:11:55.459222
34621424	3	52	457	4900	182426	4531	2007	0	151 тыс. км	151	1	1.6	2	2	\N	1	f	/auto_mitsubishi_lancer_34621424.html	JMBSNCS3x7Uxxxx18	12	355	2023-06-08 19:11:55.473568	2023-06-08 19:11:55.473568
34621610	4	84	35449	10950	407668	10125	2014	0	157 тыс. км	157	1	1.8	2	2	\N	1	f	/auto_volkswagen_golf_34621610.html	3VW217AUxFMxxxx09	22	161	2023-06-08 19:11:55.468733	2023-06-08 19:11:55.468735
34621615	3	49	38066	8299	308971	7674	2012	0	147 тыс. км	147	1	1.8	1	2	\N	1	f	/auto_mg_6_34621615.html	LSJW24G3xCSxxxx85	19	19	2023-06-08 19:11:55.472094	2023-06-08 19:11:55.472096
34621620	198	48	48342	5500	204764	5086	1990	0	740 тыс. км	740	2	6	1	3	\N	6	f	/auto_mercedes_benz_ln_series_34621620.html		10	10	2023-06-08 19:11:55.473314	2023-06-08 19:11:55.473315
34621624	4	67	2053	9000	335070	8322	2009	0	160 тыс. км	160	1	2	2	2	\N	1	f	/auto_seat_altea_34621624.html	VSSZZZ5Px8Zxxxx18	10	10	2023-06-08 19:11:55.680591	2023-06-08 19:11:55.680592
34620475	3	18	161	850	31629	786	2008	13	200 тыс. км	200	4	1.4	1	2	\N	1	f	/auto_daewoo_lanos_34620475.html	Y6DTF699P8W389087	10	10	2023-06-08 16:10:48.865731	2023-06-08 16:10:48.865735
34446302	2	70	652	12550	466986	11599	2014	0	236 тыс. км	236	2	2	1	2	\N	1	f	/auto_skoda_octavia_34446302.html	TMBJJ7NE7E0178249	9	9	2023-06-08 16:10:49.190958	2023-06-08 16:10:49.190959
32926843	310	1696	60810	51000	1897710	47136	2005	0	4 тыс. км	4	2	7.5	2	2	\N	10	f	/auto_new_holland_tx_66_32926843.html		1	1	2023-06-08 16:10:49.262891	2023-06-08 16:10:49.262893
34621142	2	85	3197	7500	279225	6937	2010	0	188 тыс. км	188	2	1.6	1	2	\N	1	f	/auto_volvo_v50_34621142.html	YV1MW76ExA2xxxx09	18	18	2023-06-08 17:55:29.349076	2023-06-08 17:55:29.349078
33720724	3	6	49	9800	364853	9064	2004	0	300 тыс. км	300	2	3	2	1	\N	1	f	/auto_audi_a6_33720724.html	WAUZZZ4Fx5Nxxxx66	2	2	2023-06-08 17:55:29.429364	2023-06-08 17:55:29.429365
34621133	8	23	34528	13950	519358	12903	2017	0	317 тыс. км	317	2	1.6	1	2	\N	1	f	/auto_fiat_talento_pass_34621133.html	ZFAFFL00xG5xxxx04	2	2	2023-06-08 17:55:29.435784	2023-06-08 17:55:29.435786
34621117	3	2233	47858	36000	1340280	33298	2019	0	32 тыс. км	32	6	0	2	1	\N	1	t	/auto_tesla_model_3_34621117.html	5YJ3E1EBxKFxxxx09	12	12	2023-06-08 17:55:29.43665	2023-06-08 17:55:29.436651
34621139	4	62	42148	9600	357407	8879	2015	0	150 тыс. км	150	6	0	2	2	\N	1	f	/auto_renault_zoe_34621139.html	VF1AGVYAx52xxxx66	4	499	2023-06-08 17:55:29.43656	2023-06-08 17:55:29.436562
34621129	5	9	96	9800	364853	9064	2005	0	400 тыс. км	400	2	3	2	1	\N	1	f	/auto_bmw_x5_34621129.html	WBAFB710x0Lxxxx13	10	10	2023-06-08 17:55:29.427598	2023-06-08 17:55:29.427599
34621143	8	48	35252	3400	126581	3144	1999	0	335 тыс. км	335	2	2.2	1	2	\N	1	f	/auto_mercedes_benz_vito_34621143.html	VSA63809x13xxxx50	10	210	2023-06-08 17:55:29.440595	2023-06-08 17:55:29.440596
34621121	4	24	239	7800	290394	7214	2014	0	158 тыс. км	158	1	1.6	2	\N	\N	1	f	/auto_ford_fiesta_34621121.html		12	12	2023-06-08 17:55:29.439394	2023-06-08 17:55:29.439395
34621113	5	33	327	28500	1061055	26361	2019	0	64 тыс. км	64	2	2	2	1	\N	1	f	/auto_kia_sportage_34621113.html	U5YPH813xKLxxxx47	10	10	2023-06-08 17:55:29.440839	2023-06-08 17:55:29.44084
34443749	197	84	64461	25800	960533	23864	2020	0	110 тыс. км	110	2	0	1	2	\N	6	f	/auto_volkswagen_transporter_34443749.html	WV1ZZZ7HxMHxxxx74	10	10	2023-06-08 17:55:29.441692	2023-06-08 17:55:29.441693
34621135	3	79	702	9500	353684	8787	2011	0	270 тыс. км	270	1	1.6	1	2	\N	1	f	/auto_toyota_corolla_34621135.html	JTNBV58Ex0Jxxxx06	7	7	2023-06-08 17:55:29.442686	2023-06-08 17:55:29.442687
34621043	5	6	44183	26550	988456	24557	2013	0	281 тыс. км	281	2	3	2	1	\N	1	f	/auto_audi_sq5_34621043.html	WAUZZZ8RxEAxxxx62	15	15	2023-06-08 17:55:29.469799	2023-06-08 17:55:29.469802
34621118	8	62	588	3690	137378	3413	2004	0	220 тыс. км	220	2	1.9	1	2	\N	1	f	/auto_renault_scenic_34621118.html	VF1JMRG0x32xxxx66	3	3	2023-06-08 17:55:29.47256	2023-06-08 17:55:29.472563
34621127	2	62	586	12999	483952	12023	2017	0	193 тыс. км	193	2	1.5	1	2	\N	1	f	/auto_renault_megane_34621127.html	VF1RFB00x59xxxx34	8	8	2023-06-08 17:55:29.473415	2023-06-08 17:55:29.473417
32782091	8	62	60014	12000	446520	11091	2013	0	464 тыс. км	464	2	2	1	2	\N	1	f	/auto_renault_trafic_32782091.html	VF1JLB7BхDYхххх92	18	55	2023-06-08 17:55:29.648517	2023-06-08 17:55:29.64852
34621134	4	84	35449	4750	176748	4390	1998	13	345 тыс. км	345	2	1.9	1	2	\N	1	f	/auto_volkswagen_golf_34621134.html		9	9	2023-06-08 17:55:29.649592	2023-06-08 17:55:29.649594
34621126	2	24	240	10750	400008	9936	2015	8	197 тыс. км	197	2	2	2	2	\N	1	f	/auto_ford_focus_34621126.html	WF06XXGCC6EG65307	18	18	2023-06-08 17:55:29.653002	2023-06-08 17:55:29.653005
32393988	3	48	423	5700	212097	5268	2005	0	196 тыс. км	196	1	1.7	2	\N	\N	1	f	/auto_mercedes_benz_a_class_32393988.html	WDD16903х1Jхххх04	15	15	2023-06-08 17:55:29.667245	2023-06-08 17:55:29.667247
34585483	5	28	269	19950	742340	18439	2013	0	225 тыс. км	225	2	2.2	2	1	\N	1	f	/auto_honda_cr_v_34585483.html	SHSRE689хDUхххх03	15	200	2023-06-08 17:55:29.709216	2023-06-08 17:55:29.709218
34605586	3	13	1038	3500	130235	3235	2006	0	225 тыс. км	225	1	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34605586.html	KL1SF69YE7B067665	10	10	2023-06-08 17:55:29.715199	2023-06-08 17:55:29.715201
33548801	5	13	1049	15500	576755	14326	2017	0	75 тыс. км	75	1	1.5	2	2	\N	1	t	/auto_chevrolet_equinox_33548801.html	2GNAXHEV2J6141350	2	2	2023-06-08 17:55:29.721678	2023-06-08 17:55:29.72168
33577664	4	84	35449	9999	372063	9242	2012	0	215 тыс. км	215	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_33577664.html	WVWZZZAUZDW000582	11	11	2023-06-08 17:55:29.724206	2023-06-08 17:55:29.724208
32665527	197	62	60014	13500	502335	12477	2017	0	377 тыс. км	377	2	1.6	1	2	\N	6	f	/auto_renault_trafic_32665527.html	VF1FL000658030256	18	55	2023-06-08 17:55:29.729553	2023-06-08 17:55:29.729556
32434291	3	84	39690	11200	416752	10352	2013	0	122 тыс. км	122	4	2.5	2	2	\N	1	t	/auto_volkswagen_passat_32434291.html	1VWBH7A33DC098557	15	15	2023-06-08 17:55:29.733609	2023-06-08 17:55:29.733611
34621602	3	79	702	6399	238234	5917	2009	0	160 тыс. км	160	1	1.6	2	\N	\N	1	f	/auto_toyota_corolla_34621602.html		18	18	2023-06-08 19:11:55.684573	2023-06-08 19:11:55.684574
34621622	8	62	588	5650	210349	5224	2007	0	183 тыс. км	183	1	1.6	1	2	\N	1	f	/auto_renault_scenic_34621622.html	VF1JM1R0x37xxxx36	18	18	2023-06-08 19:11:55.687496	2023-06-08 19:11:55.687498
33160525	3	47	1692	10900	405806	10079	2014	0	225 тыс. км	225	1	2	2	2	\N	1	t	/auto_mazda_3_33160525.html	3MZBM1V7xEMxxxx91	11	11	2023-06-08 19:11:55.689621	2023-06-08 19:11:55.689622
34621559	3	33	1311	5400	200934	4991	2007	13	200 тыс. км	200	1	2	2	2	\N	1	f	/auto_kia_cerato_34621559.html	Y6LFE223х7Lхххх30	10	10	2023-06-08 19:11:55.759263	2023-06-08 19:11:55.759264
34621577	5	59	546	77000	2865170	71167	2017	13	90 тыс. км	90	1	2.9	3	1	\N	1	f	/auto_porsche_cayenne_34621577.html	WP1ZZZ9YZJDA60332	10	10	2023-06-08 19:11:55.760706	2023-06-08 19:11:55.760708
34621625	198	48	35249	21999	818583	20332	2016	8	225 тыс. км	225	2	0	2	\N	\N	6	f	/auto_mercedes_benz_sprinter_34621625.html	WDB9061331N685700	9	9	2023-06-08 19:11:55.769708	2023-06-08 19:11:55.76971
34525855	5	59	546	29500	1097695	27265	2013	0	140 тыс. км	140	2	3	2	1	\N	1	f	/auto_porsche_cayenne_34525855.html	WP1ZZZ92ZELA35775	10	10	2023-06-08 19:11:55.845496	2023-06-08 19:11:55.845498
27814482	5	55	24932	11200	416752	10352	2011	0	185 тыс. км	185	1	1.6	5	2	\N	1	t	/auto_nissan_juke_27814482.html	JN8AF5MRхBTхххх36	24	24	2023-06-08 19:11:55.955055	2023-06-08 19:11:55.955056
34470410	3	135	1946	15300	570690	14073	2014	0	102 тыс. км	102	5	2	2	2	\N	1	t	/auto_lincoln_mkz_34470410.html	3LN6L2LUxFRxxxx13	10	10	2023-06-13 18:33:35.753777	2023-06-13 18:33:35.753779
34648472	449	58	37765	8100	301401	7486	2010	0	230 тыс. км	230	2	2	1	2	\N	1	f	/auto_peugeot_5008_34648472.html		9	9	2023-06-13 18:33:35.914307	2023-06-13 18:33:35.914309
34648477	4	88	854	1930	71815	1784	2006	0	250 тыс. км	250	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2109_34648477.html	Y6D21093060018808	5	5	2023-06-13 18:33:35.956205	2023-06-13 18:33:35.956207
34648189	6	84	3006	10500	390705	9705	2013	0	162 тыс. км	162	1	1.8	4	2	\N	1	f	/auto_volkswagen_cc_passat_cc_34648189.html	WVWZZZ3CZDE537500	10	10	2023-06-13 18:33:35.95949	2023-06-13 18:33:35.959491
34648455	315	48	432	6500	241865	6008	2005	0	385 тыс. км	385	2	2.21	1	3	\N	1	f	/auto_mercedes_benz_sl_class_34648455.html	WDB9036721R844309	7	7	2023-06-13 18:33:35.963604	2023-06-13 18:33:35.963605
34648441	3	84	39690	3500	130235	3235	2000	13	400 тыс. км	400	2	1.9	1	2	\N	1	f	/auto_volkswagen_passat_34648441.html		15	196	2023-06-13 18:33:36.023218	2023-06-13 18:33:36.023221
34648447	5	79	35000	85000	3162850	78561	2021	13	22 тыс. км	22	1	4.6	2	\N	\N	1	f	/auto_toyota_land_cruiser_34648447.html		11	96	2023-06-13 18:33:36.186197	2023-06-13 18:33:36.186198
34649277	8	62	60014	2900	107909	2680	2005	13	2 тыс. км	2	2	1.9	1	\N	\N	1	f	/auto_renault_trafic_34649277.html	VF1FLACAх5Yхххх33	9	9	2023-06-13 20:40:44.821132	2023-06-13 20:40:44.821133
34650435	3	58	40472	7299	272252	6714	2017	0	390 тыс. км	390	2	1.6	1	2	\N	1	f	/auto_peugeot_301_34650435.html		15	15	2023-06-13 23:53:24.553906	2023-06-13 23:53:24.553907
34650441	3	38	352	19000	708700	17477	2012	0	235 тыс. км	235	0	3.5	2	1	\N	1	f	/auto_lexus_gs_34650441.html	JTHCE1BLx05xxxx87	11	11	2023-06-13 23:53:24.555344	2023-06-13 23:53:24.555345
34650445	2	84	35449	5950	221400	5499	2008	13	275 тыс. км	275	2	1.9	1	2	\N	1	f	/auto_volkswagen_golf_34650445.html	WVWZZZ1KZ9M282048	22	162	2023-06-13 23:53:24.723458	2023-06-13 23:53:24.72346
34481115	5	37	349	6790	253470	6243	2005	0	285 тыс. км	285	2	2	1	1	\N	1	f	/auto_land_rover_freelander_34481115.html	SALLNAAEx5Axxxx64	5	5	2023-06-14 17:04:37.145118	2023-06-14 17:04:37.145119
34656254	3	9	2319	7600	282796	7024	2000	13	420 тыс. км	420	2	2.9	1	3	\N	1	f	/auto_bmw_5_series_34656254.html	WBADL71070GM98458	1	1	2023-06-14 22:12:37.937267	2023-06-14 22:12:37.937269
34465958	307	6	32378	27900	1038159	25786	2015	0	133 тыс. км	133	1	3	2	1	\N	1	t	/auto_audi_a7_sportback_34465958.html	WAU2GAFC5GN036871	10	226	2023-06-14 22:12:38.010626	2023-06-14 22:12:38.010627
34317059	212	115	1674	28500	1060485	26341	2014	0	740 тыс. км	740	2	13	1	3	\N	6	f	/auto_daf_xf_34317059.html	XLRTEH4300G018310	4	4	2023-06-14 22:12:38.815454	2023-06-14 22:12:38.815462
34483205	4	52	452	6200	231446	5695	2010	0	165 тыс. км	165	1	1.3	1	\N	\N	1	f	/auto_mitsubishi_colt_34483205.html	XMCXNZ34x9Fxxxx02	4	498	2023-06-14 22:12:39.067721	2023-06-14 22:12:39.067725
34483283	2	84	39690	7000	260470	6470	2006	0	303 тыс. км	303	1	2	2	1	\N	1	f	/auto_volkswagen_passat_34483283.html	WVWZZZ3Cх7Eхххх95	1	1	2023-06-14 22:12:39.307205	2023-06-14 22:12:39.307207
34656215	5	52	1485	10499	390668	9704	2008	13	2 тыс. км	2	2	2.2	1	1	\N	1	f	/auto_mitsubishi_outlander_34656215.html	JMBXJCW7W8Z005566	5	291	2023-06-14 22:12:39.317844	2023-06-14 22:12:39.317845
34656219	3	79	698	10499	390668	9704	2012	13	200 тыс. км	200	1	2.5	2	2	\N	1	f	/auto_toyota_camry_34656219.html	6T1BF9FK4DX420846	3	433	2023-06-14 22:12:39.347353	2023-06-14 22:12:39.347355
19026569	311	3246	38616	3762	140000	3477	2006	0	100 тыс. км	100	6	0	5	3	\N	10	f	/auto_ps_10_19026569.html		19	19	2023-06-14 22:12:39.412462	2023-06-14 22:12:39.412468
34483182	9	89	35257	650	24187	601	2007	0	250 тыс. км	250	4	1.2	1	2	\N	1	f	/auto_zaz_1102_tavriya_34483182.html	Y6D11055770041475	12	12	2023-06-14 22:12:39.775707	2023-06-14 22:12:39.775712
34483142	449	84	2093	12900	481557	11849	2014	0	255 тыс. км	255	2	1.6	1	2	\N	1	f	/auto_volkswagen_touran_34483142.html	WVGZZZ1TxEWxxxx62	12	12	2023-06-14 22:12:40.1277	2023-06-14 22:12:40.127706
34483208	4	56	1512	4300	160519	3949	2001	0	130 тыс. км	130	1	1.2	4	2	\N	1	f	/auto_opel_corsa_34483208.html	W0L0XCF6x14xxxx96	10	212	2023-06-14 22:12:40.135939	2023-06-14 22:12:40.13594
34483082	2	84	39690	10499	390668	9704	2013	0	335 тыс. км	335	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34483082.html	WVWZZZ3CZEE019947	3	3	2023-06-14 22:12:40.440975	2023-06-14 22:12:40.440981
34483080	307	6	62310	15600	580476	14418	2012	0	201 тыс. км	201	2	2	2	2	\N	1	f	/auto_audi_a5_sportback_34483080.html	WAUZZZ8TхDAхххх46	15	197	2023-06-14 22:12:40.567152	2023-06-14 22:12:40.567159
34482999	3	79	696	11300	420473	10444	2012	0	152 тыс. км	152	4	1.8	1	2	\N	1	f	/auto_toyota_avensis_34482999.html	SB1BG76L50E076562	4	493	2023-06-14 22:12:41.512565	2023-06-14 22:12:41.512579
34483063	307	70	652	4999	186013	4620	2003	0	280 тыс. км	280	1	2	1	2	\N	1	f	/auto_skoda_octavia_34483063.html	TMBBE41Uх38хххх96	19	318	2023-06-14 22:12:41.66337	2023-06-14 22:12:41.663379
34483004	3	56	1523	950	35463	872	1990	0	340 тыс. км	340	1	2	1	2	\N	1	f	/auto_opel_vectra_34483004.html	W0L00008xL1xxxx05	18	55	2023-06-14 22:12:41.898986	2023-06-14 22:12:41.898994
34483078	5	37	349	10500	390705	9705	2010	0	249 тыс. км	249	2	2.2	2	1	\N	1	f	/auto_land_rover_freelander_34483078.html	SALFA2BB3AH206068	10	10	2023-06-14 22:12:42.164069	2023-06-14 22:12:42.164077
34483094	5	88	29496	4200	156282	3882	1998	0	339 тыс. км	339	4	1.7	1	1	\N	1	f	/auto_vaz_lada_21213_niva_34483094.html	XTA212120W1347773	24	518	2023-06-14 22:12:42.167781	2023-06-14 22:12:42.167789
34482987	3	48	428	4000	148840	3697	2001	0	340 тыс. км	340	2	2.2	2	3	\N	1	f	/auto_mercedes_benz_e_class_34482987.html	WDB2100061B375787	22	157	2023-06-14 22:12:42.317393	2023-06-14 22:12:42.317398
34483091	3	18	1642	2000	74420	1848	2006	0	205 тыс. км	205	1	1.3	1	\N	\N	1	f	/auto_daewoo_sens_34483091.html	Y6DT1311060283580	16	246	2023-06-14 22:12:42.653562	2023-06-14 22:12:42.653567
34656362	4	89	35257	400	14884	370	1992	0	100 тыс. км	100	1	1.1	1	2	\N	1	f	/auto_zaz_1102_tavriya_34656362.html	XTE11021хN0хххх46	5	5	2023-06-14 22:29:27.897401	2023-06-14 22:29:27.897402
34307032	3	23	230	9000	334890	8318	2016	0	70 тыс. км	70	1	1.4	1	2	\N	1	f	/auto_fiat_tipo_34307032.html	ZFA35600006F14325	10	10	2023-06-14 22:29:27.93371	2023-06-14 22:29:27.933711
34656352	207	62	46833	15700	584197	14511	2014	13	640 тыс. км	640	2	2.3	1	2	\N	6	f	/auto_renault_master_34656352.html	VF1VBU4V250537120	7	7	2023-06-14 22:29:27.945677	2023-06-14 22:29:27.945678
34656856	3	9	3219	7500	279075	6932	2005	8	270 тыс. км	270	4	2	2	3	\N	1	f	/auto_bmw_3_series_34656856.html	WBAVA71020PS00344	16	16	2023-06-15 00:16:56.096843	2023-06-15 00:16:56.096845
34621576	2	84	39690	9400	349774	8688	2011	13	302 тыс. км	302	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34621576.html	WVWZZZ3CZBE344192	18	55	2023-06-08 19:11:55.765316	2023-06-08 19:11:55.765318
34275901	4	70	649	4500	167445	4159	2008	0	196 тыс. км	196	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34275901.html	TMBBC25J783211901	5	5	2023-06-08 19:12:15.073297	2023-06-08 19:12:15.073298
34446294	4	58	526	4300	160003	3974	2006	0	160 тыс. км	160	4	2	1	2	\N	1	f	/auto_peugeot_307_34446294.html	VF33CRFJC84728094	5	307	2023-06-08 19:12:15.124467	2023-06-08 19:12:15.124468
34446253	5	73	3187	8000	297680	7394	2011	0	227 тыс. км	227	2	2	1	1	\N	1	f	/auto_ssangyong_kyron_34446253.html	Y7WDJEM00B0010910	10	210	2023-06-08 19:12:15.129956	2023-06-08 19:12:15.129957
34648458	5	29	51933	17000	632570	15712	2019	13	50 тыс. км	50	1	2	2	1	\N	1	t	/auto_hyundai_kona_34648458.html	KM8K2CAA1KU358176	12	643	2023-06-13 18:33:35.96143	2023-06-13 18:33:35.961431
34648442	4	89	35257	1500	55815	1386	1997	13	176 тыс. км	176	1	1.1	1	2	\N	1	f	/auto_zaz_1102_tavriya_34648442.html	Y6D11020750412201	4	4	2023-06-13 18:33:36.006981	2023-06-13 18:33:36.006982
34648457	212	115	18379	26500	986065	24492	2006	8	9000 тыс. км	9000	0	0	2	\N	\N	6	f	/auto_daf_xf_105_34648457.html		4	4	2023-06-13 18:33:36.067517	2023-06-13 18:33:36.067518
34648344	336	1826	29330	2400	89304	2218	1990	13	10 тыс. км	10	2	0	1	\N	\N	4	f	/auto_balkancar_dv_34648344.html		9	9	2023-06-13 18:33:36.183221	2023-06-13 18:33:36.183222
34625165	2	70	652	9000	334890	8318	2013	0	228 тыс. км	228	2	1.6	1	2	\N	1	f	/auto_skoda_octavia_34625165.html	TMBHT67ZXD2119209	5	288	2023-06-13 18:33:37.203853	2023-06-13 18:33:37.203855
34473692	4	84	35449	6250	232563	5777	2008	0	175 тыс. км	175	0	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34473692.html		10	10	2023-06-13 18:33:37.216827	2023-06-13 18:33:37.216828
34454134	5	88	53490	5100	189618	4706	2008	0	130 тыс. км	130	1	1.7	1	1	\N	1	f	/auto_vaz_lada_21214_4x4_34454134.html	XTA21214x81xxxx68	8	417	2023-06-09 23:05:00.016003	2023-06-09 23:05:00.016004
34282499	3	88	852	1800	66978	1664	2008	0	183 тыс. км	183	4	0	1	3	\N	1	f	/auto_vaz_lada_2107_34282499.html	XTA21070082834647	10	214	2023-06-09 23:05:00.476019	2023-06-09 23:05:00.476021
34454192	3	9	18490	2700	100467	2495	1991	0	300 тыс. км	300	4	3	2	3	\N	1	f	/auto_bmw_7_series_34454192.html	WBAGA810х0Dхххх40	19	19	2023-06-09 23:05:00.545747	2023-06-09 23:05:00.545749
34282467	4	13	1038	3300	122793	3050	2007	0	183 тыс. км	183	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34282467.html	KL1SF48YE7B763834	16	16	2023-06-09 23:05:01.269767	2023-06-09 23:05:01.269769
34282473	2	9	3219	6900	256749	6377	2006	0	325 тыс. км	325	2	2	1	3	\N	1	f	/auto_bmw_3_series_34282473.html	WBAVU310X0KY40198	7	7	2023-06-09 23:05:01.523002	2023-06-09 23:05:01.523006
34282650	212	159	30808	6000	223260	5545	2007	0	320 тыс. км	320	2	14.86	1	\N	\N	6	f	/auto_maz_54322_34282650.html		14	14	2023-06-09 23:05:02.090025	2023-06-09 23:05:02.090027
34454620	4	84	35449	2500	92899	2305	1986	0	370 тыс. км	370	1	1.8	1	2	\N	1	f	/auto_volkswagen_golf_34454620.html	WVWZZZ19xGWxxxx73	18	18	2023-06-10 11:33:40.313696	2023-06-10 11:33:40.313698
34629662	6	23	56590	9500	353495	8780	2014	0	86 тыс. км	86	6	0	2	2	\N	1	f	/auto_fiat_500e_34629662.html	3C3CFFGEXFT503180	10	10	2023-06-10 11:33:40.582142	2023-06-10 11:33:40.582145
34433185	8	79	1897	59999	2232563	55454	2021	0	58 тыс. км	58	5	2.5	2	1	\N	1	t	/auto_toyota_sienna_34433185.html	5TDYSKPC3NS049627	19	19	2023-06-10 11:33:40.633368	2023-06-10 11:33:40.63337
34627938	5	15	3451	10300	383263	9520	2009	0	241 тыс. км	241	0	2.2	2	1	\N	1	f	/auto_citroen_c_crosser_34627938.html	VF7VU4HNхAZхххх24	5	5	2023-06-10 11:33:40.640342	2023-06-10 11:33:40.640343
33752984	212	115	18379	24501	911682	22645	2010	0	848 тыс. км	848	2	12.9	1	\N	\N	6	f	/auto_daf_xf_105_33752984.html		16	252	2023-06-10 11:33:40.809881	2023-06-10 11:33:40.809882
34541570	219	24	35396	16300	606523	15065	2015	0	236 тыс. км	236	2	2.2	1	2	\N	7	f	/auto_ford_transit_34541570.html	WF0FXXTTGFFE44360	9	9	2023-06-10 11:33:40.896368	2023-06-10 11:33:40.896371
34629690	2	56	1523	4900	182329	4529	2005	13	220 тыс. км	220	1	2.2	1	2	\N	1	f	/auto_opel_vectra_34629690.html	W0L0ZCF3551131897	7	7	2023-06-10 11:33:41.355107	2023-06-10 11:33:41.355114
34629684	3	18	1642	3200	119072	2958	2007	0	192 тыс. км	192	4	0	1	2	\N	1	f	/auto_daewoo_sens_34629684.html	Y6DTF69YD7W321563	16	16	2023-06-10 11:33:41.37904	2023-06-10 11:33:41.379045
1916173	3	48	1427	13840	515000	12792	2004	1	58 тыс. км	58	1	5	2	\N	\N	0	f	/auto_mercedes_benz_r_class_1916173.html		10	10	2023-06-10 11:33:41.533944	2023-06-10 11:33:41.533945
33081846	2	70	652	9600	356735	8854	2013	0	198 тыс. км	198	2	1.6	2	2	\N	1	f	/auto_skoda_octavia_33081846.html	TMBGT61ZxD2xxxx90	12	334	2023-06-11 18:25:47.782608	2023-06-11 18:25:47.78261
34637303	5	52	2684	9500	353495	8780	2011	0	240 тыс. км	240	1	2.4	1	1	\N	1	f	/auto_mitsubishi_outlander_xl_34637303.html	JMBXNCW5WBF011580	18	18	2023-06-11 18:25:47.946025	2023-06-11 18:25:47.946028
34637352	3	48	428	13500	502335	12477	2010	0	222 тыс. км	222	1	3	2	\N	\N	1	f	/auto_mercedes_benz_e_class_34637352.html	WDDHF5EBхAAхххх72	10	10	2023-06-11 18:25:47.982221	2023-06-11 18:25:47.982223
34007424	307	47	393	3800	141398	3512	2002	0	350 тыс. км	350	2	2	1	2	\N	1	f	/auto_mazda_6_34007424.html	JMZGG14R231153068	3	3	2023-06-11 18:25:48.031628	2023-06-11 18:25:48.03163
34637361	5	52	1485	11650	433497	10767	2011	0	229 тыс. км	229	2	2.2	5	1	\N	1	f	/auto_mitsubishi_outlander_34637361.html	JMBXMCW7хBFхххх57	18	18	2023-06-11 18:25:48.035702	2023-06-11 18:25:48.035704
34637365	4	84	35449	3700	137677	3420	2000	0	198 тыс. км	198	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34637365.html	WVWZZZ1JZYW730126	15	208	2023-06-11 18:25:48.05027	2023-06-11 18:25:48.050272
34637367	4	56	1512	4500	167445	4159	2008	0	130 тыс. км	130	1	1.2	4	2	\N	1	f	/auto_opel_corsa_34637367.html	W0L0SDL0884307633	20	605	2023-06-11 18:25:48.170951	2023-06-11 18:25:48.170952
34637376	4	55	487	2250	83723	2080	1996	0	215 тыс. км	215	1	1.4	1	2	\N	1	f	/auto_nissan_almera_34637376.html	JN1FAAN15U0016891	15	15	2023-06-11 18:25:48.287902	2023-06-11 18:25:48.287903
34648430	3	17	3166	4350	161864	4020	2009	13	177 тыс. км	177	1	1.2	1	2	\N	1	f	/auto_dacia_sandero_34648430.html	UU1BSDBNH41892887	9	9	2023-06-13 18:33:37.259656	2023-06-13 18:33:37.259658
34648431	4	70	649	3000	111630	2773	2001	13	330 тыс. км	330	4	1.4	1	2	\N	1	f	/auto_skoda_fabia_34648431.html	TMBMD46Y513169344	8	8	2023-06-13 18:33:37.293737	2023-06-13 18:33:37.293738
34639129	6	56	1508	4999	186013	4620	2006	0	195 тыс. км	195	1	1.6	2	2	\N	1	f	/auto_opel_astra_34639129.html	W0L0AHL0875042796	5	5	2023-06-12 01:52:04.153943	2023-06-12 01:52:04.153945
34637035	7	62	586	4000	148840	3697	1998	0	111 тыс. км	111	1	1.6	1	2	\N	1	f	/auto_renault_megane_34637035.html	VF1EA0F0G17884570	10	10	2023-06-12 01:52:04.154761	2023-06-12 01:52:04.154763
34466715	3	4681	48736	7700	286517	7117	2017	0	65 тыс. км	65	4	1.2	2	2	\N	1	f	/auto_ravon_r2_34466715.html	XWBMA48N9HA511224	6	6	2023-06-12 01:52:04.165163	2023-06-12 01:52:04.165165
34449999	3	52	457	7900	293959	7302	2007	0	236 тыс. км	236	4	2	1	2	\N	1	f	/auto_mitsubishi_lancer_34449999.html	JMBSNCY4A8U005280	11	11	2023-06-12 01:52:04.172728	2023-06-12 01:52:04.17273
34639101	6	9	3219	6700	249307	6192	2010	0	171 тыс. км	171	1	3	2	3	\N	1	f	/auto_bmw_3_series_34639101.html	WBAWB3C50AP138995	1	45	2023-06-12 01:52:04.173606	2023-06-12 01:52:04.173608
34648451	3	47	392	2500	93025	2311	1997	8	400 тыс. км	400	4	1.5	1	2	\N	1	f	/auto_mazda_323_34648451.html	JMZBA125200595898	19	329	2023-06-13 18:33:37.299022	2023-06-13 18:33:37.299023
34621597	2	84	39690	13800	513498	12755	2012	13	272 тыс. км	272	2	2	2	1	\N	1	f	/auto_volkswagen_passat_34621597.html		11	11	2023-06-08 19:11:55.765671	2023-06-08 19:11:55.765672
34598664	3	79	702	7300	271633	6747	2008	0	220 тыс. км	220	1	1.6	4	2	\N	1	f	/auto_toyota_corolla_34598664.html	JTNBV56E603518599	10	10	2023-06-08 19:11:55.778808	2023-06-08 19:11:55.77881
34460250	197	79	50240	16200	602802	14973	2019	0	126 тыс. км	126	2	0	1	2	\N	6	f	/auto_toyota_proace_34460250.html		18	18	2023-06-08 19:11:55.858542	2023-06-08 19:11:55.858543
34446405	5	128	46829	11000	409310	10167	2008	0	435 тыс. км	435	4	3.5	2	1	\N	1	f	/auto_infiniti_fx_35_34446405.html	JN8AS05YX8X016257	5	5	2023-06-08 19:12:15.103375	2023-06-08 19:12:15.103375
34454136	3	62	1559	2999	111502	2767	2007	0	250 тыс. км	250	4	1.4	1	2	\N	1	f	/auto_renault_symbol_34454136.html	VF1LB17Cx38xxxx30	22	161	2023-06-09 23:04:58.700336	2023-06-09 23:04:58.70034
34454354	2	48	428	10990	408938	10157	2011	0	475 тыс. км	475	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34454354.html	WDD21220х1Aхххх91	10	10	2023-06-09 23:04:58.770782	2023-06-09 23:04:58.770784
34271441	3	55	498	3150	117117	2906	2002	0	235 тыс. км	235	1	1.8	1	\N	\N	1	f	/auto_nissan_primera_34271441.html	SJNBBAP1xU0xxxx66	12	12	2023-06-09 23:05:00.021575	2023-06-09 23:05:00.021576
34629670	3	28	265	5800	215818	5361	2008	8	186 тыс. км	186	1	1.8	2	2	\N	1	f	/auto_honda_civic_34629670.html	NLAFD76408W025067	10	10	2023-06-10 11:33:41.480635	2023-06-10 11:33:41.480637
34614414	3	18	161	1599	59418	1474	2005	0	302 тыс. км	302	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34614414.html	SUPTF69Yx5Wxxxx31	11	85	2023-06-11 18:25:47.786424	2023-06-11 18:25:47.786426
34636402	3	48	428	6950	258610	6423	2004	0	418 тыс. км	418	2	2.7	2	3	\N	1	f	/auto_mercedes_benz_e_class_34636402.html	WDB2110161A580301	25	25	2023-06-11 18:25:47.981262	2023-06-11 18:25:47.981265
34637270	2	70	652	11200	416752	10352	2014	0	223 тыс. км	223	2	1.6	2	2	\N	1	f	/auto_skoda_octavia_34637270.html	TMBJG7NE4F0075077	10	10	2023-06-11 18:25:47.985589	2023-06-11 18:25:47.985591
34637337	2	84	39690	8400	312564	7764	2010	0	281 тыс. км	281	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34637337.html	WVWZZZ3CZAE151432	2	146	2023-06-11 18:25:48.001865	2023-06-11 18:25:48.001867
34637355	3	18	161	3200	119072	2958	2006	0	204 тыс. км	204	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34637355.html	Y6DTF69Y060010869	7	454	2023-06-11 18:25:48.013022	2023-06-11 18:25:48.013023
34637344	2	6	3460	5450	202795	5037	2004	0	400 тыс. км	400	2	2.5	2	1	\N	1	f	/auto_audi_a6_allroad_34637344.html		22	168	2023-06-11 18:25:48.033264	2023-06-11 18:25:48.033266
34637378	4	24	240	6850	254889	6331	2009	0	129 тыс. км	129	1	1.6	1	2	\N	1	f	/auto_ford_focus_34637378.html	WF0PXXGCхP8хххх19	1	1	2023-06-11 18:25:48.070353	2023-06-11 18:25:48.070355
34637335	212	203	41881	33000	1227930	30500	2013	0	1000 тыс. км	1000	0	0	2	\N	\N	6	f	/auto_scania_r_440_34637335.html		9	9	2023-06-11 18:25:48.080353	2023-06-11 18:25:48.080355
34648434	5	48	430	10400	386984	9612	2007	13	220 тыс. км	220	1	3.5	2	1	\N	1	f	/auto_mercedes_benz_m_class_34648434.html	4JGBB86E98A309066	10	10	2023-06-13 18:33:36.005849	2023-06-13 18:33:36.005851
34648489	3	79	698	9750	362798	9011	2008	0	195 тыс. км	195	4	0	2	2	\N	1	f	/auto_toyota_camry_34648489.html	JTNBE40K309137740	10	10	2023-06-13 18:33:36.067889	2023-06-13 18:33:36.06789
34639115	8	84	35448	5500	204655	5083	2007	0	235 тыс. км	235	2	2	1	2	\N	1	f	/auto_volkswagen_caddy_34639115.html		15	202	2023-06-12 01:52:04.199848	2023-06-12 01:52:04.199849
34466734	3	84	39690	11000	409310	10167	2012	0	261 тыс. км	261	1	2.5	3	2	\N	1	f	/auto_volkswagen_passat_34466734.html	1VWBP7A33CC066055	9	9	2023-06-12 01:52:04.213667	2023-06-12 01:52:04.213668
34466682	3	56	1518	800	29768	739	1987	0	352 тыс. км	352	4	1.8	1	3	\N	1	f	/auto_opel_omega_34466682.html	W0L00001хJ1хххх42	12	347	2023-06-12 01:52:04.254314	2023-06-12 01:52:04.254316
34639121	197	15	59440	7600	282796	7024	2012	0	269 тыс. км	269	2	1.6	4	2	\N	6	f	/auto_citroen_berlingo_34639121.html	VF77D9HF8CJ661584	9	9	2023-06-12 01:52:04.268152	2023-06-12 01:52:04.268153
34466679	6	84	3006	14700	546987	13586	2013	0	104 тыс. км	104	1	2	4	2	\N	1	t	/auto_volkswagen_cc_passat_cc_34466679.html	WVWRP7AN0DE569557	4	4	2023-06-12 01:52:04.522407	2023-06-12 01:52:04.522409
34294708	2	9	3219	5650	210010	5212	2002	0	400 тыс. км	400	2	2	1	3	\N	1	f	/auto_bmw_3_series_34294708.html	WBAAP710x0Pxxxx30	2	2	2023-06-12 01:52:04.944078	2023-06-12 01:52:04.944081
34466742	3	88	856	2100	78141	1941	2008	0	200 тыс. км	200	4	1.5	1	\N	\N	1	f	/auto_vaz_lada_2110_34466742.html	Y6L21104х8Lхххх88	15	15	2023-06-12 01:52:05.219569	2023-06-12 01:52:05.219571
34466654	3	79	696	7300	271633	6747	2007	0	303 тыс. км	303	2	2	1	2	\N	1	f	/auto_toyota_avensis_34466654.html	SB1ED56L00E053572	18	55	2023-06-12 01:52:05.293999	2023-06-12 01:52:05.294001
34466697	3	13	2145	5800	215818	5361	2008	0	278 тыс. км	278	4	2	1	2	\N	1	f	/auto_chevrolet_epica_34466697.html	Y6DLF69KE8B133093	8	8	2023-06-12 01:52:05.368056	2023-06-12 01:52:05.368057
34466721	2	67	46505	6300	234423	5823	2007	0	259 тыс. км	259	4	1.6	1	2	\N	1	f	/auto_seat_altea_xl_34466721.html	VSSZZZ5Pх7Rхххх65	4	4	2023-06-12 01:52:05.461304	2023-06-12 01:52:05.461311
34125255	307	9	44727	21900	814899	20241	2013	0	197 тыс. км	197	2	2	2	3	\N	1	f	/auto_bmw_5_series_gt_34125255.html	WBAXC0109DDZ96852	16	16	2023-06-12 01:52:05.536277	2023-06-12 01:52:05.536279
34294511	3	2233	47858	37500	1393875	34596	2021	0	19 тыс. км	19	6	0	2	3	\N	1	t	/auto_tesla_model_3_34294511.html	5YJ3E1EAxMFxxxx36	11	11	2023-06-12 01:52:05.752439	2023-06-12 01:52:05.752442
34125104	8	15	59440	3800	141398	3512	2007	0	256 тыс. км	256	2	1.6	1	2	\N	1	f	/auto_citroen_berlingo_34125104.html	VF7GB9HWC94366296	9	396	2023-06-12 01:52:06.00108	2023-06-12 01:52:06.001082
33959879	5	118	1944	7400	275354	6839	2008	0	189 тыс. км	189	4	2	5	2	\N	1	f	/auto_dodge_caliber_33959879.html	1B3HBG8B18D621099	24	519	2023-06-12 01:52:06.023379	2023-06-12 01:52:06.023381
34125039	8	23	34907	8200	305122	7579	2009	0	373 тыс. км	373	2	3	1	2	\N	1	f	/auto_fiat_doblo_pass_34125039.html	ZFA25000001622033	5	5	2023-06-12 01:52:06.031366	2023-06-12 01:52:06.031368
34125162	219	48	35249	10500	390705	9705	2004	0	815 тыс. км	815	2	0	1	\N	\N	7	f	/auto_mercedes_benz_sprinter_34125162.html		22	165	2023-06-12 01:52:06.10568	2023-06-12 01:52:06.105682
34033792	8	62	3185	6999	260433	6469	2009	0	286 тыс. км	286	2	1.5	1	2	\N	1	f	/auto_renault_grand_scenic_34033792.html	VF1JZ0BB641580208	25	539	2023-06-12 01:52:06.187334	2023-06-12 01:52:06.187336
34125105	4	23	56590	7490	278703	6923	2014	0	116 тыс. км	116	6	0	2	2	\N	1	f	/auto_fiat_500e_34125105.html	3C3CFFGE2ET172738	10	10	2023-06-12 01:52:06.861708	2023-06-12 01:52:06.861712
34125081	2	84	39690	3700	137677	3420	1999	0	350 тыс. км	350	1	1.6	1	2	\N	1	f	/auto_volkswagen_passat_34125081.html	WVWZZZ3BZYE147525	18	54	2023-06-12 01:52:06.875353	2023-06-12 01:52:06.875356
34640219	145	177	2659	59800	2221570	55153	2006	0	600 тыс. км	600	2	10.52	1	3	\N	4	f	/auto_man_tga_34640219.html		15	203	2023-06-12 11:45:17.457505	2023-06-12 11:45:17.457506
33820440	307	70	652	6950	258192	6409	2011	0	233 тыс. км	233	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_33820440.html		22	22	2023-06-12 11:45:18.210803	2023-06-12 11:45:18.210804
34456697	3	88	855	1650	61397	1525	2007	0	200 тыс. км	200	1	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34456697.html	Y6D21099470045952	15	201	2023-06-12 11:45:18.456726	2023-06-12 11:45:18.456729
1903565	5	84	793	12500	465125	11553	2004	5	115 тыс. км	115	1	3.2	2	\N	\N	1	f	/auto_volkswagen_touareg_1903565.html		21	593	2023-06-12 11:45:18.532078	2023-06-12 11:45:18.532083
34621598	2	55	498	4550	169306	4205	2005	8	317 тыс. км	317	4	1.8	1	2	\N	1	f	/auto_nissan_primera_34621598.html	SJNTBAP12U0228727	11	76	2023-06-08 19:11:55.774558	2023-06-08 19:11:55.774559
34620635	5	15	3451	10500	390705	9705	2010	0	105 тыс. км	105	1	2.4	5	\N	\N	1	f	/auto_citroen_c_crosser_34620635.html	VF7VVSFYхBZхххх07	10	10	2023-06-08 19:11:55.911247	2023-06-08 19:11:55.911249
34446280	2	84	39690	6450	240005	5961	2008	0	239 тыс. км	239	1	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34446280.html	WVWZZZ3CZ8E171799	15	200	2023-06-08 19:12:15.105644	2023-06-08 19:12:15.105645
34446380	4	84	35449	3800	141398	3512	2000	0	312 тыс. км	312	4	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34446380.html	WVWZZZ1JZYB109755	8	409	2023-06-08 19:12:15.129486	2023-06-08 19:12:15.129487
34440352	197	2077	31184	12500	465125	11553	2008	0	264 тыс. км	264	2	3.9	1	3	\N	6	f	/auto_avia_d120_34440352.html		14	14	2023-06-08 19:12:15.162024	2023-06-08 19:12:15.162025
34446106	12	55102	62872	810	30140	749	2020	0	2 тыс. км	2	1	0.15	5	5	\N	2	f	/auto_yokomoto_ht_150t_30_34446106.html	LJLTCKHJ7L3A01278	5	5	2023-06-08 19:12:15.33141	2023-06-08 19:12:15.331412
34454334	5	33	327	8200	304876	7567	2004	0	120 тыс. км	120	2	2	2	1	\N	1	f	/auto_kia_sportage_34454334.html	KNEJE551x5Kxxxx27	5	308	2023-06-09 23:04:58.765477	2023-06-09 23:04:58.765478
34454328	307	70	652	4800	178464	4429	2001	0	208 тыс. км	208	4	2.01	1	2	\N	1	f	/auto_skoda_octavia_34454328.html	TMBBE41Ux22xxxx25	1	599	2023-06-09 23:04:58.77412	2023-06-09 23:04:58.774121
34454303	3	24	1193	15800	587444	14580	2014	0	191 тыс. км	191	1	3.5	2	1	\N	1	t	/auto_ford_taurus_34454303.html	1FAHP2KTxEGxxxx52	10	10	2023-06-09 23:04:58.824899	2023-06-09 23:04:58.8249
34454277	4	24	240	10200	379542	9427	2017	0	120 тыс. км	120	1	1	1	2	\N	1	f	/auto_ford_focus_34454277.html	WF05XXGCC5HK19978	16	238	2023-06-09 23:04:58.879624	2023-06-09 23:04:58.879625
34454144	3	88	843	2700	100386	2491	2006	0	231 тыс. км	231	1	1.6	1	2	\N	1	f	/auto_vaz_lada_1118_kalina_34454144.html	XTA11183x60xxxx32	16	257	2023-06-09 23:05:00.025373	2023-06-09 23:05:00.025374
34629661	5	84	793	12000	446520	11091	2008	13	359 тыс. км	359	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34629661.html		11	76	2023-06-10 11:33:41.480841	2023-06-10 11:33:41.480842
34637336	3	6	49	10200	379542	9427	2009	0	257 тыс. км	257	2	2	2	2	\N	1	f	/auto_audi_a6_34637336.html	WAUZZZ4F7AN033689	2	146	2023-06-11 18:25:48.169672	2023-06-11 18:25:48.169673
33611403	4	17	1095	500	18580	461	2003	0	200 тыс. км	200	1	1.4	1	\N	\N	1	t	/auto_dacia_solenza_33611403.html	Y6DR5A71x43xxxx87	19	331	2023-06-11 19:51:44.660113	2023-06-11 19:51:44.660115
33574810	299	175	3300	63999	2378202	59027	2008	0	164 тыс. км	164	2	6	1	3	\N	4	f	/auto_iveco_eurocargo_33574810.html		18	18	2023-06-11 19:51:44.673759	2023-06-11 19:51:44.673761
31024347	3	52	456	20000	743199	18446	2008	0	3 тыс. км	3	1	2.4	2	2	\N	1	f	/auto_mitsubishi_galant_31024347.html	4MBSRDM1x9Exxxx61	10	10	2023-06-11 19:51:44.711271	2023-06-11 19:51:44.711273
33600308	212	177	37865	27999	1040442	25823	2014	0	937 тыс. км	937	2	12.4	1	\N	\N	6	f	/auto_man_18_440_33600308.html	WMA06XZZxEPxxxx17	18	18	2023-06-11 19:51:44.71491	2023-06-11 19:51:44.714911
34637815	3	18	165	2199	81825	2032	2008	0	136 тыс. км	136	4	1.5	1	2	\N	1	f	/auto_daewoo_nexia_34637815.html	XWB3D31UD8A162989	10	10	2023-06-11 19:51:44.885839	2023-06-11 19:51:44.885841
34637829	307	70	652	6700	249307	6192	2006	0	196 тыс. км	196	4	0	1	\N	\N	1	f	/auto_skoda_octavia_34637829.html		10	214	2023-06-11 19:51:44.923307	2023-06-11 19:51:44.923309
33815605	3	29	295	4850	180469	4483	2006	0	350 тыс. км	350	4	2.4	2	2	\N	1	f	/auto_hyundai_sonata_33815605.html	KMHEU41Cх6Aхххх94	2	146	2023-06-11 19:51:44.932183	2023-06-11 19:51:44.932184
34637816	3	52	457	2999	111593	2772	2006	0	256 тыс. км	256	4	1.6	1	2	\N	1	f	/auto_mitsubishi_lancer_34637816.html	JMYSTCS3х7Uхххх06	18	18	2023-06-11 19:51:44.969881	2023-06-11 19:51:44.969883
34637825	14	1554	58252	537	20000	497	2017	0	1 тыс. км	1	1	0.2	1	\N	\N	2	f	/auto_spark_sp_110c_2c_34637825.html		11	72	2023-06-11 19:51:44.989165	2023-06-11 19:51:44.989167
34637791	4	48	2622	19800	736758	18300	2017	0	48 тыс. км	48	6	0	2	2	\N	1	f	/auto_mercedes_benz_b_class_34637791.html	WDD2428901J017138	7	7	2023-06-11 19:51:45.031256	2023-06-11 19:51:45.031257
34637833	4	55	36565	13900	517219	12847	2012	0	130 тыс. км	130	6	0	2	2	\N	1	f	/auto_nissan_leaf_34637833.html	JN1AZ0CP0CT017275	18	62	2023-06-11 19:51:45.050925	2023-06-11 19:51:45.050927
34637807	8	84	64461	4100	152561	3789	1993	0	908 тыс. км	908	2	2.4	1	2	\N	1	f	/auto_volkswagen_transporter_34637807.html	WV2ZZZ70ZPH062447	5	5	2023-06-11 19:51:45.290667	2023-06-11 19:51:45.290674
34637802	4	13	1038	3900	145119	3605	2011	0	120 тыс. км	120	4	1.5	2	\N	\N	1	f	/auto_chevrolet_aveo_34637802.html	KL1SA08YEBB277003	10	10	2023-06-11 19:51:46.295955	2023-06-11 19:51:46.295956
34637789	8	23	34907	3800	141398	3512	2004	0	250 тыс. км	250	2	1.9	1	2	\N	1	f	/auto_fiat_doblo_pass_34637789.html	ZFA22300005203890	2	2	2023-06-11 19:51:46.304766	2023-06-11 19:51:46.304767
34637304	4	56	1508	1750	65118	1617	1992	0	247 тыс. км	247	1	1.4	1	2	\N	1	f	/auto_opel_astra_34637304.html	W0L00005хN5хххх82	15	200	2023-06-11 19:51:46.328698	2023-06-11 19:51:46.328699
34637792	5	128	45132	14800	550708	13679	2013	0	151 тыс. км	151	5	2.5	5	2	\N	1	f	/auto_infiniti_qx60_34637792.html	5N1CL0MN5EC511134	10	10	2023-06-11 19:51:46.381563	2023-06-11 19:51:46.381564
34637814	254	84	64461	1400	52094	1294	1987	0	150 тыс. км	150	2	1.6	1	3	\N	6	f	/auto_volkswagen_transporter_34637814.html		7	7	2023-06-11 19:51:46.442246	2023-06-11 19:51:46.442248
34314569	3	88	851	500	18605	462	1977	0	100 тыс. км	100	4	1.6	1	\N	\N	1	f	/auto_vaz_lada_2106_34314569.html	1х91хххх19	11	76	2023-06-11 19:51:46.556048	2023-06-11 19:51:46.55605
33959198	3	48	428	3500	130235	3235	1997	0	520 тыс. км	520	2	2.2	1	3	\N	1	f	/auto_mercedes_benz_e_class_33959198.html	WDB21000041A45553	25	25	2023-06-11 19:51:47.03853	2023-06-11 19:51:47.038537
34637106	3	84	781	4400	163724	4067	2004	0	298 тыс. км	298	1	1.6	1	2	\N	1	f	/auto_volkswagen_bora_34637106.html	WVWZZZ1Jх3Wхххх85	10	215	2023-06-11 19:51:47.058934	2023-06-11 19:51:47.058936
34309611	3	88	851	650	24187	601	1987	0	123 тыс. км	123	4	1.3	1	3	\N	1	f	/auto_vaz_lada_2106_34309611.html	XTA210630H1768394	11	11	2023-06-11 19:51:47.107561	2023-06-11 19:51:47.107563
34637776	2	84	39690	6900	256749	6377	2007	0	339 тыс. км	339	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34637776.html	WVWZZZ3CZ7E189763	14	14	2023-06-11 19:51:47.199916	2023-06-11 19:51:47.199919
33730080	299	175	2119	40999	1525573	37893	2012	0	241 тыс. км	241	2	7.79	2	3	\N	4	f	/auto_iveco_stralis_33730080.html	WJME2NNH404386412	18	18	2023-06-11 19:51:47.77775	2023-06-11 19:51:47.777753
34632619	5	29	58455	17800	661447	16417	2020	0	39 тыс. км	39	1	1.6	5	2	\N	1	f	/auto_hyundai_venue_34632619.html	KMHRC8A3xNUxxxx57	14	14	2023-06-11 19:51:48.083787	2023-06-11 19:51:48.083791
33407470	3	84	39690	10500	390705	9705	2012	0	226 тыс. км	226	2	2	4	2	\N	1	f	/auto_volkswagen_passat_33407470.html	WVWZZZ3CхCPхххх64	3	441	2023-06-11 19:51:48.349304	2023-06-11 19:51:48.349306
34609174	3	47	393	16999	632533	15711	2018	0	74 тыс. км	74	1	2.5	2	2	\N	1	t	/auto_mazda_6_34609174.html	JM1GL1UM3J1310762	12	12	2023-06-13 18:33:36.180477	2023-06-13 18:33:36.180479
34466647	5	79	3248	13900	517219	12847	2010	0	257 тыс. км	257	4	2.7	2	1	\N	1	f	/auto_toyota_venza_34466647.html	4T3BA3BB3AU011755	6	6	2023-06-12 01:52:04.267376	2023-06-12 01:52:04.267377
34476143	2	85	3197	6390	237772	5906	2007	0	348 тыс. км	348	2	2	1	2	\N	1	f	/auto_volvo_v50_34476143.html	YV1MW755272314294	10	10	2023-06-13 18:33:36.180704	2023-06-13 18:33:36.180705
30957521	5	9	96	22500	837225	20795	2011	0	232 тыс. км	232	1	3	2	1	\N	1	t	/auto_bmw_x5_30957521.html	5UXZV4C58CL757771	10	10	2023-06-13 20:40:44.821573	2023-06-13 20:40:44.821574
34650430	3	62	3898	6888	256302	6366	2010	13	240 тыс. км	240	4	0	1	2	\N	1	f	/auto_renault_fluence_34650430.html	VF1LZBR0543171293	22	22	2023-06-13 23:53:24.721062	2023-06-13 23:53:24.721063
34621555	2	62	586	5600	208376	5176	2008	13	194 тыс. км	194	1	0	1	2	\N	1	f	/auto_renault_megane_34621555.html	VF1KM2K0х40хххх81	2	2	2023-06-08 19:12:15.108093	2023-06-08 19:12:15.108094
34454213	18	2026	60525	1150	42757	1061	2019	0	5 тыс. км	5	1	200	1	6	\N	2	f	/auto_loncin_jl_200_68a_34454213.html		5	308	2023-06-09 23:04:58.767105	2023-06-09 23:04:58.767107
34628311	2	84	35449	4700	174887	4344	2001	8	191 тыс. км	191	1	0	1	2	\N	1	f	/auto_volkswagen_golf_34628311.html	WVWZZZ1JZ1W642578	20	20	2023-06-09 23:04:58.775676	2023-06-09 23:04:58.775677
34454217	4	55	1975	6000	223080	5536	2010	0	190 тыс. км	190	4	1.4	1	2	\N	1	f	/auto_nissan_note_34454217.html	SJNFAAE1xU2xxxx17	8	8	2023-06-09 23:04:58.830112	2023-06-09 23:04:58.830113
34628312	4	70	649	4600	171166	4252	2012	8	167 тыс. км	167	4	1.2	1	2	\N	1	f	/auto_skoda_fabia_34628312.html	TMBEH15JхDBхххх00	9	405	2023-06-09 23:05:00.283477	2023-06-09 23:05:00.28348
34454176	4	84	35449	10250	381403	9473	2013	0	267 тыс. км	267	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34454176.html	WVWZZZAUZDW110441	10	215	2023-06-09 23:05:01.190643	2023-06-09 23:05:01.190648
34282687	15	1976	40995	1300	48373	1202	2014	0	24 тыс. км	24	0	0.25	1	\N	\N	2	f	/auto_geon_issen_34282687.html		12	12	2023-06-09 23:05:02.672686	2023-06-09 23:05:02.672688
34629528	2	70	649	4650	173027	4298	2006	0	143 тыс. км	143	1	0	1	2	\N	1	f	/auto_skoda_fabia_34629528.html	TMBGU46Y654371918	5	5	2023-06-10 11:33:41.482322	2023-06-10 11:33:41.482322
1900294	5	55	507	16500	613965	15250	2006	1	100 тыс. км	100	1	2	1	\N	\N	0	f	/auto_nissan_x_trail_1900294.html		11	11	2023-06-10 11:33:41.56635	2023-06-10 11:33:41.566351
33719889	4	55	36565	21300	792573	19686	2020	0	55 тыс. км	55	6	0	2	\N	\N	1	f	/auto_nissan_leaf_33719889.html	SJNFAAZE1U0108365	5	5	2023-06-10 11:33:42.216318	2023-06-10 11:33:42.21632
34467660	5	55	2197	9650	359077	8919	2010	0	232 тыс. км	232	2	1.5	1	2	\N	1	f	/auto_nissan_qashqai_34467660.html	SJNFCAJ10U2160389	5	5	2023-06-10 11:33:42.74446	2023-06-10 11:33:42.744464
33943987	8	62	59145	7950	295820	7348	2010	0	149 тыс. км	149	1	1.6	1	2	\N	1	f	/auto_renault_kangoo_33943987.html	VF1KW0EBх41хххх98	14	14	2023-06-10 11:33:42.880557	2023-06-10 11:33:42.880559
31227276	5	37	348	17700	658617	16359	2010	0	230 тыс. км	230	2	3	2	1	\N	1	f	/auto_land_rover_discovery_31227276.html	SALLAAAGхAAхххх96	15	199	2023-06-11 18:25:48.170726	2023-06-11 18:25:48.170727
34634346	8	84	35448	1200	44591	1106	2000	0	100 тыс. км	100	0	0	1	2	\N	1	f	/auto_volkswagen_caddy_34634346.html	WV1ZZZ9KxXRxxxx02	20	20	2023-06-11 18:25:48.502072	2023-06-11 18:25:48.502074
34637326	2	88	857	1650	61397	1525	2004	0	176 тыс. км	176	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_2111_34637326.html	XTA21110040158431	24	527	2023-06-11 18:25:48.782656	2023-06-11 18:25:48.782658
34637227	2	62	586	4250	158143	3928	2007	0	258 тыс. км	258	2	0	1	\N	\N	1	f	/auto_renault_megane_34637227.html	VF1KMS70637017890	5	5	2023-06-11 18:25:48.802416	2023-06-11 18:25:48.802417
34458184	4	29	1258	4900	182329	4529	2012	0	164 тыс. км	164	1	1.4	1	2	\N	1	t	/auto_hyundai_accent_34458184.html	Z94CU51CACR034483	7	7	2023-06-11 18:25:48.837286	2023-06-11 18:25:48.837287
34637292	3	18	161	2950	109770	2727	2004	0	200 тыс. км	200	4	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_34637292.html	SUPTF69YD4W205163	20	367	2023-06-11 18:25:48.84665	2023-06-11 18:25:48.846651
30133883	3	58	520	4500	167445	4159	2007	0	110 тыс. км	110	1	1.4	1	\N	\N	1	f	/auto_peugeot_206_30133883.html	VF32BKFWA72774698	19	331	2023-06-11 18:25:48.907108	2023-06-11 18:25:48.90711
34598939	3	88	855	2400	89304	2218	2006	0	117 тыс. км	117	1	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34598939.html	Y6D21099х60хххх47	19	327	2023-06-11 18:25:48.936074	2023-06-11 18:25:48.936076
32905554	212	115	57062	49000	1823290	45288	2016	0	790 тыс. км	790	2	12.9	2	3	\N	6	f	/auto_daf_xf_106_32905554.html	XLRTEH4300G113429	1	1	2023-06-11 18:25:49.014051	2023-06-11 18:25:49.014053
34637258	8	62	3185	6200	230702	5730	2008	0	255 тыс. км	255	2	1.5	1	2	\N	1	f	/auto_renault_grand_scenic_34637258.html	VF1JMG6D640085660	10	10	2023-06-11 18:25:49.488946	2023-06-11 18:25:49.488949
33458542	5	29	1268	7700	286517	7117	2008	0	321 тыс. км	321	4	2	1	2	\N	1	t	/auto_hyundai_tucson_33458542.html	KMHJN81BP8U844668	9	9	2023-06-11 18:25:49.504241	2023-06-11 18:25:49.504243
34637300	4	24	240	8700	323727	8041	2017	0	123 тыс. км	123	1	2	2	2	\N	1	t	/auto_ford_focus_34637300.html	1FADP3M20HL277421	11	11	2023-06-11 18:25:49.523372	2023-06-11 18:25:49.523374
34637298	5	37	35857	21000	781410	19409	2012	0	144 тыс. км	144	2	2.2	2	\N	\N	1	f	/auto_land_rover_range_rover_evoque_34637298.html	SALVA2BDхCHхххх41	7	7	2023-06-11 18:25:49.538152	2023-06-11 18:25:49.538154
33876796	3	2233	47858	25700	956297	23753	2019	0	51 тыс. км	51	6	0	2	3	\N	1	t	/auto_tesla_model_3_33876796.html	5YJ3E1EA8KF399279	22	22	2023-06-11 18:25:49.565031	2023-06-11 18:25:49.565032
34637302	4	84	35449	3900	145119	3605	1998	0	198 тыс. км	198	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34637302.html		4	4	2023-06-11 18:25:49.612207	2023-06-11 18:25:49.612209
34458206	3	88	861	2900	107909	2680	2007	0	100 тыс. км	100	1	1.6	1	\N	\N	1	f	/auto_vaz_lada_2115_samara_34458206.html	XTA21154084526667	8	411	2023-06-11 18:25:49.879929	2023-06-11 18:25:49.879932
34637282	2	75	1720	12500	465125	11553	2013	0	221 тыс. км	221	4	2.5	5	1	\N	1	t	/auto_subaru_outback_34637282.html	4S4BRBKCXD3315938	10	214	2023-06-11 18:25:50.347403	2023-06-11 18:25:50.347405
34306080	2	48	425	9950	370240	9196	2009	0	236 тыс. км	236	2	2.2	2	3	\N	1	f	/auto_mercedes_benz_c_class_34306080.html		6	6	2023-06-11 18:25:50.395284	2023-06-11 18:25:50.395287
33963924	3	91	1757	1000	37160	922	1963	0	115 тыс. км	115	1	2.4	1	3	\N	1	f	/auto_gaz_21_33963924.html		10	214	2023-06-11 19:51:44.71551	2023-06-11 19:51:44.715511
34637804	3	89	3570	2400	89304	2218	2008	0	160 тыс. км	160	1	1.4	1	2	\N	1	f	/auto_zaz_sens_34637804.html	Y6DTF699P8W388888	10	214	2023-06-11 19:51:44.923914	2023-06-11 19:51:44.923916
34637795	307	70	652	4999	186013	4620	2000	0	286 тыс. км	286	4	1.8	1	2	\N	1	f	/auto_skoda_octavia_34637795.html	TMBAL21U6Y8303872	10	10	2023-06-11 19:51:44.941484	2023-06-11 19:51:44.941486
34637784	2	56	1508	11950	444660	11045	2017	0	246 тыс. км	246	2	1.6	2	2	\N	1	f	/auto_opel_astra_34637784.html		18	18	2023-06-11 19:51:45.059463	2023-06-11 19:51:45.059464
33408194	3	28	262	13100	487451	12108	2013	0	153 тыс. км	153	4	2.4	1	2	\N	1	f	/auto_honda_accord_33408194.html	1HGCR2570DA702086	20	605	2023-06-11 19:51:45.214148	2023-06-11 19:51:45.214152
34637830	3	6	47	13900	517219	12847	2015	0	175 тыс. км	175	1	2	2	2	\N	1	f	/auto_audi_a4_34637830.html	WAUEFAFL8GN003296	24	525	2023-06-11 19:51:45.321093	2023-06-11 19:51:45.321096
34397229	2	70	652	6190	230330	5721	2008	0	230 тыс. км	230	4	1.6	1	2	\N	1	f	/auto_skoda_octavia_34397229.html	TMBJX41U48B015335	25	25	2023-06-11 19:51:45.743045	2023-06-11 19:51:45.743047
34453952	5	37	3117	11300	420473	10444	2007	0	170 тыс. км	170	1	4.2	3	1	\N	1	f	/auto_land_rover_range_rover_sport_34453952.html	SALLSAA347A102992	4	502	2023-06-11 19:51:45.810341	2023-06-11 19:51:45.810344
34648454	3	18	161	2600	96746	2403	2003	0	258 тыс. км	258	4	1.6	2	\N	\N	1	f	/auto_daewoo_lanos_34648454.html	Y6DTA696E30017531	10	10	2023-06-13 18:33:36.181414	2023-06-13 18:33:36.181415
34442549	4	89	30775	600	22337	554	1995	0	60 тыс. км	60	1	0.9	1	2	\N	1	f	/auto_zaz_1140_34442549.html	XTE11400xS0xxxx30	6	557	2023-06-09 10:05:46.409451	2023-06-09 10:05:46.409454
34623900	3	88	852	999	37192	922	1996	0	200 тыс. км	200	4	1.5	1	3	\N	1	f	/auto_vaz_lada_2107_34623900.html	XTA21070xK0xxxx39	20	20	2023-06-09 10:05:46.768154	2023-06-09 10:05:46.768155
34623894	4	15	128	6700	249307	6192	2011	0	147 тыс. км	147	1	1.4	1	2	\N	1	f	/auto_citroen_c3_34623894.html	VF7SH8FP0BT516975	14	14	2023-06-09 10:05:46.895419	2023-06-09 10:05:46.895421
1904757	4	24	237	3019	112337	2790	1990	1	82 тыс. км	82	1	1.6	1	\N	\N	0	f	/auto_ford_escort_1904757.html		23	23	2023-06-09 10:05:47.273443	2023-06-09 10:05:47.273445
34454214	3	89	872	1100	40898	1015	2003	0	117 тыс. км	117	1	1.2	1	2	\N	1	f	/auto_zaz_1103_slavuta_34454214.html	Y6D11030x30xxxx23	7	7	2023-06-09 23:04:58.767964	2023-06-09 23:04:58.767965
34129096	3	62	586	3950	146980	3651	2004	0	240 тыс. км	240	1	1.4	1	2	\N	1	f	/auto_renault_megane_34129096.html	VF1LM0H0H31368607	1	1	2023-06-09 23:04:58.875872	2023-06-09 23:04:58.875873
34454358	18	55131	62695	2900	107909	2680	2021	0	5 тыс. км	5	1	0.29	1	6	\N	2	f	/auto_voge_300rr_34454358.html	LLCLMN1CхMAхххх61	25	543	2023-06-09 23:04:58.900428	2023-06-09 23:04:58.900429
34282834	307	70	652	24700	918346	22793	2021	0	55 тыс. км	55	1	0	2	\N	\N	1	f	/auto_skoda_octavia_34282834.html	TMBAC4NXxNYxxxx23	7	7	2023-06-09 23:04:59.142336	2023-06-09 23:04:59.142337
34282608	6	147	1460	11500	427570	10612	2013	0	60 тыс. км	60	1	1.6	2	2	\N	1	t	/auto_mini_cooper_34282608.html	WMWSX3C5xDTxxxx79	10	10	2023-06-09 23:04:59.300541	2023-06-09 23:04:59.300543
34454215	3	76	2035	8000	297440	7382	2010	0	200 тыс. км	200	1	2	2	2	\N	1	t	/auto_suzuki_sx4_34454215.html	JS2YC5A2xB6xxxx24	10	10	2023-06-09 23:04:59.30709	2023-06-09 23:04:59.30709
34454350	2	84	35449	4900	182329	4529	2000	0	234 тыс. км	234	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34454350.html	WVWZZZ1JZ1W294691	18	18	2023-06-09 23:04:59.519838	2023-06-09 23:04:59.519842
34282743	5	88	29496	3600	133848	3322	1998	0	175 тыс. км	175	1	1.7	1	1	\N	1	f	/auto_vaz_lada_21213_niva_34282743.html	XTA21213xW1xxxx46	5	5	2023-06-09 23:04:59.941603	2023-06-09 23:04:59.941604
34282458	2	84	39690	4700	174887	4344	2002	0	370 тыс. км	370	4	1.6	1	2	\N	1	f	/auto_volkswagen_passat_34282458.html	WVWZZZ3BZ2E338184	15	15	2023-06-09 23:05:00.466313	2023-06-09 23:05:00.466317
34282672	3	48	428	2000	74420	1848	1990	0	500 тыс. км	500	2	2	1	3	\N	1	f	/auto_mercedes_benz_e_class_34282672.html	WDB1241201B316176	13	113	2023-06-09 23:05:00.465305	2023-06-09 23:05:00.465309
34282750	3	48	425	16500	613965	15250	2011	0	208 тыс. км	208	2	2.2	2	1	\N	1	f	/auto_mercedes_benz_c_class_34282750.html	WDD2040821A545703	2	141	2023-06-09 23:05:00.517414	2023-06-09 23:05:00.517417
34282777	307	56	1523	3500	130235	3235	2002	0	340 тыс. км	340	2	2.2	2	2	\N	1	f	/auto_opel_vectra_34282777.html	W0L0ZCF6828112306	18	18	2023-06-09 23:05:00.531985	2023-06-09 23:05:00.531988
34454085	2	56	1508	6000	223260	5545	2011	0	214 тыс. км	214	2	1.3	1	2	\N	1	f	/auto_opel_astra_34454085.html	W0LPE8EAхC8хххх49	15	192	2023-06-09 23:05:01.237215	2023-06-09 23:05:01.237218
34282484	3	84	39690	12700	472567	11738	2012	0	170 тыс. км	170	4	2.5	2	2	\N	1	t	/auto_volkswagen_passat_34282484.html	1VWBH7A35DC052003	10	10	2023-06-09 23:05:01.315246	2023-06-09 23:05:01.315253
34454096	2	85	3197	7400	275354	6839	2009	0	222 тыс. км	222	2	2	2	2	\N	1	f	/auto_volvo_v50_34454096.html	YV1MW755B92482419	5	5	2023-06-09 23:05:02.055786	2023-06-09 23:05:02.055789
34282690	2	24	240	6500	241865	6008	2010	0	190 тыс. км	190	2	1.6	1	2	\N	1	f	/auto_ford_focus_34282690.html	WF0SXXGCхSAхххх43	8	8	2023-06-09 23:05:02.276218	2023-06-09 23:05:02.276221
1912297	3	48	428	43000	1600030	39742	2008	1	57 тыс. км	57	1	3	3	\N	\N	0	f	/auto_mercedes_benz_e_class_1912297.html		10	10	2023-06-10 11:33:41.53054	2023-06-10 11:33:41.530541
1914465	3	29	1258	111	4130	103	2008	1	5 тыс. км	5	1	1.4	2	\N	\N	0	t	/auto_hyundai_accent_1914465.html		20	605	2023-06-10 11:33:42.268947	2023-06-10 11:33:42.268949
34629484	5	6	1943	47800	1778638	44179	2017	0	102 тыс. км	102	2	3	2	1	\N	1	f	/auto_audi_q7_34629484.html	WAUZZZ4M1JD006041	10	10	2023-06-10 11:33:42.761605	2023-06-10 11:33:42.761608
33809128	5	38	358	10000	372100	9242	2004	0	180 тыс. км	180	4	3.3	2	\N	\N	1	f	/auto_lexus_rx_33809128.html	JTJHA31Uх40хххх44	8	8	2023-06-10 11:33:42.841786	2023-06-10 11:33:42.841789
1900280	8	79	1646	22000	818620	20333	2008	1	35 тыс. км	35	2	2.5	1	\N	\N	0	f	/auto_toyota_hiace_pass_1900280.html		12	12	2023-06-10 11:33:43.450426	2023-06-10 11:33:43.450431
34633323	3	28	262	19500	724619	17989	2016	0	100 тыс. км	100	5	2	2	2	\N	1	f	/auto_honda_accord_34633323.html	JHMCR6F6xHCxxxx68	4	4	2023-06-10 22:46:40.44062	2023-06-10 22:46:40.440623
34371815	42	1231	55367	18000	668879	16605	2016	0	4 тыс. км	4	1	1000	5	4	\N	2	f	/auto_polaris_rzr_xp_1000_eps_34371815.html	TAPVDE99xGKxxxx89	10	10	2023-06-10 22:46:40.466752	2023-06-10 22:46:40.466754
33948076	8	48	35252	10450	388845	9658	2007	0	313 тыс. км	313	2	2.1	2	1	\N	1	f	/auto_mercedes_benz_vito_33948076.html	WDF63960113343967	11	11	2023-06-10 22:46:40.57492	2023-06-10 22:46:40.574922
34633490	2	56	3121	9100	338611	8411	2010	0	275 тыс. км	275	2	2	2	1	\N	1	f	/auto_opel_insignia_34633490.html	W0LGS8GM2B1057716	10	10	2023-06-10 22:46:40.669687	2023-06-10 22:46:40.669688
34119367	8	84	32103	21000	781410	19409	2011	0	280 тыс. км	280	2	2	2	1	\N	1	f	/auto_volkswagen_multivan_34119367.html	WV2ZZZ7HхCHхххх55	10	10	2023-06-10 22:46:40.699475	2023-06-10 22:46:40.699476
34459653	9	23	34907	6650	247447	6146	2011	0	246 тыс. км	246	2	1.6	1	2	\N	1	f	/auto_fiat_doblo_pass_34459653.html	ZFA26300009066305	25	25	2023-06-10 22:46:41.537808	2023-06-10 22:46:41.53781
34055422	2	62	586	5000	186050	4621	2006	0	247 тыс. км	247	2	1.5	1	2	\N	1	f	/auto_renault_megane_34055422.html	VF1KMSF0534437109	3	3	2023-06-10 22:46:41.544986	2023-06-10 22:46:41.544987
34633463	24	179	55514	5100	189771	4714	2008	13	10 тыс. км	10	1	0	1	4	\N	2	f	/auto_yamaha_v_star_650_34633463.html	JYAVM01EXBA122175	8	412	2023-06-10 22:46:41.560584	2023-06-10 22:46:41.560585
34254240	8	48	35252	9200	341871	8487	2008	0	220 тыс. км	220	2	2.1	1	3	\N	1	f	/auto_mercedes_benz_vito_34254240.html	WDF63960x13xxxx98	12	12	2023-06-10 22:46:42.952567	2023-06-10 22:46:42.952569
34460765	3	13	2145	4000	148840	3697	2007	0	172 тыс. км	172	4	2	1	2	\N	1	f	/auto_chevrolet_epica_34460765.html	Y6DLF69Kх7Bхххх26	10	10	2023-06-10 22:46:43.230425	2023-06-10 22:46:43.230427
34454871	2	84	35449	12850	478149	11877	2017	0	184 тыс. км	184	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34454871.html		4	501	2023-06-10 22:46:43.278704	2023-06-10 22:46:43.278705
34633422	5	55	507	10650	395753	9825	2012	0	230 тыс. км	230	4	2	2	1	\N	1	f	/auto_nissan_x_trail_34633422.html	JN1TBNT3xU0xxxx61	5	5	2023-06-10 22:46:43.831972	2023-06-10 22:46:43.831976
34633449	5	24	2874	20000	743199	18450	2017	0	135 тыс. км	135	2	2	2	1	\N	1	f	/auto_ford_kuga_34633449.html	WF0AXXWPxAHxxxx96	2	2	2023-06-10 22:46:43.843899	2023-06-10 22:46:43.843901
34637363	197	48	35249	19000	706990	17561	2018	0	418 тыс. км	418	2	0	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_34637363.html	WDB9076351P008700	12	12	2023-06-11 18:25:48.28129	2023-06-11 18:25:48.281291
34648466	307	70	3167	10499	390668	9704	2010	0	233 тыс. км	233	2	2	2	2	\N	1	f	/auto_skoda_superb_34648466.html	TMBAE73TхA9хххх60	8	8	2023-06-13 18:33:36.181304	2023-06-13 18:33:36.181305
34524046	5	88	863	2800	104439	2575	1985	0	300 тыс. км	300	1	1.6	1	1	\N	1	f	/auto_vaz_lada_2121_niva_34524046.html	XTA21210xG0xxxx94	9	390	2023-06-13 20:57:08.087644	2023-06-13 20:57:08.087646
34112680	2	6	3460	10900	405589	10074	2010	0	330 тыс. км	330	2	2.7	3	1	\N	1	f	/auto_audi_a6_allroad_34112680.html	WAUZZZ4F5AN057702	15	201	2023-06-09 10:05:46.759834	2023-06-09 10:05:46.759835
34442824	3	48	428	1600	59567	1478	1989	0	279 тыс. км	279	4	0	1	3	\N	1	f	/auto_mercedes_benz_e_class_34442824.html	WDB12402x1Axxxx93	12	338	2023-06-09 10:05:46.76729	2023-06-09 10:05:46.767291
34440115	8	24	1176	12100	450482	11178	2013	0	92 тыс. км	92	1	1.6	2	2	\N	1	f	/auto_ford_tourneo_connect_34440115.html	WF0UXXWPxUDxxxx93	14	14	2023-06-09 10:05:46.82048	2023-06-09 10:05:46.820482
34278004	4	89	35257	1200	44652	1109	2006	0	150 тыс. км	150	4	1.2	1	1	\N	1	f	/auto_zaz_1102_tavriya_34278004.html	Y6D11020670424633	7	7	2023-06-09 10:05:47.425678	2023-06-09 10:05:47.425679
34454300	3	9	18490	52990	1970168	48899	2017	0	169 тыс. км	169	2	3	2	1	\N	1	f	/auto_bmw_7_series_34454300.html	WBA7C810x0Bxxxx52	10	10	2023-06-09 23:04:58.768439	2023-06-09 23:04:58.76844
34447812	6	128	35999	9999	372063	9242	2008	0	175 тыс. км	175	1	3.7	2	3	\N	1	f	/auto_infiniti_g37_34447812.html	JNKCV64Eх8Mхххх83	24	527	2023-06-09 23:04:58.893814	2023-06-09 23:04:58.893816
34454122	3	18	1642	2400	89232	2214	2003	0	174 тыс. км	174	1	1.3	1	2	\N	1	f	/auto_daewoo_sens_34454122.html	Y6DT1311x30xxxx29	13	113	2023-06-09 23:04:59.296066	2023-06-09 23:04:59.296068
34454219	3	79	698	5450	202631	5029	2004	0	300 тыс. км	300	4	2.4	2	\N	\N	1	f	/auto_toyota_camry_34454219.html	JTDBE30Kx00xxxx47	18	59	2023-06-09 23:04:59.301889	2023-06-09 23:04:59.30189
34282827	5	52	1485	18500	687830	17071	2019	0	57 тыс. км	57	1	2.4	5	1	\N	1	t	/auto_mitsubishi_outlander_34282827.html	JA4AZ3A3xKZxxxx23	7	7	2023-06-09 23:04:59.309858	2023-06-09 23:04:59.309858
33074320	2	9	3219	5000	185900	4614	2001	0	240 тыс. км	240	1	2	1	3	\N	1	f	/auto_bmw_3_series_33074320.html	WBAAX510x0Pxxxx77	10	225	2023-06-09 23:19:29.235973	2023-06-09 23:19:29.235975
28514215	5	38	44191	30000	1115400	27684	2019	0	14 тыс. км	14	1	2	2	2	\N	1	t	/auto_lexus_nx_28514215.html	JTJAARBZxL2xxxx37	11	11	2023-06-09 23:19:29.261526	2023-06-09 23:19:29.261527
34628372	8	190	1899	2550	94886	2357	2008	0	128 тыс. км	128	1	1.1	3	2	\N	1	f	/auto_chery_qq_34628372.html	LVVDB22B78D124704	10	211	2023-06-09 23:19:29.488335	2023-06-09 23:19:29.488336
34588117	2	6	47	7500	279075	6932	2007	0	181 тыс. км	181	1	1.6	1	2	\N	1	f	/auto_audi_a4_34588117.html		20	20	2023-06-09 23:19:29.526794	2023-06-09 23:19:29.526795
34195495	3	185	1864	2800	104188	2588	2008	0	192 тыс. км	192	1	1.6	1	2	\N	1	f	/auto_geely_ck1_34195495.html	Y7CMR715180105393	1	1	2023-06-09 23:19:29.816117	2023-06-09 23:19:29.816124
1901196	3	13	1052	54	2000	50	2005	5	59 тыс. км	59	1	1.6	1	\N	\N	1	f	/auto_chevrolet_lacetti_1901196.html		17	17	2023-06-10 11:33:42.218026	2023-06-10 11:33:42.218028
34603372	5	58	32556	10200	379542	9427	2011	0	234 тыс. км	234	0	1.6	4	2	\N	1	f	/auto_peugeot_3008_34603372.html	UF36U9HRхBSхххх26	9	397	2023-06-10 11:33:42.746408	2023-06-10 11:33:42.746411
1898576	3	88	846	2200	81862	2033	1972	1	10 тыс. км	10	1	1.2	1	\N	\N	1	f	/auto_vaz_lada_2101_1898576.html		11	76	2023-06-10 11:33:42.796312	2023-06-10 11:33:42.796313
34463534	3	24	241	17700	657731	16328	2017	0	153 тыс. км	153	5	2	2	2	\N	1	t	/auto_ford_fusion_34463534.html	3FA6P0RUxHRxxxx04	8	8	2023-06-10 22:46:40.441378	2023-06-10 22:46:40.44138
34281477	2	70	652	8000	297680	7394	2006	0	350 тыс. км	350	1	2	1	2	\N	1	f	/auto_skoda_octavia_34281477.html	TMBUF61Z368069193	2	2	2023-06-10 22:46:40.576231	2023-06-10 22:46:40.576232
34633464	8	56	1524	9999	372063	9242	2012	13	140 тыс. км	140	2	2	1	2	\N	1	f	/auto_opel_zafira_34633464.html	W0LPE9EL8C2048456	5	288	2023-06-10 22:46:40.590775	2023-06-10 22:46:40.590776
34240599	307	70	652	11000	409310	10167	2013	0	411 тыс. км	411	2	1.6	2	2	\N	1	f	/auto_skoda_octavia_34240599.html	TMBAG7NEхD0хххх58	22	161	2023-06-10 22:46:40.709645	2023-06-10 22:46:40.709647
34464328	3	84	39690	10800	401327	9963	2013	0	183 тыс. км	183	1	1.8	2	2	\N	1	t	/auto_volkswagen_passat_34464328.html	1VWCS7A3xECxxxx06	10	610	2023-06-10 22:46:41.274393	2023-06-10 22:46:41.274396
34633445	4	56	1519	5800	215527	5350	2007	0	223 тыс. км	223	2	1.9	2	2	\N	1	f	/auto_opel_signum_34633445.html	W0L0ZCF4x71xxxx32	3	3	2023-06-10 22:46:41.29999	2023-06-10 22:46:41.299992
34633436	4	190	33041	4900	182083	4520	2011	0	83 тыс. км	83	4	1.6	1	2	\N	1	f	/auto_chery_m11_34633436.html	LVVDB11BxBDxxxx14	6	546	2023-06-10 22:46:41.3245	2023-06-10 22:46:41.324502
34436302	4	84	42605	5900	219539	5453	2013	0	87 тыс. км	87	4	1	1	2	\N	1	f	/auto_volkswagen_up_34436302.html	WVWZZZAAZDD124393	5	5	2023-06-10 22:46:41.53097	2023-06-10 22:46:41.530971
34633494	3	58	40472	7100	264191	6562	2017	13	147 тыс. км	147	1	1.2	1	2	\N	1	f	/auto_peugeot_301_34633494.html	VF3DDHMZ6HJ595767	22	161	2023-06-10 22:46:41.539196	2023-06-10 22:46:41.539199
34633496	2	88	847	200	7442	185	1977	0	200 тыс. км	200	1	1.2	1	3	\N	1	f	/auto_vaz_lada_2102_34633496.html		10	10	2023-06-10 22:46:41.55708	2023-06-10 22:46:41.557082
34633478	3	9	2319	20500	762805	18947	2014	0	90 тыс. км	90	1	3	2	3	\N	1	f	/auto_bmw_5_series_34633478.html	WBA5B1C55ED483561	1	1	2023-06-10 22:46:41.568699	2023-06-10 22:46:41.568701
34097039	197	58	63875	10711	398574	9900	2015	0	173 тыс. км	173	2	1.6	1	2	\N	6	f	/auto_peugeot_partner_34097039.html	VF37A9HN0FJ860184	19	331	2023-06-10 22:46:41.593947	2023-06-10 22:46:41.593948
32854253	212	62	1875	17500	651175	16174	2011	0	1030 тыс. км	1030	2	11	2	\N	\N	6	f	/auto_renault_premium_32854253.html	VF624GPAх00хххх85	15	608	2023-06-10 22:46:42.728289	2023-06-10 22:46:42.728294
34633462	4	88	2547	4250	158143	3928	2008	0	67 тыс. км	67	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2172_priora_34633462.html	XTA21723080003416	11	11	2023-06-10 22:46:43.218989	2023-06-10 22:46:43.218991
34633466	3	79	698	30000	1116300	27727	2020	0	101 тыс. км	101	1	2.5	2	2	\N	1	f	/auto_toyota_camry_34633466.html	JTNBF3HK103052746	10	10	2023-06-10 22:46:43.234547	2023-06-10 22:46:43.234548
34477650	5	70	49223	33500	1246535	30962	2019	0	148 тыс. км	148	2	2	2	1	\N	1	f	/auto_skoda_kodiaq_34477650.html	TMBLK7NS7K8044625	20	20	2023-06-10 22:46:43.337119	2023-06-10 22:46:43.337121
34459556	2	85	823	15500	576755	14326	2012	0	198 тыс. км	198	2	2.4	2	1	\N	1	f	/auto_volvo_xc70_34459556.html	YV1BZ875хD1хххх24	5	299	2023-06-10 22:46:43.461426	2023-06-10 22:46:43.461432
34633438	3	88	856	2200	81751	2029	2004	0	250 тыс. км	250	4	1.5	1	2	\N	1	f	/auto_vaz_lada_2110_34633438.html	XTA21102x40xxxx85	11	11	2023-06-10 22:46:43.829911	2023-06-10 22:46:43.829923
34633429	3	24	240	9000	334439	8302	2018	0	107 тыс. км	107	1	2	2	2	\N	1	t	/auto_ford_focus_34633429.html	1FADP3E2xJLxxxx95	8	8	2023-06-10 22:46:43.844881	2023-06-10 22:46:43.844883
33829944	5	48	43170	20300	755363	18762	2015	0	87 тыс. км	87	1	2	2	\N	\N	1	t	/auto_mercedes_benz_gla_class_33829944.html	WDCTG4EBхFJхххх83	11	11	2023-06-10 22:46:44.197593	2023-06-10 22:46:44.197599
34637329	307	70	652	11800	439078	10906	2014	0	152 тыс. км	152	1	1.4	1	2	\N	1	f	/auto_skoda_octavia_34637329.html		4	4	2023-06-11 18:25:48.282185	2023-06-11 18:25:48.282186
34637332	2	48	428	8900	331169	8226	2008	0	250 тыс. км	250	1	1.8	2	3	\N	1	f	/auto_mercedes_benz_e_class_34637332.html		10	214	2023-06-11 18:25:48.767806	2023-06-11 18:25:48.76782
34646189	385	115	18379	36500	1358165	33735	2007	0	1200 тыс. км	1200	2	0	1	3	\N	6	f	/auto_daf_xf_105_34646189.html		10	233	2023-06-13 18:33:36.184229	2023-06-13 18:33:36.18423
34606564	4	33	323	5500	204655	5083	2007	0	156 тыс. км	156	4	1.4	2	2	\N	1	f	/auto_kia_rio_34606564.html		10	10	2023-06-09 10:05:46.766937	2023-06-09 10:05:46.766938
34454382	3	13	1052	4500	167445	4159	2005	0	185 тыс. км	185	4	1.6	1	2	\N	1	f	/auto_chevrolet_lacetti_34454382.html	Y6DNF196E6K275123	7	462	2023-06-09 23:04:58.773899	2023-06-09 23:04:58.7739
33824723	3	128	45128	26000	966680	23993	2020	0	17 тыс. км	17	1	3	2	1	\N	1	t	/auto_infiniti_q50_33824723.html	JN1EV7BRxMMxxxx59	5	5	2023-06-09 23:19:29.331802	2023-06-09 23:19:29.331804
34628362	4	67	636	7500	279075	6932	2006	0	210 тыс. км	210	2	2	1	2	\N	1	f	/auto_seat_leon_34628362.html	VSSZZZ1PZ7R051463	10	10	2023-06-09 23:19:29.505989	2023-06-09 23:19:29.50599
34468853	449	58	37765	12499	465088	11552	2014	0	94 тыс. км	94	2	2	2	2	\N	1	f	/auto_peugeot_5008_34468853.html	VF30ERHHAES254223	5	306	2023-06-09 23:19:29.664096	2023-06-09 23:19:29.664098
34649441	5	48	3048	65000	2418650	60076	2014	13	99 тыс. км	99	2	0	3	\N	\N	1	f	/auto_mercedes_benz_g_class_34649441.html		10	10	2023-06-13 20:57:08.226591	2023-06-13 20:57:08.226594
34649091	5	24	2874	12750	474428	11784	2011	13	263 тыс. км	263	2	2	2	1	\N	1	f	/auto_ford_kuga_34649091.html	WF0RXXGCDRBU53127	5	5	2023-06-13 20:57:08.256982	2023-06-13 20:57:08.256988
34649360	5	59	60099	88888	3307522	82154	2020	0	40 тыс. км	40	1	3	2	1	\N	1	f	/auto_porsche_cayenne_coupe_34649360.html	WP1ZZZ9YZMDA42506	10	10	2023-06-13 20:57:08.286128	2023-06-13 20:57:08.286129
34649442	4	55	2775	6500	241865	6008	2008	13	99 тыс. км	99	1	1.6	2	2	\N	1	f	/auto_nissan_tiida_34649442.html		10	10	2023-06-13 20:57:08.305811	2023-06-13 20:57:08.305812
34649451	3	48	428	2900	107909	2680	1997	13	400 тыс. км	400	2	0	2	3	\N	1	f	/auto_mercedes_benz_e_class_34649451.html	WDB2100251A540738	15	15	2023-06-13 20:57:08.343021	2023-06-13 20:57:08.343023
31394316	3	62	586	4900	182083	4520	2007	0	250 тыс. км	250	4	1.6	1	2	\N	1	f	/auto_renault_megane_31394316.html	VF1LM1B0x37xxxx88	10	10	2023-06-10 22:46:40.441738	2023-06-10 22:46:40.441739
34114053	5	59	546	13950	519080	12893	2008	0	129 тыс. км	129	1	4.8	2	1	\N	1	f	/auto_porsche_cayenne_34114053.html	WP1ZZZ9Pх8Lхххх23	10	10	2023-06-10 22:46:40.571554	2023-06-10 22:46:40.571558
34633487	5	32	314	18000	669780	16636	2019	13	74 тыс. км	74	1	2.4	2	2	\N	1	f	/auto_jeep_cherokee_34633487.html		10	10	2023-06-10 22:46:40.577202	2023-06-10 22:46:40.577203
34633157	3	47	392	1800	66978	1664	1992	13	180 тыс. км	180	0	1.7	1	2	\N	1	f	/auto_mazda_323_34633157.html	JMZBG129х00хххх49	5	5	2023-06-10 22:46:40.589387	2023-06-10 22:46:40.589389
32756023	5	59	43158	65999	2455823	60999	2016	14	23 тыс. км	23	1	3	2	1	\N	1	f	/auto_porsche_macan_32756023.html	WP1ZZZ95хHLхххх84	7	7	2023-06-10 22:46:40.64013	2023-06-10 22:46:40.640132
34089355	5	48	3048	65900	2452139	60908	2013	0	139 тыс. км	139	2	3	2	1	\N	1	f	/auto_mercedes_benz_g_class_34089355.html	WDB4633461X206582	12	12	2023-06-10 22:46:40.79652	2023-06-10 22:46:40.796523
34633417	2	56	1508	5650	209953	5212	2005	0	223 тыс. км	223	1	1.8	1	2	\N	1	f	/auto_opel_astra_34633417.html	W0L0AHL3x55xxxx70	18	18	2023-06-10 22:46:41.316649	2023-06-10 22:46:41.316651
34633470	3	88	851	1100	40931	1017	1989	5	20 тыс. км	20	4	1.3	1	3	\N	1	f	/auto_vaz_lada_2106_34633470.html	237962/4401C	10	214	2023-06-10 22:46:41.511984	2023-06-10 22:46:41.511986
34633459	194	91	1769	3500	130235	3235	2000	8	1000 тыс. км	1000	1	3.7	1	1	\N	6	f	/auto_gaz_66_34633459.html		5	617	2023-06-10 22:46:41.541729	2023-06-10 22:46:41.541735
34633453	66	1583	29010	11000	409310	10167	1999	13	50 тыс. км	50	2	0	2	1	\N	10	f	/auto_john_deere_8400_34633453.html		19	327	2023-06-10 22:46:41.578119	2023-06-10 22:46:41.57812
34633455	3	13	1052	5150	191632	4760	2007	0	185 тыс. км	185	4	1.8	1	\N	\N	1	f	/auto_chevrolet_lacetti_34633455.html	KL1NF19BE7K670639	19	19	2023-06-10 22:46:41.598412	2023-06-10 22:46:41.598414
34457606	5	6	49206	65900	2452139	60908	2017	0	160 тыс. км	160	2	4	2	1	\N	1	f	/auto_audi_sq7_34457606.html	WAUZZZ4MхJDхххх85	7	7	2023-06-10 22:46:42.73151	2023-06-10 22:46:42.731513
34633430	3	18	161	2000	74320	1845	2003	0	379 тыс. км	379	1	1.6	1	2	\N	1	f	/auto_daewoo_lanos_34633430.html	SUPTF696x3Wxxxx32	4	4	2023-06-10 22:46:43.030679	2023-06-10 22:46:43.03068
34633415	212	203	36589	23500	873259	21679	2012	0	1300 тыс. км	1300	2	12.7	2	3	\N	6	f	/auto_scania_r_420_34633415.html		25	544	2023-06-10 22:46:43.084227	2023-06-10 22:46:43.084228
34637338	2	56	1508	6499	241828	6007	2010	0	199 тыс. км	199	2	1.7	1	2	\N	1	f	/auto_opel_astra_34637338.html	W0L0AHL35A2099688	12	12	2023-06-11 18:25:48.283527	2023-06-11 18:25:48.283529
34461114	3	79	698	13400	497943	12358	2012	0	187 тыс. км	187	5	2.5	2	2	\N	1	t	/auto_toyota_camry_34461114.html	4T1BD1FKxCUxxxx34	24	24	2023-06-11 18:25:48.502625	2023-06-11 18:25:48.502627
28382654	3	85	815	6300	234423	5823	2005	0	328 тыс. км	328	2	2.4	3	2	\N	1	f	/auto_volvo_s60_28382654.html	YV1RS796х52хххх96	1	1	2023-06-11 18:25:48.772555	2023-06-11 18:25:48.772558
34637356	2	6	47	4300	160003	3974	1999	0	360 тыс. км	360	1	2.8	3	1	\N	1	f	/auto_audi_a4_34637356.html	WAUZZZ8DZXA210958	19	19	2023-06-11 18:25:48.820132	2023-06-11 18:25:48.820134
34637346	307	70	652	13300	494893	12292	2013	0	240 тыс. км	240	1	1.8	2	2	\N	1	f	/auto_skoda_octavia_34637346.html	TMBAD2NE1EB006099	11	76	2023-06-11 18:25:48.844386	2023-06-11 18:25:48.844387
34637315	3	79	698	15400	573034	14233	2012	0	198 тыс. км	198	4	2.5	2	2	\N	1	f	/auto_toyota_camry_34637315.html	JTNBFYFKх03хххх59	10	210	2023-06-11 18:25:48.899736	2023-06-11 18:25:48.899738
34637306	5	29	293	13999	520903	12938	2010	0	255 тыс. км	255	2	0	2	1	\N	1	f	/auto_hyundai_santa_fe_34637306.html	KMHSH81XDBU695994	7	7	2023-06-11 18:25:49.502806	2023-06-11 18:25:49.50281
34637317	6	62	586	7500	279075	6932	2012	0	220 тыс. км	220	1	2	2	2	\N	1	f	/auto_renault_megane_34637317.html	VF1DZ1E0T43164680	10	10	2023-06-11 18:25:49.517241	2023-06-11 18:25:49.517243
34637319	2	6	47	4750	176748	4390	2003	0	340 тыс. км	340	2	1.9	5	2	\N	1	f	/auto_audi_a4_34637319.html	WAUZZZ8E63A370088	10	10	2023-06-11 18:25:49.564616	2023-06-11 18:25:49.564617
34635825	5	6	1943	18000	669780	16636	2009	0	300 тыс. км	300	2	3	2	\N	\N	1	f	/auto_audi_q7_34635825.html		22	157	2023-06-11 18:25:49.613213	2023-06-11 18:25:49.613215
34637334	9	24	2103	27500	1023275	25417	2017	0	62 тыс. км	62	1	2.7	2	1	\N	1	f	/auto_ford_f_150_34637334.html	1FTEX1EP8HFB15371	10	10	2023-06-11 18:25:49.674222	2023-06-11 18:25:49.674224
34637339	8	62	59145	4950	184190	4575	2009	0	235 тыс. км	235	1	1.2	1	2	\N	1	f	/auto_renault_kangoo_34637339.html	VF1KCEDEF41002535	2	2	2023-06-11 18:25:50.335687	2023-06-11 18:25:50.335696
34637273	6	9	42495	26000	967460	24030	2017	0	83 тыс. км	83	1	2	2	3	\N	1	t	/auto_bmw_4_series_34637273.html	WBA4J1C5XJBG75808	10	10	2023-06-11 18:25:50.34851	2023-06-11 18:25:50.348513
34126557	3	75	664	8000	297680	7394	2010	0	160 тыс. км	160	1	2	2	1	\N	1	f	/auto_subaru_impreza_34126557.html	JF1GE7LS5BG015483	8	418	2023-06-11 18:25:50.558092	2023-06-11 18:25:50.5581
34637817	197	175	31595	16500	613965	15250	2018	0	229 тыс. км	229	2	2.3	1	3	\N	6	f	/auto_iveco_daily_gruz_34637817.html		9	392	2023-06-11 19:51:44.903122	2023-06-11 19:51:44.903124
33726571	212	115	1674	28999	1079053	26802	2014	0	949 тыс. км	949	2	12.9	1	\N	\N	6	f	/auto_daf_xf_33726571.html	XLRTEH4300G020838	18	18	2023-06-11 19:51:44.999926	2023-06-11 19:51:44.999928
34648484	3	47	392	700	26047	647	1992	0	370 тыс. км	370	4	1.3	1	2	\N	1	t	/auto_mazda_323_34648484.html	JMZBG12C200656437	19	19	2023-06-13 18:33:36.182376	2023-06-13 18:33:36.182377
34648443	3	88	31636	3100	115351	2865	2008	13	197 тыс. км	197	4	0	1	2	\N	1	f	/auto_vaz_lada_2170_priora_34648443.html		10	10	2023-06-13 18:33:37.225045	2023-06-13 18:33:37.225047
33496950	299	177	31670	130000	4837300	120152	2012	0	520 тыс. км	520	2	4.7	2	3	\N	4	f	/auto_man_tgs_33496950.html		14	14	2023-06-08 19:12:13.801054	2023-06-08 19:12:13.801055
34621604	4	13	1052	4500	167535	4161	2006	0	205 тыс. км	205	4	1.8	2	2	\N	1	f	/auto_chevrolet_lacetti_34621604.html	KL1NA483x6Kxxxx80	7	7	2023-06-08 19:12:14.009589	2023-06-08 19:12:14.00959
34475795	6	71	28290	7900	293959	7302	2014	0	24 тыс. км	24	6	0	2	3	\N	1	f	/auto_smart_fortwo_34475795.html	WMEEJ9AA0FK826120	10	10	2023-06-13 18:33:37.287764	2023-06-13 18:33:37.287765
32887872	6	6	2032	22000	818620	20333	2013	0	143 тыс. км	143	1	2	4	1	\N	1	f	/auto_audi_a5_32887872.html	WAUZZZ8T5DA050969	10	10	2023-06-13 18:33:37.299765	2023-06-13 18:33:37.299766
31353684	3	24	240	7600	282796	7024	2012	0	186 тыс. км	186	1	2	2	2	\N	1	t	/auto_ford_focus_31353684.html	1FAHP3H2хCLхххх26	15	15	2023-06-13 18:33:37.37965	2023-06-13 18:33:37.379652
33903679	195	62	46833	21900	814899	20241	2020	0	165 тыс. км	165	2	0	1	1	\N	6	f	/auto_renault_master_33903679.html	\N	18	55	2023-06-08 19:12:14.412365	2023-06-08 19:12:14.412366
34446035	5	37	351	89900	3345179	83089	2018	0	131 тыс. км	131	2	4.4	2	1	\N	1	f	/auto_land_rover_range_rover_34446035.html	SALGA2BJ2JA385515	10	10	2023-06-08 19:12:14.424519	2023-06-08 19:12:14.424521
34008683	5	84	793	92000	3423320	85030	2021	0	76 тыс. км	76	2	4	2	\N	\N	1	f	/auto_volkswagen_touareg_34008683.html	WVGZZZCRхMDхххх03	20	20	2023-06-09 10:05:46.768441	2023-06-09 10:05:46.768442
34623895	254	62	46833	17150	638152	15851	2017	8	280 тыс. км	280	2	0	1	2	\N	6	f	/auto_renault_master_34623895.html	VF6MFF4ZC55632876	9	392	2023-06-09 10:05:46.977924	2023-06-09 10:05:46.977926
34442641	4	67	635	1999	74422	1846	1993	0	219 тыс. км	219	4	1	1	2	\N	1	f	/auto_seat_ibiza_34442641.html	VSSZZZ6KxZRxxxx47	10	10	2023-06-09 10:05:47.389496	2023-06-09 10:05:47.389498
34109507	4	48	423	2900	107909	2680	2001	0	230 тыс. км	230	2	1.7	1	2	\N	1	f	/auto_mercedes_benz_a_class_34109507.html	WDB1681091J716792	5	306	2023-06-09 10:05:47.42598	2023-06-09 10:05:47.425981
34454347	5	75	663	17500	650650	16149	2017	0	99 тыс. км	99	4	2.5	1	1	\N	1	t	/auto_subaru_forester_34454347.html	JF2SJAACxJGxxxx70	5	307	2023-06-09 23:04:58.774955	2023-06-09 23:04:58.774956
34628367	3	88	861	2350	87444	2172	2008	0	177 тыс. км	177	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34628367.html	XTA21154084566382	16	16	2023-06-09 23:19:29.484031	2023-06-09 23:19:29.484033
34628347	5	29	1268	19900	740479	18392	2018	13	99 тыс. км	99	4	2	2	2	\N	1	f	/auto_hyundai_tucson_34628347.html		11	76	2023-06-09 23:19:29.50378	2023-06-09 23:19:29.503781
34628363	3	9	3219	71500	2660515	66083	2016	13	99 тыс. км	99	1	2	2	1	\N	1	f	/auto_bmw_3_series_34628363.html	WBA8E5G55HNU22358	10	10	2023-06-09 23:19:29.532123	2023-06-09 23:19:29.532124
34628359	66	1584	38477	10999	409273	10166	2009	8	4 тыс. км	4	0	0	1	1	\N	10	f	/auto_mtz_82_1_belarus_34628359.html		3	438	2023-06-09 23:19:29.542252	2023-06-09 23:19:29.542253
33976888	5	33	3488	13000	483730	12015	2016	0	91 тыс. км	91	6	0	5	2	\N	1	f	/auto_kia_soul_33976888.html	KNAJX81EхH7хххх40	22	22	2023-06-09 23:19:29.643938	2023-06-09 23:19:29.64394
1866779	8	48	35249	3300	122793	3050	1979	1	400 тыс. км	400	2	2.4	1	\N	\N	0	f	/auto_mercedes_benz_sprinter_1866779.html		2	2	2023-06-13 18:33:37.586424	2023-06-13 18:33:37.586426
33492818	5	118	3235	13000	483079	11993	2015	0	110 тыс. км	110	4	2.4	2	2	\N	1	t	/auto_dodge_journey_33492818.html	3C4PDCABxGTxxxx20	24	24	2023-06-10 22:46:40.461967	2023-06-10 22:46:40.461968
34637345	8	62	588	20000	744200	18485	2016	0	120 тыс. км	120	2	1.5	4	2	\N	1	f	/auto_renault_scenic_34637345.html	VF1RFA00X56731503	7	14946	2023-06-11 18:25:48.284993	2023-06-11 18:25:48.284995
34637813	2	88	857	2100	78141	1941	2005	0	115 тыс. км	115	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2111_34637813.html	XTA21114050194274	19	329	2023-06-11 19:51:45.051495	2023-06-11 19:51:45.051496
34637824	8	84	35448	6999	260433	6469	2006	0	230 тыс. км	230	0	1.6	1	2	\N	1	f	/auto_volkswagen_caddy_34637824.html	WV2ZZZ2KZ7X025256	18	64	2023-06-11 19:51:45.095816	2023-06-11 19:51:45.095818
34637810	5	33	327	14600	543266	13494	2013	0	191 тыс. км	191	0	2	1	1	\N	1	f	/auto_kia_sportage_34637810.html	U5YPC813хDLхххх87	16	248	2023-06-11 19:51:45.557942	2023-06-11 19:51:45.557946
34637774	5	55	1730	13700	509777	12662	2012	0	130 тыс. км	130	1	3.5	5	1	\N	1	f	/auto_nissan_murano_34637774.html	JN1TANZ5хU0хххх82	10	655	2023-06-11 19:51:45.715258	2023-06-11 19:51:45.715264
33483724	3	6	49	9999	371562	9222	2004	0	200 тыс. км	200	2	3	2	1	\N	1	f	/auto_audi_a6_33483724.html	WAUZZZ4Fx5Nxxxx96	5	301	2023-06-11 19:51:46.037472	2023-06-11 19:51:46.037474
25851878	3	185	2533	2600	96746	2403	2007	0	120 тыс. км	120	4	1.5	1	2	\N	1	f	/auto_geely_ck_25851878.html	Y7CMR715х7Xхххх82	5	5	2023-06-11 19:51:46.305792	2023-06-11 19:51:46.305793
34637796	4	23	224	2650	98607	2449	2000	0	238 тыс. км	238	1	1.2	1	2	\N	1	f	/auto_fiat_punto_34637796.html	ZFA1880000A175508	5	5	2023-06-11 19:51:46.328012	2023-06-11 19:51:46.328013
34637773	2	84	39690	8400	312564	7764	2009	0	350 тыс. км	350	2	2	2	\N	\N	1	f	/auto_volkswagen_passat_34637773.html		9	398	2023-06-11 19:51:46.375161	2023-06-11 19:51:46.375163
34338705	3	6	47	29999	1116263	27726	2018	0	60 тыс. км	60	2	2	2	2	\N	1	f	/auto_audi_a4_34338705.html	WAUZZZF43KA015159	18	18	2023-06-11 19:51:46.385829	2023-06-11 19:51:46.385831
34464862	4	84	35449	16999	632533	15711	2018	0	202 тыс. км	202	2	1.6	2	2	\N	1	f	/auto_volkswagen_golf_34464862.html	WVWZZZAUZKW000526	18	18	2023-06-11 19:51:46.450135	2023-06-11 19:51:46.450136
34637823	5	48	1974	17000	632570	15712	2008	0	346 тыс. км	346	2	3	2	1	\N	1	f	/auto_mercedes_benz_gl_class_34637823.html	4JGBF22E58A372298	10	210	2023-06-11 19:51:46.47925	2023-06-11 19:51:46.479251
33793712	5	79	35004	54000	2006639	49804	2020	0	44 тыс. км	44	1	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_33793712.html	JTEBU3FJx05xxxx98	24	24	2023-06-11 19:51:46.773618	2023-06-11 19:51:46.773623
34637753	3	84	785	14200	528382	13124	2018	0	7 тыс. км	7	1	1.4	2	2	\N	1	t	/auto_volkswagen_jetta_34637753.html		7	7	2023-06-11 19:51:47.052888	2023-06-11 19:51:47.052892
34637769	2	56	1508	6400	238144	5915	2009	0	245 тыс. км	245	4	1.6	1	2	\N	1	f	/auto_opel_astra_34637769.html	W0L0AHL3х92хххх63	11	11	2023-06-11 19:51:47.069415	2023-06-11 19:51:47.069417
34463765	5	317	45165	8500	316285	7856	2015	0	79 тыс. км	79	1	1.5	1	2	\N	1	f	/auto_jac_s3_34463765.html	LJ12EKR25E4777778	10	210	2023-06-11 19:51:47.093338	2023-06-11 19:51:47.09334
34637781	8	56	59772	9800	364658	9058	2007	0	192 тыс. км	192	2	2	1	2	\N	1	f	/auto_opel_vivaro_34637781.html	VF64VGFTх63хххх97	4	498	2023-06-11 19:51:47.139986	2023-06-11 19:51:47.139988
34124980	2	6	47	24400	907924	22552	2016	0	211 тыс. км	211	2	2	2	2	\N	1	f	/auto_audi_a4_34124980.html	WAUZZZF4хHAхххх74	18	18	2023-06-11 19:51:47.221968	2023-06-11 19:51:47.22197
34203996	4	84	45152	20500	762805	18947	2019	0	47 тыс. км	47	6	0	2	2	\N	1	t	/auto_volkswagen_e_golf_34203996.html	WVWKR7AU0KW915567	11	11	2023-06-11 19:51:47.278185	2023-06-11 19:51:47.278187
34648415	5	29	293	10500	390705	9705	2007	0	199 тыс. км	199	2	2.2	2	1	\N	1	f	/auto_hyundai_santa_fe_34648415.html	KMHSH81WP7U175110	5	305	2023-06-13 18:33:38.040919	2023-06-13 18:33:38.040922
34648456	4	58	2109	9900	368379	9150	2016	0	185 тыс. км	185	2	1.6	1	2	\N	1	f	/auto_peugeot_308_34648456.html		18	18	2023-06-13 18:33:36.182528	2023-06-13 18:33:36.182529
34649397	3	6	47	22700	844667	20980	2017	0	198 тыс. км	198	1	2	2	1	\N	1	f	/auto_audi_a4_34649397.html	WAUANAF4XHN022573	10	10	2023-06-13 20:57:08.251338	2023-06-13 20:57:08.25134
33612423	299	62	1875	25000	930749	23118	2000	0	100 тыс. км	100	2	12	1	3	\N	4	f	/auto_renault_premium_33612423.html		11	85	2023-06-08 19:12:13.711104	2023-06-08 19:12:13.711106
34109464	8	15	59443	4700	174887	4344	2005	0	260 тыс. км	260	2	2	1	2	\N	1	f	/auto_citroen_jumpy_34109464.html	VF7BZRHXB86185397	15	15	2023-06-09 10:05:46.796764	2023-06-09 10:05:46.796766
34628318	307	70	652	11500	427915	10629	2012	8	228 тыс. км	228	2	2.01	2	2	\N	1	f	/auto_skoda_octavia_34628318.html		18	18	2023-06-09 23:04:58.789116	2023-06-09 23:04:58.789117
34454321	3	31	2264	22990	854768	21215	2015	0	128 тыс. км	128	1	3	2	1	\N	1	t	/auto_jaguar_xf_34454321.html	SAJBK4BVxGCxxxx28	10	10	2023-06-09 23:04:58.824069	2023-06-09 23:04:58.824071
34454222	8	23	31546	4000	148720	3691	2003	0	312 тыс. км	312	2	2	1	2	\N	1	f	/auto_fiat_scudo_pass_34454222.html	ZFA22000x12xxxx97	4	4	2023-06-09 23:04:58.872232	2023-06-09 23:04:58.872233
34628319	5	38	358	14500	539545	13402	2008	13	110 тыс. км	110	4	3.5	2	1	\N	1	f	/auto_lexus_rx_34628319.html	JTJHK31Uх82хххх74	4	498	2023-06-09 23:04:58.895361	2023-06-09 23:04:58.895363
34628300	2	65	622	5900	219539	5453	2006	8	204 тыс. км	204	1	1.8	2	2	\N	1	f	/auto_saab_9_3_34628300.html		10	10	2023-06-09 23:19:29.489148	2023-06-09 23:19:29.489149
34628357	4	84	780	13000	483730	12015	2015	13	108 тыс. км	108	1	1.4	2	2	\N	1	f	/auto_volkswagen_beetle_34628357.html	WVWZZZ16ZFM640091	20	20	2023-06-09 23:19:29.510067	2023-06-09 23:19:29.51007
34073888	2	62	585	6700	249307	6192	2010	0	270 тыс. км	270	2	1.5	1	2	\N	1	f	/auto_renault_laguna_34073888.html	VF1KT1A0643037462	15	621	2023-06-09 23:19:29.527931	2023-06-09 23:19:29.527932
34649450	5	15	45630	10300	383263	9520	2015	13	168 тыс. км	168	1	1.2	1	2	\N	1	f	/auto_citroen_c4_cactus_34649450.html	VF70PHNZBEE532004	10	10	2023-06-13 20:57:08.307298	2023-06-13 20:57:08.307299
34633506	5	55	1835	15450	574122	14253	2011	0	285 тыс. км	285	2	2.5	2	\N	\N	1	f	/auto_nissan_pathfinder_34633506.html	VSKJVWR5xU0xxxx84	5	5	2023-06-10 22:46:40.46278	2023-06-10 22:46:40.462782
34633481	3	6	49	18500	688385	17098	2014	13	286 тыс. км	286	2	2	2	2	\N	1	f	/auto_audi_a6_34633481.html		12	12	2023-06-10 22:46:40.656893	2023-06-10 22:46:40.656894
34633477	307	70	3167	5300	197213	4898	2007	13	310 тыс. км	310	4	1.8	1	2	\N	1	f	/auto_skoda_superb_34633477.html	TMBDL23U48B300868	15	15	2023-06-10 22:46:40.679814	2023-06-10 22:46:40.679815
34632870	5	33	326	10900	405589	10074	2012	0	220 тыс. км	220	1	2.4	2	2	\N	1	f	/auto_kia_sorento_34632870.html	5XYKT3A64DG418324	24	527	2023-06-10 22:46:41.045646	2023-06-10 22:46:41.045653
34633434	3	6	47	4299	159750	3966	2000	0	190 тыс. км	190	1	1.6	1	2	\N	1	f	/auto_audi_a4_34633434.html	WAUZZZ8DxYAxxxx29	3	427	2023-06-10 22:46:41.289027	2023-06-10 22:46:41.289029
34633469	5	58	43047	1100	40931	1017	2013	13	77 тыс. км	77	1	1.2	2	2	\N	1	f	/auto_peugeot_2008_34633469.html	VF3CUHMZ0DY090978	11	11	2023-06-10 22:46:41.524927	2023-06-10 22:46:41.524928
34633467	5	84	53118	29900	1112579	27635	2020	13	18 тыс. км	18	1	2	2	2	\N	1	t	/auto_volkswagen_tiguan_allspace_34633467.html	3VV3B7AX4LM105896	1	1	2023-06-10 22:46:41.54447	2023-06-10 22:46:41.544471
34603463	2	6	47	7600	282796	7024	2007	0	300 тыс. км	300	2	2	1	2	\N	1	f	/auto_audi_a4_34603463.html	WAUZZZ8E38A025561	15	15	2023-06-10 22:46:41.559009	2023-06-10 22:46:41.559014
34633461	18	179	44322	3700	137677	3420	2015	0	17 тыс. км	17	1	0	1	6	\N	2	f	/auto_yamaha_yzf_r_34633461.html	RGх0Jхххх10	1	609	2023-06-10 22:46:41.572009	2023-06-10 22:46:41.57201
34633474	2	84	35449	6999	260433	6469	2008	13	165 тыс. км	165	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34633474.html	WVGZZZ1Tх4Wхххх11	10	10	2023-06-10 22:46:41.582868	2023-06-10 22:46:41.582869
33315135	2	9	3219	4800	178608	4436	2002	0	194 тыс. км	194	1	2	1	3	\N	1	f	/auto_bmw_3_series_33315135.html	WBAAX51060PD34908	8	423	2023-06-10 22:46:41.603316	2023-06-10 22:46:41.603317
34633432	8	56	1524	7600	282416	7011	2009	0	194 тыс. км	194	2	1.7	1	2	\N	1	f	/auto_opel_zafira_34633432.html	W0L0AHM7x9Gxxxx14	18	18	2023-06-10 22:46:42.962589	2023-06-10 22:46:42.962591
34633476	195	115	2118	48000	1786080	44364	2017	8	730 тыс. км	730	2	6.7	2	3	\N	6	f	/auto_daf_cf_34633476.html	XLRAEM3700G099865	18	50	2023-06-10 22:46:43.238413	2023-06-10 22:46:43.238415
34256656	5	6	1943	36000	1339560	33273	2017	0	140 тыс. км	140	1	3	2	1	\N	1	t	/auto_audi_q7_34256656.html	WA1MAAF78JD006996	5	306	2023-06-10 22:46:43.328923	2023-06-10 22:46:43.328925
34457739	5	32	2842	18600	692106	17191	2019	0	38 тыс. км	38	4	2.4	2	1	\N	1	t	/auto_jeep_compass_34457739.html	3C4NJDCB5LT104496	10	650	2023-06-10 22:46:43.452215	2023-06-10 22:46:43.452219
34260014	2	70	652	8300	308428	7657	2010	0	240 тыс. км	240	1	1.8	1	2	\N	1	f	/auto_skoda_octavia_34260014.html	TMBGK61ZxA2xxxx13	1	47	2023-06-10 22:46:43.849051	2023-06-10 22:46:43.849053
34570413	4	58	46661	6499	241502	5994	2015	0	105 тыс. км	105	6	0	2	3	\N	1	f	/auto_peugeot_ion_34570413.html	VF31NZKYxFUxxxx50	9	392	2023-06-11 18:25:48.506401	2023-06-11 18:25:48.506402
34637310	4	48	2622	8400	312564	7764	2010	0	196 тыс. км	196	1	1.7	2	2	\N	1	f	/auto_mercedes_benz_b_class_34637310.html	WDD2452321J650156	9	9	2023-06-11 18:25:48.781711	2023-06-11 18:25:48.781715
34637181	3	88	850	550	20466	508	1995	0	600 тыс. км	600	4	0	1	3	\N	1	f	/auto_vaz_lada_2105_34637181.html	XTA21053хT1хххх72	2	144	2023-06-11 18:25:48.810068	2023-06-11 18:25:48.81007
32829199	2	6	3460	22300	829783	20611	2013	0	228 тыс. км	228	2	3	2	1	\N	1	f	/auto_audi_a6_allroad_32829199.html	WAUZZZ4GхDNхххх47	15	200	2023-06-11 18:25:48.910745	2023-06-11 18:25:48.910747
34460419	3	9	2319	9400	349303	8669	2007	0	230 тыс. км	230	1	2.5	2	\N	\N	1	f	/auto_bmw_5_series_34460419.html		12	12	2023-06-11 18:25:49.212582	2023-06-11 18:25:49.212586
34637263	8	84	64461	7000	260470	6470	2005	0	425 тыс. км	425	2	2.5	2	2	\N	1	f	/auto_volkswagen_transporter_34637263.html	WV1ZZZ7Hх6Hхххх22	5	5	2023-06-11 18:25:49.493954	2023-06-11 18:25:49.493955
34637308	3	56	1518	2599	96709	2402	1995	0	400 тыс. км	400	1	2.5	1	3	\N	1	f	/auto_opel_omega_34637308.html	W0L000026S1211709	2	2	2023-06-11 18:25:49.512223	2023-06-11 18:25:49.512225
34637354	3	84	785	6999	260433	6469	2008	0	252 тыс. км	252	1	1.4	1	2	\N	1	f	/auto_volkswagen_jetta_34637354.html	WVWZZZ1Kх8Mхххх98	11	11	2023-06-11 18:25:49.529252	2023-06-11 18:25:49.529253
34637785	4	88	858	2300	85583	2126	2007	0	140 тыс. км	140	1	1.6	1	\N	\N	1	f	/auto_vaz_lada_2112_34637785.html	Y6L2112107L017301	11	11	2023-06-11 19:51:46.303317	2023-06-11 19:51:46.303318
34637809	307	62	585	9304	346196	8599	2011	0	130 тыс. км	130	2	2	1	2	\N	1	f	/auto_renault_laguna_34637809.html	VF1BT320644752605	10	10	2023-06-11 19:51:46.308429	2023-06-11 19:51:46.308431
34637805	2	84	35449	14500	539545	13402	2017	0	18 тыс. км	18	1	1.8	1	1	\N	1	t	/auto_volkswagen_golf_34637805.html	3VW217AU7JM755951	7	7	2023-06-11 19:51:46.328445	2023-06-11 19:51:46.328446
34284283	5	32	314	15500	576755	14326	2017	0	130 тыс. км	130	4	2.4	2	\N	\N	1	t	/auto_jeep_cherokee_34284283.html	1C4PJLAB9HW668370	1	1	2023-06-11 19:51:46.375704	2023-06-11 19:51:46.375705
33628829	212	115	1674	28999	1079053	26802	2014	0	910 тыс. км	910	2	12.9	1	\N	\N	6	f	/auto_daf_xf_33628829.html	XLRTEH4300G020785	18	18	2023-06-11 19:51:46.462121	2023-06-11 19:51:46.462123
34648463	2	62	586	4500	167445	4159	2004	0	271 тыс. км	271	2	1.5	1	2	\N	1	f	/auto_renault_megane_34648463.html	VF1KMR20532214988	1	1	2023-06-13 18:33:36.182608	2023-06-13 18:33:36.182609
34649278	5	55	506	8500	316285	7856	1998	13	342 тыс. км	342	2	2.7	2	1	\N	1	f	/auto_nissan_terrano_ii_34649278.html		15	15	2023-06-13 20:57:08.314339	2023-06-13 20:57:08.31434
34621588	3	9	2319	5300	197213	4898	1997	13	330 тыс. км	330	4	2.8	2	3	\N	1	f	/auto_bmw_5_series_34621588.html	WBADD61020BR35805	10	610	2023-06-08 19:12:13.728814	2023-06-08 19:12:13.728816
28253174	2	84	39690	18400	684664	17006	2017	0	203 тыс. км	203	2	2	2	2	\N	1	f	/auto_volkswagen_passat_28253174.html	WVWZZZ3CхHPхххх48	1	602	2023-06-13 20:57:08.361449	2023-06-13 20:57:08.36145
34333715	4	24	239	2950	109828	2727	2007	0	290 тыс. км	290	1	1.2	1	2	\N	1	f	/auto_ford_fiesta_34333715.html	WF0HXXWPxH7xxxx43	10	10	2023-06-08 19:12:14.014976	2023-06-08 19:12:14.014977
34621549	227	48	35249	27034	1006500	25000	2013	0	90 тыс. км	90	2	0	1	\N	\N	7	f	/auto_mercedes_benz_sprinter_34621549.html		5	5	2023-06-08 19:12:14.027946	2023-06-08 19:12:14.027947
34621582	5	13	2544	9800	364658	9058	2010	8	250 тыс. км	250	2	2	1	2	\N	1	f	/auto_chevrolet_captiva_34621582.html		20	385	2023-06-08 19:12:14.350472	2023-06-08 19:12:14.350474
34400600	8	48	434	67700	2520471	62604	2020	0	145 тыс. км	145	2	2.1	2	1	\N	1	f	/auto_mercedes_benz_v_class_34400600.html	W1V44781x13xxxx35	10	10	2023-06-08 19:12:14.692219	2023-06-08 19:12:14.692221
34446060	3	13	1038	5400	200934	4991	2008	0	144 тыс. км	144	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34446060.html	Y6DSF69YE8W002122	19	317	2023-06-08 19:12:15.106209	2023-06-08 19:12:15.106209
33792976	194	91	929	2500	93025	2311	2008	0	250 тыс. км	250	4	0	1	\N	\N	6	f	/auto_gaz_3302_gazel_33792976.html		8	407	2023-06-09 10:05:46.811895	2023-06-09 10:05:46.811896
34628317	3	14	43386	9000	334890	8318	2006	13	219 тыс. км	219	1	2.7	2	3	\N	1	f	/auto_chrysler_300_c_34628317.html	1C3H8B3RX6Y158149	12	12	2023-06-09 23:04:58.827537	2023-06-09 23:04:58.827538
34627755	4	84	45152	20000	744200	18485	2020	13	16 тыс. км	16	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_34627755.html		5	5	2023-06-09 23:19:29.562427	2023-06-09 23:19:29.562429
1916505	3	9	32251	500	18605	462	2008	5	30 тыс. км	30	1	4	1	\N	\N	1	f	/auto_bmw_525_1916505.html		7	456	2023-06-13 23:53:24.794314	2023-06-13 23:53:24.794316
33175749	3	48	431	8000	297680	7394	1998	0	405 тыс. км	405	4	5	2	3	\N	1	t	/auto_mercedes_benz_s_class_33175749.html	WDB22007х1Aхххх74	10	10	2023-06-10 22:46:40.571143	2023-06-10 22:46:40.571144
34633495	5	55	2228	17200	640012	15897	2017	13	119 тыс. км	119	1	2.5	2	1	\N	1	f	/auto_nissan_rogue_34633495.html	5N1AT2MVхJCхххх21	5	291	2023-06-10 22:46:40.585402	2023-06-10 22:46:40.585403
34633465	3	185	3438	2800	104188	2588	2011	13	65 тыс. км	65	1	1.5	1	2	\N	1	f	/auto_geely_ck_2_34633465.html	L6T7524S2CN003112	6	559	2023-06-10 22:46:40.635119	2023-06-10 22:46:40.63512
34633365	3	55	2775	5900	219539	5453	2008	13	131 тыс. км	131	1	1.6	1	2	\N	1	f	/auto_nissan_tiida_34633365.html	3N1BCAC11UL449362	10	210	2023-06-10 22:46:40.673328	2023-06-10 22:46:40.673329
33280737	2	84	39690	11500	427339	10609	2012	0	302 тыс. км	302	2	2	2	2	\N	1	f	/auto_volkswagen_passat_33280737.html	WVWZZZ3CxDExxxx09	5	5	2023-06-10 22:46:41.275703	2023-06-10 22:46:41.275704
34433349	212	62	1875	21500	798939	19834	2011	0	686 тыс. км	686	2	11	2	3	\N	6	f	/auto_renault_premium_34433349.html	VF624GPAx00xxxx01	15	608	2023-06-10 22:46:41.301286	2023-06-10 22:46:41.301288
32776473	8	58	63875	3800	141398	3512	2005	0	330 тыс. км	330	2	2	1	2	\N	1	f	/auto_peugeot_partner_32776473.html	VF3GBRHYх96хххх10	3	3	2023-06-10 22:46:41.551623	2023-06-10 22:46:41.551624
34633457	4	18	163	2500	93025	2311	2008	0	70 тыс. км	70	1	0.8	1	2	\N	1	f	/auto_daewoo_matiz_34633457.html	XWB4A11BD8A168524	20	20	2023-06-10 22:46:41.581392	2023-06-10 22:46:41.581393
34633447	3	6	49	5500	204379	5073	2001	0	238 тыс. км	238	2	2.5	1	2	\N	1	f	/auto_audi_a6_34633447.html	WAUZZZ4Bx1Nxxxx08	20	20	2023-06-10 22:46:42.934617	2023-06-10 22:46:42.934623
34633441	8	15	130	6099	226638	5626	2004	0	298 тыс. км	298	2	2.2	1	2	\N	1	f	/auto_citroen_c8_34633441.html	VF7EB4HWx13xxxx86	22	22	2023-06-10 22:46:42.961021	2023-06-10 22:46:42.961023
34633435	2	9	2319	8600	319575	7933	2005	0	330 тыс. км	330	2	3	1	3	\N	1	f	/auto_bmw_5_series_34633435.html	WBANS710x0Cxxxx84	24	528	2023-06-10 22:46:43.030104	2023-06-10 22:46:43.030105
34513559	2	6	49	8150	303262	7533	2008	0	272 тыс. км	272	2	2	1	2	\N	1	f	/auto_audi_a6_34513559.html	WAUZZZ4Fх8Nхххх53	4	498	2023-06-10 22:46:43.320227	2023-06-10 22:46:43.32023
26857410	197	48	2098	48000	1786080	44364	2015	0	550 тыс. км	550	2	0	2	3	\N	6	f	/auto_mercedes_benz_atego_26857410.html		6	6	2023-06-10 22:46:43.604947	2023-06-10 22:46:43.604959
34633431	8	84	64461	7500	278700	6919	2003	0	188 тыс. км	188	2	1.9	1	\N	\N	1	f	/auto_volkswagen_transporter_34633431.html	WV1ZZZ7Hx4Hxxxx89	7	7	2023-06-10 22:46:43.833114	2023-06-10 22:46:43.833119
34633423	3	48	431	6200	230391	5719	2001	0	199 тыс. км	199	4	3	2	\N	\N	1	f	/auto_mercedes_benz_s_class_34633423.html		12	12	2023-06-10 22:46:43.844422	2023-06-10 22:46:43.844423
34637350	3	9	3219	7300	271633	6747	2007	0	235 тыс. км	235	1	2	2	3	\N	1	f	/auto_bmw_3_series_34637350.html	WBAVF51040VF82915	10	10	2023-06-11 18:25:48.774534	2023-06-11 18:25:48.774537
34637341	3	88	856	3700	137677	3420	2009	0	105 тыс. км	105	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34637341.html	Y6L2110109L208000	6	550	2023-06-11 18:25:48.796712	2023-06-11 18:25:48.796714
34637358	3	13	1038	3800	141398	3512	2007	0	308 тыс. км	308	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34637358.html	Y6DSF69YE7B080589	18	60	2023-06-11 18:25:48.806989	2023-06-11 18:25:48.806991
34464367	6	84	3006	8800	327448	8133	2010	0	218 тыс. км	218	1	0	2	2	\N	1	f	/auto_volkswagen_cc_passat_cc_34464367.html	WVWMN7AN3BE717990	12	12	2023-06-11 18:25:48.823685	2023-06-11 18:25:48.823686
32678226	5	98	955	19300	718153	17838	2013	0	120 тыс. км	120	1	3.5	2	1	\N	1	t	/auto_acura_mdx_32678226.html	5FRYD4H45EB009046	10	10	2023-06-11 18:25:48.918122	2023-06-11 18:25:48.918124
34637324	4	18	163	3200	119072	2958	2012	0	45 тыс. км	45	1	0.8	1	2	\N	1	f	/auto_daewoo_matiz_34637324.html	XWB4A11EDCA057893	24	514	2023-06-11 18:25:49.471905	2023-06-11 18:25:49.471911
34637238	2	56	1508	4999	186013	4620	2005	0	233 тыс. км	233	1	1.6	1	2	\N	1	f	/auto_opel_astra_34637238.html	W0L0AHL3555230612	9	9	2023-06-11 18:25:49.503657	2023-06-11 18:25:49.503659
33688218	3	91	883	1000	37210	924	1988	0	130 тыс. км	130	4	2.4	1	3	\N	1	f	/auto_gaz_2410_33688218.html	XTH24100хJ1хххх51	11	72	2023-06-11 18:25:49.674659	2023-06-11 18:25:49.674661
34112290	5	48	1974	31990	1190348	29567	2013	0	229 тыс. км	229	2	3	2	1	\N	1	f	/auto_mercedes_benz_gl_class_34112290.html	WDC1668241A198932	10	10	2023-06-11 18:25:49.776748	2023-06-11 18:25:49.77675
34637301	307	24	246	8500	316285	7856	2008	0	179 тыс. км	179	4	0	2	2	\N	1	f	/auto_ford_mondeo_34637301.html	WF0EXXGBхE8хххх48	11	76	2023-06-11 18:25:50.337877	2023-06-11 18:25:50.337881
34637322	2	9	2319	10900	405589	10074	2007	0	178 тыс. км	178	2	3	2	3	\N	1	f	/auto_bmw_5_series_34637322.html	WBAPX51080CU03760	25	25	2023-06-11 18:25:50.356868	2023-06-11 18:25:50.356872
34637806	3	24	240	7990	297308	7385	2011	0	296 тыс. км	296	1	2	2	2	\N	1	f	/auto_ford_focus_34637806.html	1FAHP3F20CL216531	10	10	2023-06-11 19:51:46.376631	2023-06-11 19:51:46.376632
34481318	2	24	246	5600	209048	5148	2007	0	328 тыс. км	328	2	1.8	1	2	\N	1	f	/auto_ford_mondeo_34481318.html	WF0GXXGBxG7xxxx80	22	165	2023-06-14 17:04:37.147259	2023-06-14 17:04:37.14726
34648469	2	84	39690	6500	241865	6008	2008	0	230 тыс. км	230	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34648469.html	WVWZZZ3Cх7Tхххх94	5	5	2023-06-13 18:33:36.183149	2023-06-13 18:33:36.18315
34276147	3	88	861	2900	107909	2680	2007	0	260 тыс. км	260	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34276147.html	XTA21154х74хххх99	10	217	2023-06-09 10:05:46.814282	2023-06-09 10:05:46.814283
34454408	3	28	262	13800	513084	12734	2016	0	61 тыс. км	61	1	2.4	2	2	\N	1	t	/auto_honda_accord_34454408.html	1HGCR2F3xHAxxxx32	15	15	2023-06-09 23:04:58.829547	2023-06-09 23:04:58.829549
34454255	5	33	327	21000	781410	19409	2019	0	45 тыс. км	45	1	1.6	1	2	\N	1	f	/auto_kia_sportage_34454255.html	U5YPG814ALL807887	10	10	2023-06-09 23:04:58.876361	2023-06-09 23:04:58.876361
34454200	3	185	35772	3450	128271	3183	2012	0	225 тыс. км	225	4	1.8	1	2	\N	1	f	/auto_geely_emgrand_7_ec7_34454200.html	L6T7844SxDNxxxx28	11	76	2023-06-09 23:04:59.186275	2023-06-09 23:04:59.186277
34454038	2	56	1508	4500	167310	4152	2007	0	250 тыс. км	250	2	1.7	1	2	\N	1	f	/auto_opel_astra_34454038.html	W0L0AHL3x82xxxx91	15	199	2023-06-09 23:04:59.301704	2023-06-09 23:04:59.301705
34143445	8	48	434	99900	3712283	92139	2020	0	12 тыс. км	12	2	1.9	2	1	\N	1	f	/auto_mercedes_benz_v_class_34143445.html	W1V44781x13xxxx54	10	10	2023-06-10 11:33:39.568248	2023-06-10 11:33:39.568252
34624812	2	9	2319	7400	274984	6825	2005	0	243 тыс. км	243	2	2.5	2	3	\N	1	f	/auto_bmw_5_series_34624812.html	WBANJ510x0Bxxxx28	3	3	2023-06-10 11:33:39.5809	2023-06-10 11:33:39.580905
33571240	307	2233	31567	35400	1315463	32649	2016	0	74 тыс. км	74	6	0	2	1	\N	1	t	/auto_tesla_model_s_33571240.html	5YJSA1E2xGFxxxx09	15	200	2023-06-10 11:33:39.62159	2023-06-10 11:33:39.621591
34629700	5	52	1485	8200	305122	7579	2007	13	210 тыс. км	210	4	3	2	1	\N	1	f	/auto_mitsubishi_outlander_34629700.html	JMBXLCW6W7Z001647	2	133	2023-06-10 11:33:39.787214	2023-06-10 11:33:39.787216
34548786	4	55	36565	12300	457683	11368	2016	0	58 тыс. км	58	6	0	2	2	\N	1	f	/auto_nissan_leaf_34548786.html	SJNFAAZE0U6055232	5	5	2023-06-10 11:33:39.828178	2023-06-10 11:33:39.82818
34629685	5	47	37381	15999	595323	14787	2014	13	185 тыс. км	185	2	2.2	2	1	\N	1	f	/auto_mazda_cx_5_34629685.html	JMZKEN92х00хххх59	5	291	2023-06-10 11:33:39.8409	2023-06-10 11:33:39.840902
34629703	4	18	163	1400	52094	1294	2008	0	137 тыс. км	137	1	1	1	2	\N	1	f	/auto_daewoo_matiz_34629703.html	XWB4811BD8A016520	15	15	2023-06-10 11:33:39.868723	2023-06-10 11:33:39.868724
34629705	3	56	1523	3850	143259	3558	2000	0	194 тыс. км	194	1	1.8	1	2	\N	1	f	/auto_opel_vectra_34629705.html		1	1	2023-06-10 11:33:39.899289	2023-06-10 11:33:39.899291
34475581	2	62	586	10800	401868	9982	2015	0	48 тыс. км	48	1	1.6	1	2	\N	1	f	/auto_renault_megane_34475581.html	VF1KZM40253437658	8	8	2023-06-10 11:33:39.942834	2023-06-10 11:33:39.942835
34533767	5	48	45217	91700	3412157	84753	2019	0	46 тыс. км	46	1	3	2	1	\N	1	f	/auto_mercedes_benz_gle_class_34533767.html	W1N16716х1Aхххх74	10	10	2023-06-10 11:33:40.061734	2023-06-10 11:33:40.061735
34211111	212	115	1674	39000	1449239	35970	2015	0	865 тыс. км	865	2	12.9	2	\N	\N	6	f	/auto_daf_xf_34211111.html		16	252	2023-06-10 11:33:40.322027	2023-06-10 11:33:40.322029
34629695	5	47	2009	10500	390705	9705	2011	0	226 тыс. км	226	0	0	1	1	\N	1	f	/auto_mazda_cx_7_34629695.html	JMZERH9A600226247	5	5	2023-06-10 11:33:40.576342	2023-06-10 11:33:40.576344
34629709	8	62	580	4200	156282	3882	2002	13	394 тыс. км	394	2	3	2	2	\N	1	f	/auto_renault_espace_34629709.html	VF1JK0JDB27739380	12	643	2023-06-10 11:33:40.627863	2023-06-10 11:33:40.627864
33123585	212	177	31670	39000	1451190	36045	2018	0	760 тыс. км	760	2	12.4	2	\N	\N	6	f	/auto_man_tgs_33123585.html		16	252	2023-06-10 11:33:40.636574	2023-06-10 11:33:40.636575
34029048	2	70	652	5500	204655	5083	2003	0	207 тыс. км	207	1	2	2	2	\N	1	f	/auto_skoda_octavia_34029048.html	TMBHE21U132774249	4	4	2023-06-10 11:33:40.865823	2023-06-10 11:33:40.865825
34541844	5	6	1943	14999	557362	13833	2010	0	392 тыс. км	392	2	3	2	1	\N	1	t	/auto_audi_q7_34541844.html	WA1VMBFExADxxxx02	9	9	2023-06-10 11:33:41.094538	2023-06-10 11:33:41.094541
34629664	3	47	393	23700	881877	21905	2018	13	53 тыс. км	53	4	2.5	2	2	\N	1	f	/auto_mazda_6_34629664.html	JM1GL1TY4J1227929	11	72	2023-06-10 11:33:41.361935	2023-06-10 11:33:41.361938
34629278	3	6	47	23900	889319	22089	2019	0	68 тыс. км	68	1	2	2	2	\N	1	t	/auto_audi_a4_34629278.html	WAUGMAF41KN013779	5	5	2023-06-10 11:33:41.380746	2023-06-10 11:33:41.380747
34629666	5	55	2228	14900	554429	13771	2016	13	125 тыс. км	125	1	2.5	2	1	\N	1	t	/auto_nissan_rogue_34629666.html	JN8AT2MV1HW000776	7	7	2023-06-10 11:33:41.392129	2023-06-10 11:33:41.392131
34615205	3	47	393	12690	472195	11729	2014	0	169 тыс. км	169	1	2.5	2	2	\N	1	f	/auto_mazda_6_34615205.html	JM1GJ1W61F1174885	10	10	2023-06-10 11:33:41.476796	2023-06-10 11:33:41.476797
1901169	3	88	848	2500	93025	2311	1974	1	110 тыс. км	110	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_2103_1901169.html		12	337	2023-06-10 11:33:41.499141	2023-06-10 11:33:41.499143
34629655	4	84	780	5900	219539	5453	2006	13	153 тыс. км	153	1	1.4	1	2	\N	1	f	/auto_volkswagen_beetle_34629655.html		25	25	2023-06-10 11:33:42.738805	2023-06-10 11:33:42.738812
34629658	5	70	3721	15900	591639	14695	2017	8	146 тыс. км	146	2	2	1	1	\N	1	f	/auto_skoda_yeti_34629658.html		24	24	2023-06-10 11:33:42.765567	2023-06-10 11:33:42.76557
1900292	3	33	1311	13000	483730	12015	2008	1	16 тыс. км	16	1	1.6	1	\N	\N	0	f	/auto_kia_cerato_1900292.html		10	10	2023-06-10 11:33:42.88003	2023-06-10 11:33:42.880032
34472088	5	32	314	18500	688385	17098	2019	0	73 тыс. км	73	1	2.4	2	2	\N	1	t	/auto_jeep_cherokee_34472088.html	1C4PJLLB1KD482855	14	14	2023-06-13 20:57:08.35505	2023-06-13 20:57:08.355051
34633497	4	33	2033	7150	266052	6608	2009	8	208 тыс. км	208	2	1.6	1	2	\N	1	f	/auto_kia_ceed_34633497.html	U5YHC516AAL207352	5	5	2023-06-10 22:46:40.635915	2023-06-10 22:46:40.635916
34637321	449	24	2036	10200	379542	9427	2015	0	275 тыс. км	275	2	1.5	1	2	\N	1	f	/auto_ford_c_max_34637321.html	WF0VXXGCEVFY06706	9	9	2023-06-11 18:25:48.788187	2023-06-11 18:25:48.788189
34637330	4	24	244	1400	52094	1294	1997	0	83 тыс. км	83	1	1.3	1	2	\N	1	f	/auto_ford_ka_34637330.html	WF0BXXWPRBVB78922	12	12	2023-06-11 18:25:48.843611	2023-06-11 18:25:48.843612
33272474	5	55	495	34000	1265140	31424	2003	0	225 тыс. км	225	4	4.8	2	\N	\N	1	f	/auto_nissan_patrol_33272474.html	JN1TFSY6хU0хххх41	22	165	2023-06-11 18:25:48.87471	2023-06-11 18:25:48.874711
34622461	3	67	636	6500	241865	6008	2011	0	160 тыс. км	160	1	1.2	1	2	\N	1	f	/auto_seat_leon_34622461.html	VSSZZZ1PZBR059482	24	24	2023-06-11 18:25:49.490661	2023-06-11 18:25:49.490664
34444950	8	62	60014	7500	279075	6932	2002	0	300 тыс. км	300	0	1.9	1	2	\N	1	f	/auto_renault_trafic_34444950.html	VF1FLBCB62V152175	5	632	2023-06-11 18:25:49.527016	2023-06-11 18:25:49.527023
34637266	2	6	39	600	22326	555	1989	0	220 тыс. км	220	0	2.3	1	2	\N	1	t	/auto_audi_100_34637266.html		18	55	2023-06-11 18:25:49.587085	2023-06-11 18:25:49.587087
34637276	4	84	45152	17700	658617	16359	2017	0	91 тыс. км	91	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_34637276.html	WVWZZZAUхJWхххх92	5	5	2023-06-11 18:25:49.646837	2023-06-11 18:25:49.646839
34637275	8	62	59145	4700	174887	4344	2008	0	326 тыс. км	326	4	1.4	1	2	\N	1	f	/auto_renault_kangoo_34637275.html	VF1KCEBCF40139442	4	4	2023-06-11 18:25:49.687015	2023-06-11 18:25:49.687017
34590896	8	84	35448	17999	669743	16635	2016	0	233 тыс. км	233	2	2	2	1	\N	1	f	/auto_volkswagen_caddy_34590896.html	WV2ZZZ2KхGXхххх09	18	55	2023-06-11 18:25:49.823664	2023-06-11 18:25:49.823666
34621605	41	1471	25418	9800	364853	9062	2013	0	2 тыс. км	2	1	1000	5	4	\N	2	f	/auto_brp_renegade_34621605.html		10	10	2023-06-08 19:12:13.695497	2023-06-08 19:12:13.695499
34648444	4	9	2161	11800	439078	10906	2012	13	235 тыс. км	235	2	2	2	3	\N	1	f	/auto_bmw_1_series_34648444.html	WBA1C71030J043659	24	527	2023-06-13 18:33:36.183362	2023-06-13 18:33:36.183362
34621529	4	48	2622	5600	208487	5178	2008	0	260 тыс. км	260	1	2	2	2	\N	1	f	/auto_mercedes_benz_b_class_34621529.html	WDD24523x1Jxxxx31	12	12	2023-06-08 19:12:14.014375	2023-06-08 19:12:14.014377
34621557	3	18	161	2200	81862	2033	2007	13	300 тыс. км	300	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34621557.html		3	436	2023-06-08 19:12:14.272078	2023-06-08 19:12:14.27208
34446373	5	79	35004	19300	718153	17838	2008	0	130 тыс. км	130	4	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34446373.html	JTEBU29J605148494	10	10	2023-06-08 19:12:14.434044	2023-06-08 19:12:14.434045
34649443	2	56	1508	6800	253028	6285	2011	8	285 тыс. км	285	2	1.3	1	2	\N	1	f	/auto_opel_astra_34649443.html	W0LPD8EAхB8хххх99	1	644	2023-06-13 20:57:08.358942	2023-06-13 20:57:08.358944
34242735	5	32	2842	17700	658971	16367	2017	0	87 тыс. км	87	1	2.4	2	1	\N	1	t	/auto_jeep_compass_34242735.html	3C4NJDDBxJTxxxx89	10	10	2023-06-08 19:12:14.699785	2023-06-08 19:12:14.699788
34446318	3	24	2970	1900	70699	1756	1989	0	72 тыс. км	72	1	2	1	3	\N	1	f	/auto_ford_sierra_34446318.html	WF0FXXGBBFKP37116	1	42	2023-06-08 19:12:14.997689	2023-06-08 19:12:14.99769
34446224	2	24	246	7200	267912	6655	2011	0	290 тыс. км	290	2	1.6	1	2	\N	1	f	/auto_ford_mondeo_34446224.html	WF0GXXGBхGBхххх71	9	9	2023-06-08 19:12:15.124206	2023-06-08 19:12:15.124207
34439510	8	15	59443	2900	107909	2680	1999	0	375 тыс. км	375	2	1.9	1	2	\N	1	f	/auto_citroen_jumpy_34439510.html	VF7BZWJZA12474463	15	202	2023-06-09 10:05:47.426575	2023-06-09 10:05:47.426576
33976752	2	70	652	14500	539545	13402	2018	0	236 тыс. км	236	2	1.6	1	2	\N	1	f	/auto_skoda_octavia_33976752.html	TMBJG7NEхJ0хххх92	1	1	2023-06-09 10:05:47.514681	2023-06-09 10:05:47.514683
34454398	2	70	652	7199	267875	6654	2010	0	260 тыс. км	260	1	1.8	1	1	\N	1	f	/auto_skoda_octavia_34454398.html	TMBKK61ZхB2хххх95	10	10	2023-06-09 23:04:58.877605	2023-06-09 23:04:58.877605
34282083	5	118	3235	12299	457646	11367	2017	0	197 тыс. км	197	4	2.4	2	2	\N	1	t	/auto_dodge_journey_34282083.html	3C4PDCABXHT622110	15	15	2023-06-10 11:33:39.945136	2023-06-10 11:33:39.945137
34629657	3	88	856	1700	63257	1571	2007	0	28 тыс. км	28	0	0	1	2	\N	1	f	/auto_vaz_lada_2110_34629657.html	XTA21104071063068	1	40	2023-06-10 11:33:40.041189	2023-06-10 11:33:40.041191
34629659	3	9	18490	4600	171166	4252	2002	13	310 тыс. км	310	4	4.4	2	3	\N	1	f	/auto_bmw_7_series_34629659.html	WBAGL61010DM55856	9	9	2023-06-10 11:33:40.600882	2023-06-10 11:33:40.600884
1903979	9	30	2331	6000	223260	5545	1986	1	250 тыс. км	250	2	2.8	1	\N	\N	1	f	/auto_isuzu_elf_1903979.html		11	11	2023-06-10 11:33:40.648665	2023-06-10 11:33:40.648666
33873586	3	55	1495	19200	714432	17745	2018	0	50 тыс. км	50	1	2.5	5	1	\N	1	t	/auto_nissan_altima_33873586.html	1N4BL4CW9KN303880	1	599	2023-06-10 11:33:40.699612	2023-06-10 11:33:40.699613
34629346	3	84	39690	13500	502335	12477	2012	8	171 тыс. км	171	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34629346.html		22	161	2023-06-10 11:33:41.368079	2023-06-10 11:33:41.368083
34487039	5	58	32556	7199	267875	6654	2009	0	202 тыс. км	202	1	1.6	1	2	\N	1	f	/auto_peugeot_3008_34487039.html	VF30U5FV89S201527	10	10	2023-06-10 11:33:41.480285	2023-06-10 11:33:41.480287
34629594	5	55	2774	10950	407450	10120	2011	13	239 тыс. км	239	2	1.5	1	2	\N	1	f	/auto_nissan_qashqai_2_34629594.html	SJNJCAJ10U7033928	15	200	2023-06-10 11:33:41.500861	2023-06-10 11:33:41.500862
34608040	3	9	2319	12999	483693	12014	2011	0	173 тыс. км	173	1	3	2	1	\N	1	f	/auto_bmw_5_series_34608040.html	WBAFU7C58BC872598	5	5	2023-06-13 20:57:08.571707	2023-06-13 20:57:08.571711
34633443	3	9	2319	9000	334439	8302	2007	0	330 тыс. км	330	2	2	1	3	\N	1	f	/auto_bmw_5_series_34633443.html	WBANX110x0Cxxxx30	15	15	2023-06-10 22:46:43.071459	2023-06-10 22:46:43.07146
34398423	42	1471	41614	14900	554429	13771	2013	0	4 тыс. км	4	1	1	2	\N	\N	2	f	/auto_brp_maverick_34398423.html	3JBPNDP18EJ000858	10	10	2023-06-11 18:25:50.629148	2023-06-11 18:25:50.629192
34637800	6	147	1460	9400	349774	8688	2011	0	189 тыс. км	189	1	0	2	2	\N	1	t	/auto_mini_cooper_34637800.html	WMWSU3C57BT098805	10	10	2023-06-11 19:51:46.377746	2023-06-11 19:51:46.377747
34651329	3	18	161	2500	93300	2300	2007	0	234 тыс. км	234	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34651329.html	Y6DTF69Yx7Wxxxx20	20	369	2023-06-14 09:54:10.166641	2023-06-14 09:54:10.166643
34639098	3	88	855	1999	74383	1848	2004	0	212 тыс. км	212	4	1.5	1	\N	\N	1	f	/auto_vaz_lada_21099_34639098.html	Y6D21099040003003	4	511	2023-06-12 01:52:04.373728	2023-06-12 01:52:04.37373
34483825	14	1201	62839	1150	42745	1060	2021	0	2 тыс. км	2	1	200	1	\N	\N	2	f	/auto_viper_zs_200a_34483825.html		7	7	2023-06-12 01:52:04.95026	2023-06-12 01:52:04.950262
34639113	3	88	856	2400	89304	2218	2006	0	190 тыс. км	190	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34639113.html	Y6L2110406L007886	24	527	2023-06-12 01:52:05.207521	2023-06-12 01:52:05.207524
34639097	4	24	239	3300	122793	3050	2005	0	331 тыс. км	331	2	1.4	1	2	\N	1	f	/auto_ford_fiesta_34639097.html	WF0HXXWPJH5J79816	12	12	2023-06-12 01:52:05.295286	2023-06-12 01:52:05.295287
34639108	2	70	652	6300	234423	5823	2002	0	243 тыс. км	243	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34639108.html	TMBHX21U622623187	13	123	2023-06-12 01:52:05.363586	2023-06-12 01:52:05.363588
33361008	6	48	425	4900	182133	4520	2002	0	208 тыс. км	208	1	2.2	2	3	\N	1	f	/auto_mercedes_benz_c_class_33361008.html	WDB20370x1Axxxx01	3	3	2023-06-12 01:52:05.751706	2023-06-12 01:52:05.751709
33813314	2	62	585	7400	275058	6826	2011	0	200 тыс. км	200	2	1.5	1	2	\N	1	f	/auto_renault_laguna_33813314.html	VF1KT1R0x44xxxx50	5	5	2023-06-12 01:52:05.815097	2023-06-12 01:52:05.8151
34294480	3	91	887	1350	50234	1248	2003	0	200 тыс. км	200	4	2.4	1	\N	\N	1	f	/auto_gaz_3110_34294480.html	Y6F31100030005380	9	392	2023-06-12 01:52:06.022759	2023-06-12 01:52:06.022761
34294558	4	56	1512	4900	182329	4529	2010	0	170 тыс. км	170	1	1.4	1	2	\N	1	f	/auto_opel_corsa_34294558.html	W0L0SDL08A6126867	5	293	2023-06-12 01:52:06.029256	2023-06-12 01:52:06.029257
33959888	3	55	487	2700	100467	2495	1997	0	270 тыс. км	270	1	1.4	1	2	\N	1	f	/auto_nissan_almera_33959888.html	JN1BAAN15U0005802	12	12	2023-06-12 01:52:06.095339	2023-06-12 01:52:06.09534
34125426	2	62	586	12999	483693	12014	2017	0	177 тыс. км	177	2	1.5	1	\N	\N	1	f	/auto_renault_megane_34125426.html	VF1RFB00158550137	22	161	2023-06-12 01:52:06.336772	2023-06-12 01:52:06.336775
34119143	3	47	393	10300	383263	9520	2014	0	276 тыс. км	276	1	2.5	2	\N	\N	1	t	/auto_mazda_6_34119143.html	JM1GJ1U5хF1хххх53	19	19	2023-06-12 01:52:06.372701	2023-06-12 01:52:06.37271
33960133	3	9	3219	11000	408870	10148	2010	0	121 тыс. км	121	1	3	2	3	\N	1	t	/auto_bmw_3_series_33960133.html	WBAPH7G5xBNxxxx21	10	10	2023-06-12 01:52:06.587841	2023-06-12 01:52:06.587847
33959913	4	58	526	4450	165585	4113	2007	0	189 тыс. км	189	1	1.6	1	2	\N	1	f	/auto_peugeot_307_33959913.html	VF33CNFUL85004544	10	10	2023-06-12 01:52:06.863132	2023-06-12 01:52:06.863135
33959945	3	29	3086	5300	197213	4898	2008	0	284 тыс. км	284	4	1.6	1	\N	\N	1	f	/auto_hyundai_elantra_33959945.html	KMHDT41BP8U535308	5	5	2023-06-12 01:52:06.869025	2023-06-12 01:52:06.869027
33959827	8	48	35252	5500	204655	5083	1999	0	588 тыс. км	588	2	2.2	1	2	\N	1	f	/auto_mercedes_benz_vito_33959827.html	VSA63809413242519	19	19	2023-06-12 01:52:06.929899	2023-06-12 01:52:06.929903
34621608	3	88	855	2400	89351	2219	2006	0	197 тыс. км	197	4	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34621608.html	Y6D21099x70xxxx29	13	112	2023-06-08 19:12:13.700622	2023-06-08 19:12:13.700623
34648424	3	79	698	16800	625128	15527	2013	13	124 тыс. км	124	1	2.5	2	2	\N	1	f	/auto_toyota_camry_34648424.html	JTNBFYFKх03хххх03	1	1	2023-06-13 18:33:36.184496	2023-06-13 18:33:36.184496
34621586	8	58	59956	2700	100467	2495	1999	13	263 тыс. км	263	2	1.9	1	2	\N	1	f	/auto_peugeot_expert_34621586.html	VF3222DB212404201	22	168	2023-06-08 19:12:13.749959	2023-06-08 19:12:13.74996
34476906	3	88	861	3360	125026	3105	2012	0	80 тыс. км	80	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34476906.html	XTA21154хC5хххх27	1	30	2023-06-13 20:57:08.412906	2023-06-13 20:57:08.412908
34607028	4	84	35449	4500	167445	4159	1999	0	61 тыс. км	61	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34607028.html	WVWZZZ1JZYB055573	25	25	2023-06-08 19:12:14.288115	2023-06-08 19:12:14.288116
34621568	7	55	494	5100	189771	4714	2006	13	203 тыс. км	203	1	1.4	1	2	\N	1	f	/auto_nissan_micra_34621568.html	SJN2CAK12U6015633	20	605	2023-06-08 19:12:14.351637	2023-06-08 19:12:14.351638
34410786	2	23	34907	6000	223260	5545	2011	0	140 тыс. км	140	4	1.4	1	2	\N	1	f	/auto_fiat_doblo_pass_34410786.html	ZFA26300009114740	10	10	2023-06-08 19:12:14.41378	2023-06-08 19:12:14.413781
34651321	5	84	2692	14800	552336	13621	2017	0	74 тыс. км	74	0	2	2	1	\N	1	t	/auto_volkswagen_tiguan_34651321.html		15	200	2023-06-14 09:54:10.188622	2023-06-14 09:54:10.188623
34623898	5	79	35004	23500	874435	21720	2010	13	245 тыс. км	245	4	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34623898.html	JTEBU3FJх0Kхххх15	23	23	2023-06-09 10:07:59.430403	2023-06-09 10:07:59.430405
34449111	3	88	846	800	29768	739	1975	0	80 тыс. км	80	4	1.3	1	3	\N	1	f	/auto_vaz_lada_2101_34449111.html		15	197	2023-06-09 10:07:59.465752	2023-06-09 10:07:59.465753
34448911	3	84	39690	14500	539545	13402	2015	0	74 тыс. км	74	2	2	2	\N	\N	1	t	/auto_volkswagen_passat_34448911.html	1VWBV7A33FC066784	19	19	2023-06-09 10:08:00.08639	2023-06-09 10:08:00.086397
34442844	39	179	28035	3300	122858	3048	2009	0	1 тыс. км	1	1	0	5	6	\N	2	f	/auto_yamaha_yfm_34442844.html		8	8	2023-06-09 10:08:00.161466	2023-06-09 10:08:00.161469
34448963	2	13	1052	4250	158143	3928	2008	0	240 тыс. км	240	4	1.8	1	\N	\N	1	f	/auto_chevrolet_lacetti_34448963.html	KL1NF35BE8K965523	10	10	2023-06-09 10:08:01.066671	2023-06-09 10:08:01.066678
34278078	8	84	32103	12362	460000	11426	2007	0	280 тыс. км	280	2	2.5	2	\N	\N	1	f	/auto_volkswagen_multivan_34278078.html	WV2ZZZ7Hх7Hхххх50	10	10	2023-06-09 10:08:01.084594	2023-06-09 10:08:01.084596
34448991	4	84	35449	6500	241865	6008	2007	0	280 тыс. км	280	1	1.6	2	2	\N	1	f	/auto_volkswagen_golf_34448991.html	WVWZZZ1Kх8Wхххх13	7	7	2023-06-09 10:08:01.102935	2023-06-09 10:08:01.102937
34449129	5	29	293	17600	654896	16267	2013	0	222 тыс. км	222	2	2.2	2	2	\N	1	f	/auto_hyundai_santa_fe_34449129.html	KMHSU81XBDU084957	9	9	2023-06-09 10:08:01.238321	2023-06-09 10:08:01.238323
34448923	3	6	49	46500	1730265	42977	2019	0	44 тыс. км	44	1	2	2	1	\N	1	t	/auto_audi_a6_34448923.html	WAUE8AF24KN119413	15	15	2023-06-09 10:08:01.345742	2023-06-09 10:08:01.345743
34454210	3	48	431	8000	297440	7382	2003	0	245 тыс. км	245	1	5	2	1	\N	1	f	/auto_mercedes_benz_s_class_34454210.html	WDB22018x1Axxxx14	14	14	2023-06-09 23:04:58.897563	2023-06-09 23:04:58.897564
34113847	4	84	35449	11600	431288	10704	2012	0	269 тыс. км	269	2	2	4	2	\N	1	f	/auto_volkswagen_golf_34113847.html	WVWZZZ1KxCPxxxx59	22	161	2023-06-09 23:04:59.13904	2023-06-09 23:04:59.139042
33434222	116	1618	33643	17000	632060	15687	2011	0	10 тыс. км	10	2	0	2	1	\N	4	f	/auto_bobcat_s175_33434222.html	x8Mxxxx04	7	7	2023-06-09 23:04:59.292775	2023-06-09 23:04:59.292779
34453505	8	84	792	4100	152438	3783	1998	0	300 тыс. км	300	4	2	1	2	\N	1	f	/auto_volkswagen_sharan_34453505.html	WVWZZZ7MxWVxxxx73	4	4	2023-06-09 23:04:59.29997	2023-06-09 23:04:59.299971
34629698	5	32	2842	19500	725595	18023	2020	0	29 тыс. км	29	1	2.4	2	2	\N	1	t	/auto_jeep_compass_34629698.html	3C4NJCBB6LT246786	3	3	2023-06-10 11:33:40.001531	2023-06-10 11:33:40.001533
34629696	449	24	2036	8500	316285	7856	2015	13	187 тыс. км	187	5	2	5	2	\N	1	f	/auto_ford_c_max_34629696.html		10	10	2023-06-10 11:33:40.060393	2023-06-10 11:33:40.060394
34629688	3	29	1258	5800	215818	5361	2008	13	200 тыс. км	200	1	1.6	2	2	\N	1	f	/auto_hyundai_accent_34629688.html	Y6LCN41CP8L202056	12	12	2023-06-10 11:33:40.063891	2023-06-10 11:33:40.063892
1907411	3	47	392	6350	236284	5869	1994	1	380 тыс. км	380	1	1.6	1	\N	\N	0	f	/auto_mazda_323_1907411.html		10	10	2023-06-14 09:54:10.288665	2023-06-14 09:54:10.288668
34442101	4	62	586	7999	297242	7379	2014	0	240 тыс. км	240	2	1.5	1	2	\N	1	f	/auto_renault_megane_34442101.html	VF1BZ0R0x51xxxx59	1	1	2023-06-10 22:46:43.071369	2023-06-10 22:46:43.07137
1900944	6	84	784	5500	204655	5083	1994	1	111 тыс. км	111	1	1.8	1	\N	\N	0	f	/auto_volkswagen_golf_i_1900944.html		10	10	2023-06-14 09:54:10.387049	2023-06-14 09:54:10.38705
1901102	3	15	129	8060	299900	7449	2009	1	1 тыс. км	1	2	2.2	1	\N	\N	0	f	/auto_citroen_c5_1901102.html		10	10	2023-06-14 09:54:10.68689	2023-06-14 09:54:10.686896
34231546	8	29	55769	2500	93300	2300	1998	0	475 тыс. км	475	2	2.5	1	2	\N	1	f	/auto_hyundai_h_200_34231546.html	KMJWVH7FxWUxxxx23	5	5	2023-06-14 09:54:11.934503	2023-06-14 09:54:11.934505
34651281	2	58	520	4800	178608	4436	2005	13	250 тыс. км	250	1	1.4	1	2	\N	1	f	/auto_peugeot_206_34651281.html		11	76	2023-06-14 09:54:12.185684	2023-06-14 09:54:12.185687
34005861	2	67	34521	6750	251168	6239	2009	0	275 тыс. км	275	2	2	1	2	\N	1	f	/auto_seat_exeo_34005861.html	VSSZZZ3RZAR008920	18	55	2023-06-14 09:54:12.221132	2023-06-14 09:54:12.221134
34469010	2	62	585	3500	130235	3235	2002	0	304 тыс. км	304	2	1.9	1	2	\N	1	f	/auto_renault_laguna_34469010.html	VF1KG0G0х27хххх24	15	200	2023-06-11 19:51:46.37789	2023-06-11 19:51:46.377891
33104258	8	75	1720	17100	636291	15805	2016	0	85 тыс. км	85	1	3.6	5	1	\N	1	t	/auto_subaru_outback_33104258.html	4S4BSEKCхH3хххх04	5	5	2023-06-14 09:54:12.298088	2023-06-14 09:54:12.29809
34639094	2	70	652	8500	316285	7856	2013	0	262 тыс. км	262	1	1.8	2	2	\N	1	f	/auto_skoda_octavia_34639094.html		18	18	2023-06-12 01:52:05.361421	2023-06-12 01:52:05.361422
33812939	8	56	1524	4400	163548	4059	2005	0	321 тыс. км	321	4	1.6	1	2	\N	1	f	/auto_opel_zafira_33812939.html	W0L0TGF7x52xxxx36	11	11	2023-06-12 01:52:05.761933	2023-06-12 01:52:05.761935
34466686	4	24	239	10700	398147	9889	2017	0	64 тыс. км	64	1	1.6	1	2	\N	1	t	/auto_ford_fiesta_34466686.html	3FADP4GX5HM149932	24	527	2023-06-12 01:52:06.109348	2023-06-12 01:52:06.10935
34125118	4	24	240	7000	260470	6470	2010	0	166 тыс. км	166	1	1.6	1	2	\N	1	f	/auto_ford_focus_34125118.html	WF0PXXWPDPAR09389	10	10	2023-06-12 01:52:06.854247	2023-06-12 01:52:06.854257
33959950	219	84	35399	5500	204655	5083	2002	0	370 тыс. км	370	2	2.5	1	2	\N	7	t	/auto_volkswagen_lt_33959950.html		7	461	2023-06-12 01:52:06.968594	2023-06-12 01:52:06.968598
33959981	4	70	43718	8300	308843	7671	2015	0	177 тыс. км	177	4	1.2	1	2	\N	1	f	/auto_skoda_spaceback_33959981.html	TMBEB6NH8GB150065	12	12	2023-06-12 01:52:07.01099	2023-06-12 01:52:07.010992
34290978	3	13	3588	7700	286517	7117	2012	0	161 тыс. км	161	4	1.8	2	2	\N	1	f	/auto_chevrolet_cruze_34290978.html	KL1JA6959CK731042	7	7	2023-06-12 11:45:17.629694	2023-06-12 11:45:17.629696
1909835	5	93	915	0	0	0	1989	1	1 тыс. км	1	2	2.4	1	\N	\N	0	f	/auto_uaz_31512_1909835.html		1	27	2023-06-12 11:45:17.968026	2023-06-12 11:45:17.968029
34621606	2	190	1902	3600	134028	3329	2007	0	163 тыс. км	163	1	2	1	1	\N	1	f	/auto_chery_tiggo_34621606.html	Y6DDB14Bx8Dxxxx08	25	25	2023-06-08 19:12:13.729789	2023-06-08 19:12:13.72979
34648464	5	55	2228	19500	725595	18023	2017	8	43 тыс. км	43	1	2.5	5	1	\N	1	t	/auto_nissan_rogue_34648464.html	5N1AT2MV6HC800398	19	323	2023-06-13 18:33:36.193991	2023-06-13 18:33:36.193992
34474104	23	28	49474	5650	210744	5197	2007	0	без пробега	0	1	750	1	4	\N	2	f	/auto_honda_vt_750c_34474104.html		5	5	2023-06-13 21:42:03.048584	2023-06-13 21:42:03.048587
34449028	5	47	37381	22000	818620	20333	2018	0	97 тыс. км	97	1	2.5	2	1	\N	1	t	/auto_mazda_cx_5_34449028.html	JM3KFBCM7K1546297	10	10	2023-06-09 10:07:59.448948	2023-06-09 10:07:59.448949
34449143	2	56	1523	4800	178608	4436	2005	0	354 тыс. км	354	2	1.9	1	2	\N	1	f	/auto_opel_vectra_34449143.html	W0L0ZCF3551140886	4	4	2023-06-09 10:07:59.51771	2023-06-09 10:07:59.517712
34623887	3	79	698	7900	293959	7302	2007	13	230 тыс. км	230	1	2.4	2	2	\N	1	f	/auto_toyota_camry_34623887.html		5	14949	2023-06-09 10:07:59.618334	2023-06-09 10:07:59.618336
34449126	5	55	24932	9300	346053	8595	2011	0	219 тыс. км	219	2	1.5	1	2	\N	1	f	/auto_nissan_juke_34449126.html	SJNFCAF15U6122848	2	2	2023-06-09 10:08:00.112406	2023-06-09 10:08:00.112409
34280360	3	84	785	9800	364658	9058	2016	0	92 тыс. км	92	1	1.8	2	2	\N	1	t	/auto_volkswagen_jetta_34280360.html	3VWL17AJ2HM296980	10	10	2023-06-09 10:08:00.305691	2023-06-09 10:08:00.305703
34480203	8	24	35396	3800	141740	3495	2005	0	304 тыс. км	304	2	1.8	1	2	\N	1	f	/auto_ford_transit_34480203.html	WF0TXXTTxT5xxxx30	6	549	2023-06-13 21:42:03.055577	2023-06-13 21:42:03.055578
34623891	2	62	586	14900	554429	13771	2017	8	102 тыс. км	102	2	1.5	1	2	\N	1	f	/auto_renault_megane_34623891.html	VF1RFB00257166048	10	10	2023-06-09 10:08:01.114285	2023-06-09 10:08:01.114287
34442452	3	13	2145	5500	204655	5083	2008	0	180 тыс. км	180	4	2	1	2	\N	1	f	/auto_chevrolet_epica_34442452.html	Y6DLF69Kх8Bхххх29	14	14	2023-06-09 10:08:01.206159	2023-06-09 10:08:01.206161
34454322	5	6	3222	21500	799370	19840	2015	0	111 тыс. км	111	1	2	2	1	\N	1	t	/auto_audi_q5_34454322.html	WA1L2AFPxGAxxxx46	9	9	2023-06-09 23:04:58.898836	2023-06-09 23:04:58.898837
32185635	5	9	96	17999	669743	16635	2011	0	168 тыс. км	168	2	3	2	1	\N	1	t	/auto_bmw_x5_32185635.html	5UXZW0C5хBLхххх07	15	200	2023-06-10 11:33:40.042706	2023-06-10 11:33:40.042707
34407159	5	9	3442	134900	5019629	124680	2020	0	17 тыс. км	17	1	4.4	2	1	\N	1	f	/auto_bmw_x6_m_34407159.html	WBSCY010х09хххх39	10	10	2023-06-10 11:33:40.10729	2023-06-10 11:33:40.107291
34611847	4	84	35449	3777	140353	3483	2002	0	301 тыс. км	301	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34611847.html	WVWZZZ1Jx3Wxxxx42	2	154	2023-06-10 11:33:40.367937	2023-06-10 11:33:40.367938
34629654	2	56	1508	5750	213958	5314	2009	13	207 тыс. км	207	1	1.4	1	2	\N	1	f	/auto_opel_astra_34629654.html		4	505	2023-06-10 11:33:40.575141	2023-06-10 11:33:40.575144
34629671	3	79	698	37500	1395375	34659	2019	13	16 тыс. км	16	5	2.5	2	2	\N	1	f	/auto_toyota_camry_34629671.html	JTNB23HK603046307	10	10	2023-06-10 11:33:40.589788	2023-06-10 11:33:40.58979
34629668	5	79	715	37700	1402817	34844	2022	8	8 тыс. км	8	1	2	5	2	\N	1	f	/auto_toyota_rav4_34629668.html	JTMW43FV70D123869	10	10	2023-06-10 11:33:40.60945	2023-06-10 11:33:40.609451
33966012	8	84	32103	90000	3348900	83182	2021	0	14 тыс. км	14	2	2	2	1	\N	1	f	/auto_volkswagen_multivan_33966012.html	WV2ZZZ7HхNHхххх59	10	10	2023-06-10 11:33:40.850093	2023-06-10 11:33:40.850095
34649748	3	79	698	11500	427915	10629	2014	13	180 тыс. км	180	4	2.5	2	2	\N	1	f	/auto_toyota_camry_34649748.html	4T1BF1FK1EU857896	10	10	2023-06-13 21:42:03.221692	2023-06-13 21:42:03.221694
34633424	3	84	39690	9500	353019	8764	2012	0	238 тыс. км	238	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34633424.html		16	16	2023-06-10 22:46:43.072095	2023-06-10 22:46:43.072097
34454088	2	84	35449	13999	520903	12938	2016	0	115 тыс. км	115	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34454088.html	WVWZZZAUZHP503578	2	2	2023-06-13 21:42:03.227992	2023-06-13 21:42:03.227994
34649739	3	9	2319	13900	517219	12847	2010	13	260 тыс. км	260	2	3	2	3	\N	1	f	/auto_bmw_5_series_34649739.html	WBAFW510х0Cхххх41	10	210	2023-06-13 21:42:03.236049	2023-06-13 21:42:03.23605
34637799	3	88	850	500	18605	462	1981	0	83 тыс. км	83	4	1.3	1	3	\N	1	f	/auto_vaz_lada_2105_34637799.html	PTA21050хB0хххх80	4	496	2023-06-11 19:51:46.471689	2023-06-11 19:51:46.47169
34637078	5	47	37381	22500	837225	20795	2018	0	100 тыс. км	100	1	2.5	2	1	\N	1	f	/auto_mazda_cx_5_34637078.html	JM3KFBCM5J0467344	24	527	2023-06-11 19:51:46.485285	2023-06-11 19:51:46.485286
33951912	212	177	30551	42176	1567281	38900	2016	0	787 тыс. км	787	2	0	2	3	\N	6	f	/auto_man_tgx_33951912.html		1	1	2023-06-11 19:51:46.784773	2023-06-11 19:51:46.784776
34637759	2	6	47	18400	684664	17006	2016	0	299 тыс. км	299	2	2	2	2	\N	1	f	/auto_audi_a4_34637759.html	WAUZZZF40HA041971	18	55	2023-06-11 19:51:47.099629	2023-06-11 19:51:47.099631
34637761	5	47	37381	15950	593500	14742	2014	0	212 тыс. км	212	2	2.2	2	\N	\N	1	f	/auto_mazda_cx_5_34637761.html	JMZKEF91800297744	9	9	2023-06-11 19:51:47.162058	2023-06-11 19:51:47.162059
34637777	3	6	39	1300	48373	1202	1983	0	100 тыс. км	100	1	0	1	2	\N	1	f	/auto_audi_100_34637777.html	WAUZZZ44SDA056642	4	4	2023-06-11 19:51:47.232028	2023-06-11 19:51:47.232033
33504025	8	48	35252	16200	601992	14941	2014	0	240 тыс. км	240	2	2.2	2	3	\N	1	f	/auto_mercedes_benz_vito_33504025.html		9	392	2023-06-11 19:51:48.078899	2023-06-11 19:51:48.078909
34637768	2	52	456	2850	106049	2634	1997	0	450 тыс. км	450	4	2.5	2	2	\N	1	f	/auto_mitsubishi_galant_34637768.html	JMBLREA5WVZ002367	9	9	2023-06-11 19:51:48.348725	2023-06-11 19:51:48.348728
34637718	8	56	1524	4700	174887	4344	2006	0	350 тыс. км	350	2	1.9	1	2	\N	1	t	/auto_opel_zafira_34637718.html	W0L0AHM7562089769	10	10	2023-06-11 19:51:48.480772	2023-06-11 19:51:48.480777
34649711	2	62	586	4800	178608	4436	2005	13	328 тыс. км	328	2	1.9	1	2	\N	1	f	/auto_renault_megane_34649711.html		25	25	2023-06-13 21:42:03.615814	2023-06-13 21:42:03.615821
34639105	3	18	161	1300	48373	1202	2007	5	100 тыс. км	100	4	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_34639105.html	Y6DTF69Yх7Wхххх35	11	72	2023-06-12 01:52:05.36183	2023-06-12 01:52:05.361831
34294636	2	70	652	3700	137529	3413	1999	0	240 тыс. км	240	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34294636.html	TMBJK21UxY2xxxx50	6	557	2023-06-12 01:52:05.742396	2023-06-12 01:52:05.7424
34291545	3	6	47	13900	516663	12823	2013	0	139 тыс. км	139	1	2	2	1	\N	1	t	/auto_audi_a4_34291545.html	WAUFFAFLxEAxxxx86	18	18	2023-06-12 01:52:05.766138	2023-06-12 01:52:05.766139
34125108	3	48	425	6000	223260	5545	2000	0	210 тыс. км	210	1	3.2	2	3	\N	1	f	/auto_mercedes_benz_c_class_34125108.html	WDB2030641A037383	18	18	2023-06-12 01:52:06.019404	2023-06-12 01:52:06.019406
34294482	3	6	47	14999	558113	13863	2015	0	210 тыс. км	210	1	2	2	2	\N	1	t	/auto_audi_a4_34294482.html	WAUEFAFL7FN032917	10	10	2023-06-12 01:52:06.02656	2023-06-12 01:52:06.026561
34125129	4	56	1508	1800	66978	1664	1995	0	300 тыс. км	300	1	1.4	1	\N	\N	1	f	/auto_opel_astra_34125129.html	W0L00005хS5хххх68	5	310	2023-06-12 01:52:06.039746	2023-06-12 01:52:06.039747
34289062	3	24	241	11000	409310	10167	2014	0	131 тыс. км	131	4	2.5	2	2	\N	1	t	/auto_ford_fusion_34289062.html	3FA6P0H7хERхххх03	1	1	2023-06-12 01:52:06.140756	2023-06-12 01:52:06.140757
34125180	4	52	452	3500	130235	3235	2005	0	360 тыс. км	360	2	1.5	1	2	\N	1	f	/auto_mitsubishi_colt_34125180.html	XMCMNZ39х6Fхххх44	22	22	2023-06-12 01:52:06.194353	2023-06-12 01:52:06.194355
34648479	2	24	2970	1150	42792	1063	1987	0	40 тыс. км	40	4	2	1	3	\N	1	f	/auto_ford_sierra_34648479.html	WF0NXXGBBNHL88960	9	9	2023-06-13 18:33:36.337627	2023-06-13 18:33:36.337629
34472842	5	84	793	18500	688755	17107	2011	0	240 тыс. км	240	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34472842.html	WVGFK9BPxBDxxxx49	11	76	2023-06-08 19:12:14.008178	2023-06-08 19:12:14.00818
34648482	3	88	852	1150	42792	1063	1987	0	62 тыс. км	62	1	1.5	1	3	\N	1	f	/auto_vaz_lada_2107_34648482.html	XTA210700H0265161	15	199	2023-06-13 18:33:36.72073	2023-06-13 18:33:36.720736
34621591	4	70	649	3800	141398	3512	2002	13	352 тыс. км	352	2	0	1	2	\N	1	f	/auto_skoda_fabia_34621591.html	TMBMS46Y713182490	14	14	2023-06-08 19:12:14.253965	2023-06-08 19:12:14.253971
34621584	8	56	1524	7700	286517	7117	2011	13	187 тыс. км	187	2	1.7	1	2	\N	1	f	/auto_opel_zafira_34621584.html	W0L0AHM75B2132521	18	55	2023-06-08 19:12:14.275467	2023-06-08 19:12:14.275469
34621596	6	56	1509	2400	89304	2218	1994	0	400 тыс. км	400	1	2.5	1	2	\N	1	f	/auto_opel_calibra_34621596.html	W0L000085R1073303	5	5	2023-06-08 19:12:14.281903	2023-06-08 19:12:14.281905
34621581	4	13	1052	3900	145119	3605	2006	13	304 тыс. км	304	4	1.4	1	2	\N	1	f	/auto_chevrolet_lacetti_34621581.html	KL1NF487J6K467625	14	14	2023-06-08 19:12:14.290405	2023-06-08 19:12:14.290407
34446426	5	33	326	8200	305122	7579	2006	0	226 тыс. км	226	2	2.5	2	1	\N	1	f	/auto_kia_sorento_34446426.html	KNEJC521865583004	10	216	2023-06-08 19:12:14.350911	2023-06-08 19:12:14.350912
34446372	4	88	854	1500	55815	1386	2000	0	228 тыс. км	228	4	1.4	1	2	\N	1	f	/auto_vaz_lada_2109_34446372.html	XTA210930Y2716761	3	3	2023-06-08 19:12:14.425497	2023-06-08 19:12:14.425498
34452406	3	84	39690	1150	42814	1062	1988	0	666 тыс. км	666	4	1.8	1	\N	\N	1	f	/auto_volkswagen_passat_34452406.html	WVWZZZ31xJExxxx24	15	204	2023-06-09 10:07:59.275384	2023-06-09 10:07:59.275385
34623880	5	55	2197	17900	666059	16544	2017	13	105 тыс. км	105	2	0	5	2	\N	1	f	/auto_nissan_qashqai_34623880.html		7	7	2023-06-09 10:07:59.40469	2023-06-09 10:07:59.404692
34449044	8	15	32931	6700	249307	6192	2011	0	187 тыс. км	187	2	1.6	1	2	\N	1	f	/auto_citroen_c3_picasso_34449044.html	VF7SH9HP0BT548618	10	214	2023-06-09 10:07:59.647076	2023-06-09 10:07:59.647078
1913108	4	24	239	7200	267912	6655	2003	1	87 тыс. км	87	1	1.3	1	\N	\N	0	f	/auto_ford_fiesta_1913108.html		20	605	2023-06-13 18:33:37.447553	2023-06-13 18:33:37.447555
34448967	3	62	1554	6800	253028	6285	2013	0	196 тыс. км	196	4	1.2	1	2	\N	1	f	/auto_renault_logan_34448967.html	VF14SRAP449012730	4	511	2023-06-09 10:08:00.59186	2023-06-09 10:08:00.591864
34436614	2	88	857	2200	81862	2033	2006	0	180 тыс. км	180	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2111_34436614.html	XTA21114х60хххх75	10	10	2023-06-09 10:08:01.098006	2023-06-09 10:08:01.098008
34449106	3	135	1946	15000	558150	13864	2014	0	108 тыс. км	108	1	2	2	\N	\N	1	t	/auto_lincoln_mkz_34449106.html	3LN6L2G91FR617199	4	4	2023-06-09 10:08:01.13039	2023-06-09 10:08:01.130392
34449051	4	62	1556	4300	160003	3974	2008	0	217 тыс. км	217	1	1.2	1	2	\N	1	f	/auto_renault_modus_34449051.html	VF1JP0WF540093165	5	5	2023-06-09 10:08:01.303177	2023-06-09 10:08:01.303179
34454123	8	15	59444	6200	230516	5721	2011	0	290 тыс. км	290	2	1.3	1	2	\N	1	f	/auto_citroen_nemo_34454123.html	VF7AJFHZxB8xxxx68	10	210	2023-06-09 23:04:59.299763	2023-06-09 23:04:59.299764
34282684	3	84	785	12700	472567	11738	2012	0	179 тыс. км	179	5	1.4	2	2	\N	1	t	/auto_volkswagen_jetta_34282684.html	3VW637AJXDM239041	11	11	2023-06-09 23:04:59.542398	2023-06-09 23:04:59.542399
34454187	4	70	651	1850	68839	1710	1998	0	235 тыс. км	235	4	1.3	1	2	\N	1	f	/auto_skoda_felicia_34454187.html	TMBEFF613W0897366	10	10	2023-06-09 23:04:59.592753	2023-06-09 23:04:59.592754
34282724	3	88	856	2650	98527	2445	2007	0	210 тыс. км	210	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34282724.html	Y7C21104x70xxxx76	20	605	2023-06-09 23:04:59.889294	2023-06-09 23:04:59.889296
34454043	5	13	1059	4500	167310	4152	2004	0	136 тыс. км	136	4	1.7	1	\N	\N	1	f	/auto_chevrolet_niva_34454043.html	X9L21230x40xxxx10	10	215	2023-06-09 23:04:59.919377	2023-06-09 23:04:59.919379
34282507	2	17	53103	3500	130130	3229	2007	0	201 тыс. км	201	1	1.6	1	2	\N	1	f	/auto_dacia_logan_mcv_34282507.html	UU1KSD0Dx38xxxx05	6	554	2023-06-09 23:04:59.985278	2023-06-09 23:04:59.985279
34282450	8	84	64461	11600	431636	10721	2008	0	373 тыс. км	373	2	2.5	2	2	\N	1	f	/auto_volkswagen_transporter_34282450.html	WV1ZZZ7Hх8Hхххх27	10	10	2023-06-09 23:05:00.493611	2023-06-09 23:05:00.493614
34454061	2	62	586	11361	422730	10500	2017	0	206 тыс. км	206	2	1.5	1	\N	\N	1	f	/auto_renault_megane_34454061.html	VF1RFB00359021430	7	7	2023-06-09 23:05:01.173188	2023-06-09 23:05:01.173193
34282540	3	13	1052	4550	169169	4198	2008	0	192 тыс. км	192	4	1.6	1	1	\N	1	f	/auto_chevrolet_lacetti_34282540.html	Y6DNF196x8Kxxxx99	1	602	2023-06-09 23:05:01.711868	2023-06-09 23:05:01.711874
34282752	8	84	64461	6800	253028	6285	2003	0	417 тыс. км	417	2	2.5	1	2	\N	1	f	/auto_volkswagen_transporter_34282752.html	WV1ZZZ7HZ4H020794	12	12	2023-06-09 23:05:02.076527	2023-06-09 23:05:02.076529
34629704	3	6	47	7100	264191	6562	2006	0	232 тыс. км	232	2	2	5	2	\N	1	f	/auto_audi_a4_34629704.html	WAUZZZ8E36A223490	25	25	2023-06-10 11:33:40.044371	2023-06-10 11:33:40.044372
34629691	3	9	2319	6200	230702	5730	1998	13	350 тыс. км	350	4	3	3	3	\N	1	f	/auto_bmw_5_series_34629691.html	WBADD21010BH63973	7	7	2023-06-10 11:33:40.078062	2023-06-10 11:33:40.078064
34623215	5	52	2684	11999	445882	11066	2010	0	181 тыс. км	181	2	2.2	2	1	\N	1	f	/auto_mitsubishi_outlander_xl_34623215.html	JMBXMCW7xAZxxxx67	5	307	2023-06-10 11:33:40.337811	2023-06-10 11:33:40.337812
34576990	5	73	1584	7999	297643	7393	2008	0	192 тыс. км	192	2	2.7	1	1	\N	1	f	/auto_ssangyong_rexton_34576990.html	Y7CRJFM0х80хххх43	1	1	2023-06-10 11:33:40.570902	2023-06-10 11:33:40.570905
34629678	4	84	35449	1499	55778	1385	1993	0	100 тыс. км	100	1	1.8	1	2	\N	1	f	/auto_volkswagen_golf_34629678.html	WVWZZZ1HZPP421945	5	306	2023-06-10 11:33:40.580342	2023-06-10 11:33:40.580344
34629640	6	9	3219	14799	550671	13678	2012	0	208 тыс. км	208	1	3	2	1	\N	1	t	/auto_bmw_3_series_34629640.html	WBAKF9C51CE859248	1	1	2023-06-10 11:33:40.602076	2023-06-10 11:33:40.602077
34629392	4	33	1306	6799	252991	6284	2013	0	200 тыс. км	200	0	1	1	2	\N	1	f	/auto_kia_picanto_34629392.html	KNABX511хDTхххх95	5	287	2023-06-10 11:33:40.614175	2023-06-10 11:33:40.614177
34480463	8	62	588	8800	327448	8133	2013	0	245 тыс. км	245	2	1.5	2	2	\N	1	f	/auto_renault_scenic_34480463.html	VF1JZS00E50022684	5	5	2023-06-10 11:33:40.639419	2023-06-10 11:33:40.639421
33808417	3	24	240	10500	390705	9705	2017	0	142 тыс. км	142	1	2	2	2	\N	1	t	/auto_ford_focus_33808417.html	1FADP3F2хJLхххх01	20	605	2023-06-10 11:33:40.894323	2023-06-10 11:33:40.894325
34551449	5	52	2686	13250	492369	12220	2009	0	132 тыс. км	132	4	3.8	2	1	\N	1	f	/auto_mitsubishi_pajero_wagon_34551449.html	JMYLYV97x8Jxxxx30	11	11	2023-06-10 11:33:41.100236	2023-06-10 11:33:41.100238
34629675	3	33	323	8350	310704	7717	2012	8	150 тыс. км	150	0	1.6	2	2	\N	1	f	/auto_kia_rio_34629675.html	Z94CC41BBDR099110	10	10	2023-06-10 11:33:41.377458	2023-06-10 11:33:41.37746
34097777	197	62	46833	14200	528382	13124	2016	0	411 тыс. км	411	2	2.3	1	2	\N	6	f	/auto_renault_master_34097777.html		15	15	2023-06-10 11:33:41.558378	2023-06-10 11:33:41.558379
34648423	3	13	1038	3000	111630	2773	2005	0	133 тыс. км	133	1	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34648423.html	KL1SF69YE5B381205	10	10	2023-06-13 18:33:38.048739	2023-06-13 18:33:38.048742
34621570	6	62	586	7000	260470	6470	2010	13	257 тыс. км	257	2	1.5	1	2	\N	1	f	/auto_renault_megane_34621570.html	VF1DZ1G0644462458	11	11	2023-06-08 19:12:14.367902	2023-06-08 19:12:14.367903
34621593	3	47	393	4900	182329	4529	2007	13	198 тыс. км	198	4	2	1	2	\N	1	f	/auto_mazda_6_34621593.html	JMZGG12F671690312	20	369	2023-06-08 19:12:14.420968	2023-06-08 19:12:14.420969
34621569	4	190	2087	1990	74048	1839	2007	13	107 тыс. км	107	1	1.6	1	\N	\N	1	f	/auto_chery_amulet_34621569.html	Y6DDA11A57D007014	1	1	2023-06-08 19:12:14.967061	2023-06-08 19:12:14.967063
34446369	2	48	425	9499	353458	8779	2008	0	250 тыс. км	250	2	2.1	1	3	\N	1	f	/auto_mercedes_benz_c_class_34446369.html	WDD2042071F176051	1	1	2023-06-08 19:12:15.073131	2023-06-08 19:12:15.073132
34446246	3	47	1692	7000	260470	6470	2008	0	212 тыс. км	212	4	2	1	2	\N	1	f	/auto_mazda_3_34446246.html	JMZBK12Fх01хххх17	6	6	2023-06-08 19:12:15.103026	2023-06-08 19:12:15.103027
34623890	5	24	2874	13500	502335	12477	2013	8	138 тыс. км	138	2	2	1	2	\N	1	f	/auto_ford_kuga_34623890.html	WF0AXXWPMADG20725	11	11	2023-06-09 10:07:59.428449	2023-06-09 10:07:59.428451
34448952	5	32	2842	17900	666059	16544	2019	0	86 тыс. км	86	1	2.4	2	1	\N	1	t	/auto_jeep_compass_34448952.html	3C4NJDDBXKT795893	7	460	2023-06-09 10:07:59.581238	2023-06-09 10:07:59.58124
34062111	3	84	39690	12200	455059	11222	2016	0	115 тыс. км	115	1	1.8	3	2	\N	1	t	/auto_volkswagen_passat_34062111.html	1VWAS7A3xGCxxxx42	10	214	2023-06-13 18:33:36.931432	2023-06-13 18:33:36.931438
34068039	2	58	43047	13200	491172	12200	2018	0	136 тыс. км	136	2	1.5	1	2	\N	1	f	/auto_peugeot_2008_34068039.html	VF3CUYHYSJY190372	10	220	2023-06-09 10:07:59.673636	2023-06-09 10:07:59.673637
33365305	197	48	35249	10000	372100	9242	2004	0	304 тыс. км	304	2	2.2	1	3	\N	6	f	/auto_mercedes_benz_sprinter_33365305.html	WDB90366х1Rхххх98	19	19	2023-06-09 10:07:59.809927	2023-06-09 10:07:59.80993
34648449	197	84	60426	21639	805200	20000	2012	8	150 тыс. км	150	0	0	1	3	\N	6	f	/auto_volkswagen_crafter_34648449.html	WV1ZZZ2FZC7007105	9	397	2023-06-13 18:33:37.298422	2023-06-13 18:33:37.298423
34448876	5	56	3798	9500	353495	8780	2009	0	183 тыс. км	183	2	2	2	1	\N	1	f	/auto_opel_antara_34448876.html	W0LLA63F6AB007794	2	140	2023-06-09 10:08:01.077612	2023-06-09 10:08:01.077614
34449019	3	89	3569	3500	130235	3235	2012	0	218 тыс. км	218	4	1.5	1	2	\N	1	f	/auto_zaz_lanos_34449019.html	Y6DTF69Y0C0304179	12	342	2023-06-09 10:08:01.377413	2023-06-09 10:08:01.377415
34454307	2	17	1890	5000	185900	4614	2007	0	255 тыс. км	255	4	1.6	1	2	\N	1	f	/auto_dacia_logan_34454307.html	UU1KSDAMx38xxxx66	5	5	2023-06-09 23:04:59.304925	2023-06-09 23:04:59.304926
34454090	3	88	855	1650	61397	1525	2001	0	195 тыс. км	195	4	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34454090.html	Y9L2109901L000141	1	33	2023-06-09 23:04:59.468479	2023-06-09 23:04:59.468481
34454253	3	33	1840	11500	427915	10629	2013	0	214 тыс. км	214	5	2.4	2	2	\N	1	t	/auto_kia_optima_34454253.html	KNAGM4ADхD5хххх41	11	76	2023-06-09 23:04:59.474607	2023-06-09 23:04:59.474608
34454188	2	84	39690	15900	591639	14695	2015	0	280 тыс. км	280	2	2	1	1	\N	1	f	/auto_volkswagen_passat_34454188.html	WVWZZZ3CZFP414227	3	427	2023-06-09 23:04:59.537961	2023-06-09 23:04:59.537962
34454067	307	6	62310	25900	963739	23938	2017	0	72 тыс. км	72	1	2	2	1	\N	1	t	/auto_audi_a5_sportback_34454067.html	WAUBNCF58JA018298	5	302	2023-06-09 23:04:59.544988	2023-06-09 23:04:59.54499
34454072	5	29	1268	7000	260470	6470	2004	0	181 тыс. км	181	2	2	2	1	\N	1	f	/auto_hyundai_tucson_34454072.html	KMHJN81VP5U033205	6	6	2023-06-09 23:04:59.661732	2023-06-09 23:04:59.661734
34454047	3	88	861	2200	81796	2030	2006	0	196 тыс. км	196	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34454047.html	XTA21150x64xxxx82	5	5	2023-06-09 23:04:59.884607	2023-06-09 23:04:59.884609
34282526	3	55	2320	4000	148720	3691	2002	0	235 тыс. км	235	1	2	2	2	\N	1	f	/auto_nissan_cefiro_34282526.html	JN1CAUA3xZ0xxxx74	20	20	2023-06-09 23:05:00.024074	2023-06-09 23:05:00.024076
34629682	4	88	858	3350	124654	3096	2006	13	107 тыс. км	107	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2112_34629682.html	Y6L2112407L014167	24	24	2023-06-10 11:33:40.060708	2023-06-10 11:33:40.060708
34647248	307	70	3167	9000	334890	8318	2008	0	335 тыс. км	335	2	2	2	2	\N	1	f	/auto_skoda_superb_34647248.html	TMBAE73Tх99хххх55	22	22	2023-06-13 18:33:37.329464	2023-06-13 18:33:37.329466
34633439	3	190	2637	2900	107763	2675	2008	0	51 тыс. км	51	1	0	1	\N	\N	1	f	/auto_chery_kimo_34633439.html		20	20	2023-06-10 22:46:43.074525	2023-06-10 22:46:43.074525
34633460	4	62	586	6355	236470	5874	2010	0	231 тыс. км	231	2	1.5	1	2	\N	1	f	/auto_renault_megane_34633460.html	VF1BZ0B0643761790	6	6	2023-06-10 22:46:43.228061	2023-06-10 22:46:43.228063
31421280	2	84	35449	11800	439078	10906	2015	0	254 тыс. км	254	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_31421280.html	WVWZZZAUхGPхххх97	8	410	2023-06-10 22:46:43.627847	2023-06-10 22:46:43.627856
34430825	194	48	35249	18400	683743	16974	2012	0	298 тыс. км	298	0	2.2	1	3	\N	6	f	/auto_mercedes_benz_sprinter_34430825.html		1	1	2023-06-10 22:46:43.842671	2023-06-10 22:46:43.842674
34244804	8	56	59772	17999	671362	16556	2017	0	212 тыс. км	212	2	1.6	1	2	\N	1	f	/auto_opel_vivaro_34244804.html		10	10	2023-06-13 21:42:03.050823	2023-06-13 21:42:03.050824
34637739	5	32	315	89999	3348863	83181	2018	0	41 тыс. км	41	1	6.2	2	1	\N	1	f	/auto_jeep_grand_cherokee_34637739.html	1C4RJFN99JC224298	10	10	2023-06-11 19:51:46.480793	2023-06-11 19:51:46.480795
34637758	4	84	789	5700	212097	5268	2010	0	150 тыс. км	150	2	1.2	1	2	\N	1	f	/auto_volkswagen_polo_34637758.html	WVWZZZ6RZAY262878	2	2	2023-06-11 19:51:47.045228	2023-06-11 19:51:47.045233
34637780	8	58	63875	8999	334853	8317	2017	0	219 тыс. км	219	2	1.6	1	2	\N	1	f	/auto_peugeot_partner_34637780.html	VF37BBHW6HJ822125	9	9	2023-06-11 19:51:47.064338	2023-06-11 19:51:47.06434
34637778	4	29	35223	3849	143221	3557	2006	0	199 тыс. км	199	1	1.4	1	2	\N	1	f	/auto_hyundai_getz_34637778.html	KMHBT51DP6U601953	4	498	2023-06-11 19:51:47.138621	2023-06-11 19:51:47.138623
30886188	197	58	63875	3700	137677	3420	2005	0	330 тыс. км	330	2	2	1	2	\N	6	f	/auto_peugeot_partner_30886188.html	VF3GBRHYх96хххх42	8	8	2023-06-11 19:51:47.211459	2023-06-11 19:51:47.211461
34189731	4	62	3566	6999	260433	6469	2011	0	78 тыс. км	78	1	1.6	2	2	\N	1	f	/auto_renault_sandero_34189731.html	X7LBSRBYABH476034	12	12	2023-06-11 19:51:47.268812	2023-06-11 19:51:47.268814
33716478	212	115	2118	31999	1190683	29575	2014	0	526 тыс. км	526	2	12.9	2	3	\N	6	f	/auto_daf_cf_33716478.html	XLRTGM4300G035077	18	18	2023-06-11 19:51:48.432731	2023-06-11 19:51:48.432739
34417511	197	175	58476	9500	353495	8780	2007	0	2900 тыс. км	2900	2	3	1	\N	\N	6	f	/auto_iveco_35s1701_gruz_34417511.html	ZCFC35A8105696503	11	11	2023-06-11 19:51:48.567171	2023-06-11 19:51:48.567175
34649745	8	62	59145	8250	306983	7625	2013	8	215 тыс. км	215	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_34649745.html	VF1FW16Hх49хххх04	10	10	2023-06-13 21:42:03.210154	2023-06-13 21:42:03.210156
34125135	8	58	63875	3600	133956	3327	2010	0	215 тыс. км	215	2	1.6	1	2	\N	1	t	/auto_peugeot_partner_34125135.html	VF37N9HXхAJхххх00	3	3	2023-06-12 01:52:05.365128	2023-06-12 01:52:05.365129
34640220	3	13	1038	5200	193180	4795	2007	0	180 тыс. км	180	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34640220.html	Y6DSF69Yx7Bxxxx24	7	7	2023-06-12 11:45:17.421115	2023-06-12 11:45:17.421117
1909425	5	75	663	9900	368379	9150	1999	1	6 тыс. км	6	0	2	3	\N	\N	0	f	/auto_subaru_forester_1909425.html		10	10	2023-06-12 11:45:17.614457	2023-06-12 11:45:17.614458
34621574	3	18	161	3200	119072	2958	2008	13	60 тыс. км	60	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34621574.html	Y6DTF69YP80177608	24	519	2023-06-08 19:12:14.367988	2023-06-08 19:12:14.367989
34449093	5	9	1866	14000	520940	12939	2011	0	255 тыс. км	255	1	3	2	1	\N	1	f	/auto_bmw_x3_34449093.html	5UXWX7C50BL734451	13	114	2023-06-09 10:07:59.745889	2023-06-09 10:07:59.74589
34648438	4	55	36565	11500	427915	10629	2014	8	44 тыс. км	44	6	0	2	\N	\N	1	f	/auto_nissan_leaf_34648438.html		5	306	2023-06-13 18:33:37.188704	2023-06-13 18:33:37.188711
33084049	12	28	64668	2300	85629	2124	2008	0	51 тыс. км	51	1	250	5	5	\N	2	f	/auto_honda_forza_125_33084049.html	MFx01xxxx87	10	210	2023-06-09 10:08:00.806857	2023-06-09 10:08:00.80686
34448981	4	79	2040	10900	405589	10074	2013	0	77 тыс. км	77	1	1.33	1	2	\N	1	f	/auto_toyota_auris_34448981.html	SB1KT4JE50E004375	10	10	2023-06-09 10:08:01.075926	2023-06-09 10:08:01.07593
34449097	2	62	586	6500	241865	6008	2009	0	197 тыс. км	197	1	1.6	1	2	\N	1	f	/auto_renault_megane_34449097.html	VF1KM1R0H41120167	20	20	2023-06-09 10:08:01.206705	2023-06-09 10:08:01.206707
34648435	449	24	2036	3000	111630	2773	2010	13	250 тыс. км	250	2	1.6	1	2	\N	1	f	/auto_ford_c_max_34648435.html		10	10	2023-06-13 18:33:37.216514	2023-06-13 18:33:37.216515
34454234	4	88	854	1400	52052	1291	2001	0	130 тыс. км	130	1	1.5	1	1	\N	1	f	/auto_vaz_lada_2109_34454234.html	XTA21093x12xxxx79	12	356	2023-06-09 23:04:59.305341	2023-06-09 23:04:59.305341
34454292	9	24	63592	6500	241865	6008	2007	0	440 тыс. км	440	2	2.2	1	2	\N	1	f	/auto_ford_explorer_sport_trac_34454292.html	WF0XXXBDFX7U46083	9	404	2023-06-09 23:04:59.473283	2023-06-09 23:04:59.473284
34454116	3	56	3121	7800	290004	7197	2009	0	230 тыс. км	230	1	1.6	1	2	\N	1	f	/auto_opel_insignia_34454116.html	W0LGM57Ax91xxxx34	1	599	2023-06-09 23:04:59.888912	2023-06-09 23:04:59.888913
34282633	2	56	1508	9500	353210	8766	2013	0	260 тыс. км	260	2	2	2	2	\N	1	f	/auto_opel_astra_34282633.html	W0LPD8ENxD8xxxx93	2	2	2023-06-09 23:04:59.918564	2023-06-09 23:04:59.918566
34282627	3	84	39690	5400	200772	4983	2008	0	259 тыс. км	259	1	0	1	\N	\N	1	f	/auto_volkswagen_passat_34282627.html	WVWZZZ3Cx8Pxxxx20	22	163	2023-06-09 23:04:59.94247	2023-06-09 23:04:59.942471
34282631	8	55	56205	2700	100386	2491	1986	0	401 тыс. км	401	2	2	2	3	\N	1	f	/auto_nissan_vanette_34282631.html	00000KECx20xxxx97	12	12	2023-06-09 23:05:00.02468	2023-06-09 23:05:00.024681
34429724	3	9	2319	4750	176748	4390	1998	0	203 тыс. км	203	1	2	1	3	\N	1	f	/auto_bmw_5_series_34429724.html	WBADD110х0Bхххх59	12	12	2023-06-10 11:33:40.060922	2023-06-10 11:33:40.060923
34648428	197	62	46833	11000	409310	10167	2014	13	488 тыс. км	488	2	2.3	1	2	\N	6	f	/auto_renault_master_34648428.html	VF1MAF4TE50555840	10	225	2023-06-13 18:33:37.231019	2023-06-13 18:33:37.231021
34648468	3	18	161	2500	93025	2311	2007	0	256 тыс. км	256	4	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_34648468.html	Y6DTF69YD7W356396	16	16	2023-06-13 18:33:37.291554	2023-06-13 18:33:37.29156
33794886	198	177	3287	30000	1116300	27727	2009	0	425 тыс. км	425	2	4.6	1	\N	\N	6	f	/auto_man_tgl_33794886.html	WMAN15ZZх9Yхххх13	14	14	2023-06-13 18:33:37.298804	2023-06-13 18:33:37.298805
31890513	95	30	28530	16500	615450	15177	2012	0	90 тыс. км	90	2	4.5	1	3	\N	4	f	/auto_isuzu_npr_31890513.html		12	12	2023-06-13 18:33:37.809558	2023-06-13 18:33:37.809561
34648411	2	88	41418	6101	227000	5638	2014	13	82 тыс. км	82	1	0	1	2	\N	1	f	/auto_vaz_lada_largus_34648411.html	XTAKS015LE0769212	6	554	2023-06-13 18:33:38.050543	2023-06-13 18:33:38.050546
34447778	3	29	1258	5350	199074	4945	2008	0	177 тыс. км	177	2	1.5	1	2	\N	1	f	/auto_hyundai_accent_34447778.html	NLHCM41VP9Z134648	10	10	2023-06-13 18:33:38.059868	2023-06-13 18:33:38.059869
34648427	5	59	60099	112700	4193567	104162	2021	8	22 тыс. км	22	1	3	2	1	\N	1	f	/auto_porsche_cayenne_coupe_34648427.html	WP1ZZZ9YZMDA44234	10	10	2023-06-13 18:33:38.068462	2023-06-13 18:33:38.068463
34336824	4	9	44838	27899	1038122	25785	2019	0	25 тыс. км	25	6	0	5	3	\N	1	f	/auto_bmw_i3_34336824.html	WBY8P610107E39040	18	18	2023-06-11 19:51:46.481537	2023-06-11 19:51:46.481538
34637793	4	84	35449	6500	241865	6008	2004	0	185 тыс. км	185	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34637793.html		20	20	2023-06-11 19:51:46.57165	2023-06-11 19:51:46.571651
34637779	2	75	1720	7100	264191	6562	2004	0	256 тыс. км	256	1	2.5	2	1	\N	1	f	/auto_subaru_outback_34637779.html	JF1BP9LLх4Gхххх89	10	10	2023-06-11 19:51:47.053888	2023-06-11 19:51:47.053891
34637489	2	56	3121	13150	489312	12154	2016	0	279 тыс. км	279	2	1.6	1	2	\N	1	f	/auto_opel_insignia_34637489.html		15	200	2023-06-11 19:51:47.073409	2023-06-11 19:51:47.073411
34637751	2	84	39690	9650	359077	8919	2012	0	231 тыс. км	231	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34637751.html	WVWZZZ3CZDE062447	15	200	2023-06-11 19:51:47.095049	2023-06-11 19:51:47.095051
34637767	5	76	672	6700	249307	6192	2005	0	192 тыс. км	192	4	2	2	1	\N	1	f	/auto_suzuki_grand_vitara_34637767.html		4	512	2023-06-11 19:51:47.1145	2023-06-11 19:51:47.114501
34168081	5	33	326	15999	595323	14787	2015	0	190 тыс. км	190	1	2.4	2	2	\N	1	t	/auto_kia_sorento_34168081.html	5XYPG4A39GG023064	12	12	2023-06-11 19:51:47.154102	2023-06-11 19:51:47.154103
34637755	4	62	586	7500	279075	6932	2011	0	202 тыс. км	202	2	1.5	1	2	\N	1	f	/auto_renault_megane_34637755.html	VF1BZAS0546242666	16	252	2023-06-11 19:51:47.225966	2023-06-11 19:51:47.225968
33103060	307	2233	31567	57000	2120970	52682	2018	0	15 тыс. км	15	6	0	2	1	\N	1	t	/auto_tesla_model_s_33103060.html	5YJSA1E2хJFхххх29	7	7	2023-06-11 19:51:47.324749	2023-06-11 19:51:47.324754
34637771	8	62	3185	5500	204655	5083	2005	0	250 тыс. км	250	1	1.6	1	2	\N	1	f	/auto_renault_grand_scenic_34637771.html	VF1JM0CDH34650803	15	200	2023-06-11 19:51:48.345922	2023-06-11 19:51:48.345925
34350264	8	23	34907	6700	249307	6192	2010	0	242 тыс. км	242	2	1.3	1	\N	\N	1	f	/auto_fiat_doblo_pass_34350264.html		22	165	2023-06-11 19:51:48.472962	2023-06-11 19:51:48.472965
34648418	212	177	37865	33000	1227930	30500	2016	13	840 тыс. км	840	2	12.42	2	\N	\N	6	f	/auto_man_18_440_34648418.html	WMA06XZZ4GM692374	8	410	2023-06-13 18:33:38.074112	2023-06-13 18:33:38.074114
34472175	2	17	1890	7400	275354	6839	2011	0	170 тыс. км	170	1	1.6	1	2	\N	1	f	/auto_dacia_logan_34472175.html	UU1KSDA3х45хххх80	11	11	2023-06-12 01:52:05.365328	2023-06-12 01:52:05.365329
34640209	8	84	2093	5850	217327	5395	2003	0	316 тыс. км	316	2	2	1	2	\N	1	f	/auto_volkswagen_touran_34640209.html	WVGZZZ1Tx4Wxxxx33	24	519	2023-06-12 11:45:17.429962	2023-06-12 11:45:17.429964
34640213	8	62	59145	6200	230330	5718	2011	0	230 тыс. км	230	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_34640213.html		4	505	2023-06-12 11:45:17.450238	2023-06-12 11:45:17.450239
1915083	3	88	855	5500	204655	5083	2006	1	65 тыс. км	65	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1915083.html		22	22	2023-06-12 11:45:17.537112	2023-06-12 11:45:17.537114
33869295	212	175	2119	18934	704550	17500	2012	0	922 тыс. км	922	2	0	1	\N	\N	6	f	/auto_iveco_stralis_33869295.html	\N	25	25	2023-06-12 11:45:17.675008	2023-06-12 11:45:17.675011
34056213	4	70	650	1550	57676	1433	1992	0	131 тыс. км	131	4	1.3	1	2	\N	1	f	/auto_skoda_favorit_34056213.html	TMBAEA200N0507523	6	14948	2023-06-12 11:45:17.715542	2023-06-12 11:45:17.715544
33972862	3	33	49491	10100	375821	9335	2016	0	147 тыс. км	147	1	2	2	2	\N	1	t	/auto_kia_forte_33972862.html	3KPFL4A7хHEхххх25	12	12	2023-06-12 11:45:17.792077	2023-06-12 11:45:17.792078
34640167	5	98	1939	23500	874435	21720	2015	0	60 тыс. км	60	1	0	2	1	\N	1	t	/auto_acura_rdx_34640167.html	5J8TB4H75GL802635	5	5	2023-06-12 11:45:17.929608	2023-06-12 11:45:17.929611
34648471	4	70	649	3700	137677	3420	2000	0	281 тыс. км	281	4	1.4	1	2	\N	1	f	/auto_skoda_fabia_34648471.html	TMBND26Y2Y3036396	11	76	2023-06-13 18:33:37.296926	2023-06-13 18:33:37.296927
34424630	4	84	35449	7100	264333	6565	2007	0	214 тыс. км	214	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34424630.html	WVWZZZ1Kx8Wxxxx84	22	161	2023-06-08 19:12:14.686572	2023-06-08 19:12:14.686574
34446214	41	1231	27108	5300	197213	4898	2013	0	без пробега	0	0	0.5	2	4	\N	2	f	/auto_polaris_500_34446214.html		6	6	2023-06-08 19:12:15.330896	2023-06-08 19:12:15.330898
33961308	2	85	3197	7000	261099	6438	2008	0	291 тыс. км	291	2	2	1	2	\N	1	f	/auto_volvo_v50_33961308.html	YV1MW755x82xxxx78	9	9	2023-06-13 21:42:03.050557	2023-06-13 21:42:03.050558
34649746	2	56	1508	6800	253028	6285	2011	0	160 тыс. км	160	1	1.6	2	2	\N	1	f	/auto_opel_astra_34649746.html	W0LPD8EDXB8049867	9	9	2023-06-13 21:42:03.208783	2023-06-13 21:42:03.208785
34649740	4	55	1975	5000	186050	4621	2006	13	190 тыс. км	190	0	1.5	1	\N	\N	1	f	/auto_nissan_note_34649740.html		15	199	2023-06-13 21:42:03.229649	2023-06-13 21:42:03.22965
34649717	3	38	352	25950	965600	23984	2013	8	121 тыс. км	121	5	2.5	2	3	\N	1	f	/auto_lexus_gs_34649717.html	JTHBH1BLх05хххх11	12	12	2023-06-13 21:42:03.273629	2023-06-13 21:42:03.27363
34474450	15	76	55423	3650	135817	3373	1997	0	31 тыс. км	31	1	0.75	1	6	\N	2	f	/auto_suzuki_gsx_750_34474450.html		5	5	2023-06-13 21:42:03.286934	2023-06-13 21:42:03.286935
34348065	8	84	35448	8200	305122	7579	2009	0	334 тыс. км	334	2	1.9	1	2	\N	1	f	/auto_volkswagen_caddy_34348065.html	WV1ZZZ2KZ9X112927	25	25	2023-06-13 21:42:03.404039	2023-06-13 21:42:03.404041
34364540	3	84	785	10499	390352	9688	2015	0	98 тыс. км	98	4	2	2	2	\N	1	t	/auto_volkswagen_jetta_34364540.html	3VW2K7AJxFMxxxx81	8	418	2023-06-09 23:04:59.307677	2023-06-09 23:04:59.307678
34454270	3	48	428	8800	327448	8133	2011	0	565 тыс. км	565	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34454270.html	WDD2120051A499486	1	1	2023-06-09 23:04:59.498817	2023-06-09 23:04:59.498818
34454150	6	9	44037	20800	773968	19224	2015	0	186 тыс. км	186	1	2	2	1	\N	1	t	/auto_bmw_4_series_gran_coupe_34454150.html	WBA4C9C52GG137122	1	1	2023-06-09 23:04:59.538816	2023-06-09 23:04:59.538817
34282680	8	84	64461	5500	204655	5083	1999	0	349 тыс. км	349	2	1.9	1	2	\N	1	f	/auto_volkswagen_transporter_34282680.html	WV1ZZZ70ZXH109097	1	1	2023-06-09 23:04:59.590239	2023-06-09 23:04:59.59024
34282812	4	29	2770	4950	184041	4567	2008	0	130 тыс. км	130	1	1.1	1	2	\N	1	f	/auto_hyundai_i10_34282812.html	MALAM51Bx8Mxxxx94	4	4	2023-06-09 23:05:00.011856	2023-06-09 23:05:00.011857
34266777	197	48	35249	35705	1328580	33000	2016	0	560 тыс. км	560	2	3.2	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_34266777.html	WDB9066571P293397	25	25	2023-06-10 11:33:40.061202	2023-06-10 11:33:40.061202
34474286	17	28	55145	5700	212097	5268	2008	0	37 тыс. км	37	1	0.6	1	6	\N	2	f	/auto_honda_cbf_600n_34474286.html		5	5	2023-06-13 21:42:03.825931	2023-06-13 21:42:03.825937
34391207	8	62	60014	38800	1447240	35690	2022	0	2 тыс. км	2	2	2	1	2	\N	1	f	/auto_renault_trafic_34391207.html	VF1FL000x69xxxx96	10	10	2023-06-13 21:42:04.234152	2023-06-13 21:42:04.23416
34182648	2	58	2109	9200	343160	8462	2015	0	223 тыс. км	223	2	1.6	1	2	\N	1	f	/auto_peugeot_308_34182648.html	VF3LCBHZxFSxxxx05	7	7	2023-06-13 21:42:04.257896	2023-06-13 21:42:04.257897
34649554	2	70	649	6299	234386	5822	2010	0	259 тыс. км	259	1	1.2	2	2	\N	1	f	/auto_skoda_fabia_34649554.html	TMBJN65J3B3034428	5	287	2023-06-13 21:42:04.480757	2023-06-13 21:42:04.48076
34649715	3	47	2865	4000	148840	3697	2000	0	230 тыс. км	230	1	2.5	2	2	\N	1	f	/auto_mazda_millenia_34649715.html	JM1TA221XY1602194	13	113	2023-06-13 21:42:04.500463	2023-06-13 21:42:04.500464
33681775	192	48	35249	42000	1562820	38818	2022	0	23 тыс. км	23	2	0	1	3	\N	6	f	/auto_mercedes_benz_sprinter_33681775.html	W1V90713х1Nхххх59	3	3	2023-06-11 19:51:47.870945	2023-06-11 19:51:47.870948
34637770	3	6	47	5499	204618	5082	2002	0	22 тыс. км	22	1	2	1	2	\N	1	f	/auto_audi_a4_34637770.html		18	18	2023-06-11 19:51:48.342967	2023-06-11 19:51:48.342973
34649708	3	18	162	3000	111630	2773	1999	13	427 тыс. км	427	4	2	1	2	\N	1	f	/auto_daewoo_leganza_34649708.html	KLAVF69ZEXB167681	12	341	2023-06-13 21:42:04.559621	2023-06-13 21:42:04.559623
34466706	4	24	239	6500	241865	6008	2009	0	202 тыс. км	202	2	1.6	1	2	\N	1	f	/auto_ford_fiesta_34466706.html	WF0JXXGAJJ9M10152	25	25	2023-06-12 01:52:05.365891	2023-06-12 01:52:05.365892
34294495	5	79	35004	34400	1280024	31794	2013	0	185 тыс. км	185	2	3	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34294495.html	JTEBH3FJх0Kхххх00	1	1	2023-06-12 01:52:05.424041	2023-06-12 01:52:05.424042
33960303	4	9	44838	13500	501795	12454	2015	0	90 тыс. км	90	6	0	2	3	\N	1	t	/auto_bmw_i3_33960303.html	WBY1Z2C5xFVxxxx85	12	12	2023-06-12 01:52:05.766477	2023-06-12 01:52:05.766478
33959959	8	15	3487	6750	251168	6239	2008	0	182 тыс. км	182	2	2	4	2	\N	1	f	/auto_citroen_c4_picasso_33959959.html	VF7UARHJH45383243	24	527	2023-06-12 01:52:06.027909	2023-06-12 01:52:06.02791
34294483	3	48	431	4300	160003	3974	1991	0	450 тыс. км	450	4	4.2	2	3	\N	1	f	/auto_mercedes_benz_s_class_34294483.html	WDB1400561A013021	9	392	2023-06-12 01:52:06.060782	2023-06-12 01:52:06.060783
34125004	5	6	3222	21500	800015	19871	2014	0	155 тыс. км	155	1	3	2	1	\N	1	t	/auto_audi_q5_34125004.html	WA1DGAFP2EA091372	11	76	2023-06-12 01:52:06.174574	2023-06-12 01:52:06.174576
34124964	3	29	295	10500	390705	9705	2010	0	160 тыс. км	160	4	2.4	1	2	\N	1	f	/auto_hyundai_sonata_34124964.html	KMHEC41CABA229085	14	14	2023-06-12 01:52:06.201902	2023-06-12 01:52:06.201904
34294553	25	1554	58254	800	29768	739	2019	0	9 тыс. км	9	0	0.2	1	\N	\N	2	f	/auto_spark_sp_200r_25i_34294553.html	LZEPCML09K4101902	11	83	2023-06-12 01:52:06.366465	2023-06-12 01:52:06.366468
34125168	3	24	240	9990	371728	9233	2012	0	96 тыс. км	96	6	0	2	2	\N	1	f	/auto_ford_focus_34125168.html	1FADP3R46DL211072	20	605	2023-06-12 01:52:06.940527	2023-06-12 01:52:06.94053
33959896	3	88	858	2700	100467	2495	2006	0	200 тыс. км	200	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2112_33959896.html	XTA21124060382177	19	329	2023-06-12 01:52:07.063524	2023-06-12 01:52:07.06353
34640224	15	76	55447	3300	122595	3043	2008	0	23 тыс. км	23	1	0	1	6	\N	2	f	/auto_suzuki_sv_650_34640224.html	JS1BY211x00xxxx26	16	16	2023-06-12 11:45:17.451569	2023-06-12 11:45:17.45157
34499691	8	33	1310	5500	204655	5083	2008	0	195 тыс. км	195	2	2.9	1	\N	\N	1	f	/auto_kia_carnival_34499691.html	Y6LMB75428L200022	10	10	2023-06-12 11:45:17.582136	2023-06-12 11:45:17.582137
1904314	3	56	1518	7500	279075	6932	1998	1	223 тыс. км	223	1	2.5	2	\N	\N	0	f	/auto_opel_omega_1904314.html		10	10	2023-06-12 11:45:17.662497	2023-06-12 11:45:17.662499
34467316	3	48	45537	203000	7553630	187621	2021	0	1 тыс. км	1	1	4	2	1	\N	1	f	/auto_mercedes_benz_maybach_34467316.html	W1K22397х1Aхххх96	10	10	2023-06-12 11:45:17.685274	2023-06-12 11:45:17.685275
1860801	3	79	702	17999	669743	16635	2008	1	20 тыс. км	20	1	1.6	2	\N	\N	0	f	/auto_toyota_corolla_1860801.html		14	14	2023-06-12 11:45:17.882594	2023-06-12 11:45:17.882597
34640214	307	89	872	1100	40865	1014	1999	0	90 тыс. км	90	4	1.1	1	2	\N	1	f	/auto_zaz_1103_slavuta_34640214.html	Y6D11030xX0xxxx97	10	235	2023-06-12 11:45:18.175744	2023-06-12 11:45:18.175746
34452508	212	115	57062	59525	2211372	54900	2017	0	361 тыс. км	361	2	12.9	2	3	\N	6	f	/auto_daf_xf_106_34452508.html		9	398	2023-06-12 11:45:18.204485	2023-06-12 11:45:18.204487
34436329	2	84	39690	14500	539545	13402	2016	0	230 тыс. км	230	2	2	4	2	\N	1	f	/auto_volkswagen_passat_34436329.html	WVWZZZ3CZHE113316	19	329	2023-06-13 21:42:04.613586	2023-06-13 21:42:04.613588
34469460	4	33	323	6400	238144	5915	2014	0	124 тыс. км	124	2	1.1	1	2	\N	1	f	/auto_kia_rio_34469460.html	KNADM515AE6935409	3	3	2023-06-08 19:12:14.423947	2023-06-08 19:12:14.423948
34648436	4	24	240	7000	260470	6470	2013	13	109 тыс. км	109	1	1	1	2	\N	1	f	/auto_ford_focus_34648436.html	WF0KXXGCBKDP32386	1	604	2023-06-13 18:33:37.29749	2023-06-13 18:33:37.297491
34649750	5	76	672	7200	267912	6655	2007	8	210 тыс. км	210	2	1.9	1	1	\N	1	f	/auto_suzuki_grand_vitara_34649750.html	JSAJTD44V00263124	2	2	2023-06-13 21:42:03.188182	2023-06-13 21:42:03.188184
34649738	2	55	498	3800	141398	3512	2004	0	331 тыс. км	331	2	1.9	1	2	\N	1	f	/auto_nissan_primera_34649738.html	SJNTFAP12U0218557	8	8	2023-06-13 21:42:03.222321	2023-06-13 21:42:03.222324
34649712	4	15	2599	4400	163724	4067	2011	13	125 тыс. км	125	4	1	4	2	\N	1	f	/auto_citroen_c1_34649712.html	VF7PNCFB089562777	16	246	2023-06-13 21:42:03.263671	2023-06-13 21:42:03.263673
34295815	15	76	55414	4500	167445	4159	2005	0	39 тыс. км	39	1	0.65	1	6	\N	2	f	/auto_suzuki_gsf_650_bandit_34295815.html		5	5	2023-06-13 21:42:03.278581	2023-06-13 21:42:03.278582
34649734	4	52	1484	7500	279075	6932	2015	13	150 тыс. км	150	1	1.2	2	2	\N	1	f	/auto_mitsubishi_mirage_34649734.html	ML32A3HJ8FH049352	19	19	2023-06-13 21:42:03.312457	2023-06-13 21:42:03.312458
34454048	4	88	853	1200	44616	1107	1992	0	50 тыс. км	50	1	0	1	\N	\N	1	f	/auto_vaz_lada_2108_34454048.html	XTA21080xN1xxxx90	12	12	2023-06-09 23:04:59.308053	2023-06-09 23:04:59.308054
34585734	5	29	49259	17200	640012	15897	2017	0	78 тыс. км	78	1	2	2	1	\N	1	f	/auto_hyundai_creta_34585734.html	Z94G2813хHRхххх52	10	10	2023-06-10 11:33:40.065821	2023-06-10 11:33:40.065822
34649742	8	48	35252	5700	212097	5268	2000	13	279 тыс. км	279	2	2.2	1	2	\N	1	f	/auto_mercedes_benz_vito_34649742.html	VSA63809413291719	12	336	2023-06-13 21:42:03.631198	2023-06-13 21:42:03.631201
32121990	5	33	327	13200	491172	12200	2012	0	130 тыс. км	130	2	1.7	1	2	\N	1	f	/auto_kia_sportage_32121990.html	U5YPB815ADL200951	23	23	2023-06-13 21:42:04.003739	2023-06-13 21:42:04.003749
34461447	4	33	1306	4200	156660	3863	2007	0	192 тыс. км	192	1	0	1	2	\N	1	f	/auto_kia_picanto_34461447.html	KNEBA244x7Txxxx64	2	140	2023-06-13 21:42:04.249149	2023-06-13 21:42:04.249151
32058546	3	55	487	3300	122793	3050	2004	0	345 тыс. км	345	2	1.5	1	2	\N	1	f	/auto_nissan_almera_32058546.html	SJNBHAN16U0529147	15	15	2023-06-13 21:42:04.491514	2023-06-13 21:42:04.491517
34649630	2	6	47	6200	230702	5730	2004	8	360 тыс. км	360	2	2.5	2	2	\N	1	f	/auto_audi_a4_34649630.html		7	459	2023-06-13 21:42:04.548435	2023-06-13 21:42:04.548438
34649737	5	24	1183	9700	360937	8965	2012	13	190 тыс. км	190	1	1.6	2	2	\N	1	f	/auto_ford_escape_34649737.html	1FMCU0GX7DUA14590	20	20	2023-06-13 21:42:04.564498	2023-06-13 21:42:04.564499
34459956	5	9	96	9000	334890	8318	2003	0	325 тыс. км	325	2	2.9	2	1	\N	1	f	/auto_bmw_x5_34459956.html	WBAFA71070LN28001	16	16	2023-06-13 21:42:04.600117	2023-06-13 21:42:04.600138
34649703	2	70	652	11300	420473	10444	2012	8	234 тыс. км	234	2	2	2	1	\N	1	f	/auto_skoda_octavia_34649703.html		18	18	2023-06-13 21:42:04.740038	2023-06-13 21:42:04.74004
34304435	2	58	2109	13699	510972	12601	2019	0	181 тыс. км	181	2	1.5	1	2	\N	1	f	/auto_peugeot_308_34304435.html	VF3LCYHZxKSxxxx16	2	2	2023-06-13 21:42:05.509687	2023-06-13 21:42:05.509695
34110032	5	84	793	54500	2025765	50279	2020	0	72 тыс. км	72	1	3	2	1	\N	1	f	/auto_volkswagen_touareg_34110032.html	WVGZZZCRxMDxxxx33	7	7	2023-06-12 01:52:04.014473	2023-06-12 01:52:04.014475
34294644	4	88	860	2200	81774	2029	2007	0	115 тыс. км	115	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2114_samara_34294644.html	XTA21144x84xxxx60	16	252	2023-06-12 01:52:04.024576	2023-06-12 01:52:04.024577
34639093	2	6	49	15750	586058	14557	2012	0	218 тыс. км	218	2	2	2	2	\N	1	f	/auto_audi_a6_34639093.html	WAUZZZ4GхCNхххх04	5	291	2023-06-12 01:52:04.157754	2023-06-12 01:52:04.157756
34639091	5	85	2908	17500	651175	16174	2014	0	225 тыс. км	225	1	2	2	2	\N	1	t	/auto_volvo_xc60_34639091.html	YV440MDB2F2610786	10	10	2023-06-12 01:52:04.200928	2023-06-12 01:52:04.200929
34466571	5	6	1943	38600	1436306	35676	2018	0	109 тыс. км	109	1	3	3	1	\N	1	t	/auto_audi_q7_34466571.html	WA1LAAF76JD032329	11	11	2023-06-12 01:52:04.272251	2023-06-12 01:52:04.272253
34294652	4	6	46	8800	327448	8133	2010	0	266 тыс. км	266	2	1.6	2	2	\N	1	f	/auto_audi_a3_34294652.html	WAUZZZ8P6AB024261	4	4	2023-06-12 01:52:04.415344	2023-06-12 01:52:04.415345
34639107	5	84	2692	26700	993507	24677	2017	0	266 тыс. км	266	2	0	2	2	\N	1	f	/auto_volkswagen_tiguan_34639107.html	WVGZZZ5NZJM092932	18	18	2023-06-12 01:52:04.718886	2023-06-12 01:52:04.718891
34294545	4	33	2033	4550	169123	4197	2008	0	302 тыс. км	302	1	1.59	1	2	\N	1	f	/auto_kia_ceed_34294545.html	Y5LFF242x8Lxxxx43	3	3	2023-06-12 01:52:04.987997	2023-06-12 01:52:04.988
34466728	3	23	224	2600	96746	2403	2007	0	186 тыс. км	186	1	1.2	1	2	\N	1	f	/auto_fiat_punto_34466728.html	ZFA18800000984955	2	2	2023-06-12 01:52:05.209056	2023-06-12 01:52:05.209058
34639106	5	79	715	15400	573034	14233	2010	0	144 тыс. км	144	2	2.2	2	1	\N	1	f	/auto_toyota_rav4_34639106.html		5	649	2023-06-12 01:52:05.223277	2023-06-12 01:52:05.223279
34466656	3	47	393	5500	204655	5083	2005	0	250 тыс. км	250	1	2	1	2	\N	1	f	/auto_mazda_6_34466656.html	JMZGG12F661629340	11	11	2023-06-12 01:52:05.295594	2023-06-12 01:52:05.295595
34125200	5	55	1835	14200	528382	13124	2014	0	141 тыс. км	141	1	3.5	2	1	\N	1	t	/auto_nissan_pathfinder_34125200.html	5N1AR2MM8EC689287	5	293	2023-06-12 01:52:05.366494	2023-06-12 01:52:05.366495
34466668	5	29	1268	7700	286517	7117	2006	0	270 тыс. км	270	4	2	2	1	\N	1	f	/auto_hyundai_tucson_34466668.html	Y6LJN81BP6L001317	12	12	2023-06-12 01:52:05.369378	2023-06-12 01:52:05.369379
34640225	5	52	2685	11000	408650	10145	2006	0	135 тыс. км	135	2	2.5	1	1	\N	1	f	/auto_mitsubishi_pajero_sport_34640225.html	JMB0RK96x5Jxxxx84	10	10	2023-06-12 11:45:17.453115	2023-06-12 11:45:17.453116
1864069	3	9	32251	35800	1332118	33088	2004	1	90 тыс. км	90	2	3	2	\N	\N	1	f	/auto_bmw_525_1864069.html		10	10	2023-06-12 11:45:17.592491	2023-06-12 11:45:17.592492
34446121	145	177	31670	58967	2194170	54500	2013	0	456 тыс. км	456	0	0	2	\N	\N	4	f	/auto_man_tgs_34446121.html		25	25	2023-06-12 11:45:17.6653	2023-06-12 11:45:17.665301
1903492	5	28	1247	43500	1618635	40205	2009	1	55 тыс. км	55	1	3.5	2	\N	\N	0	f	/auto_honda_pilot_1903492.html		3	3	2023-06-12 11:45:17.700266	2023-06-12 11:45:17.700267
1871411	3	28	262	5800	215818	5361	1993	1	111 тыс. км	111	4	2	1	\N	\N	0	f	/auto_honda_accord_1871411.html		10	10	2023-06-12 11:45:17.79032	2023-06-12 11:45:17.790322
34640207	3	9	18490	4500	167175	4150	2002	0	310 тыс. км	310	4	4.4	2	3	\N	1	f	/auto_bmw_7_series_34640207.html	WBAGL610x0Dxxxx56	9	9	2023-06-12 11:45:18.185885	2023-06-12 11:45:18.185888
34640210	11	1201	28189	200	7430	184	2010	0	2 тыс. км	2	1	0	2	\N	\N	2	f	/auto_viper_grand_prix_34640210.html		15	193	2023-06-12 11:45:18.19707	2023-06-12 11:45:18.197073
34082217	2	48	425	3000	111450	2766	2000	0	341 тыс. км	341	2	2.2	1	\N	\N	1	f	/auto_mercedes_benz_c_class_34082217.html	WDB20219x1Fxxxx18	5	5	2023-06-12 11:45:18.212957	2023-06-12 11:45:18.212959
31012317	221	408	3803	3300	122595	3043	2007	0	150 тыс. км	150	4	2.5	1	\N	\N	7	f	/auto_ruta_20_31012317.html	Y8920000x70xxxx76	19	19	2023-06-12 11:45:18.215666	2023-06-12 11:45:18.215668
33832117	5	84	793	8000	297200	7378	2004	0	193 тыс. км	193	2	2.5	1	1	\N	1	f	/auto_volkswagen_touareg_33832117.html	WVGZZZ7Lx4Dxxxx54	10	10	2023-06-12 11:45:18.237688	2023-06-12 11:45:18.237689
34446384	3	84	35399	5800	215818	5361	1999	0	329 тыс. км	329	2	2.5	1	3	\N	1	f	/auto_volkswagen_lt_34446384.html	WV1ZZZ2DZXH017808	12	12	2023-06-08 19:12:14.474037	2023-06-08 19:12:14.474038
34446339	3	9	2319	2500	93025	2311	1995	0	250 тыс. км	250	2	2.5	2	3	\N	1	f	/auto_bmw_5_series_34446339.html	WBAHA91030GK74056	10	612	2023-06-08 19:12:14.958311	2023-06-08 19:12:14.958314
34446245	2	70	652	5299	197176	4898	2003	0	201 тыс. км	201	1	2	1	2	\N	1	f	/auto_skoda_octavia_34446245.html	TMBHE21U938703653	18	18	2023-06-08 19:12:14.967697	2023-06-08 19:12:14.967699
32619148	3	56	1508	4300	160003	3974	2007	0	175 тыс. км	175	1	1.4	1	2	\N	1	f	/auto_opel_astra_32619148.html	Y6D0TGF6х7Xхххх07	15	15	2023-06-08 19:12:15.072843	2023-06-08 19:12:15.072844
34446248	3	33	1311	4400	163724	4067	2007	0	300 тыс. км	300	4	1.6	1	3	\N	1	f	/auto_kia_cerato_34446248.html	Y6LFE227х7Lхххх34	4	4	2023-06-08 19:12:15.124997	2023-06-08 19:12:15.124998
34446289	5	33	327	12300	457683	11368	2014	0	185 тыс. км	185	4	2.4	2	1	\N	1	t	/auto_kia_sportage_34446289.html	KNDPBCAC0F7710518	1	597	2023-06-08 19:12:15.233711	2023-06-08 19:12:15.233713
34446209	8	62	3185	5200	193492	4806	2005	0	290 тыс. км	290	2	1.9	1	2	\N	1	f	/auto_renault_grand_scenic_34446209.html	VF1JMG4D634351442	12	346	2023-06-08 19:12:15.327027	2023-06-08 19:12:15.327029
34648169	5	88	863	3000	111630	2773	1982	13	12 тыс. км	12	4	1.6	1	1	\N	1	f	/auto_vaz_lada_2121_niva_34648169.html		6	557	2023-06-13 18:33:37.297723	2023-06-13 18:33:37.297724
34649657	3	52	456	2800	104188	2588	2000	13	345 тыс. км	345	1	2.4	2	2	\N	1	f	/auto_mitsubishi_galant_34649657.html	\N	10	10	2023-06-13 21:42:03.246046	2023-06-13 21:42:03.246047
34308085	8	56	59772	18800	699548	17376	2018	0	190 тыс. км	190	2	1.6	1	2	\N	1	f	/auto_opel_vivaro_34308085.html	W0LJ7D60хHVхххх06	10	10	2023-06-13 21:42:03.353055	2023-06-13 21:42:03.353058
34563942	8	62	60014	24999	932462	22995	2021	0	113 тыс. км	113	2	2	1	2	\N	1	f	/auto_renault_trafic_34563942.html	VF1FL000x66xxxx91	10	10	2023-06-13 21:42:04.227845	2023-06-13 21:42:04.227848
34448961	2	70	652	8500	316285	7856	2010	0	239 тыс. км	239	2	1.6	1	\N	\N	1	f	/auto_skoda_octavia_34448961.html	TMBKT61Z7B2008491	10	10	2023-06-09 10:11:06.07941	2023-06-09 10:11:06.079416
34282808	5	33	326	8600	319748	7936	2008	0	310 тыс. км	310	2	2.5	1	1	\N	1	f	/auto_kia_sorento_34282808.html	KNAJC524x95xxxx92	5	292	2023-06-09 23:05:00.01539	2023-06-09 23:05:00.015392
34627845	5	189	46025	2000	74420	1848	1992	0	200 тыс. км	200	2	1.6	1	\N	\N	1	f	/auto_luaz_969m_34627845.html	XTD969M0хN0хххх86	2	131	2023-06-10 11:33:40.070637	2023-06-10 11:33:40.070638
34644635	3	48	431	21000	783299	19316	1996	0	268 тыс. км	268	1	5	2	3	\N	1	f	/auto_mercedes_benz_s_class_34644635.html		7	7	2023-06-13 21:42:04.249483	2023-06-13 21:42:04.249484
34649730	2	70	652	6500	241865	6008	2008	13	206 тыс. км	206	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34649730.html	TMBHB61Z582139862	4	4	2023-06-13 21:42:04.486336	2023-06-13 21:42:04.486339
34649702	2	56	1508	5300	197213	4898	2005	13	170 тыс. км	170	1	1.6	1	2	\N	1	f	/auto_opel_astra_34649702.html	W0L0AHL3х62хххх34	14	14	2023-06-13 21:42:04.544411	2023-06-13 21:42:04.544413
34649687	3	28	262	12500	465125	11553	2014	8	175 тыс. км	175	1	2.4	5	2	\N	1	t	/auto_honda_accord_34649687.html	1HGCR2F56FA090485	10	210	2023-06-13 21:42:04.557216	2023-06-13 21:42:04.557217
34474383	15	179	55526	5300	197213	4898	2004	0	38 тыс. км	38	1	1.3	1	6	\N	2	f	/auto_yamaha_xjr_1300_34474383.html		5	5	2023-06-13 21:42:04.562794	2023-06-13 21:42:04.5628
34649710	2	6	49	7400	275354	6839	2006	8	232 тыс. км	232	1	2	1	2	\N	1	f	/auto_audi_a6_34649710.html	WAUZZZ4F07N033574	5	5	2023-06-13 21:42:04.594826	2023-06-13 21:42:04.594829
34649707	307	89	872	1600	59536	1479	2006	13	62 тыс. км	62	1	1.3	1	\N	\N	1	f	/auto_zaz_1103_slavuta_34649707.html	Y6D11030х60хххх15	1	42	2023-06-13 21:42:04.700541	2023-06-13 21:42:04.700543
34294512	5	9	1866	8900	330813	8210	2005	0	227 тыс. км	227	4	2.5	2	1	\N	1	f	/auto_bmw_x3_34294512.html	WBAPA710x0Wxxxx73	20	20	2023-06-12 01:52:04.020541	2023-06-12 01:52:04.020542
34294544	5	190	1902	4200	156114	3874	2007	0	175 тыс. км	175	4	2	1	2	\N	1	f	/auto_chery_tiggo_34294544.html	Y6DDB14Bx7Dxxxx27	1	644	2023-06-12 01:52:04.026673	2023-06-12 01:52:04.026675
34639124	5	32	315	13500	502335	12477	2010	0	155 тыс. км	155	4	3.6	2	1	\N	1	f	/auto_jeep_grand_cherokee_34639124.html		2	2	2023-06-12 01:52:04.171235	2023-06-12 01:52:04.171237
34639104	8	9	61149	20016	744810	18500	2016	0	110 тыс. км	110	2	2	2	1	\N	1	f	/auto_bmw_2_series_gran_tourer_34639104.html		25	25	2023-06-12 01:52:04.197958	2023-06-12 01:52:04.19796
32801386	4	56	509	900	33489	832	1988	0	320 тыс. км	320	1	1.3	1	2	\N	1	f	/auto_opel_kadett_32801386.html	W0L00003хJ2хххх82	9	9	2023-06-12 01:52:04.226448	2023-06-12 01:52:04.22645
34294587	423	28	58910	1800	66978	1664	1990	0	50 тыс. км	50	0	0	1	6	\N	2	f	/auto_honda_cb_1_34294587.html	JH2NC270XKM003134	10	10	2023-06-12 01:52:04.405034	2023-06-12 01:52:04.405035
34473398	197	62	59145	10950	407450	10120	2018	0	145 тыс. км	145	2	1.5	1	2	\N	6	f	/auto_renault_kangoo_34473398.html	VF1FN51Hх60хххх16	9	392	2023-06-12 01:52:04.523274	2023-06-12 01:52:04.523276
34639123	2	6	47	9200	342332	8503	2008	0	240 тыс. км	240	2	2	1	2	\N	1	f	/auto_audi_a4_34639123.html	WAUZZZ8Kх9Aхххх23	10	10	2023-06-12 01:52:05.205958	2023-06-12 01:52:05.205966
34125088	8	84	35448	5000	186050	4621	2007	0	230 тыс. км	230	4	1.4	1	2	\N	1	f	/auto_volkswagen_caddy_34125088.html	WV1ZZZ2KZ7X092717	3	441	2023-06-12 01:52:05.220862	2023-06-12 01:52:05.220864
34466735	2	62	586	6500	241865	6008	2009	0	157 тыс. км	157	1	1.6	1	2	\N	1	f	/auto_renault_megane_34466735.html	VF1KM1R0H41538398	3	3	2023-06-12 01:52:05.294452	2023-06-12 01:52:05.294452
34639092	3	18	161	2800	104188	2588	2005	0	285 тыс. км	285	4	1.6	1	2	\N	1	f	/auto_daewoo_lanos_34639092.html	Y6DTF696060008602	20	20	2023-06-12 01:52:05.339878	2023-06-12 01:52:05.339879
34466664	2	9	2319	4899	182292	4528	2001	0	333 тыс. км	333	2	2.5	1	3	\N	1	f	/auto_bmw_5_series_34466664.html	WBADP91010GX77193	1	34	2023-06-12 01:52:05.36836	2023-06-12 01:52:05.36836
34124867	3	84	39690	20000	744200	18485	2018	0	72 тыс. км	72	1	3.6	2	2	\N	1	t	/auto_volkswagen_passat_34124867.html	1VWJM7A39JC032954	5	5	2023-06-12 01:52:05.375827	2023-06-12 01:52:05.375828
34640216	307	89	872	1150	42722	1060	2003	0	145 тыс. км	145	4	1.2	1	2	\N	1	f	/auto_zaz_1103_slavuta_34640216.html	Y6D11030x30xxxx97	15	205	2023-06-12 11:45:17.456116	2023-06-12 11:45:17.456117
31744446	5	6	1943	24999	928712	23056	2015	0	81 тыс. км	81	1	3	2	1	\N	1	t	/auto_audi_q7_31744446.html	WA1LGAFExFDxxxx27	24	24	2023-06-12 11:45:18.210344	2023-06-12 11:45:18.210346
34640223	2	88	847	500	18575	461	1984	0	63 тыс. км	63	1	1.3	1	3	\N	1	f	/auto_vaz_lada_2102_34640223.html	XTA21020xD0xxxx62	10	225	2023-06-12 11:45:18.239817	2023-06-12 11:45:18.239819
1906392	5	52	2685	21000	781410	19409	2008	1	9 тыс. км	9	2	2.5	1	\N	\N	0	f	/auto_mitsubishi_pajero_sport_1906392.html		22	22	2023-06-12 11:45:18.450309	2023-06-12 11:45:18.450314
34508967	2	70	652	5400	200934	4991	2003	0	247 тыс. км	247	1	2	1	2	\N	1	f	/auto_skoda_octavia_34508967.html	TMBHE21U832786558	10	10	2023-06-12 11:45:18.461931	2023-06-12 11:45:18.461933
25377566	8	14	122	6000	223260	5545	2002	0	325 тыс. км	325	2	2.5	1	2	\N	1	f	/auto_chrysler_voyager_25377566.html	1C8GYN27х2Uхххх97	5	5	2023-06-12 11:45:18.464299	2023-06-12 11:45:18.4643
34590657	3	18	161	2350	87444	2172	2004	0	170 тыс. км	170	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34590657.html	Y6DTF69Yх4Wхххх10	10	10	2023-06-12 11:45:18.469977	2023-06-12 11:45:18.469979
34447624	4	70	649	5200	193492	4806	2012	0	277 тыс. км	277	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34447624.html	TMBEC45J3CB503505	2	2	2023-06-08 19:11:55.760296	2023-06-08 19:11:55.760298
34542568	5	6	59400	130500	4855905	120614	2021	0	35 тыс. км	35	2	4	3	1	\N	1	f	/auto_audi_sq8_34542568.html	WAUZZZF1хMDхххх67	10	10	2023-06-08 19:11:55.846944	2023-06-08 19:11:55.846946
34499497	8	24	2036	5390	200562	4982	2006	0	237 тыс. км	237	4	2	1	2	\N	1	f	/auto_ford_c_max_34499497.html	WF0MXXGCDM6T04287	10	10	2023-06-13 18:33:37.299125	2023-06-13 18:33:37.299126
34114595	5	28	269	10900	405589	10074	2007	0	180 тыс. км	180	2	2.2	1	1	\N	1	f	/auto_honda_cr_v_34114595.html	SHSRE67708U014294	4	4	2023-06-13 18:33:37.392486	2023-06-13 18:33:37.392488
34648163	5	32	314	19200	714432	17745	2017	0	74 тыс. км	74	1	3.2	3	1	\N	1	f	/auto_jeep_cherokee_34648163.html	1C4PJMBSхHWхххх88	10	10	2023-06-13 18:33:38.058119	2023-06-13 18:33:38.058121
34648416	3	88	848	700	26047	647	1980	13	100 тыс. км	100	4	0	1	\N	\N	1	f	/auto_vaz_lada_2103_34648416.html		13	123	2023-06-13 18:33:38.066747	2023-06-13 18:33:38.066749
34648402	212	85	47974	31918	1187670	29500	2012	8	1025 тыс. км	1025	2	0	2	3	\N	6	f	/auto_volvo_fh_13_34648402.html		5	309	2023-06-13 18:33:38.073197	2023-06-13 18:33:38.073199
33938367	2	62	586	3850	143259	3558	2004	0	300 тыс. км	300	2	1.9	1	2	\N	1	f	/auto_renault_megane_33938367.html	VF1KMRG0х31хххх48	15	15	2023-06-13 18:33:38.082712	2023-06-13 18:33:38.082713
1872797	2	24	240	10900	405589	10074	2006	1	47 тыс. км	47	1	1.4	1	\N	\N	0	f	/auto_ford_focus_1872797.html		10	10	2023-06-13 18:33:38.117415	2023-06-13 18:33:38.117416
34529304	5	32	2842	9000	334890	8318	2011	0	250 тыс. км	250	1	2.4	2	1	\N	1	t	/auto_jeep_compass_34529304.html	1J4NF1FB8BD252099	15	15	2023-06-13 18:33:38.969335	2023-06-13 18:33:38.969337
1915387	3	18	161	7000	260470	6470	2008	1	32 тыс. км	32	0	1.5	1	\N	\N	0	f	/auto_daewoo_lanos_1915387.html		12	12	2023-06-13 18:33:39.923584	2023-06-13 18:33:39.923591
34455318	3	84	39690	24500	911645	22644	2018	0	225 тыс. км	225	1	1.8	4	2	\N	1	f	/auto_volkswagen_passat_34455318.html	WVWZZZ3CZKE051894	11	11	2023-06-13 21:42:03.914832	2023-06-13 21:42:03.914842
34203039	5	84	793	26930	1004488	24771	2014	0	260 тыс. км	260	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34203039.html	WVGZZZ7PxEDxxxx68	15	201	2023-06-13 21:42:04.248736	2023-06-13 21:42:04.248738
34649732	4	55	36565	22400	833504	20703	2019	8	142 тыс. км	142	6	0	2	2	\N	1	f	/auto_nissan_leaf_34649732.html	SJNFAAZE1U0086959	3	3	2023-06-13 21:42:04.479517	2023-06-13 21:42:04.479521
34649633	2	70	649	4500	167445	4159	2005	0	144 тыс. км	144	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34649633.html		10	10	2023-06-13 21:42:04.487025	2023-06-13 21:42:04.48703
34649700	4	84	35449	1250	46513	1155	1991	0	313 тыс. км	313	4	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34649700.html	WVWZZZ1GZMW178101	20	20	2023-06-13 21:42:04.49441	2023-06-13 21:42:04.494412
34649728	8	58	61202	5850	217679	5407	2012	0	145 тыс. км	145	2	1.2	1	2	\N	1	f	/auto_peugeot_bipper_34649728.html	VF3AJFHZ0C8259319	5	5	2023-06-13 21:42:04.519982	2023-06-13 21:42:04.519985
34588656	5	6	49206	107000	3981470	98894	2019	0	90 тыс. км	90	2	4	2	1	\N	1	f	/auto_audi_sq7_34588656.html	WAUZZZ4MхLDхххх58	11	76	2023-06-13 21:42:04.624907	2023-06-13 21:42:04.624911
34474585	17	76	55413	3200	119072	2958	1999	0	без пробега	0	1	0.6	1	6	\N	2	f	/auto_suzuki_gsf_600_bandit_s_34474585.html		5	5	2023-06-13 21:42:04.950563	2023-06-13 21:42:04.950567
34649735	5	84	793	21500	800015	19871	2013	13	247 тыс. км	247	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34649735.html		4	4	2023-06-13 21:42:05.772684	2023-06-13 21:42:05.772687
34649668	3	88	37962	4700	174887	4344	2012	13	74 тыс. км	74	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2190_granta_34649668.html	XTA219060C0030900	10	10	2023-06-13 21:42:05.952965	2023-06-13 21:42:05.952966
34649736	4	15	128	5200	193492	4806	2008	13	180 тыс. км	180	2	1.4	4	2	\N	1	f	/auto_citroen_c3_34649736.html	VF7FC8HZC29173513	5	302	2023-06-13 21:42:07.421394	2023-06-13 21:42:07.421397
34649682	2	33	2033	7600	282796	7024	2011	13	267 тыс. км	267	2	1.6	1	2	\N	1	f	/auto_kia_ceed_34649682.html	U5YHE816ACL234703	5	5	2023-06-13 21:42:07.482031	2023-06-13 21:42:07.482034
34651318	2	56	3121	9999	373162	9202	2013	0	248 тыс. км	248	2	2	2	2	\N	1	f	/auto_opel_insignia_34651318.html	W0LGT8ELxD1xxxx52	10	10	2023-06-14 09:54:10.189467	2023-06-14 09:54:10.189468
34651334	8	48	35252	12000	446520	11091	2011	0	300 тыс. км	300	2	2.1	1	3	\N	1	f	/auto_mercedes_benz_vito_34651334.html	WDF63960313658572	5	5	2023-06-14 09:54:10.229681	2023-06-14 09:54:10.229682
1916432	2	70	652	11600	431636	10721	2007	1	100 тыс. км	100	1	1.6	1	\N	\N	0	f	/auto_skoda_octavia_1916432.html		10	10	2023-06-14 09:54:10.315819	2023-06-14 09:54:10.315821
1868367	8	24	1177	10950	407450	10120	2005	1	120 тыс. км	120	2	2	1	\N	\N	0	f	/auto_ford_transit_gruz_1868367.html		9	392	2023-06-14 09:54:10.402987	2023-06-14 09:54:10.402989
1908694	3	48	431	0	0	0	1995	13	500 тыс. км	500	1	5	2	\N	\N	0	f	/auto_mercedes_benz_s_class_1908694.html		23	477	2023-06-14 09:54:10.458303	2023-06-14 09:54:10.458305
1916520	3	28	262	25500	948855	23568	2008	1	36 тыс. км	36	1	2	3	\N	\N	0	f	/auto_honda_accord_1916520.html		3	3	2023-06-14 09:54:10.820792	2023-06-14 09:54:10.8208
34651305	2	70	649	4950	184734	4555	2009	0	178 тыс. км	178	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34651305.html	TMBGC25Jx93xxxx70	15	15	2023-06-14 09:54:11.915961	2023-06-14 09:54:11.915962
34291542	307	70	652	13900	518748	12792	2018	0	262 тыс. км	262	2	1.6	1	2	\N	1	f	/auto_skoda_octavia_34291542.html	TMBAG7NExK0xxxx55	11	76	2023-06-14 09:54:11.928473	2023-06-14 09:54:11.928474
34624600	7	62	586	4600	171672	4233	2004	0	175 тыс. км	175	2	1.9	2	2	\N	1	f	/auto_renault_megane_34624600.html		11	75	2023-06-14 09:54:11.935053	2023-06-14 09:54:11.935054
34471608	8	13	62145	29900	1115868	27518	2011	0	142 тыс. км	142	1	5.3	2	1	\N	1	t	/auto_chevrolet_express_34471608.html	1GBSHDC4xB1xxxx94	10	10	2023-06-14 09:54:12.019082	2023-06-14 09:54:12.019083
34481319	2	84	39690	6300	235179	5792	2005	0	221 тыс. км	221	1	2	2	2	\N	1	f	/auto_volkswagen_passat_34481319.html	WVWZZZ3Cx6Exxxx66	18	18	2023-06-14 17:04:37.279109	2023-06-14 17:04:37.27911
34481269	4	23	224	3900	145119	3605	2006	0	197 тыс. км	197	1	1.4	1	1	\N	1	f	/auto_fiat_punto_34481269.html	ZFA19900001059115	10	10	2023-06-14 17:04:37.386279	2023-06-14 17:04:37.386281
34480983	3	52	457	13000	483730	12015	2008	0	110 тыс. км	110	1	0	5	2	\N	1	t	/auto_mitsubishi_lancer_34480983.html	JMYSTCY4A8U740486	10	10	2023-06-14 17:04:37.443136	2023-06-14 17:04:37.443138
34481053	6	48	1710	22397	833382	20700	2007	0	108 тыс. км	108	1	6.2	2	1	\N	1	f	/auto_mercedes_benz_cl_class_34481053.html	WDDEJ77Xх8Aхххх99	12	12	2023-06-14 17:04:37.480919	2023-06-14 17:04:37.48092
34654168	3	52	456	2200	81862	2033	1992	0	298 тыс. км	298	4	2	1	2	\N	1	f	/auto_mitsubishi_galant_34654168.html	JMBSNE54APZ000187	12	643	2023-06-14 17:04:37.84247	2023-06-14 17:04:37.842481
34200441	3	62	1554	4900	182917	4505	2016	0	130 тыс. км	130	4	1.2	1	2	\N	1	f	/auto_renault_logan_34200441.html	VF14SRAGx56xxxx93	13	113	2023-06-14 17:04:38.099216	2023-06-14 17:04:38.099219
34654154	2	62	586	8500	316285	7856	2012	8	226 тыс. км	226	2	0	1	2	\N	1	f	/auto_renault_megane_34654154.html	VF1KZ140647605697	19	19	2023-06-14 17:04:38.351349	2023-06-14 17:04:38.351371
34481185	307	89	872	1600	59536	1479	2006	0	137 тыс. км	137	4	1.2	1	2	\N	1	f	/auto_zaz_1103_slavuta_34481185.html	Y6D11030770104275	10	10	2023-06-14 17:04:38.366993	2023-06-14 17:04:38.366995
34456867	197	84	35399	11000	409310	10167	2006	0	555 тыс. км	555	2	2.8	1	3	\N	6	f	/auto_volkswagen_lt_34456867.html	WV1ZZZ2DZ6H023605	7	7	2023-06-12 11:45:18.556084	2023-06-12 11:45:18.556086
1902799	3	13	2145	14777	549852	13658	2008	11	23 тыс. км	23	1	2	1	\N	\N	0	f	/auto_chevrolet_epica_1902799.html		10	10	2023-06-12 11:45:18.581581	2023-06-12 11:45:18.581583
1910451	3	13	1038	10300	383263	9520	2009	1	7 тыс. км	7	1	1.6	1	\N	\N	0	f	/auto_chevrolet_aveo_1910451.html		24	24	2023-06-12 11:45:18.644779	2023-06-12 11:45:18.64478
33214515	2	70	3009	7900	293485	7286	2008	0	250 тыс. км	250	1	2	1	1	\N	1	f	/auto_skoda_octavia_scout_33214515.html		11	11	2023-06-12 11:45:18.952463	2023-06-12 11:45:18.952469
34343903	3	6	51	29000	1077350	26746	2015	0	114 тыс. км	114	1	4	2	1	\N	1	t	/auto_audi_a8_34343903.html	WAU32AFDxFNxxxx05	12	12	2023-06-12 11:45:18.972098	2023-06-12 11:45:18.9721
34648408	4	29	2770	4800	178608	4436	2008	8	133 тыс. км	133	1	1.1	1	2	\N	1	f	/auto_hyundai_i10_34648408.html		9	9	2023-06-13 18:33:37.331866	2023-06-13 18:33:37.331867
34637828	3	13	1052	5500	204655	5083	2007	0	158 тыс. км	158	4	1.8	1	2	\N	1	f	/auto_chevrolet_lacetti_34637828.html	Y6DNF19Bх7Kхххх38	11	11	2023-06-12 11:45:19.235714	2023-06-12 11:45:19.235716
34637965	3	18	161	2700	100467	2495	1999	0	188 тыс. км	188	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34637965.html	Y6DTF69YхXBхххх26	10	10	2023-06-12 11:45:19.264894	2023-06-12 11:45:19.264895
1916504	3	6	49	12400	461404	11461	2001	1	240 тыс. км	240	1	1.8	1	\N	\N	0	f	/auto_audi_a6_1916504.html		10	10	2023-06-13 21:42:05.301901	2023-06-13 21:42:05.301906
34649719	449	24	60475	6200	230702	5730	2007	13	231 тыс. км	231	2	1.6	2	2	\N	1	f	/auto_ford_focus_c_max_34649719.html	WF0MXXGCDM7D16876	25	25	2023-06-13 21:42:05.784254	2023-06-13 21:42:05.784257
34455940	2	70	652	5450	202795	5037	2004	0	142 тыс. км	142	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34455940.html	TMBJX41U742919786	4	499	2023-06-12 11:45:20.420332	2023-06-12 11:45:20.420334
34649676	3	84	39690	18200	677222	16821	2015	8	245 тыс. км	245	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34649676.html	WVWZZZ3CZGE039091	12	342	2023-06-13 21:42:05.814336	2023-06-13 21:42:05.814343
34649689	5	9	96	10000	372100	9242	2006	13	290 тыс. км	290	4	3	2	\N	\N	1	f	/auto_bmw_x5_34649689.html	WBAFA110X0LT62814	7	469	2023-06-13 21:42:05.825089	2023-06-13 21:42:05.825093
34649714	2	58	526	5500	204655	5083	2006	13	210 тыс. км	210	4	1.6	2	2	\N	1	f	/auto_peugeot_307_34649714.html	VF33HNFUF84464083	7	7	2023-06-13 21:42:05.949687	2023-06-13 21:42:05.949688
34605565	8	62	60014	25800	960018	23845	2020	0	114 тыс. км	114	2	2	1	2	\N	1	f	/auto_renault_trafic_34605565.html		10	10	2023-06-13 21:42:05.954607	2023-06-13 21:42:05.954609
34284004	298	48	35249	38999	1455442	35892	2019	0	180 тыс. км	180	2	2.2	1	3	\N	4	f	/auto_mercedes_benz_sprinter_34284004.html		3	3	2023-06-14 09:54:10.192899	2023-06-14 09:54:10.192901
33118673	8	29	290	4800	178608	4436	2007	0	170 тыс. км	170	2	1.5	1	2	\N	1	f	/auto_hyundai_matrix_33118673.html	Y6LPM81Uх8Lхххх89	7	7	2023-06-14 09:54:10.231883	2023-06-14 09:54:10.231884
1907980	3	58	1526	0	0	0	2007	1	120 тыс. км	120	1	1.8	1	\N	\N	0	f	/auto_peugeot_407_1907980.html		4	504	2023-06-14 09:54:10.40556	2023-06-14 09:54:10.405561
1903665	3	55	487	9200	342332	8503	2004	1	70 тыс. км	70	1	1.5	1	\N	\N	0	f	/auto_nissan_almera_1903665.html		12	12	2023-06-14 09:54:10.487281	2023-06-14 09:54:10.487284
34440060	3	84	39690	10600	394426	9797	2012	0	250 тыс. км	250	1	1.8	2	2	\N	1	f	/auto_volkswagen_passat_34440060.html	WVWZZZ3CZCP064371	11	76	2023-06-14 09:54:10.897672	2023-06-14 09:54:10.897674
34590310	5	32	314	15500	578460	14265	2016	0	128 тыс. км	128	4	2.4	2	2	\N	1	t	/auto_jeep_cherokee_34590310.html	1C4PJLABxHWxxxx14	11	85	2023-06-14 09:54:11.921498	2023-06-14 09:54:11.921499
34359774	212	175	2119	9500	353495	8780	2003	0	1200 тыс. км	1200	2	10.5	1	\N	\N	6	f	/auto_iveco_stralis_34359774.html		15	196	2023-06-14 09:54:12.334996	2023-06-14 09:54:12.334998
34484408	307	70	652	7750	289230	7132	2012	0	212 тыс. км	212	2	1.6	1	2	\N	1	f	/auto_skoda_octavia_34484408.html		22	161	2023-06-14 09:54:13.495857	2023-06-14 09:54:13.49586
34624535	2	70	652	8750	326550	8053	2009	0	236 тыс. км	236	2	1.9	1	2	\N	1	f	/auto_skoda_octavia_34624535.html	TMBHS61Zx02xxxx30	2	2	2023-06-14 09:54:13.510143	2023-06-14 09:54:13.510144
34473811	3	84	785	8450	315354	7776	2013	0	210 тыс. км	210	1	1.8	2	2	\N	1	t	/auto_volkswagen_jetta_34473811.html	3VWD17AJxEMxxxx54	10	10	2023-06-14 09:54:13.518825	2023-06-14 09:54:13.518827
34469842	6	6	2032	29999	1116263	27726	2018	0	48 тыс. км	48	1	2	2	1	\N	1	t	/auto_audi_a5_34469842.html	WAUSNAF55KA017499	1	1	2023-06-14 09:54:13.844054	2023-06-14 09:54:13.844063
1907360	8	24	1177	7000	260470	6470	1998	1	151 тыс. км	151	2	2.5	1	\N	\N	0	f	/auto_ford_transit_gruz_1907360.html		12	12	2023-06-14 09:54:13.929669	2023-06-14 09:54:13.929672
34310149	3	29	295	9999	373162	9202	2013	0	228 тыс. км	228	5	2.4	2	2	\N	1	t	/auto_hyundai_sonata_34310149.html	KMHEC4A4xDAxxxx28	12	342	2023-06-14 09:54:17.206808	2023-06-14 09:54:17.206812
1908658	3	56	2996	16500	613965	15250	2006	1	61 тыс. км	61	1	2.8	3	\N	\N	0	f	/auto_opel_vectra_c_1908658.html		10	10	2023-06-14 09:54:17.557679	2023-06-14 09:54:17.557682
34481004	3	6	51	19300	720469	17745	2013	0	207 тыс. км	207	1	3	2	1	\N	1	f	/auto_audi_a8_34481004.html	WAURGAFDxDNxxxx39	5	5	2023-06-14 17:04:37.282822	2023-06-14 17:04:37.282823
34654166	197	62	46833	18500	688385	17098	2018	8	210 тыс. км	210	2	0	1	2	\N	6	f	/auto_renault_master_34654166.html	VF1MA000659968040	10	10	2023-06-14 17:04:37.396717	2023-06-14 17:04:37.39672
28388053	4	70	649	5100	189771	4714	2008	0	198 тыс. км	198	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_28388053.html	TMBBC45Jх9Bхххх29	1	1	2023-06-14 17:04:37.474638	2023-06-14 17:04:37.47464
34654127	3	47	1692	4990	186276	4588	2006	0	278 тыс. км	278	1	0	1	2	\N	1	f	/auto_mazda_3_34654127.html	JMZBK12Zx61xxxx77	10	10	2023-06-14 17:04:38.090353	2023-06-14 17:04:38.090356
34481095	5	55	507	7800	290238	7209	2005	0	185 тыс. км	185	1	2	2	1	\N	1	f	/auto_nissan_x_trail_34481095.html	JN1TANT3хU0хххх26	10	10	2023-06-14 17:04:38.356584	2023-06-14 17:04:38.356588
34481061	2	33	2033	6200	230702	5730	2008	0	182 тыс. км	182	2	2	1	\N	\N	1	f	/auto_kia_ceed_34481061.html	U5YFF52528L045756	10	220	2023-06-14 17:04:38.405708	2023-06-14 17:04:38.40571
34481151	4	88	854	1700	63257	1571	2006	0	166 тыс. км	166	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_2109_34481151.html	Y6D21093070020385	15	208	2023-06-14 17:04:38.852825	2023-06-14 17:04:38.852832
34654137	5	84	793	31000	1157230	28503	2015	0	187 тыс. км	187	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34654137.html	WVGZZZ7PxFDxxxx98	10	10	2023-06-14 17:04:39.771297	2023-06-14 17:04:39.771298
34307707	2	62	586	7400	275354	6839	2011	0	265 тыс. км	265	2	1.5	1	2	\N	1	f	/auto_renault_megane_34307707.html	VF1KZ8G0645714190	5	5	2023-06-14 17:04:40.745174	2023-06-14 17:04:40.745176
34307679	5	33	326	13500	502335	12477	2013	0	160 тыс. км	160	4	2.4	2	1	\N	1	f	/auto_kia_sorento_34307679.html	5XYKTCA65EG473527	3	3	2023-06-14 17:04:41.262962	2023-06-14 17:04:41.262965
34307743	3	47	393	4400	163724	4067	2005	0	323 тыс. км	323	4	2	1	2	\N	1	f	/auto_mazda_6_34307743.html	JMZGG12Fх61хххх70	11	76	2023-06-14 17:04:41.332768	2023-06-14 17:04:41.332771
34656234	449	15	3487	5300	197213	4898	2008	13	245 тыс. км	245	2	1.6	2	2	\N	1	f	/auto_citroen_c4_picasso_34656234.html	VF7UA9HZH45325279	5	293	2023-06-14 22:12:37.938039	2023-06-14 22:12:37.93804
34640165	6	33	3660	9500	353495	8780	2011	0	136 тыс. км	136	4	2	2	\N	\N	1	f	/auto_kia_cerato_koup_34640165.html	KNAFW612хC5хххх73	20	20	2023-06-12 11:45:18.566591	2023-06-12 11:45:18.566593
34640123	2	67	636	15500	575825	14295	2016	0	235 тыс. км	235	2	2	2	1	\N	1	f	/auto_seat_leon_34640123.html	VSSZZZ5FxFRxxxx98	20	20	2023-06-12 11:45:18.967275	2023-06-12 11:45:18.967278
34640117	3	11	40104	11500	427225	10606	2016	0	154 тыс. км	154	1	2.5	2	3	\N	1	t	/auto_cadillac_ats_34640117.html	1G6AA5RAxG0xxxx33	10	10	2023-06-12 11:45:19.003693	2023-06-12 11:45:19.003695
34135833	5	9	3597	9000	334890	8318	2010	0	418 тыс. км	418	2	2	1	1	\N	1	f	/auto_bmw_x1_34135833.html	WBAVP31060VP07315	15	201	2023-06-12 11:45:19.240991	2023-06-12 11:45:19.240993
34310293	2	24	2970	1300	48373	1202	1986	0	219 тыс. км	219	1	0	1	2	\N	1	f	/auto_ford_sierra_34310293.html	WF0NXXGBхNGхххх96	12	12	2023-06-12 11:45:19.268717	2023-06-12 11:45:19.268718
34640155	2	84	39690	8000	297680	7394	2010	0	178 тыс. км	178	2	1.6	1	2	\N	1	f	/auto_volkswagen_passat_34640155.html	WVWZZZ3CхAEхххх89	2	2	2023-06-12 11:45:19.31509	2023-06-12 11:45:19.315091
34640183	4	9	44838	18000	669780	16636	2017	0	193 тыс. км	193	6	0	2	3	\N	1	f	/auto_bmw_i3_34640183.html	WBY1Z6101H7A09287	10	10	2023-06-12 11:45:19.369814	2023-06-12 11:45:19.369816
34640138	5	32	314	19900	739285	18353	2019	0	19 тыс. км	19	1	2.4	2	2	\N	1	f	/auto_jeep_cherokee_34640138.html	1C4PJLDBxKDxxxx48	12	12	2023-06-12 11:45:19.672613	2023-06-12 11:45:19.672622
1911207	3	88	850	14500	539545	13402	1993	1	90 тыс. км	90	1	1.3	1	\N	\N	0	f	/auto_vaz_lada_2105_1911207.html		13	113	2023-06-12 11:45:20.097084	2023-06-12 11:45:20.09709
34647318	5	13	1059	3500	130235	3235	2004	0	244 тыс. км	244	4	1.7	1	1	\N	1	f	/auto_chevrolet_niva_34647318.html	X9L21230040049201	8	415	2023-06-13 18:33:37.336652	2023-06-13 18:33:37.336654
1894347	8	84	3156	17800	662338	16452	2005	1	145 тыс. км	145	2	1.9	1	\N	\N	0	f	/auto_volkswagen_t5_transporter_gruz_1894347.html		2	133	2023-06-13 18:33:37.584212	2023-06-13 18:33:37.584215
34648425	5	52	1485	13800	513498	12755	2014	0	92 тыс. км	92	0	0	2	2	\N	1	t	/auto_mitsubishi_outlander_34648425.html	JA4AD3A3хFZхххх49	5	5	2023-06-13 18:33:38.054907	2023-06-13 18:33:38.054909
34648419	5	55	2197	11450	426055	10583	2011	13	147 тыс. км	147	2	2	1	1	\N	1	f	/auto_nissan_qashqai_34648419.html	SJNFDNJ10U2357577	5	306	2023-06-13 18:33:38.061911	2023-06-13 18:33:38.061912
34648397	3	9	3219	1700	63257	1571	1986	0	215 тыс. км	215	0	2.7	1	3	\N	1	f	/auto_bmw_3_series_34648397.html	WBAAE510101241235	10	10	2023-06-13 18:33:38.150917	2023-06-13 18:33:38.150918
34648394	200	177	30551	49999	1860463	46211	2019	13	888 тыс. км	888	2	12.5	2	\N	\N	6	f	/auto_man_tgx_34648394.html	WMA21XZZ3KP113776	18	50	2023-06-13 18:33:38.962636	2023-06-13 18:33:38.962639
34648405	17	176	55307	2500	93025	2311	1995	8	37 тыс. км	37	1	0	1	6	\N	2	f	/auto_kawasaki_zzr_600_34648405.html	ZX600E023320	11	72	2023-06-13 18:33:38.972439	2023-06-13 18:33:38.972441
33661828	8	62	59145	3500	130549	3219	2008	0	260 тыс. км	260	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_33661828.html	VF1FC1FAx40xxxx54	15	15	2023-06-13 21:42:05.518378	2023-06-13 21:42:05.518381
34649680	2	6	49	27399	1019517	25323	2015	8	233 тыс. км	233	2	3	2	1	\N	1	f	/auto_audi_a6_34649680.html	WAUZZZ4GXGN087778	18	18	2023-06-13 21:42:05.776385	2023-06-13 21:42:05.776387
34304790	5	79	695	9500	353495	8780	1993	0	111 тыс. км	111	1	3	1	1	\N	1	f	/auto_toyota_4runner_34304790.html	RN1350002646	18	55	2023-06-13 21:42:05.828222	2023-06-13 21:42:05.828223
34649670	4	56	1508	7500	279075	6932	2012	13	167 тыс. км	167	1	1.6	2	2	\N	1	f	/auto_opel_astra_34649670.html	W0L0AHL48D2003082	10	10	2023-06-13 21:42:05.985434	2023-06-13 21:42:05.985435
33890856	5	79	715	7200	267912	6655	2004	0	290 тыс. км	290	4	2	2	1	\N	1	f	/auto_toyota_rav4_33890856.html	JTEHH20Vх06хххх70	1	1	2023-06-13 21:42:07.428846	2023-06-13 21:42:07.428848
34651243	5	32	45321	14400	537408	13252	2018	0	45 тыс. км	45	1	2.4	2	2	\N	1	t	/auto_jeep_renegade_34651243.html	ZACCJABBxJPxxxx09	9	9	2023-06-14 09:54:10.1932	2023-06-14 09:54:10.193201
34190371	2	62	586	7800	290238	7209	2013	0	270 тыс. км	270	2	1.5	1	2	\N	1	f	/auto_renault_megane_34190371.html	VF1KZ140х49хххх84	11	11	2023-06-14 09:54:10.236388	2023-06-14 09:54:10.236389
1907073	5	48	1974	77000	2865170	71167	2008	1	35 тыс. км	35	2	3.2	3	\N	\N	0	f	/auto_mercedes_benz_gl_class_1907073.html		11	11	2023-06-14 09:54:10.316388	2023-06-14 09:54:10.316389
1899331	4	94	897	3400	126514	3142	2000	1	120 тыс. км	120	1	1.7	1	\N	\N	0	f	/auto_moskvich_azlk_2141_svyatogor_1899331.html		7	7	2023-06-14 09:54:10.459082	2023-06-14 09:54:10.459087
33531680	2	75	1720	12300	457683	11368	2014	0	87 тыс. км	87	1	2.5	5	1	\N	1	t	/auto_subaru_outback_33531680.html	4S4BRBACхE3хххх27	4	4	2023-06-14 09:54:10.888822	2023-06-14 09:54:10.88883
31250634	3	9	3219	5950	222054	5476	2001	0	353 тыс. км	353	2	2	1	3	\N	1	f	/auto_bmw_3_series_31250634.html	WBAAL710x0Kxxxx05	15	15	2023-06-14 09:54:11.919634	2023-06-14 09:54:11.919635
34651302	5	79	35000	10950	408654	10077	2003	0	400 тыс. км	400	1	4.7	2	1	\N	1	f	/auto_toyota_land_cruiser_34651302.html	JTEHT05Jx02xxxx11	5	5	2023-06-14 09:54:11.992956	2023-06-14 09:54:11.992958
34309683	2	33	2033	5600	208376	5176	2008	0	290 тыс. км	290	2	2	1	1	\N	1	f	/auto_kia_ceed_34309683.html	U5YFF52529L087288	3	433	2023-06-14 09:54:12.187696	2023-06-14 09:54:12.187699
34651262	3	28	262	6999	260433	6469	2007	13	262 тыс. км	262	2	2.2	1	2	\N	1	f	/auto_honda_accord_34651262.html	JHMCN15208C202808	19	19	2023-06-14 09:54:12.236794	2023-06-14 09:54:12.236797
1909981	5	13	62143	5000	186050	4621	1992	1	150 тыс. км	150	4	4.3	5	\N	\N	1	f	/auto_chevrolet_astro_1909981.html		23	489	2023-06-14 09:54:12.261418	2023-06-14 09:54:12.26142
1906954	5	48	46268	31900	1186999	29483	2005	1	55 тыс. км	55	2	2.7	3	\N	\N	0	f	/auto_mercedes_benz_glc_class_1906954.html		25	25	2023-06-14 09:54:13.275483	2023-06-14 09:54:13.275492
34651285	4	84	2811	5750	213958	5314	2005	8	213 тыс. км	213	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_plus_34651285.html		10	10	2023-06-14 09:54:13.78801	2023-06-14 09:54:13.788019
1908331	3	28	265	19500	725595	18023	2008	1	32 тыс. км	32	1	1.8	1	\N	\N	0	f	/auto_honda_civic_1908331.html		10	10	2023-06-14 09:54:13.898853	2023-06-14 09:54:13.898856
1915849	4	88	853	2800	104188	2588	1990	1	200 тыс. км	200	1	1.3	1	\N	\N	1	f	/auto_vaz_lada_2108_1915849.html		5	302	2023-06-14 09:54:13.94413	2023-06-14 09:54:13.944132
1904650	3	79	1832	33400	1242814	30870	2008	1	32 тыс. км	32	1	3.5	3	\N	\N	0	f	/auto_toyota_avalon_1904650.html		5	5	2023-06-14 09:54:14.115356	2023-06-14 09:54:14.115364
34651298	5	55	507	10200	379542	9427	2008	13	105 тыс. км	105	1	2	1	1	\N	1	f	/auto_nissan_x_trail_34651298.html	JN1TBNT31U0019363	7	7	2023-06-14 09:54:17.485999	2023-06-14 09:54:17.486006
34379164	5	85	824	11500	427915	10629	2007	0	420 тыс. км	420	2	2.4	2	1	\N	1	f	/auto_volvo_xc90_34379164.html	YV1CZ714681423019	4	501	2023-06-14 09:54:17.599608	2023-06-14 09:54:17.599615
34481013	5	24	1183	9500	354635	8734	2014	0	200 тыс. км	200	1	1.6	2	2	\N	1	t	/auto_ford_escape_34481013.html	1FMCU0JXxEUxxxx17	15	15	2023-06-14 17:04:38.12581	2023-06-14 17:04:38.125811
34481273	8	47	1912	5500	204655	5083	2007	0	191 тыс. км	191	2	2	1	2	\N	1	f	/auto_mazda_5_34481273.html	JMZCR19R670180143	2	147	2023-06-14 17:04:38.36313	2023-06-14 17:04:38.363132
34481250	3	18	1642	2900	107909	2680	2007	0	155 тыс. км	155	4	1.3	1	2	\N	1	f	/auto_daewoo_sens_34481250.html	Y6DT1311070325294	24	24	2023-06-14 17:04:38.44215	2023-06-14 17:04:38.442152
34640192	3	89	3570	3650	135817	3373	2016	0	24 тыс. км	24	1	1.3	1	2	\N	1	f	/auto_zaz_sens_34640192.html	Y6DTF698KG0338485	12	12	2023-06-12 11:45:18.572418	2023-06-12 11:45:18.572419
1907014	3	55	492	41500	1544215	38356	2009	1	4 тыс. км	4	1	3.5	5	\N	\N	0	f	/auto_nissan_maxima_1907014.html		10	10	2023-06-12 11:45:18.621535	2023-06-12 11:45:18.621537
34640201	449	58	37765	7950	295342	7332	2011	0	246 тыс. км	246	2	1.6	4	2	\N	1	f	/auto_peugeot_5008_34640201.html	VF30E9HRxBSxxxx20	4	494	2023-06-12 11:45:18.956024	2023-06-12 11:45:18.956027
1903653	3	56	1523	5800	215818	5361	1994	1	158 тыс. км	158	1	1.6	1	\N	\N	0	f	/auto_opel_vectra_1903653.html		15	205	2023-06-12 11:45:19.228203	2023-06-12 11:45:19.228205
34484394	3	9	18490	7000	260470	6470	2003	0	600 тыс. км	600	2	3	2	\N	\N	1	f	/auto_bmw_7_series_34484394.html	WBAGM210х0Dхххх33	5	5	2023-06-13 18:33:38.056413	2023-06-13 18:33:38.056415
34465905	2	56	3121	11500	427915	10629	2016	0	218 тыс. км	218	2	1.6	2	2	\N	1	f	/auto_opel_insignia_34465905.html	W0LGT8E36H1033323	5	5	2023-06-12 11:45:19.268037	2023-06-12 11:45:19.268039
34639294	2	6	49	3400	126514	3142	2003	0	262 тыс. км	262	2	2.5	2	1	\N	1	f	/auto_audi_a6_34639294.html		13	122	2023-06-12 11:45:19.283265	2023-06-12 11:45:19.283266
34460591	9	52	1478	16000	595360	14788	2008	0	164 тыс. км	164	2	2.5	2	1	\N	1	f	/auto_mitsubishi_l_200_34460591.html	MMBJRKB408D058684	10	10	2023-06-12 11:45:19.379855	2023-06-12 11:45:19.379858
1903596	8	84	3152	14500	539545	13402	2006	1	65 тыс. км	65	2	1.9	1	\N	\N	0	f	/auto_volkswagen_caddy_gruz_1903596.html		2	2	2023-06-12 11:45:19.941213	2023-06-12 11:45:19.941217
34648410	3	18	165	1300	48373	1202	2010	8	327 тыс. км	327	4	1.5	1	2	\N	1	f	/auto_daewoo_nexia_34648410.html	XWB3L32CDAA101571	18	18	2023-06-13 18:33:38.06425	2023-06-13 18:33:38.064252
34586211	449	58	37765	7499	279038	6931	2011	0	234 тыс. км	234	2	1.6	1	\N	\N	1	f	/auto_peugeot_5008_34586211.html	VF30A9HR8BS025227	5	649	2023-06-13 18:33:38.069784	2023-06-13 18:33:38.069785
34648407	3	79	698	25000	930250	23106	2017	0	5 тыс. км	5	1	2.5	2	2	\N	1	f	/auto_toyota_camry_34648407.html	JTNBF4FK103036006	12	12	2023-06-13 18:33:38.078208	2023-06-13 18:33:38.078209
33134795	6	6	2032	18000	669780	16636	2013	0	139 тыс. км	139	1	1.8	2	2	\N	1	f	/auto_audi_a5_33134795.html	WAUZZZ8T4EA015521	23	477	2023-06-13 18:33:38.217466	2023-06-13 18:33:38.217468
34648422	2	70	3167	10099	375784	9334	2013	0	163 тыс. км	163	1	1.8	2	2	\N	1	f	/auto_skoda_superb_34648422.html		12	12	2023-06-13 18:33:38.96378	2023-06-13 18:33:38.963782
34648392	5	24	1945	20600	766526	19039	2017	0	112 тыс. км	112	1	2	2	2	\N	1	t	/auto_ford_edge_34648392.html	2FMPK3G9хHBхххх82	11	76	2023-06-13 18:33:39.021625	2023-06-13 18:33:39.021627
25575189	86	3770	44712	7500	279075	6932	2002	0	2 тыс. км	2	2	0	1	\N	\N	4	f	/auto_chmz_t_130_25575189.html		14	184	2023-06-13 18:33:39.123847	2023-06-13 18:33:39.12385
34649679	4	47	1692	4500	167445	4159	2006	13	183 тыс. км	183	4	1.4	1	2	\N	1	f	/auto_mazda_3_34649679.html		11	76	2023-06-13 21:42:05.774667	2023-06-13 21:42:05.77467
34649699	212	115	57062	35921	1336632	33200	2015	8	815 тыс. км	815	2	10.8	2	\N	\N	6	f	/auto_daf_xf_106_34649699.html		16	16	2023-06-13 21:42:05.785083	2023-06-13 21:42:05.785084
34649678	2	13	1060	4700	174887	4344	2005	13	230 тыс. км	230	1	1.6	1	2	\N	1	f	/auto_chevrolet_nubira_34649678.html	KL1NF356J6K324936	4	4	2023-06-13 21:42:05.81619	2023-06-13 21:42:05.816192
34649684	3	56	1508	5950	221400	5499	2009	13	174 тыс. км	174	1	1.6	1	2	\N	1	f	/auto_opel_astra_34649684.html		15	200	2023-06-13 21:42:05.826442	2023-06-13 21:42:05.826444
34649669	9	92	891	450	16745	416	1994	13	56 тыс. км	56	1	0	1	3	\N	1	f	/auto_izh_2715_34649669.html		2	145	2023-06-13 21:42:05.95517	2023-06-13 21:42:05.955171
1914210	9	62	59145	5900	219539	5453	1999	1	80 тыс. км	80	2	1.9	1	\N	\N	0	f	/auto_renault_kangoo_1914210.html		10	10	2023-06-14 09:54:10.27987	2023-06-14 09:54:10.279871
34300925	198	24	17073	12500	465125	11553	2007	0	800 тыс. км	800	2	0	1	3	\N	6	f	/auto_ford_cargo_34300925.html		7	7	2023-06-14 09:54:10.384737	2023-06-14 09:54:10.384738
1906477	3	62	1559	7300	271633	6747	2003	1	108 тыс. км	108	1	1.4	1	\N	\N	0	f	/auto_renault_symbol_1906477.html		12	12	2023-06-14 09:54:10.447171	2023-06-14 09:54:10.447172
33930185	4	84	42605	15200	565592	14048	2020	0	15 тыс. км	15	6	0	2	2	\N	1	f	/auto_volkswagen_up_33930185.html	WVWZZZAAхMDхххх34	4	4	2023-06-14 09:54:10.489049	2023-06-14 09:54:10.489051
1895983	8	58	526	11500	427915	10629	2003	1	155 тыс. км	155	1	1.6	3	\N	\N	0	f	/auto_peugeot_307_1895983.html		24	527	2023-06-14 09:54:11.218476	2023-06-14 09:54:11.21848
34651310	8	84	35448	5800	216456	5338	2004	0	380 тыс. км	380	2	0	1	2	\N	1	f	/auto_volkswagen_caddy_34651310.html	WV1ZZZ2Kx5Xxxxx55	5	5	2023-06-14 09:54:11.924798	2023-06-14 09:54:11.924799
34651316	5	62	30503	7999	298522	7361	2010	0	195 тыс. км	195	2	1.5	1	1	\N	1	f	/auto_renault_duster_34651316.html	VF1HSRAVx43xxxx84	7	7	2023-06-14 09:54:11.993779	2023-06-14 09:54:11.99378
1911226	3	48	407	6500	241865	6008	1992	1	350 тыс. км	350	1	2	1	\N	\N	0	f	/auto_mercedes_benz_190_1911226.html		23	23	2023-06-14 09:54:12.273437	2023-06-14 09:54:12.273439
34651313	8	29	290	3500	130620	3221	2008	0	317 тыс. км	317	4	1.6	1	2	\N	1	f	/auto_hyundai_matrix_34651313.html		10	10	2023-06-14 09:54:13.49375	2023-06-14 09:54:13.493753
34651234	3	79	698	13800	515016	12700	2014	0	87 тыс. км	87	4	2.5	2	2	\N	1	t	/auto_toyota_camry_34651234.html	4T1BF1FKxEUxxxx56	24	527	2023-06-14 09:54:13.517104	2023-06-14 09:54:13.517105
1892346	8	84	31495	11900	442799	10998	2001	1	124 тыс. км	124	2	2.5	1	\N	\N	0	f	/auto_volkswagen_t4_transporter_gruz_1892346.html		9	9	2023-06-14 09:54:13.927755	2023-06-14 09:54:13.927762
34482856	3	185	28216	4200	156282	3882	2010	0	117 тыс. км	117	1	1.6	1	2	\N	1	f	/auto_geely_jl_34482856.html	Y7WJL7162A0007645	20	367	2023-06-14 09:54:14.013911	2023-06-14 09:54:14.013917
1912225	8	58	63875	7950	295820	7348	2004	1	110 тыс. км	110	2	1.9	1	\N	\N	0	f	/auto_peugeot_partner_1912225.html		5	5	2023-06-14 09:54:14.214205	2023-06-14 09:54:14.214212
1908735	3	9	0	13500	502335	12477	1997	1	221 тыс. км	221	4	3.5	3	\N	\N	0	f			3	3	2023-06-14 09:54:17.554545	2023-06-14 09:54:17.554549
34603481	3	6	49	23000	855830	21258	2016	0	88 тыс. км	88	1	2	2	2	\N	1	t	/auto_audi_a6_34603481.html	WAUC8AFCXHN053300	10	10	2023-06-14 17:04:38.516064	2023-06-14 17:04:38.516068
34307849	429	28	58579	269	10000	248	2000	0	8 тыс. км	8	0	0.05	2	\N	\N	2	f	/auto_honda_tact_af_51_34307849.html		12	332	2023-06-14 17:04:38.609045	2023-06-14 17:04:38.609048
34480955	2	62	586	4950	184190	4575	2004	0	270 тыс. км	270	1	1.6	1	2	\N	1	f	/auto_renault_megane_34480955.html	VF1KM0C0H32438075	5	5	2023-06-14 17:04:38.72253	2023-06-14 17:04:38.722532
34481217	5	29	293	16490	615571	15161	2017	0	65 тыс. км	65	4	2.4	2	2	\N	1	t	/auto_hyundai_santa_fe_34481217.html	5NMZT3LBxJHxxxx38	5	5	2023-06-14 17:04:39.746027	2023-06-14 17:04:39.74603
34481030	8	62	588	9800	365834	9010	2014	0	234 тыс. км	234	2	1.5	1	2	\N	1	f	/auto_renault_scenic_34481030.html	VF1JZ14Kx50xxxx63	1	27	2023-06-14 17:04:39.761859	2023-06-14 17:04:39.761861
34480982	8	52	1475	5100	189771	4714	2009	0	320 тыс. км	320	4	2.4	1	2	\N	1	f	/auto_mitsubishi_grandis_34480982.html	JMBLNNA4W9Z000101	10	10	2023-06-14 17:04:40.091187	2023-06-14 17:04:40.091189
34307661	2	84	35449	11250	418613	10398	2014	0	227 тыс. км	227	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34307661.html	WVWZZZAUхFPхххх51	9	9	2023-06-14 17:04:40.335933	2023-06-14 17:04:40.335934
34455878	4	47	1692	7500	279075	6932	2011	0	262 тыс. км	262	2	1.6	1	2	\N	1	f	/auto_mazda_3_34455878.html	JMZBLA4Y611502132	11	72	2023-06-13 18:33:38.05861	2023-06-13 18:33:38.058612
34640208	3	89	3569	3200	118880	2951	2012	0	100 тыс. км	100	1	1.5	1	2	\N	1	f	/auto_zaz_lanos_34640208.html	Y6DTF69YxC0xxxx74	16	16	2023-06-12 11:45:19.006665	2023-06-12 11:45:19.006668
34640195	5	118	3235	13499	502298	12476	2018	0	94 тыс. км	94	4	2.4	2	2	\N	1	f	/auto_dodge_journey_34640195.html	3C4PDCAB4JT344584	10	10	2023-06-12 11:45:19.268999	2023-06-12 11:45:19.269
34216101	5	62	30503	18720	696571	17302	2020	0	69 тыс. км	69	2	1.5	2	2	\N	1	f	/auto_renault_duster_34216101.html	VF1HJD20666402680	10	10	2023-06-12 11:45:19.371695	2023-06-12 11:45:19.371696
33963609	4	70	649	5550	206182	5118	2008	0	211 тыс. км	211	4	1.4	1	2	\N	1	f	/auto_skoda_fabia_33963609.html	TMBDC45Jx8Bxxxx40	2	2	2023-06-12 11:45:19.684776	2023-06-12 11:45:19.684779
34640181	5	29	293	13800	513498	12755	2011	0	165 тыс. км	165	1	2.4	2	1	\N	1	f	/auto_hyundai_santa_fe_34640181.html	KMHSH81BDBU707382	1	44	2023-06-12 11:45:20.153474	2023-06-12 11:45:20.15348
34643085	2	88	849	1100	40931	1017	1987	0	140 тыс. км	140	4	1.3	1	3	\N	1	f	/auto_vaz_lada_2104_34643085.html	XTA210460H0089847	2	2	2023-06-12 19:10:53.160727	2023-06-12 19:10:53.160728
34644442	3	6	49	16500	613800	15193	2011	0	196 тыс. км	196	1	3	2	1	\N	1	t	/auto_audi_a6_34644442.html	WAUGGAFCxCNxxxx93	10	10	2023-06-12 23:20:50.960783	2023-06-12 23:20:50.960784
34644453	3	9	2319	6300	234423	5823	1999	13	242 тыс. км	242	1	2	1	3	\N	1	f	/auto_bmw_5_series_34644453.html		15	15	2023-06-12 23:20:51.32317	2023-06-12 23:20:51.323173
34644467	3	18	161	2850	106049	2634	2008	13	200 тыс. км	200	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34644467.html	Y6DTF69Yх80хххх69	7	7	2023-06-12 23:20:51.333293	2023-06-12 23:20:51.333294
34644433	3	28	262	6700	249240	6169	2006	0	294 тыс. км	294	4	2	1	2	\N	1	f	/auto_honda_accord_34644433.html	JHMCL754x6Cxxxx15	4	498	2023-06-12 23:20:52.687489	2023-06-12 23:20:52.687491
34644438	2	84	39690	18600	691920	17126	2016	0	170 тыс. км	170	2	2	3	2	\N	1	f	/auto_volkswagen_passat_34644438.html		10	10	2023-06-12 23:20:52.720135	2023-06-12 23:20:52.720136
31472122	197	62	3490	4000	148800	3683	1989	0	700 тыс. км	700	2	6.9	1	3	\N	6	f	/auto_renault_manager_31472122.html		23	478	2023-06-12 23:20:52.765974	2023-06-12 23:20:52.765975
34449252	5	88	29496	2900	107909	2680	2003	0	156 тыс. км	156	1	1.7	1	1	\N	1	f	/auto_vaz_lada_21213_niva_34449252.html	XTA21213031721935	15	201	2023-06-12 23:20:52.938332	2023-06-12 23:20:52.938334
34644356	2	84	39690	11500	427915	10629	2010	0	280 тыс. км	280	2	1.9	1	2	\N	1	t	/auto_volkswagen_passat_34644356.html	WVWZZZ3CZBE320677	5	5	2023-06-12 23:20:52.961978	2023-06-12 23:20:52.96198
34471879	3	6	43	3500	130235	3235	1994	0	350 тыс. км	350	4	2	1	2	\N	1	f	/auto_audi_80_34471879.html	WAUZZZ8CZRA022307	20	20	2023-06-12 23:20:53.090768	2023-06-12 23:20:53.09077
34471840	3	62	1554	8000	297600	7366	2016	0	58 тыс. км	58	1	1.2	1	2	\N	1	f	/auto_renault_logan_34471840.html	VF14SRAGx55xxxx55	8	8	2023-06-12 23:20:53.301194	2023-06-12 23:20:53.301196
34471929	4	52	452	4400	163680	4051	2006	0	211 тыс. км	211	1	1.3	1	2	\N	1	f	/auto_mitsubishi_colt_34471929.html	XMCXNZ34x7Fxxxx49	2	2	2023-06-12 23:20:53.324251	2023-06-12 23:20:53.324253
34547399	2	62	586	14699	546950	13585	2017	0	179 тыс. км	179	2	1.5	1	2	\N	1	f	/auto_renault_megane_34547399.html	VF1RFB00358088955	18	18	2023-06-12 23:20:53.569899	2023-06-12 23:20:53.569901
34471798	3	88	856	2850	106049	2634	2011	0	189 тыс. км	189	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34471798.html	Y6L211010BL230452	25	534	2023-06-12 23:20:53.592522	2023-06-12 23:20:53.592524
34471889	2	88	847	700	26047	647	1978	0	135 тыс. км	135	1	1.2	1	3	\N	1	f	/auto_vaz_lada_2102_34471889.html		5	294	2023-06-12 23:20:53.623813	2023-06-12 23:20:53.623815
34299713	3	18	161	2800	104188	2588	2008	0	162 тыс. км	162	4	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_34299713.html	Y6DTF69Yх80хххх53	22	168	2023-06-12 23:20:53.669318	2023-06-12 23:20:53.669319
33679888	307	52	449	2800	104188	2588	1998	0	305 тыс. км	305	1	1.8	2	2	\N	1	f	/auto_mitsubishi_carisma_33679888.html	XMCLRDA2AWF052890	12	342	2023-06-12 23:20:53.722226	2023-06-12 23:20:53.722227
32295467	124	52	1870	26000	967460	24030	2008	0	80 тыс. км	80	2	4.25	1	3	\N	4	f	/auto_mitsubishi_fuso_canter_32295467.html		12	12	2023-06-12 23:20:54.356621	2023-06-12 23:20:54.356628
34644456	4	58	2109	4500	167445	4159	2007	8	243 тыс. км	243	0	0	1	\N	\N	1	f	/auto_peugeot_308_34644456.html		22	22	2023-06-12 23:20:54.843742	2023-06-12 23:20:54.843748
34646854	3	79	696	6800	253028	6285	2005	0	227 тыс. км	227	2	2	1	\N	\N	1	f	/auto_toyota_avensis_34646854.html	SB1DW56L50E071104	9	9	2023-06-13 14:28:20.885561	2023-06-13 14:28:20.885562
34648400	2	24	246	7000	260470	6470	2010	8	241 тыс. км	241	2	2	1	2	\N	1	f	/auto_ford_mondeo_34648400.html		5	302	2023-06-13 18:33:38.071603	2023-06-13 18:33:38.071605
31658454	2	70	649	5600	208376	5176	2011	0	231 тыс. км	231	2	1.6	1	2	\N	1	f	/auto_skoda_fabia_31658454.html	TMBJJ25JхC3хххх90	3	435	2023-06-13 18:33:38.079503	2023-06-13 18:33:38.079505
34648167	8	56	59894	3999	148803	3696	2002	13	230 тыс. км	230	2	1.7	1	2	\N	1	f	/auto_opel_combo_34648167.html		3	3	2023-06-13 18:33:38.154362	2023-06-13 18:33:38.154365
34649683	449	24	2036	12000	446520	11091	2013	13	170 тыс. км	170	5	0	2	\N	\N	1	f	/auto_ford_c_max_34649683.html	1FADP5CU7DL507738	10	10	2023-06-13 21:42:05.949404	2023-06-13 21:42:05.949409
33958801	197	48	35249	8400	312564	7764	2005	0	640 тыс. км	640	2	0	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_33958801.html		10	10	2023-06-13 21:42:06.955374	2023-06-13 21:42:06.955375
34649696	3	13	1038	4200	156282	3882	2008	0	176 тыс. км	176	4	1.6	1	2	\N	1	f	/auto_chevrolet_aveo_34649696.html	LSGTC58U68Y078566	8	410	2023-06-13 21:42:07.429575	2023-06-13 21:42:07.429577
34651213	8	56	1524	8100	302292	7454	2011	0	237 тыс. км	237	2	1.7	1	2	\N	1	f	/auto_opel_zafira_34651213.html	W0L0AHM7xB2xxxx83	11	11	2023-06-14 09:54:12.013358	2023-06-14 09:54:12.013362
34481181	2	94	31282	750	27908	693	1995	0	150 тыс. км	150	1	1.7	1	2	\N	1	f	/auto_moskvich_azlk_2141_34481181.html	XTB214122S0561852	11	11	2023-06-14 17:04:38.680212	2023-06-14 17:04:38.680216
34480987	3	91	887	2100	78141	1941	1999	0	25 тыс. км	25	4	2.4	1	3	\N	1	f	/auto_gaz_3110_34480987.html	XTH311000X0226565	20	361	2023-06-14 17:04:38.858185	2023-06-14 17:04:38.858187
34545814	5	19	180	8500	316285	7856	2011	0	176 тыс. км	176	4	1.5	1	1	\N	1	f	/auto_daihatsu_terios_34545814.html	JDAJ210G001112605	2	140	2023-06-14 17:04:39.546605	2023-06-14 17:04:39.546615
34481128	196	97	3462	25000	933250	22986	2007	0	100 тыс. км	100	2	0	1	\N	\N	6	f	/auto_kamaz_65115_34481128.html		8	412	2023-06-14 17:04:39.755514	2023-06-14 17:04:39.755516
34301144	3	56	1518	2400	89592	2206	1992	0	329 тыс. км	329	1	2	1	3	\N	1	f	/auto_opel_omega_34301144.html	W0L00001xN1xxxx31	3	429	2023-06-14 17:04:39.775671	2023-06-14 17:04:39.775673
34307948	3	6	43	2950	109770	2727	1993	0	500 тыс. км	500	4	2.6	1	2	\N	1	f	/auto_audi_80_34307948.html	WAUZZZ8CZPA208160	10	215	2023-06-14 17:04:40.084883	2023-06-14 17:04:40.084886
34478893	4	29	2771	4999	186013	4620	2012	0	134 тыс. км	134	4	1.2	1	2	\N	1	f	/auto_hyundai_i20_34478893.html	NLHBA51BхCZхххх77	11	11	2023-06-14 17:04:40.316894	2023-06-14 17:04:40.316898
34481057	3	11	40104	13500	502335	12477	2013	0	144 тыс. км	144	1	2	2	3	\N	1	t	/auto_cadillac_ats_34481057.html	1G6AB5RX0D0162022	12	12	2023-06-14 17:04:40.584991	2023-06-14 17:04:40.584994
34642906	8	56	1524	6650	247380	6123	2008	0	223 тыс. км	223	2	1.7	1	2	\N	1	f	/auto_opel_zafira_34642906.html	W0L0AHM7x8Gxxxx57	10	212	2023-06-12 18:41:06.085612	2023-06-12 18:41:06.085613
34642823	2	70	652	6700	249307	6192	2005	13	274 тыс. км	274	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34642823.html		20	374	2023-06-12 18:41:06.214435	2023-06-12 18:41:06.214436
32953472	7	62	586	8450	314425	7810	2010	0	300 тыс. км	300	2	1.5	1	2	\N	1	f	/auto_renault_megane_32953472.html	VF1EZ1G0643105264	10	10	2023-06-12 18:41:06.29858	2023-06-12 18:41:06.298581
31669313	145	3520	39939	22721	845460	21000	1998	0	100 тыс. км	100	2	0	2	1	\N	4	f	/auto_messersi_p4_f4_31669313.html		25	25	2023-06-12 18:41:06.317195	2023-06-12 18:41:06.317196
27791538	194	91	929	4900	182280	4511	2007	0	430 тыс. км	430	4	2.5	1	3	\N	6	f	/auto_gaz_3302_gazel_27791538.html	X9633020x72xxxx83	6	557	2023-06-12 18:41:07.028792	2023-06-12 18:41:07.028793
34449710	4	88	853	650	24187	601	1993	0	217 тыс. км	217	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2108_34449710.html	XTA22108х0Pхххх36	3	441	2023-06-12 18:41:07.261128	2023-06-12 18:41:07.261131
34642851	5	84	2692	14500	539545	13402	2014	8	304 тыс. км	304	2	2	2	1	\N	1	f	/auto_volkswagen_tiguan_34642851.html	WVGZZZ5NZEW095301	10	10	2023-06-12 18:41:07.316502	2023-06-12 18:41:07.316504
34444253	145	1458	3811	20557	764940	19000	1995	0	10 тыс. км	10	2	0	2	1	\N	4	f	/auto_carmix_3_5tt_34444253.html		25	25	2023-06-12 18:41:07.337458	2023-06-12 18:41:07.337459
34642871	2	84	39690	12300	457683	11368	2013	13	174 тыс. км	174	2	2	2	2	\N	1	t	/auto_volkswagen_passat_34642871.html	1VWCN7A38DC110649	22	157	2023-06-12 18:41:07.788479	2023-06-12 18:41:07.788485
34642747	2	84	35449	8800	327360	8102	2010	0	240 тыс. км	240	2	2	1	2	\N	1	f	/auto_volkswagen_golf_34642747.html	WVWZZZ1KxAMxxxx97	9	9	2023-06-12 18:41:08.01517	2023-06-12 18:41:08.015171
34642820	5	28	269	17999	669562	16573	2013	0	118 тыс. км	118	4	2.4	2	1	\N	1	f	/auto_honda_cr_v_34642820.html	1HGRM487xDLxxxx86	11	11	2023-06-12 18:41:08.061085	2023-06-12 18:41:08.061086
34642870	5	55208	63254	20990	781038	19400	2022	8	1 тыс. км	1	1	1.5	2	2	\N	1	f	/auto_faw_bestune_t77_34642870.html	LFBGE306хMJхххх18	10	10	2023-06-12 18:41:08.280827	2023-06-12 18:41:08.280829
34642877	41	3164	54133	850	31629	786	2022	8	1 тыс. км	1	0	0.15	2	6	\N	2	f	/auto_forte_hunter_34642877.html		10	223	2023-06-12 18:41:08.295203	2023-06-12 18:41:08.295205
28983488	219	48	35249	24100	896761	22274	2013	0	50 тыс. км	50	2	2.7	1	3	\N	7	f	/auto_mercedes_benz_sprinter_28983488.html	WDB90663х1Sхххх29	15	15	2023-06-12 18:41:08.371899	2023-06-12 18:41:08.371901
34601608	3	88	852	1100	40920	1012	2005	0	12 тыс. км	12	4	1.5	1	3	\N	1	f	/auto_vaz_lada_2107_34601608.html	XTA21070x52xxxx05	18	18	2023-06-12 18:41:08.940978	2023-06-12 18:41:08.940984
34642843	8	62	3185	6650	247380	6123	2010	0	238 тыс. км	238	0	1.4	1	2	\N	1	f	/auto_renault_grand_scenic_34642843.html	VF1JZ1VBx43xxxx58	15	201	2023-06-12 18:41:08.953769	2023-06-12 18:41:08.95377
34642835	212	115	1671	9500	353400	8747	2001	0	1130 тыс. км	1130	2	0	1	\N	\N	6	f	/auto_daf_95_34642835.html		10	235	2023-06-12 18:41:08.959548	2023-06-12 18:41:08.95955
34642757	8	62	588	3999	148803	3696	2003	0	265 тыс. км	265	2	1.5	1	2	\N	1	f	/auto_renault_scenic_34642757.html	VF1JM0F0529452311	3	438	2023-06-12 18:41:09.209491	2023-06-12 18:41:09.209498
34643078	3	84	39690	4000	148840	3697	2001	0	310 тыс. км	310	2	1.9	1	\N	\N	1	f	/auto_volkswagen_passat_34643078.html	WVWZZZ3BZ2P225279	14	14	2023-06-12 19:10:53.160977	2023-06-12 19:10:53.160978
34644441	3	88	843	1400	52080	1289	2007	0	160 тыс. км	160	1	1.6	1	\N	\N	1	f	/auto_vaz_lada_1118_kalina_34644441.html	XTA11183x70xxxx12	5	306	2023-06-12 23:20:50.961864	2023-06-12 23:20:50.961865
34646809	219	62	46833	7500	279075	6932	2008	13	302 тыс. км	302	2	2.5	1	2	\N	7	f	/auto_renault_master_34646809.html	VF1FDC1L639101787	18	18	2023-06-13 14:28:20.936121	2023-06-13 14:28:20.936122
34646846	212	177	30551	28500	1060485	26341	2012	13	912 тыс. км	912	2	10.5	2	\N	\N	6	f	/auto_man_tgx_34646846.html		1	1	2023-06-13 14:28:21.661717	2023-06-13 14:28:21.661722
34646810	3	18	1642	1400	52094	1294	2003	13	180 тыс. км	180	1	0	1	2	\N	1	f	/auto_daewoo_sens_34646810.html		15	200	2023-06-13 14:28:21.680414	2023-06-13 14:28:21.680417
34648421	2	56	3121	9000	334890	8318	2012	13	157 тыс. км	157	2	2	1	2	\N	1	f	/auto_opel_insignia_34648421.html	W0LGM8EL9D1047627	3	3	2023-06-13 18:33:38.091281	2023-06-13 18:33:38.091282
34646835	3	18	161	2490	92653	2301	1998	0	252 тыс. км	252	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34646835.html	KLATF69YEWB250838	10	10	2023-06-13 14:28:21.812947	2023-06-13 14:28:21.812951
34645956	3	6	49	7700	286517	7117	2005	0	320 тыс. км	320	4	3	2	1	\N	1	f	/auto_audi_a6_34645956.html	WAUZZZ4Fх5Nхххх08	5	287	2023-06-13 14:28:22.428704	2023-06-13 14:28:22.428713
34648413	3	94	2175	500	18605	462	1964	0	121 тыс. км	121	1	1.4	1	3	\N	1	f	/auto_moskvich_azlk_403_34648413.html		10	10	2023-06-13 18:33:38.118833	2023-06-13 18:33:38.118834
34648353	5	17	63603	11793	438834	10900	2020	13	21 тыс. км	21	6	0	2	2	\N	1	f	/auto_dacia_spring_34648353.html		15	15	2023-06-13 18:33:38.198307	2023-06-13 18:33:38.198311
1913111	5	9	2153	91111	3390240	84209	2008	5	17 тыс. км	17	1	3.5	3	\N	\N	0	f	/auto_bmw_x6_1913111.html		17	17	2023-06-13 18:33:38.481904	2023-06-13 18:33:38.481913
34478551	3	18	163	3000	111630	2773	2011	0	116 тыс. км	116	4	0.8	1	\N	\N	1	f	/auto_daewoo_matiz_34478551.html	XWB4A11CDBA326027	10	214	2023-06-13 18:33:38.960248	2023-06-13 18:33:38.96025
34648412	8	14	116	6900	256749	6377	2006	0	350 тыс. км	350	2	2.8	2	2	\N	1	f	/auto_chrysler_grand_voyager_34648412.html	1A8GYB15х7Yхххх10	22	22	2023-06-13 18:33:38.969922	2023-06-13 18:33:38.969924
34301160	3	88	859	4500	167445	4159	1980	0	42 тыс. км	42	1	0	1	\N	\N	1	f	/auto_vaz_lada_2113_samara_34301160.html		10	10	2023-06-13 21:42:05.950311	2023-06-13 21:42:05.950312
34649686	5	29	1268	12790	475916	11821	2015	0	210 тыс. км	210	1	2.4	2	2	\N	1	f	/auto_hyundai_tucson_34649686.html	KM8JU3AG5FU080141	10	10	2023-06-13 21:42:07.405674	2023-06-13 21:42:07.405678
34298718	2	70	652	6500	241865	6008	2010	0	235 тыс. км	235	1	1.2	1	2	\N	1	f	/auto_skoda_octavia_34298718.html	TMBHM61Z7B8011847	15	199	2023-06-13 21:42:07.418321	2023-06-13 21:42:07.418323
34649677	8	62	588	8200	305122	7579	2011	13	186 тыс. км	186	2	1.5	2	2	\N	1	f	/auto_renault_scenic_34649677.html	VF1JZ090E45401388	18	18	2023-06-13 21:42:07.462422	2023-06-13 21:42:07.462426
34648147	3	88	855	1150	42792	1063	2002	0	180 тыс. км	180	0	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34648147.html	XTA21099х12хххх04	22	161	2023-06-13 21:42:07.995762	2023-06-13 21:42:07.995764
34651312	5	55	24932	9500	354540	8743	2013	0	208 тыс. км	208	4	1.6	2	\N	\N	1	f	/auto_nissan_juke_34651312.html	SJNFBAF1xU6xxxx66	10	10	2023-06-14 09:54:12.015578	2023-06-14 09:54:12.015582
34651299	8	84	64461	16199	602765	14972	2010	13	279 тыс. км	279	2	2	1	2	\N	1	f	/auto_volkswagen_transporter_34651299.html	WV2ZZZ7HZBH064473	2	147	2023-06-14 09:54:12.219787	2023-06-14 09:54:12.21979
34645669	3	6	47	5000	186050	4621	2001	0	400 тыс. км	400	2	1.9	1	\N	\N	1	f	/auto_audi_a4_34645669.html	WAUZZZ8Eх2Aхххх19	5	617	2023-06-14 09:54:12.285154	2023-06-14 09:54:12.285156
1913856	6	89	1734	300	11163	277	1983	1	28 тыс. км	28	1	1.2	1	\N	\N	0	f	/auto_zaz_968_1913856.html		24	527	2023-06-14 09:54:12.337806	2023-06-14 09:54:12.337808
1864787	2	6	47	9500	353495	8780	1997	1	176 тыс. км	176	1	1.8	1	\N	\N	0	f	/auto_audi_a4_1864787.html		25	25	2023-06-14 09:54:12.945701	2023-06-14 09:54:12.945703
34641545	2	33	2033	6450	239940	5939	2009	0	152 тыс. км	152	1	1.6	1	2	\N	1	f	/auto_kia_ceed_34641545.html	U5YFF522x9Lxxxx49	18	18	2023-06-12 18:41:06.090077	2023-06-12 18:41:06.090079
34642873	8	23	35398	3999	148803	3696	2004	13	278 тыс. км	278	2	2	1	2	\N	1	f	/auto_fiat_scudo_34642873.html	ZFA22000086120080	18	18	2023-06-12 18:41:06.195221	2023-06-12 18:41:06.195222
34642890	5	29	1268	7900	293959	7302	2007	0	215 тыс. км	215	4	2.7	2	1	\N	1	f	/auto_hyundai_tucson_34642890.html	KMHJN81DP6U449227	7	7	2023-06-12 18:41:06.207618	2023-06-12 18:41:06.207619
32649938	2	56	1508	5700	212097	5268	2006	0	244 тыс. км	244	1	1.6	1	2	\N	1	f	/auto_opel_astra_32649938.html	W0L0AHL3562200960	14	14	2023-06-12 18:41:06.240401	2023-06-12 18:41:06.240402
34642839	4	70	649	3650	135780	3360	2003	0	199 тыс. км	199	1	1.2	1	2	\N	1	f	/auto_skoda_fabia_34642839.html	TMBNY26Yx33xxxx92	3	426	2023-06-12 18:41:07.013512	2023-06-12 18:41:07.013513
34642896	4	55	36565	7900	293959	7302	2016	8	100 тыс. км	100	6	0	2	2	\N	1	f	/auto_nissan_leaf_34642896.html	1N4BZ0CPXGC309917	5	301	2023-06-12 18:41:07.249067	2023-06-12 18:41:07.249076
34642880	4	70	649	3800	141398	3512	2002	13	180 тыс. км	180	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34642880.html	TMBNC26Y823455976	2	2	2023-06-12 18:41:07.322709	2023-06-12 18:41:07.32271
34642893	4	79	720	7500	279075	6932	2008	13	145 тыс. км	145	1	1.3	2	2	\N	1	f	/auto_toyota_yaris_34642893.html	VNKKL98390A349890	11	11	2023-06-12 18:41:07.792527	2023-06-12 18:41:07.792532
34642842	4	84	35449	8300	308760	7642	2012	0	300 тыс. км	300	1	1.4	2	\N	\N	1	f	/auto_volkswagen_golf_34642842.html	WVWZZZ1KxCWxxxx47	11	76	2023-06-12 18:41:08.003825	2023-06-12 18:41:08.003827
34642848	8	17	57384	7950	295740	7320	2014	0	200 тыс. км	200	2	1.5	1	2	\N	1	f	/auto_dacia_dokker_pass_34642848.html	UU10SDCLx51xxxx50	5	5	2023-06-12 18:41:08.016075	2023-06-12 18:41:08.016076
34642891	3	24	239	7800	290238	7209	2015	13	100 тыс. км	100	1	1.6	2	2	\N	1	t	/auto_ford_fiesta_34642891.html	3FADP4AJ5FM189798	15	15	2023-06-12 18:41:08.277168	2023-06-12 18:41:08.27717
34642864	3	94	896	900	33489	832	1987	13	100 тыс. км	100	1	1.5	1	2	\N	1	f	/auto_moskvich_azlk_2140_34642864.html	2180916	10	210	2023-06-12 18:41:08.282063	2023-06-12 18:41:08.282064
33493974	3	76	681	2400	89304	2218	2001	0	150 тыс. км	150	4	1.3	1	2	\N	1	f	/auto_suzuki_swift_33493974.html	TSMMAH35х00хххх70	12	353	2023-06-12 18:41:08.406716	2023-06-12 18:41:08.406717
34643065	2	24	240	7400	275354	6839	2011	13	210 тыс. км	210	2	1.4	1	2	\N	1	f	/auto_ford_focus_34643065.html		11	72	2023-06-12 19:10:53.161459	2023-06-12 19:10:53.16146
34496327	2	62	586	7099	264154	6561	2011	0	227 тыс. км	227	2	1.5	1	2	\N	1	f	/auto_renault_megane_34496327.html	VF1KZ1A0545282251	25	25	2023-06-12 23:20:51.320225	2023-06-12 23:20:51.320229
34646829	5	48	430	7300	271633	6747	2001	13	354 тыс. км	354	2	2.7	2	1	\N	1	f	/auto_mercedes_benz_m_class_34646829.html	WDC1631131A277860	1	36	2023-06-13 14:28:21.66746	2023-06-13 14:28:21.667463
34646850	4	47	1692	9500	353495	8780	2011	8	118 тыс. км	118	1	2.3	1	\N	\N	1	f	/auto_mazda_3_34646850.html		9	9	2023-06-13 14:28:21.682129	2023-06-13 14:28:21.682131
34646826	5	28	62906	24490	911273	22635	2022	0	1 тыс. км	1	6	0	2	2	\N	1	f	/auto_honda_m_nv_34646826.html	LVHDH287хN5хххх22	5	5	2023-06-13 14:28:21.690367	2023-06-13 14:28:21.690369
1915075	5	76	3042	16200	602802	14973	2005	1	82 тыс. км	82	1	2	1	\N	\N	0	f	/auto_suzuki_grand_vitara_5d_1915075.html		10	10	2023-06-13 14:28:21.696645	2023-06-13 14:28:21.696647
34646788	197	24	35396	12000	446520	11091	2012	0	320 тыс. км	320	2	2.2	1	3	\N	6	f	/auto_ford_transit_34646788.html	WF0XXXTTFXCC50010	10	10	2023-06-13 14:28:21.709255	2023-06-13 14:28:21.709271
34646848	212	85	47974	29500	1097695	27265	2010	0	338 тыс. км	338	2	12.9	2	3	\N	6	f	/auto_volvo_fh_13_34646848.html	YV2AG10A0BB572794	1	1	2023-06-13 14:28:21.763799	2023-06-13 14:28:21.763801
34410391	5	33	326	19000	706990	17561	2016	0	219 тыс. км	219	2	2.2	1	2	\N	1	f	/auto_kia_sorento_34410391.html	KNAPH81BхG5хххх01	5	5	2023-06-13 18:33:39.014828	2023-06-13 18:33:39.014833
34649660	6	6	2032	12000	446520	11091	2010	13	238 тыс. км	238	1	2	2	1	\N	1	f	/auto_audi_a5_34649660.html	WAULFAFRXAA081668	1	1	2023-06-13 21:42:05.950914	2023-06-13 21:42:05.950915
34649584	3	6	51	8000	297680	7394	2004	13	305 тыс. км	305	2	3	2	1	\N	1	f	/auto_audi_a8_34649584.html	WAUZZZ4E25N003822	18	18	2023-06-13 21:42:07.428041	2023-06-13 21:42:07.428044
34651308	5	79	35000	39000	1455480	35893	2013	0	176 тыс. км	176	2	4.5	2	1	\N	1	f	/auto_toyota_land_cruiser_34651308.html	JTMHV05Jx04xxxx65	10	10	2023-06-14 09:54:12.018639	2023-06-14 09:54:12.018641
34307862	3	9	3219	9800	364658	9058	2011	0	298 тыс. км	298	1	2	2	3	\N	1	f	/auto_bmw_3_series_34307862.html	WBAPF510X0FG90832	10	10	2023-06-14 17:04:40.232319	2023-06-14 17:04:40.232322
34307774	2	23	60435	4800	178608	4436	2011	0	208 тыс. км	208	2	1.3	1	2	\N	1	f	/auto_fiat_qubo_34307774.html	ZFA22500х00хххх68	15	15	2023-06-14 17:04:40.421058	2023-06-14 17:04:40.421064
34307842	3	18	1642	2000	74420	1848	2004	0	160 тыс. км	160	4	1.3	1	2	\N	1	f	/auto_daewoo_sens_34307842.html	Y6DT1311040190247	11	85	2023-06-14 17:04:40.721916	2023-06-14 17:04:40.72192
34308034	6	28	262	9999	372063	9242	2012	0	180 тыс. км	180	4	2.4	2	2	\N	1	t	/auto_honda_accord_34308034.html	1HGCS1B87CA020990	1	1	2023-06-14 17:04:40.74034	2023-06-14 17:04:40.740341
34654159	2	24	237	1350	50234	1248	1996	0	222 тыс. км	222	4	1.4	1	\N	\N	1	f	/auto_ford_escort_34654159.html	WF0NXXGCANTR82750	23	23	2023-06-14 17:04:41.247483	2023-06-14 17:04:41.247494
34307587	4	84	35449	5300	197213	4898	2004	0	219 тыс. км	219	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34307587.html	WVWZZZ1KZ5P022724	5	291	2023-06-14 17:04:41.318169	2023-06-14 17:04:41.318171
34483130	307	24	237	1400	52262	1285	1985	0	450 тыс. км	450	1	1.3	1	2	\N	1	f	/auto_ford_escort_34483130.html	WF0AXXGCxAFxxxx14	20	605	2023-06-14 22:12:40.190833	2023-06-14 22:12:40.190836
34483000	449	58	37765	7400	276242	6797	2010	0	260 тыс. км	260	2	1.6	4	2	\N	1	f	/auto_peugeot_5008_34483000.html	VF30A9HZxASxxxx50	5	14949	2023-06-14 22:12:41.89346	2023-06-14 22:12:41.893473
34483077	2	6	49	3900	145119	3605	1998	0	300 тыс. км	300	4	2.5	1	2	\N	1	f	/auto_audi_a6_34483077.html	WAUZZZ4AхVNхххх07	5	310	2023-06-14 22:12:42.166608	2023-06-14 22:12:42.166613
34656091	8	23	219	7800	290238	7209	2011	8	174 тыс. км	174	4	1.4	1	2	\N	1	f	/auto_fiat_doblo_34656091.html	ZFA26300009102372	10	210	2023-06-14 22:12:42.292245	2023-06-14 22:12:42.292251
34656363	3	6	51	8500	316285	7856	2003	0	318 тыс. км	318	1	4.2	3	1	\N	1	f	/auto_audi_a8_34656363.html	WAUZZZ4E93N009808	20	20	2023-06-14 22:29:27.897818	2023-06-14 22:29:27.897819
34311036	3	52	456	3400	126922	3123	1997	0	235 тыс. км	235	1	2.5	1	2	\N	1	f	/auto_mitsubishi_galant_34311036.html	JMBSNEA5xVZxxxx61	19	317	2023-06-15 00:16:55.933289	2023-06-15 00:16:55.933292
33670943	4	62	1561	5999	223942	5510	2016	0	120 тыс. км	120	1	1	1	3	\N	1	f	/auto_renault_twingo_33670943.html	VF1AHB10x55xxxx21	15	15	2023-06-15 00:16:55.946569	2023-06-15 00:16:55.946571
34656854	307	6	62310	33500	1246535	30962	2019	0	29 тыс. км	29	1	2	2	1	\N	1	t	/auto_audi_a5_sportback_34656854.html	WAUBNCF59KA097076	5	5	2023-06-15 00:16:56.107984	2023-06-15 00:16:56.107986
34656859	3	17	1890	2500	93025	2311	2007	13	250 тыс. км	250	0	0	1	2	\N	1	f	/auto_dacia_logan_34656859.html		5	305	2023-06-15 00:16:56.124743	2023-06-15 00:16:56.124744
34656813	3	29	3086	14000	520940	12939	2018	0	64 тыс. км	64	1	2	2	2	\N	1	t	/auto_hyundai_elantra_34656813.html	5NPD84LF6JH357074	7	7	2023-06-15 00:16:56.127154	2023-06-15 00:16:56.127156
34471831	219	48	35249	12000	446400	11049	2006	0	320 тыс. км	320	0	2.7	1	3	\N	7	f	/auto_mercedes_benz_sprinter_34471831.html		10	10	2023-06-12 18:41:06.090484	2023-06-12 18:41:06.090485
34642892	198	84	64461	9000	334890	8318	2011	13	351 тыс. км	351	2	2	1	\N	\N	6	f	/auto_volkswagen_transporter_34642892.html	WV1ZZZ7HZBH091675	7	7	2023-06-12 18:41:06.195709	2023-06-12 18:41:06.195716
34642885	3	98	38293	13900	517219	12847	2018	13	31 тыс. км	31	1	2.4	2	2	\N	1	f	/auto_acura_ilx_34642885.html	19UDE2F30JA007415	12	12	2023-06-12 18:41:06.203108	2023-06-12 18:41:06.203113
34642884	219	62	60014	15000	558150	13864	2015	13	145 тыс. км	145	2	1.6	1	2	\N	7	f	/auto_renault_trafic_34642884.html	VF11FL11854462278	7	7	2023-06-12 18:41:06.218276	2023-06-12 18:41:06.218277
33099973	8	48	35252	10000	372100	9242	2007	0	680 тыс. км	680	2	3	2	3	\N	1	f	/auto_mercedes_benz_vito_33099973.html	WDF63960х13хххх85	22	161	2023-06-12 18:41:06.318781	2023-06-12 18:41:06.318783
34642889	307	190	2789	3200	119072	2958	2008	8	120 тыс. км	120	4	1.3	1	2	\N	1	f	/auto_chery_jaggi_34642889.html	LVVDC12BX8D061721	19	19	2023-06-12 18:41:06.522656	2023-06-12 18:41:06.52266
34642902	8	84	2093	7950	295740	7320	2009	0	198 тыс. км	198	1	1.4	1	2	\N	1	f	/auto_volkswagen_touran_34642902.html	WVGZZZ1Tx9Wxxxx08	10	10	2023-06-12 18:41:07.009827	2023-06-12 18:41:07.00983
34642828	3	47	393	5300	197160	4880	2007	0	306 тыс. км	306	4	2	2	2	\N	1	f	/auto_mazda_6_34642828.html	JMZGG12Fx71xxxx18	10	10	2023-06-12 18:41:07.052188	2023-06-12 18:41:07.052189
34642879	212	115	18379	23500	874435	21720	2011	8	960 тыс. км	960	2	0	2	\N	\N	6	f	/auto_daf_xf_105_34642879.html		22	165	2023-06-12 18:41:07.264543	2023-06-12 18:41:07.264545
32924550	5	55	24932	10500	390705	9705	2010	0	182 тыс. км	182	2	1.5	1	2	\N	1	f	/auto_nissan_juke_32924550.html	SJNFCAF15U6041786	5	5	2023-06-12 18:41:07.285738	2023-06-12 18:41:07.285739
34642897	3	6	49	29999	1116263	27726	2017	8	97 тыс. км	97	1	3	3	1	\N	1	f	/auto_audi_a6_34642897.html	WAUG3AFCхJNхххх77	12	12	2023-06-12 18:41:07.319994	2023-06-12 18:41:07.319995
34273197	5	79	35004	12500	465125	11553	2006	0	255 тыс. км	255	4	2.7	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34273197.html	JTEBL29Jх05хххх80	12	12	2023-06-12 18:41:07.432853	2023-06-12 18:41:07.432856
34642849	4	76	681	4900	182280	4511	2005	0	161 тыс. км	161	1	1.3	4	2	\N	1	f	/auto_suzuki_swift_34642849.html	TSMMZC11x00xxxx95	10	10	2023-06-12 18:41:08.003072	2023-06-12 18:41:08.003075
34437935	5	76	672	10900	405589	10074	2015	0	155 тыс. км	155	4	2.4	1	1	\N	1	f	/auto_suzuki_grand_vitara_34437935.html	JSAJTDA4V00341968	24	525	2023-06-12 18:41:08.364977	2023-06-12 18:41:08.364978
34130361	307	70	652	7100	264191	6562	2011	0	293 тыс. км	293	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34130361.html	TMBCA41Z2CB151655	4	4	2023-06-12 18:41:08.394534	2023-06-12 18:41:08.394536
34642813	9	55	2472	15900	591480	14640	2015	0	184 тыс. км	184	0	2.5	1	1	\N	1	f	/auto_nissan_navara_34642813.html	VSKCVND4xU0xxxx44	24	515	2023-06-12 18:41:08.9558	2023-06-12 18:41:08.955802
34132378	8	84	64461	8500	316285	7856	2006	0	229 тыс. км	229	2	2.5	1	2	\N	1	f	/auto_volkswagen_transporter_34132378.html	WV1ZZZ7HZ6H127771	5	294	2023-06-12 18:41:09.234809	2023-06-12 18:41:09.234813
34470361	3	13	1038	4750	176748	4390	2008	0	189 тыс. км	189	1	1.4	1	2	\N	1	f	/auto_chevrolet_aveo_34470361.html	KL1SF697J8W072189	11	72	2023-06-12 19:10:53.162812	2023-06-12 19:10:53.162813
34644484	3	52	449	3000	111630	2773	2002	0	301 тыс. км	301	4	0	1	2	\N	1	f	/auto_mitsubishi_carisma_34644484.html	XMCSNDA1A2F022366	15	15	2023-06-12 23:20:51.3821	2023-06-12 23:20:51.382101
31278619	212	115	18379	21500	800015	19871	2011	0	889 тыс. км	889	2	13	1	\N	\N	6	f	/auto_daf_xf_105_31278619.html	XLRTE47Mх0Eхххх82	5	297	2023-06-12 23:20:51.414117	2023-06-12 23:20:51.414119
33848158	5	2233	60290	49999	1860463	46211	2021	0	16 тыс. км	16	6	0	2	1	\N	1	t	/auto_tesla_model_y_33848158.html	5YJYGDEF8MF194836	5	5	2023-06-12 23:20:51.557948	2023-06-12 23:20:51.557952
32379172	3	185	2533	3100	115351	2865	2008	0	71 тыс. км	71	4	1.5	1	2	\N	1	f	/auto_geely_ck_32379172.html	L6T7524Sх7Nхххх09	16	251	2023-06-12 23:20:52.258058	2023-06-12 23:20:52.258063
34472732	5	52	1485	6700	249240	6169	2006	0	212 тыс. км	212	4	2.4	2	1	\N	1	f	/auto_mitsubishi_outlander_34472732.html	JMBXRCU5x6Uxxxx68	10	10	2023-06-12 23:20:52.688126	2023-06-12 23:20:52.688131
34644462	11	179	58908	850	31629	786	2013	13	11 тыс. км	11	1	0.49	2	5	\N	2	f	/auto_yamaha_jog_sa36j_34644462.html	SA36J804065	12	12	2023-06-12 23:20:52.92163	2023-06-12 23:20:52.921632
34644457	4	58	40486	7300	271633	6747	2013	13	37 тыс. км	37	1	1	1	2	\N	1	f	/auto_peugeot_208_34644457.html	VF3CCZMZ0DT049333	5	307	2023-06-12 23:20:52.939541	2023-06-12 23:20:52.939542
34644439	3	48	425	3200	119040	2946	1998	0	432 тыс. км	432	1	1.8	1	3	\N	1	f	/auto_mercedes_benz_c_class_34644439.html	WDB20201x1Axxxx61	8	410	2023-06-12 23:20:53.292676	2023-06-12 23:20:53.292679
32322549	3	98	44156	15700	584040	14456	2015	0	158 тыс. км	158	1	2.4	2	2	\N	1	t	/auto_acura_tlx_32322549.html	19UUB1F3xGAxxxx37	10	10	2023-06-12 23:20:53.306098	2023-06-12 23:20:53.3061
34471845	8	52	464	2950	109740	2716	1999	0	272 тыс. км	272	1	1.8	1	2	\N	1	f	/auto_mitsubishi_space_star_34471845.html	XMCLNDG5xXFxxxx47	16	16	2023-06-12 23:20:53.327008	2023-06-12 23:20:53.327009
34299400	8	33	59587	4200	156282	3882	2003	0	284 тыс. км	284	2	2.5	1	3	\N	1	f	/auto_kia_pregio_34299400.html	KNETB282х3Kхххх42	7	7	2023-06-12 23:20:53.579951	2023-06-12 23:20:53.579955
34639999	2	24	246	1500	55815	1386	2001	0	260 тыс. км	260	2	2	1	\N	\N	1	t	/auto_ford_mondeo_34639999.html		10	10	2023-06-12 23:20:53.639924	2023-06-12 23:20:53.639931
33635568	3	28	262	10062	374418	9300	2008	0	248 тыс. км	248	4	2	1	2	\N	1	f	/auto_honda_accord_33635568.html	JHMCU156х9Cхххх89	4	4	2023-06-12 23:20:53.700774	2023-06-12 23:20:53.700775
34644407	8	23	219	7900	293880	7274	2013	0	184 тыс. км	184	2	1.3	1	2	\N	1	f	/auto_fiat_doblo_34644407.html	ZFA22300x06xxxx46	11	83	2023-06-12 23:20:54.556369	2023-06-12 23:20:54.556377
33430343	3	6	47	2800	104439	2575	1995	0	400 тыс. км	400	4	1.8	1	2	\N	1	f	/auto_audi_a4_33430343.html	WAUZZZ8DxSAxxxx17	22	156	2023-06-13 20:40:42.110008	2023-06-13 20:40:42.11001
34649337	3	18	1642	1950	72560	1802	2007	0	144 тыс. км	144	1	1.3	1	2	\N	1	f	/auto_daewoo_sens_34649337.html	Y6DT1311070314183	10	10	2023-06-13 20:40:42.53229	2023-06-13 20:40:42.532297
34138446	2	84	39690	4100	152561	3789	2000	0	380 тыс. км	380	2	1.9	1	2	\N	1	f	/auto_volkswagen_passat_34138446.html	WVWZZZ3BхYEхххх00	10	10	2023-06-13 20:40:42.544358	2023-06-13 20:40:42.544362
34649240	3	9	2319	9300	346053	8595	2008	13	253 тыс. км	253	1	2	2	3	\N	1	f	/auto_bmw_5_series_34649240.html	WBANT11000CW02202	22	161	2023-06-13 20:40:42.769623	2023-06-13 20:40:42.769625
34649349	3	17	3166	4600	171166	4252	2009	0	82 тыс. км	82	4	1.4	1	3	\N	1	f	/auto_dacia_sandero_34649349.html	UU1BSDAEH41078369	5	14953	2023-06-13 20:40:42.773386	2023-06-13 20:40:42.773387
34649664	5	33	327	16000	595360	14788	2017	13	185 тыс. км	185	2	1.7	1	2	\N	1	f	/auto_kia_sportage_34649664.html		18	18	2023-06-13 21:42:05.951054	2023-06-13 21:42:05.951055
1912739	4	18	163	32	1200	30	2006	5	68 тыс. км	68	1	0.8	1	\N	\N	0	f	/auto_daewoo_matiz_1912739.html		17	17	2023-06-14 09:54:13.049799	2023-06-14 09:54:13.049801
34651307	3	88	861	3100	115692	2853	2009	0	103 тыс. км	103	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34651307.html	XTA21154x94xxxx65	10	215	2023-06-14 09:54:13.502682	2023-06-14 09:54:13.502684
34640728	8	15	59440	3699	137602	3406	2005	0	216 тыс. км	216	2	2	1	2	\N	1	f	/auto_citroen_berlingo_34640728.html	VF7GCRHYx93xxxx88	18	18	2023-06-12 18:41:06.091161	2023-06-12 18:41:06.091162
34642878	4	47	391	5100	189771	4714	2007	13	98 тыс. км	98	1	1.4	2	2	\N	1	f	/auto_mazda_2_34642878.html	JMZNCAWPJN7Y08068	5	5	2023-06-12 18:41:06.196419	2023-06-12 18:41:06.19642
33233962	8	62	588	5100	189771	4714	2007	0	268 тыс. км	268	2	1.5	1	2	\N	1	f	/auto_renault_scenic_33233962.html	VF1JMSE0638262837	2	2	2023-06-12 18:41:06.210389	2023-06-12 18:41:06.210391
33963590	8	84	2093	6999	260433	6469	2007	0	290 тыс. км	290	1	1.4	1	2	\N	1	f	/auto_volkswagen_touran_33963590.html	WVGZZZ1TZ7W100895	2	2	2023-06-12 18:41:06.241252	2023-06-12 18:41:06.241254
34639590	3	88	851	600	22326	555	1992	0	270 тыс. км	270	4	1.6	1	3	\N	1	f	/auto_vaz_lada_2106_34639590.html	XTA21063хP2хххх85	2	148	2023-06-12 18:41:06.314036	2023-06-12 18:41:06.314037
34642894	14	1976	34395	1209	45000	1118	2020	0	12 тыс. км	12	1	0.2	1	5	\N	2	f	/auto_geon_pantera_34642894.html		6	6	2023-06-12 18:41:06.601355	2023-06-12 18:41:06.601364
34192807	2	47	393	5500	204600	5064	2007	0	320 тыс. км	320	2	2	1	2	\N	1	f	/auto_mazda_6_34192807.html	JMZGY19Rx71xxxx00	10	10	2023-06-12 18:41:07.025617	2023-06-12 18:41:07.02562
34642881	2	6	49	14890	554057	13762	2012	0	300 тыс. км	300	2	2	2	2	\N	1	f	/auto_audi_a6_34642881.html	WAUZZZ4G2CN107046	10	10	2023-06-12 18:41:07.254539	2023-06-12 18:41:07.254542
34465861	3	9	2319	6200	230702	5730	2005	0	350 тыс. км	350	4	2.5	2	3	\N	1	t	/auto_bmw_5_series_34465861.html	WBANE310х0Bхххх96	10	637	2023-06-12 18:41:07.323452	2023-06-12 18:41:07.323452
34642868	3	14	43386	6700	249307	6192	2008	13	194 тыс. км	194	1	2.7	2	2	\N	1	f	/auto_chrysler_300_c_34642868.html	1C3H8B3R08Y104376	18	18	2023-06-12 18:41:07.360927	2023-06-12 18:41:07.360928
34642859	5	48	430	7450	277215	6886	2006	13	266 тыс. км	266	1	3.5	2	1	\N	1	f	/auto_mercedes_benz_m_class_34642859.html	4JGBB86E36A144869	10	10	2023-06-12 18:41:08.279161	2023-06-12 18:41:08.279163
34471859	5	9	1866	52000	1934920	48061	2022	0	1 тыс. км	1	1	2	2	1	\N	1	f	/auto_bmw_x3_34471859.html	WBA25DP0х0Nхххх06	12	12	2023-06-12 18:41:08.330762	2023-06-12 18:41:08.330764
34466340	385	62	1707	25500	948855	23568	2004	0	1555 тыс. км	1555	0	0	1	\N	\N	6	f	/auto_renault_magnum_34466340.html		19	311	2023-06-12 18:41:08.381331	2023-06-12 18:41:08.381332
34642857	3	84	39690	6000	223260	5545	2005	0	252 тыс. км	252	1	2	1	3	\N	1	f	/auto_volkswagen_passat_34642857.html	WVWZZZ3CZ6E023245	11	11	2023-06-12 18:41:08.732474	2023-06-12 18:41:08.73248
34642844	5	185	62532	11499	427762	10588	2018	0	91 тыс. км	91	6	0	2	2	\N	1	f	/auto_geely_emgrand_ev300_34642844.html	L6T78Y4WxHNxxxx03	12	12	2023-06-12 18:41:08.946776	2023-06-12 18:41:08.946778
34474323	3	88	861	3300	122760	3038	2012	0	134 тыс. км	134	0	1.6	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34474323.html	XTA21154xC5xxxx30	2	140	2023-06-12 18:41:08.956439	2023-06-12 18:41:08.95644
34643605	15	28	60532	5900	219480	5432	2008	0	34 тыс. км	34	1	600	1	6	\N	2	f	/auto_honda_cb_600f_hornet_34643605.html	ZDCPC41Cx8Fxxxx62	10	10	2023-06-12 20:35:34.442489	2023-06-12 20:35:34.442491
34471639	307	89	872	800	29760	736	2009	0	71 тыс. км	71	1	1.3	1	2	\N	1	f	/auto_zaz_1103_slavuta_34471639.html	Y6D11030x90xxxx83	4	503	2023-06-12 20:35:34.497459	2023-06-12 20:35:34.497461
34640447	9	92	2910	1612	60000	1485	2008	0	107 тыс. км	107	4	1.6	1	3	\N	1	f	/auto_izh_27175_34640447.html	XWK27175x80xxxx51	6	556	2023-06-12 20:35:34.513352	2023-06-12 20:35:34.513353
34643574	8	79	28487	9100	338611	8411	2010	13	260 тыс. км	260	2	2	1	2	\N	1	f	/auto_toyota_verso_34643574.html	NMTDD26R50R001759	18	18	2023-06-12 20:35:34.969584	2023-06-12 20:35:34.969586
34643559	2	6	49	9200	342332	8503	2008	13	325 тыс. км	325	2	2.7	2	1	\N	1	f	/auto_audi_a6_34643559.html	WAUZZZ4F18N163011	10	10	2023-06-12 20:35:35.096626	2023-06-12 20:35:35.096627
1912619	2	9	32251	10599	394389	9796	1997	1	290 тыс. км	290	1	2.8	3	\N	\N	1	f	/auto_bmw_525_1912619.html		10	10	2023-06-12 20:35:35.104277	2023-06-12 20:35:35.104279
34010174	5	9	96	9600	357216	8873	2004	0	257 тыс. км	257	4	3	2	1	\N	1	f	/auto_bmw_x5_34010174.html	WBAFA11090LT52727	15	15	2023-06-12 23:20:51.382279	2023-06-12 23:20:51.38228
34649317	8	23	219	4700	174887	4344	2005	8	341 тыс. км	341	2	1.9	1	2	\N	1	f	/auto_fiat_doblo_34649317.html	ZFA22300005333837	5	293	2023-06-13 20:40:42.763475	2023-06-13 20:40:42.763478
34649299	2	9	2319	3800	141398	3512	2001	0	270 тыс. км	270	2	2.5	1	3	\N	1	f	/auto_bmw_5_series_34649299.html	WBADP91080GX77627	5	617	2023-06-13 20:40:42.77197	2023-06-13 20:40:42.771972
34649328	5	128	45133	19900	740479	18392	2013	0	140 тыс. км	140	1	3.7	2	1	\N	1	t	/auto_infiniti_qx70_34649328.html	JN8CS1MW0EM412600	5	5	2023-06-13 20:40:42.98698	2023-06-13 20:40:42.986982
34649281	219	62	46833	6350	236284	5869	2001	13	1000 тыс. км	1000	2	2.2	1	2	\N	7	f	/auto_renault_master_34649281.html		5	5	2023-06-13 20:40:43.547381	2023-06-13 20:40:43.547383
34649289	3	88	851	899	33452	831	1992	0	150 тыс. км	150	1	1.5	1	3	\N	1	f	/auto_vaz_lada_2106_34649289.html	XTA210610N2799075	16	248	2023-06-13 20:40:43.558059	2023-06-13 20:40:43.55806
34649270	4	55	36565	24000	893040	22182	2021	13	11 тыс. км	11	6	0	2	2	\N	1	t	/auto_nissan_leaf_34649270.html	1N4AZ1CV7NC550881	7	7	2023-06-13 20:40:43.567957	2023-06-13 20:40:43.567958
34649327	3	190	1902	4000	148840	3697	2008	0	197 тыс. км	197	4	2.4	2	2	\N	1	f	/auto_chery_tiggo_34649327.html	LVVDB24B28D207969	16	255	2023-06-13 20:40:43.573718	2023-06-13 20:40:43.57372
34649314	3	18	161	1900	70699	1756	2008	0	109 тыс. км	109	4	1.4	1	2	\N	1	f	/auto_daewoo_lanos_34649314.html	Y6DTF699P8W420381	10	10	2023-06-13 20:40:43.617706	2023-06-13 20:40:43.617732
34008217	194	48	35250	15999	595323	14787	2004	0	352 тыс. км	352	2	4.2	1	3	\N	6	f	/auto_mercedes_benz_vario_34008217.html	WDB6703231N090992	22	169	2023-06-13 20:40:43.666358	2023-06-13 20:40:43.66636
34649284	2	84	35449	9600	357216	8873	2011	0	250 тыс. км	250	2	2	1	2	\N	1	f	/auto_volkswagen_golf_34649284.html	WVWZZZ1KZCM615804	18	55	2023-06-13 20:40:43.894379	2023-06-13 20:40:43.894382
34649275	2	6	49	3850	143259	3558	1998	13	320 тыс. км	320	2	2.5	1	2	\N	1	f	/auto_audi_a6_34649275.html	WAUZZZ4BZXN060853	18	18	2023-06-13 20:40:44.636279	2023-06-13 20:40:44.636283
34649245	3	6	47	6500	241865	6008	2004	13	148 тыс. км	148	1	1.6	1	2	\N	1	f	/auto_audi_a4_34649245.html		20	20	2023-06-13 20:40:44.649173	2023-06-13 20:40:44.649175
34649243	254	48	35249	25000	930250	23106	2013	8	160 тыс. км	160	2	2.1	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_34649243.html	WDB9062331N549651	18	18	2023-06-13 20:40:44.697797	2023-06-13 20:40:44.697799
34649261	197	84	35448	13600	506056	12570	2017	13	220 тыс. км	220	2	0	1	2	\N	6	f	/auto_volkswagen_caddy_34649261.html	WV1ZZZ2KZHX131526	9	9	2023-06-13 20:40:45.770491	2023-06-13 20:40:45.770493
34476216	3	18	165	2500	93025	2311	2007	0	100 тыс. км	100	1	0	1	\N	\N	1	f	/auto_daewoo_nexia_34476216.html	XWB3L31Uх7Aхххх10	11	11	2023-06-13 20:40:45.784783	2023-06-13 20:40:45.784785
34649705	3	79	698	10500	390705	9705	2012	13	240 тыс. км	240	4	2.5	2	2	\N	1	f	/auto_toyota_camry_34649705.html	4T1BF1FKхCUхххх20	2	2	2023-06-13 21:42:05.952042	2023-06-13 21:42:05.952043
34649661	2	84	39690	10799	401831	9981	2011	13	275 тыс. км	275	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34649661.html	WVWZZZ3CZCE000873	15	199	2023-06-13 21:42:05.951975	2023-06-13 21:42:05.951976
33633119	8	62	588	7400	276168	6810	2011	0	162 тыс. км	162	1	1.4	1	2	\N	1	f	/auto_renault_scenic_33633119.html	VF1JZ1V0x46xxxx61	7	448	2023-06-14 09:54:13.513283	2023-06-14 09:54:13.513286
34642513	5	55	507	5900	219480	5432	2005	0	270 тыс. км	270	4	2	1	1	\N	1	f	/auto_nissan_x_trail_34642513.html	JN1TANT3xU0xxxx77	10	10	2023-06-12 18:41:06.092663	2023-06-12 18:41:06.092664
33226066	2	56	1523	3600	133956	3327	2005	0	380 тыс. км	380	2	1.9	1	2	\N	1	f	/auto_opel_vectra_33226066.html	W0L0ZCF3х51хххх11	10	226	2023-06-12 18:41:06.196979	2023-06-12 18:41:06.19698
34641108	3	9	3219	9999	372063	9242	2011	0	225 тыс. км	225	1	3	2	1	\N	1	f	/auto_bmw_3_series_34641108.html		12	12	2023-06-12 18:41:06.783841	2023-06-12 18:41:06.783846
34632445	2	70	652	5800	215760	5340	2007	0	260 тыс. км	260	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34632445.html	TMBJX41Ux8Bxxxx86	11	11	2023-06-12 18:41:07.027008	2023-06-12 18:41:07.027009
34642861	3	75	666	9500	353495	8780	2015	13	165 тыс. км	165	1	2.5	5	1	\N	1	t	/auto_subaru_legacy_34642861.html	4S3BNBA61F3068887	10	10	2023-06-12 18:41:07.25735	2023-06-12 18:41:07.257355
34642853	5	84	2692	15900	591639	14695	2015	13	83 тыс. км	83	1	2	2	1	\N	1	t	/auto_volkswagen_tiguan_34642853.html	WVGBV7AX9GW566921	25	25	2023-06-12 18:41:07.283166	2023-06-12 18:41:07.283167
31839566	5	19	180	2800	104188	2588	1999	0	345 тыс. км	345	1	1.3	1	1	\N	1	f	/auto_daihatsu_terios_31839566.html	JDAJ100Gх00хххх30	10	214	2023-06-12 18:41:07.324848	2023-06-12 18:41:07.32485
34395881	5	59	546	118900	4424269	109892	2019	0	48 тыс. км	48	1	4	2	1	\N	1	t	/auto_porsche_cayenne_34395881.html	WP1AF2AYXKDA81506	5	5	2023-06-12 18:41:07.365248	2023-06-12 18:41:07.365249
30906512	115	1592	28678	48599	1808369	44917	2006	0	без пробега	0	2	7.8	2	1	\N	4	f	/auto_hitachi_zw_30906512.html		18	18	2023-06-12 18:41:07.442558	2023-06-12 18:41:07.44256
34481113	5	52	1485	13970	519684	12863	2017	0	107 тыс. км	107	1	2.4	5	2	\N	1	t	/auto_mitsubishi_outlander_34481113.html	JA4AD3A3xHZxxxx91	10	10	2023-06-12 18:41:08.014755	2023-06-12 18:41:08.014756
34642837	6	71	48458	9800	364560	9023	2014	0	68 тыс. км	68	6	0	2	3	\N	1	f	/auto_smart_eq_fortwo_34642837.html	WMEEJ9AAxFKxxxx00	8	418	2023-06-12 18:41:08.129682	2023-06-12 18:41:08.129683
34642850	17	179	55486	7999	297643	7393	2013	8	22 тыс. км	22	1	0.8	1	6	\N	2	f	/auto_yamaha_fz8_34642850.html		9	9	2023-06-12 18:41:08.303562	2023-06-12 18:41:08.303563
34642855	5	62	30503	8700	323727	8041	2011	0	120 тыс. км	120	2	1.5	1	2	\N	1	f	/auto_renault_duster_34642855.html	VF64BGYT653976533	4	498	2023-06-12 18:41:08.55181	2023-06-12 18:41:08.551816
34642845	3	88	855	2050	76260	1887	2008	0	147 тыс. км	147	4	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34642845.html	Y6D21099x80xxxx50	1	1	2023-06-12 18:41:08.946089	2023-06-12 18:41:08.946092
34642821	449	24	2036	5999	223162	5523	2010	0	181 тыс. км	181	1	0	1	2	\N	1	f	/auto_ford_c_max_34642821.html	WF0EXXGCxE9xxxx90	6	557	2023-06-12 18:41:08.958344	2023-06-12 18:41:08.958347
34642847	21	5939	58744	1750	65100	1611	2020	0	4 тыс. км	4	1	0	1	6	\N	2	f	/auto_kovi_250_lite_4t_34642847.html	LC4JCNL3xL0xxxx46	10	10	2023-06-12 18:41:08.969235	2023-06-12 18:41:08.969237
34643600	14	2108	43159	300	11160	276	2014	0	370 тыс. км	370	1	110	1	6	\N	2	f	/auto_alpha_sabur_34643600.html		15	201	2023-06-12 20:35:34.519185	2023-06-12 20:35:34.519186
34643576	3	88	855	2155	80188	1992	2008	13	207 тыс. км	207	1	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34643576.html	Y6D21099490072320	1	27	2023-06-12 20:35:34.970909	2023-06-12 20:35:34.970913
34643551	3	88	855	2400	89304	2218	2008	0	116 тыс. км	116	1	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34643551.html	Y6D21099480061962	8	8	2023-06-12 20:35:35.105463	2023-06-12 20:35:35.105465
34643599	4	89	1775	1250	46513	1155	1966	0	72 тыс. км	72	1	0.9	1	3	\N	1	f	/auto_zaz_965_34643599.html		20	376	2023-06-12 20:35:35.150857	2023-06-12 20:35:35.150858
33254074	3	15	129	4200	156282	3882	2003	0	350 тыс. км	350	4	1.8	1	2	\N	1	f	/auto_citroen_c5_33254074.html	VF7DC6FZх76хххх74	3	430	2023-06-12 20:35:35.159839	2023-06-12 20:35:35.15984
34473649	2	70	652	4100	152520	3775	1999	0	316 тыс. км	316	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34473649.html	TMBGK21UxY2xxxx72	5	310	2023-06-12 23:20:52.75813	2023-06-12 23:20:52.758132
34126087	3	6	47	3000	111630	2773	1996	0	420 тыс. км	420	1	1.8	1	2	\N	1	f	/auto_audi_a4_34126087.html	WAUZZZ8DZTA086337	25	25	2023-06-12 23:20:52.984728	2023-06-12 23:20:52.984729
34644417	212	115	18379	20700	770040	19060	2010	0	900 тыс. км	900	2	12.9	1	3	\N	6	f	/auto_daf_xf_105_34644417.html		7	454	2023-06-12 23:20:53.291183	2023-06-12 23:20:53.291192
34471605	5	28	269	5500	204600	5064	1999	0	175 тыс. км	175	1	2	1	1	\N	1	f	/auto_honda_cr_v_34471605.html	JHLRD175xXCxxxx59	2	140	2023-06-12 23:20:53.304186	2023-06-12 23:20:53.304188
34644423	5	29	3901	13200	491040	12154	2010	0	132 тыс. км	132	2	2	2	1	\N	1	f	/auto_hyundai_ix35_34644423.html	U5YZU81VxBLxxxx71	3	426	2023-06-12 23:20:53.315723	2023-06-12 23:20:53.315725
34644460	3	88	852	1599	59499	1478	2006	8	61 тыс. км	61	1	1.5	1	3	\N	1	f	/auto_vaz_lada_2107_34644460.html	Y6D21070070005271	5	5	2023-06-12 23:20:53.556232	2023-06-12 23:20:53.556239
33417934	124	52	1870	15000	558150	13864	2011	0	80 тыс. км	80	2	2.9	1	3	\N	4	f	/auto_mitsubishi_fuso_canter_33417934.html		12	12	2023-06-12 23:20:53.642666	2023-06-12 23:20:53.642668
34471826	3	13	1052	5700	212040	5248	2007	0	208 тыс. км	208	4	1.8	2	2	\N	1	f	/auto_chevrolet_lacetti_34471826.html	Y6DNA193x7Kxxxx49	8	423	2023-06-12 23:20:54.031525	2023-06-12 23:20:54.03153
34471833	3	6	51	24000	892800	22099	2011	0	229 тыс. км	229	2	3	2	1	\N	1	f	/auto_audi_a8_34471833.html	WAUZZZ4HxCNxxxx95	2	2	2023-06-12 23:20:54.564151	2023-06-12 23:20:54.564154
34649352	5	84	2692	11500	427915	10629	2012	13	160 тыс. км	160	1	2	2	2	\N	1	f	/auto_volkswagen_tiguan_34649352.html	WVGAV7AX1CW591351	20	20	2023-06-13 20:40:42.763894	2023-06-13 20:40:42.763894
34649288	2	84	39690	13800	513498	12755	2014	8	315 тыс. км	315	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34649288.html	WVWZZZ3CхEEхххх18	3	3	2023-06-13 20:40:42.772069	2023-06-13 20:40:42.77207
34649688	7	62	586	6500	241865	6008	2006	13	185 тыс. км	185	1	2	2	2	\N	1	f	/auto_renault_megane_34649688.html	VF1EM0U0A36365444	11	11	2023-06-13 21:42:05.952111	2023-06-13 21:42:05.952111
34649713	8	62	588	4950	184190	4575	2005	13	244 тыс. км	244	2	1.5	1	2	\N	1	f	/auto_renault_scenic_34649713.html	VF1JM02D532304866	4	498	2023-06-13 21:42:05.9533	2023-06-13 21:42:05.953301
34651303	3	15	40442	7999	298522	7361	2013	0	96 тыс. км	96	2	1.6	1	2	\N	1	f	/auto_citroen_c_elysee_34651303.html	VF7DD9HJxDJxxxx57	7	7	2023-06-14 09:54:13.515481	2023-06-14 09:54:13.515484
32760085	5	79	2090	30000	1116300	27727	2015	0	101 тыс. км	101	4	3.5	2	1	\N	1	t	/auto_toyota_highlander_32760085.html	5TDDKRFHхFSхххх09	1	1	2023-06-14 09:54:13.830221	2023-06-14 09:54:13.830226
1890647	3	24	2970	1200	44652	1109	1993	1	200 тыс. км	200	1	1.6	1	\N	\N	0	t	/auto_ford_sierra_1890647.html		10	10	2023-06-14 09:54:13.853392	2023-06-14 09:54:13.853395
1892642	3	28	262	10200	379542	9427	1999	5	202 тыс. км	202	1	2	3	\N	\N	0	f	/auto_honda_accord_1892642.html		21	21	2023-06-14 09:54:13.899564	2023-06-14 09:54:13.899568
33989344	4	23	60435	4700	174887	4344	2013	0	105 тыс. км	105	1	1.4	1	2	\N	1	t	/auto_fiat_qubo_33989344.html	ZFA22500000351437	12	12	2023-06-14 09:54:14.125221	2023-06-14 09:54:14.125228
1910901	3	52	457	5000	186050	4621	1993	1	200 тыс. км	200	1	1.6	1	\N	\N	0	f	/auto_mitsubishi_lancer_1910901.html		12	12	2023-06-14 09:54:17.551409	2023-06-14 09:54:17.551416
1916519	3	18	1642	1263	47000	1167	2006	1	56 тыс. км	56	1	1.3	1	\N	\N	0	f	/auto_daewoo_sens_1916519.html		17	284	2023-06-14 09:54:17.558789	2023-06-14 09:54:17.558792
34642903	3	75	666	3700	137640	3406	2002	0	263 тыс. км	263	1	2	2	1	\N	1	f	/auto_subaru_legacy_34642903.html	JF1BE5LRx2Gxxxx11	12	12	2023-06-12 18:41:06.09348	2023-06-12 18:41:06.093481
34643584	2	56	1508	5400	200934	4991	2009	8	240 тыс. км	240	1	0	1	2	\N	1	f	/auto_opel_astra_34643584.html	W0L0AHL3582137947	18	50	2023-06-12 20:35:34.968352	2023-06-12 20:35:34.968354
33930993	254	48	30874	6700	249307	6192	2013	0	165 тыс. км	165	2	1.5	1	2	\N	6	f	/auto_mercedes_benz_citan_33930993.html	WDF41560х1Uхххх59	12	12	2023-06-12 20:35:35.133492	2023-06-12 20:35:35.133494
30934878	5	70	3721	10900	405589	10074	2015	0	254 тыс. км	254	1	1.8	2	1	\N	1	f	/auto_skoda_yeti_30934878.html	TMBLB25L2GB700008	10	10	2023-06-12 20:35:35.400321	2023-06-12 20:35:35.400327
34643526	4	18	163	3100	115320	2854	2011	0	130 тыс. км	130	4	0.8	1	2	\N	1	f	/auto_daewoo_matiz_34643526.html	XWB4A11CxBAxxxx58	8	423	2023-06-12 20:35:35.688715	2023-06-12 20:35:35.688718
34643544	3	17	1890	4300	159960	3959	2007	0	157 тыс. км	157	1	1.6	1	2	\N	1	f	/auto_dacia_logan_34643544.html		11	75	2023-06-12 20:35:35.725908	2023-06-12 20:35:35.725909
34465917	3	47	393	12600	468846	11645	2014	0	148 тыс. км	148	1	2.5	2	2	\N	1	t	/auto_mazda_6_34465917.html	JM1GJ1U54F1215035	10	10	2023-06-12 20:35:35.965009	2023-06-12 20:35:35.965011
34305283	307	52	449	3400	126514	3142	2003	0	290 тыс. км	290	2	1.9	1	2	\N	1	f	/auto_mitsubishi_carisma_34305283.html	XMCLNDA5A3F015799	2	140	2023-06-12 20:35:35.989324	2023-06-12 20:35:35.989326
1887192	8	62	46833	10200	379542	9427	2003	1	316 тыс. км	316	2	2.5	1	\N	\N	0	f	/auto_renault_master_1887192.html		6	6	2023-06-12 20:35:36.029893	2023-06-12 20:35:36.029895
34296479	5	33	326	12900	480009	11923	2012	0	162 тыс. км	162	1	2.4	2	1	\N	1	t	/auto_kia_sorento_34296479.html	5XYKTCA67DG396805	1	1	2023-06-12 20:35:36.106579	2023-06-12 20:35:36.10658
34643530	2	84	39690	19500	725400	17955	2016	0	244 тыс. км	244	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34643530.html	WVWZZZ3CxHExxxx28	5	5	2023-06-12 20:35:36.512786	2023-06-12 20:35:36.512795
34643542	3	6	62	15500	576600	14272	2012	0	160 тыс. км	160	1	3	1	1	\N	1	f	/auto_audi_s4_34643542.html	WAUDGAFLxCAxxxx79	2	133	2023-06-12 20:35:36.535807	2023-06-12 20:35:36.535808
34643510	2	85	3197	5500	204600	5064	2005	0	235 тыс. км	235	2	1.6	1	2	\N	1	f	/auto_volvo_v50_34643510.html	YV1MW763x62xxxx71	15	199	2023-06-12 20:35:36.54286	2023-06-12 20:35:36.542862
34643478	5	79	35000	63999	2381403	59151	2018	13	127 тыс. км	127	2	4.5	2	1	\N	1	f	/auto_toyota_land_cruiser_34643478.html	JTMCV02J904251354	11	11	2023-06-12 20:35:36.775128	2023-06-12 20:35:36.775133
34583685	3	33	58260	13290	494521	12283	2017	0	65 тыс. км	65	3	2	2	2	\N	1	f	/auto_kia_k5_34583685.html	KNAGS416хGAхххх92	10	10	2023-06-12 20:35:36.821058	2023-06-12 20:35:36.82106
34425306	5	33	63406	46999	1748833	43438	2022	0	7 тыс. км	7	6	0	2	3	\N	1	f	/auto_kia_ev6_34425306.html	KNAC381AхN5хххх14	9	9	2023-06-12 20:35:36.910308	2023-06-12 20:35:36.910311
34643535	5	79	715	9500	353400	8747	2006	0	260 тыс. км	260	2	2.2	1	1	\N	1	f	/auto_toyota_rav4_34643535.html	JTMBB31Vx05xxxx41	9	9	2023-06-12 20:35:37.606012	2023-06-12 20:35:37.606017
34643517	8	24	41503	13800	513360	12706	2014	0	220 тыс. км	220	2	2.2	1	2	\N	1	f	/auto_ford_tourneo_custom_34643517.html	WF01XXTTx1Exxxx08	3	3	2023-06-12 20:35:37.615595	2023-06-12 20:35:37.615599
34471835	5	55	2197	11000	409200	10128	2011	0	218 тыс. км	218	2	1.6	1	2	\N	1	f	/auto_nissan_qashqai_34471835.html	SJNFCAJ1xU2xxxx05	1	36	2023-06-12 23:20:52.759528	2023-06-12 23:20:52.759529
34649244	3	52	457	3900	145119	3605	2006	13	327 тыс. км	327	1	1.6	1	2	\N	1	f	/auto_mitsubishi_lancer_34649244.html	JMBSNCS3A7U003652	15	15	2023-06-13 20:40:42.764491	2023-06-13 20:40:42.764493
33076887	3	52	456	1500	55815	1386	1988	0	250 тыс. км	250	1	2	1	2	\N	1	f	/auto_mitsubishi_galant_33076887.html	JMBSNE33хJZхххх35	22	157	2023-06-13 20:40:42.773239	2023-06-13 20:40:42.77324
34649697	8	62	588	7850	292099	7255	2010	0	189 тыс. км	189	1	1.6	1	2	\N	1	f	/auto_renault_scenic_34649697.html	VF1JZ3G0х45хххх05	20	20	2023-06-13 21:42:05.952588	2023-06-13 21:42:05.952589
34295948	4	29	35223	4550	169306	4205	2006	0	217 тыс. км	217	4	1.6	1	2	\N	1	f	/auto_hyundai_getz_34295948.html	KMHBT51Bх6Uхххх40	11	11	2023-06-13 21:42:05.954742	2023-06-13 21:42:05.954742
1908886	3	88	855	4300	160003	3974	1998	1	75 тыс. км	75	0	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1908886.html		19	19	2023-06-14 09:54:13.828349	2023-06-14 09:54:13.828355
34647342	3	48	45537	323508	12037740	299000	2023	0	1 тыс. км	1	1	6	2	1	\N	1	f	/auto_mercedes_benz_maybach_34647342.html	W1K6X7KBхPAхххх11	10	10	2023-06-14 09:54:13.886619	2023-06-14 09:54:13.886627
1889283	3	28	265	2700	100467	2495	2000	1	110 тыс. км	110	1	1.4	1	\N	\N	0	f	/auto_honda_civic_1889283.html		12	12	2023-06-14 09:54:14.009248	2023-06-14 09:54:14.009253
34651294	9	24	2103	25700	956297	23753	2020	8	35 тыс. км	35	1	2.7	2	3	\N	1	f	/auto_ford_f_150_34651294.html	1FTEX1CP7LKD10929	5	291	2023-06-14 09:54:17.490348	2023-06-14 09:54:17.490352
1910912	8	52	464	0	0	0	2003	1	100 тыс. км	100	1	1.6	1	\N	\N	0	f	/auto_mitsubishi_space_star_1910912.html		1	1	2023-06-14 09:54:17.587135	2023-06-14 09:54:17.58714
34307877	3	84	39690	7300	271633	6747	2005	0	249 тыс. км	249	1	1.6	1	2	\N	1	f	/auto_volkswagen_passat_34307877.html	WVWZZZ3CZ6E037481	6	6	2023-06-14 17:04:40.723876	2023-06-14 17:04:40.723878
34307572	3	56	1518	3550	132096	3281	2000	0	254 тыс. км	254	4	2.2	1	3	\N	1	f	/auto_opel_omega_34307572.html	W0L0VBM6хY1хххх44	15	15	2023-06-14 17:04:41.27545	2023-06-14 17:04:41.275453
34307612	2	75	1720	11000	409310	10167	2011	0	200 тыс. км	200	1	2.5	5	1	\N	1	f	/auto_subaru_outback_34307612.html	JF1BR9L95CG107365	24	24	2023-06-14 17:04:41.340164	2023-06-14 17:04:41.340166
34483211	2	67	635	6500	242645	5970	2010	0	195 тыс. км	195	2	1.2	1	2	\N	1	f	/auto_seat_ibiza_34483211.html	VSSZZZ6JxBRxxxx40	11	11	2023-06-14 22:12:40.190999	2023-06-14 22:12:40.191
34656371	8	56	1524	6600	245586	6100	2006	0	271 тыс. км	271	2	1.9	1	2	\N	1	f	/auto_opel_zafira_34656371.html	W0L0AHM756G080665	19	19	2023-06-14 22:29:27.876745	2023-06-14 22:29:27.876747
34569357	5	29	1268	8950	333030	8272	2010	0	207 тыс. км	207	4	2	1	1	\N	1	f	/auto_hyundai_tucson_34569357.html	Y6LJN81BPAL206943	3	433	2023-06-14 22:29:27.886444	2023-06-14 22:29:27.886445
34656356	6	9	44857	52000	1934920	48061	2016	13	111 тыс. км	111	1	3	4	3	\N	1	f	/auto_bmw_m4_34656356.html		11	11	2023-06-14 22:29:27.919623	2023-06-14 22:29:27.919623
34484009	2	84	35449	2800	104524	2571	1996	0	134 тыс. км	134	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34484009.html	WVWZZZ1HxTWxxxx94	2	146	2023-06-15 00:16:55.941851	2023-06-15 00:16:55.941852
34656858	5	29	1268	8500	316285	7856	2007	8	165 тыс. км	165	1	2	1	1	\N	1	f	/auto_hyundai_tucson_34656858.html	Y6LJN81Bх6Lхххх19	11	11	2023-06-15 00:16:56.077815	2023-06-15 00:16:56.077817
34656852	3	9	3219	11300	420473	10444	2011	13	255 тыс. км	255	1	3	2	1	\N	1	f	/auto_bmw_3_series_34656852.html		11	11	2023-06-15 00:16:56.097242	2023-06-15 00:16:56.097243
34656805	5	84	793	57950	2156320	53560	2019	8	147 тыс. км	147	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34656805.html	WVGZZZCRхKDхххх02	9	9	2023-06-15 00:16:56.124074	2023-06-15 00:16:56.124075
34656866	5	33	326	6900	256749	6377	2006	13	250 тыс. км	250	2	2.5	2	1	\N	1	f	/auto_kia_sorento_34656866.html	Y6LJC52486L000442	22	165	2023-06-15 00:16:56.132325	2023-06-15 00:16:56.132326
34656808	196	177	35926	14800	550708	13679	1997	13	437 тыс. км	437	2	4.6	1	3	\N	6	f	/auto_man_8_163_34656808.html		1	602	2023-06-15 00:16:56.134021	2023-06-15 00:16:56.134023
34642905	3	29	295	8200	305040	7550	2014	0	350 тыс. км	350	3	2	2	2	\N	1	f	/auto_hyundai_sonata_34642905.html	KMHEC41LxEAxxxx28	12	12	2023-06-12 18:41:06.093919	2023-06-12 18:41:06.09392
34643587	5	9	3597	12600	468846	11645	2012	8	187 тыс. км	187	2	2	3	1	\N	1	f	/auto_bmw_x1_34643587.html	WBAVP11020VU15262	10	10	2023-06-12 20:35:35.104819	2023-06-12 20:35:35.10482
34441021	5	37	3117	38500	1434125	35419	2014	0	100 тыс. км	100	2	3	2	1	\N	1	f	/auto_land_rover_range_rover_sport_34441021.html		25	25	2023-06-13 14:26:21.543543	2023-06-13 14:26:21.543545
34473403	4	9	2161	13999	521462	12878	2014	0	67 тыс. км	67	1	1.6	1	3	\N	1	f	/auto_bmw_1_series_34473403.html	WBA1R110x0Jxxxx96	10	10	2023-06-13 14:26:21.553405	2023-06-13 14:26:21.553406
34646879	2	62	586	4899	182292	4528	2005	8	254 тыс. км	254	1	1.6	2	2	\N	1	f	/auto_renault_megane_34646879.html	VF1KMMJ0A32954604	2	133	2023-06-13 14:26:21.683289	2023-06-13 14:26:21.683291
1915839	3	89	872	2800	104188	2588	2004	1	40 тыс. км	40	1	1.2	1	\N	\N	0	f	/auto_zaz_1103_slavuta_1915839.html		10	10	2023-06-13 14:26:21.765636	2023-06-13 14:26:21.765637
34649347	197	84	60426	26300	978623	24308	2019	0	191 тыс. км	191	2	0	2	2	\N	6	f	/auto_volkswagen_crafter_34649347.html	WV1ZZZSYхK9хххх47	9	392	2023-06-13 20:40:42.764729	2023-06-13 20:40:42.76473
34649329	212	177	30551	35600	1324676	32903	2014	8	656 тыс. км	656	2	0	2	3	\N	6	f	/auto_man_tgx_34649329.html	WMA06XZZ2FM660327	16	16	2023-06-13 20:40:42.771648	2023-06-13 20:40:42.77165
34649330	5	84	2692	11700	435357	10814	2012	0	220 тыс. км	220	1	2	2	1	\N	1	t	/auto_volkswagen_tiguan_34649330.html	WVGBV7AX8BW550427	18	18	2023-06-13 20:40:42.984612	2023-06-13 20:40:42.984617
34649320	8	62	59145	7750	288378	7163	2010	0	186 тыс. км	186	4	1.6	1	2	\N	1	f	/auto_renault_kangoo_34649320.html	VF1KW0DB541681187	18	18	2023-06-13 20:40:43.541378	2023-06-13 20:40:43.541381
34649274	2	84	39690	6450	240005	5961	2008	13	240 тыс. км	240	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34649274.html	WVWZZZ3CZ8E155528	3	3	2023-06-13 20:40:43.572965	2023-06-13 20:40:43.572967
34649276	5	52	1485	11999	446483	11090	2010	13	220 тыс. км	220	2	2.2	2	1	\N	1	f	/auto_mitsubishi_outlander_34649276.html	JMBXMCW7WAZ000838	10	10	2023-06-13 20:40:43.852081	2023-06-13 20:40:43.852084
34648877	4	84	35449	3000	111630	2773	1996	8	320 тыс. км	320	1	1.8	1	2	\N	1	f	/auto_volkswagen_golf_34648877.html		18	18	2023-06-13 20:40:44.635102	2023-06-13 20:40:44.635111
34487783	6	59	540	7000	260470	6470	1980	0	99 тыс. км	99	1	2	1	3	\N	1	t	/auto_porsche_924_34487783.html	92A0414869	10	10	2023-06-13 20:40:44.649625	2023-06-13 20:40:44.649627
34649257	212	177	30551	30400	1131184	28097	2014	13	750 тыс. км	750	0	12.5	2	\N	\N	6	f	/auto_man_tgx_34649257.html	WMA06XZZ8FP059714	18	18	2023-06-13 20:40:44.661337	2023-06-13 20:40:44.66134
34476263	3	28	265	14400	535824	13309	2018	0	91 тыс. км	91	1	2	2	2	\N	1	t	/auto_honda_civic_34476263.html	2HGFC2F58JH571007	11	76	2023-06-13 20:40:44.744216	2023-06-13 20:40:44.744217
1916503	2	6	49	10000	372100	9242	1996	1	185 тыс. км	185	2	2.5	1	\N	\N	0	f	/auto_audi_a6_1916503.html		3	433	2023-06-13 20:40:44.879414	2023-06-13 20:40:44.879416
34649256	2	48	428	12800	476288	11830	2011	13	308 тыс. км	308	2	2.2	2	3	\N	1	f	/auto_mercedes_benz_e_class_34649256.html		14	14	2023-06-13 20:40:45.780987	2023-06-13 20:40:45.78099
34649255	3	84	788	8800	327448	8133	2008	13	229 тыс. км	229	4	3.2	2	1	\N	1	f	/auto_volkswagen_phaeton_34649255.html	WVWZZZ3DZ88005693	5	5	2023-06-13 20:40:45.790328	2023-06-13 20:40:45.790329
34650333	307	70	652	6200	231259	5703	2007	0	300 тыс. км	300	4	1.6	1	2	\N	1	f	/auto_skoda_octavia_34650333.html		3	436	2023-06-13 23:27:37.734281	2023-06-13 23:27:37.734283
34650317	212	115	57514	16200	604260	14901	2008	0	720 тыс. км	720	2	0	2	3	\N	6	f	/auto_daf_cf_85_34650317.html	XLRTE85Mx0Exxxx96	3	3	2023-06-13 23:27:37.74692	2023-06-13 23:27:37.746921
34650327	21	55053	61777	1350	50354	1241	2020	0	2 тыс. км	2	1	0	1	6	\N	2	f	/auto_bse_j3d_34650327.html	L3BSEKARxL0xxxx12	24	514	2023-06-13 23:27:37.785325	2023-06-13 23:27:37.785326
34650361	3	9	2319	17900	666059	16544	2013	13	200 тыс. км	200	1	2	2	3	\N	1	f	/auto_bmw_5_series_34650361.html	WBA5A5C54ED503745	13	114	2023-06-13 23:27:37.908861	2023-06-13 23:27:37.908863
34466539	5	84	793	16900	628849	15620	2012	0	167 тыс. км	167	1	3.6	2	1	\N	1	t	/auto_volkswagen_touareg_34466539.html	WVGEF9BP8DD001913	24	24	2023-06-13 23:27:37.974388	2023-06-13 23:27:37.97439
34467511	5	33	54422	12800	476288	11830	2015	0	133 тыс. км	133	6	0	2	2	\N	1	f	/auto_kia_soul_ev_34467511.html	KNAJX81EFF7002404	24	521	2023-06-13 23:27:38.00761	2023-06-13 23:27:38.007612
34650302	3	29	295	7999	298362	7357	2016	0	433 тыс. км	433	3	2	2	2	\N	1	f	/auto_hyundai_sonata_34650302.html	KMHE341DxGAxxxx24	11	11	2023-06-13 23:27:38.593006	2023-06-13 23:27:38.593007
34650329	5	84	2692	24600	917579	22628	2016	0	240 тыс. км	240	2	2	2	1	\N	1	f	/auto_volkswagen_tiguan_34650329.html	WVGZZZ5NxGWxxxx83	15	15	2023-06-13 23:27:38.612328	2023-06-13 23:27:38.612329
34650269	6	48	431	25000	930250	23106	1986	13	140 тыс. км	140	1	0	2	\N	\N	1	f	/auto_mercedes_benz_s_class_34650269.html		3	432	2023-06-13 23:27:38.830005	2023-06-13 23:27:38.830008
34650256	3	13	1052	4500	167445	4159	2006	13	230 тыс. км	230	0	1.6	1	2	\N	1	f	/auto_chevrolet_lacetti_34650256.html		10	214	2023-06-13 23:27:38.85369	2023-06-13 23:27:38.853692
34650293	5	70	3721	18500	688385	17098	2017	0	81 тыс. км	81	1	1.8	2	1	\N	1	f	/auto_skoda_yeti_34650293.html	TMBLB25L0HB700025	3	3	2023-06-13 23:27:38.896192	2023-06-13 23:27:38.896194
34650279	8	84	32103	24000	893040	22182	2015	13	139 тыс. км	139	2	2	2	1	\N	1	t	/auto_volkswagen_multivan_34650279.html		10	10	2023-06-13 23:27:38.950185	2023-06-13 23:27:38.950188
34650309	3	185	2534	4200	156660	3863	2011	0	145 тыс. км	145	1	1.5	1	\N	\N	1	f	/auto_geely_mk_34650309.html	LB37624SxCLxxxx88	11	76	2023-06-13 23:27:39.539932	2023-06-13 23:27:39.539934
32724520	195	115	1671	17000	634100	15637	2003	0	1111 тыс. км	1111	2	12.6	2	3	\N	6	f	/auto_daf_95_32724520.html	XLRAS47Xx0Exxxx33	8	410	2023-06-13 23:27:39.54915	2023-06-13 23:27:39.549152
34299976	6	6	2032	11999	446483	11090	2011	0	194 тыс. км	194	1	2	1	2	\N	1	f	/auto_audi_a5_34299976.html	WAUZZZ8T5BA094029	3	427	2023-06-13 23:27:39.797215	2023-06-13 23:27:39.797216
34650253	4	84	789	3700	137677	3420	2003	13	200 тыс. км	200	1	1.2	1	\N	\N	1	f	/auto_volkswagen_polo_34650253.html		22	168	2023-06-13 23:27:39.814069	2023-06-13 23:27:39.81407
34650266	3	88	850	850	31629	786	1989	13	74 тыс. км	74	1	1.3	1	3	\N	1	f	/auto_vaz_lada_2105_34650266.html		25	25	2023-06-13 23:27:39.839906	2023-06-13 23:27:39.839907
34650292	3	9	2319	30500	1134905	28189	2017	13	158 тыс. км	158	2	2	2	3	\N	1	f	/auto_bmw_5_series_34650292.html	WBAJC31040G921394	10	10	2023-06-13 23:27:40.548354	2023-06-13 23:27:40.548361
34177245	5	9	42029	29600	1101416	27358	2017	0	68 тыс. км	68	1	2	3	2	\N	1	f	/auto_bmw_x2_34177245.html	WBAYH31060EA96909	11	11	2023-06-13 23:27:40.6318	2023-06-13 23:27:40.631802
34651840	6	128	35999	11500	429065	10578	2007	0	110 тыс. км	110	4	3.7	2	3	\N	1	f	/auto_infiniti_g37_34651840.html	JNKCV64Ex8Mxxxx88	10	610	2023-06-14 11:19:09.134491	2023-06-14 11:19:09.134493
34651834	2	62	585	6550	244380	6025	2010	0	211 тыс. км	211	2	2	1	2	\N	1	f	/auto_renault_laguna_34651834.html	VF1KT0J0x43xxxx27	20	379	2023-06-14 11:19:09.142399	2023-06-14 11:19:09.142401
1891186	8	48	31180	16900	628849	15620	2005	1	133 тыс. км	133	2	2.2	1	\N	\N	1	f	/auto_mercedes_benz_vito_gruz_1891186.html		11	11	2023-06-14 11:19:09.38789	2023-06-14 11:19:09.387893
1914685	9	89	2706	752	28000	695	2008	1	17 тыс. км	17	1	1.2	1	\N	\N	1	f	/auto_zaz_11055_1914685.html		11	11	2023-06-14 11:19:09.401287	2023-06-14 11:19:09.401289
34642479	4	84	35449	3900	145119	3605	1999	13	217 тыс. км	217	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34642479.html		5	5	2023-06-12 18:41:07.322168	2023-06-12 18:41:07.322169
34643578	3	56	1508	3000	111630	2773	1999	13	280 тыс. км	280	1	1.6	1	2	\N	1	f	/auto_opel_astra_34643578.html		1	1	2023-06-12 20:35:35.104743	2023-06-12 20:35:35.104743
33230812	197	30	3671	8500	316625	7819	2010	0	396 тыс. км	396	2	3	1	3	\N	6	f	/auto_isuzu_nlr_33230812.html	Y6LNLR85xALxxxx14	10	10	2023-06-13 14:26:21.552764	2023-06-13 14:26:21.552766
34646865	197	48	1428	2100	78141	1941	1993	8	500 тыс. км	500	2	2.5	1	3	\N	6	f	/auto_mercedes_benz_t1_34646865.html		3	429	2023-06-13 14:26:21.649037	2023-06-13 14:26:21.649039
34646881	5	62	30503	17800	662338	16452	2018	13	49 тыс. км	49	2	1.5	2	2	\N	1	f	/auto_renault_duster_34646881.html	VF1HJD20х60хххх12	5	5	2023-06-13 14:26:21.683746	2023-06-13 14:26:21.683747
34649316	3	24	240	3600	133956	3327	1999	0	160 тыс. км	160	4	2	2	2	\N	1	f	/auto_ford_focus_34649316.html	1FAFP33P4YW202564	10	10	2023-06-13 20:40:42.764806	2023-06-13 20:40:42.764807
34640757	3	55	498	3000	111630	2773	2002	0	135 тыс. км	135	1	1.6	1	2	\N	1	f	/auto_nissan_primera_34640757.html	SJNBAAP1хU0хххх42	20	605	2023-06-13 20:40:42.772335	2023-06-13 20:40:42.772336
34425943	8	56	1524	4600	171166	4252	2003	0	210 тыс. км	210	2	2.2	1	2	\N	1	f	/auto_opel_zafira_34425943.html	W0L0TGF7532260131	24	516	2023-06-13 20:40:43.550845	2023-06-13 20:40:43.550847
34649268	2	88	857	2200	81862	2033	2001	13	165 тыс. км	165	4	1.5	1	2	\N	1	f	/auto_vaz_lada_2111_34649268.html		13	123	2023-06-13 20:40:43.563314	2023-06-13 20:40:43.563315
34649229	3	88	855	1800	66978	1664	2004	0	210 тыс. км	210	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_21099_34649229.html		15	204	2023-06-13 20:40:43.571853	2023-06-13 20:40:43.571855
34649298	4	13	1038	3900	145119	3605	2008	0	120 тыс. км	120	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34649298.html	Y6DSF48YE9B284977	10	10	2023-06-13 20:40:43.610934	2023-06-13 20:40:43.610935
33030395	5	37	348	38400	1428864	35491	2017	0	128 тыс. км	128	2	3	2	1	\N	1	t	/auto_land_rover_discovery_33030395.html	SALRHBBK4HA016338	11	11	2023-06-13 20:40:43.674875	2023-06-13 20:40:43.674876
34649280	3	190	2087	1900	70699	1756	2008	13	130 тыс. км	130	4	1.6	1	2	\N	1	f	/auto_chery_amulet_34649280.html	Y6DDA11B68D025337	6	560	2023-06-13 20:40:44.159938	2023-06-13 20:40:44.159947
34486850	5	29	1268	7590	282424	7015	2005	0	190 тыс. км	190	4	0	1	2	\N	1	f	/auto_hyundai_tucson_34486850.html	KMHJN81BP5U225930	3	3	2023-06-13 20:40:44.650585	2023-06-13 20:40:44.650587
34649290	2	88	842	2800	104188	2588	2008	0	138 тыс. км	138	1	0	1	\N	\N	1	f	/auto_vaz_lada_1117_kalina_34649290.html	XTA11174090019394	22	22	2023-06-13 20:40:44.743318	2023-06-13 20:40:44.743319
34623878	2	85	822	22999	855793	21257	2017	0	300 тыс. км	300	2	2	2	2	\N	1	f	/auto_volvo_v90_34623878.html		9	9	2023-06-13 20:40:44.824352	2023-06-13 20:40:44.824353
34649267	3	190	2087	4650	173027	4298	2008	8	2 тыс. км	2	1	1.6	1	2	\N	1	f	/auto_chery_amulet_34649267.html	Y6DDA11B48D193073	1	1	2023-06-13 20:40:45.761231	2023-06-13 20:40:45.761236
34650318	4	84	2811	8100	302130	7450	2009	0	133 тыс. км	133	1	1.4	2	2	\N	1	f	/auto_volkswagen_golf_plus_34650318.html	WVWZZZ1Kx9Wxxxx15	4	4	2023-06-13 23:27:37.735904	2023-06-13 23:27:37.735905
34650245	5	79	35000	28900	1077970	26583	2008	0	202 тыс. км	202	4	5.7	2	1	\N	1	f	/auto_toyota_land_cruiser_34650245.html	JTMHY05Jx84xxxx69	10	10	2023-06-13 23:27:37.747388	2023-06-13 23:27:37.747389
34650314	307	89	872	500	18650	459	2006	0	300 тыс. км	300	0	0	1	\N	\N	1	f	/auto_zaz_1103_slavuta_34650314.html	Y6D11030x60xxxx13	15	15	2023-06-13 23:27:37.786634	2023-06-13 23:27:37.786635
1899732	3	88	0	672	25000	621	1981	1	69 тыс. км	69	1	1.3	1	\N	\N	0	f			4	4	2023-06-14 11:19:09.444329	2023-06-14 11:19:09.444331
1904526	3	55	502	2800	104188	2588	1982	1	130 тыс. км	130	1	2	2	\N	\N	0	f	/auto_nissan_skyline_1904526.html		19	19	2023-06-14 11:19:09.461159	2023-06-14 11:19:09.461161
1897395	3	91	882	1250	46513	1155	1990	1	100 тыс. км	100	4	2.4	1	\N	\N	0	f	/auto_gaz_24_1897395.html		12	12	2023-06-14 11:19:09.477476	2023-06-14 11:19:09.477478
1905743	3	52	456	8000	297680	7394	1997	1	200 тыс. км	200	4	2	1	\N	\N	0	f	/auto_mitsubishi_galant_1905743.html		6	6	2023-06-14 11:19:09.519394	2023-06-14 11:19:09.519395
24502106	4	62	1556	4500	167625	4108	2006	0	210 тыс. км	210	4	1.6	2	2	\N	1	f	/auto_renault_modus_24502106.html	VF1JP0UAx62xxxx57	1	27	2023-06-20 11:39:47.568907	2023-06-20 11:39:47.568909
34469068	5	37	3117	31500	1172115	29114	2014	0	209 тыс. км	209	2	3	2	1	\N	1	f	/auto_land_rover_range_rover_sport_34469068.html	SALWA2KF1EA371473	22	161	2023-06-14 11:19:10.12136	2023-06-14 11:19:10.121371
1898738	2	13	1059	8888	330722	8215	2005	1	68 тыс. км	68	1	1.7	1	\N	\N	0	f	/auto_chevrolet_niva_1898738.html		10	10	2023-06-14 11:19:10.176302	2023-06-14 11:19:10.176306
33925729	2	29	2772	5450	202795	5037	2009	0	255 тыс. км	255	1	1.4	1	2	\N	1	f	/auto_hyundai_i30_33925729.html	TMADB81CP9J007691	15	15	2023-06-14 11:19:10.193141	2023-06-14 11:19:10.193145
1868756	8	84	64461	0	0	0	2006	1	170 тыс. км	170	2	2.5	1	\N	\N	0	f	/auto_volkswagen_transporter_1868756.html		18	18	2023-06-14 11:19:10.717004	2023-06-14 11:19:10.717009
34651832	4	88	854	1850	69023	1701	2002	0	250 тыс. км	250	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_2109_34651832.html	XTA21093x23xxxx11	19	329	2023-06-14 11:19:12.382507	2023-06-14 11:19:12.382509
34651842	5	28	269	10800	402948	9934	2007	0	223 тыс. км	223	2	2.2	1	1	\N	1	f	/auto_honda_cr_v_34651842.html	SHSRE675x7Uxxxx65	1	34	2023-06-14 11:19:12.398119	2023-06-14 11:19:12.398121
1902766	5	29	1268	20500	762805	18947	2008	1	5 тыс. км	5	1	2	3	\N	\N	0	f	/auto_hyundai_tucson_1902766.html		10	10	2023-06-14 11:19:12.949891	2023-06-14 11:19:12.949894
1894372	3	88	855	5000	186050	4621	2004	1	67 тыс. км	67	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1894372.html		12	12	2023-06-14 11:19:13.045774	2023-06-14 11:19:13.045777
34059256	2	88	857	2000	74420	1848	2007	0	105 тыс. км	105	1	1.6	1	\N	\N	1	f	/auto_vaz_lada_2111_34059256.html	Y6L2111207L027237	15	15	2023-06-14 11:19:13.148367	2023-06-14 11:19:13.148371
34686829	3	79	698	7900	293959	7302	2015	13	130 тыс. км	130	1	2.5	2	2	\N	1	t	/auto_toyota_camry_34686829.html	6T1BF9FK9FX583737	10	10	2023-06-20 11:39:47.920236	2023-06-20 11:39:47.920238
1894443	5	0	0	2200	81862	2033	2007	1	1 тыс. км	1	1	0.25	5	\N	\N	0	f			18	62	2023-06-14 11:19:13.186003	2023-06-14 11:19:13.186004
1897404	4	24	239	9500	353495	8780	2008	13	45 тыс. км	45	1	1.3	1	\N	\N	0	f	/auto_ford_fiesta_1897404.html		10	10	2023-06-14 11:19:13.212644	2023-06-14 11:19:13.212646
1900299	2	47	394	4700	174887	4344	1990	1	283 тыс. км	283	1	2.2	1	\N	\N	0	f	/auto_mazda_626_1900299.html		1	1	2023-06-14 11:19:13.263508	2023-06-14 11:19:13.263512
1914071	3	48	428	12900	480009	11923	1998	1	207 тыс. км	207	1	2	1	\N	\N	0	f	/auto_mercedes_benz_e_class_1914071.html		11	11	2023-06-14 11:19:13.495221	2023-06-14 11:19:13.495223
1894332	4	84	35449	7200	267912	6655	1996	1	225 тыс. км	225	1	1.8	1	\N	\N	0	f	/auto_volkswagen_golf_1894332.html		11	72	2023-06-14 11:19:13.57183	2023-06-14 11:19:13.571832
34313619	3	24	246	10327	385320	9500	2013	0	220 тыс. км	220	2	2	2	2	\N	1	f	/auto_ford_mondeo_34313619.html	WF0EXXGBxEDxxxx36	14	14	2023-06-14 11:19:14.21261	2023-06-14 11:19:14.212611
1906985	3	84	0	12800	476288	11830	2003	5	155 тыс. км	155	1	1.8	1	\N	\N	0	f			21	21	2023-06-14 11:19:14.554476	2023-06-14 11:19:14.55448
34642634	3	24	246	7799	290122	7181	2010	0	240 тыс. км	240	2	1.8	1	2	\N	1	f	/auto_ford_mondeo_34642634.html	WF0EXXGBxEAxxxx38	2	2	2023-06-12 18:41:08.129	2023-06-12 18:41:08.129001
34321976	3	24	239	7600	282796	7024	2014	0	110 тыс. км	110	4	1.6	3	2	\N	1	t	/auto_ford_fiesta_34321976.html	3FADP4BJ9FM110499	10	10	2023-06-12 20:35:35.105041	2023-06-12 20:35:35.105041
34471723	2	84	39690	3200	119040	2946	1999	0	359 тыс. км	359	1	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34471723.html	WVWZZZ3BxXXxxxx32	16	238	2023-06-12 20:35:35.693954	2023-06-12 20:35:35.693956
34471117	219	24	35396	2500	93000	2301	1992	0	160 тыс. км	160	2	2.5	1	3	\N	7	f	/auto_ford_transit_34471117.html	WF0HXXGBxHNxxxx07	4	512	2023-06-12 20:35:35.710445	2023-06-12 20:35:35.710447
34643528	5	79	2090	37500	1395000	34529	2018	0	105 тыс. км	105	0	0	3	\N	\N	1	f	/auto_toyota_highlander_34643528.html		10	10	2023-06-12 20:35:35.772155	2023-06-12 20:35:35.772157
34643263	197	62	46833	9000	334890	8318	2008	8	250 тыс. км	250	2	2.5	1	2	\N	6	f	/auto_renault_master_34643263.html	VF1FDC1L640195008	24	24	2023-06-12 20:35:35.967781	2023-06-12 20:35:35.967783
34643561	5	23	219	4800	178608	4436	2006	13	270 тыс. км	270	2	1.9	1	2	\N	1	f	/auto_fiat_doblo_34643561.html	ZFA22300005482051	4	4	2023-06-12 20:35:35.985737	2023-06-12 20:35:35.98574
34533263	197	62	59145	7999	297643	7393	2017	0	163 тыс. км	163	2	1.5	1	2	\N	6	f	/auto_renault_kangoo_34533263.html	VF1FW50A157302784	10	10	2023-06-12 20:35:36.051265	2023-06-12 20:35:36.051267
34296823	2	84	39690	5300	197213	4898	2002	0	348 тыс. км	348	2	1.9	2	2	\N	1	f	/auto_volkswagen_passat_34296823.html	WVWZZZ3Bх3Eхххх99	2	141	2023-06-12 20:35:36.245123	2023-06-12 20:35:36.245127
34643521	4	47	1692	4900	182280	4511	2004	0	139 тыс. км	139	1	1.6	1	2	\N	1	f	/auto_mazda_3_34643521.html	JMZBK14Zx51xxxx60	1	1	2023-06-12 20:35:36.519669	2023-06-12 20:35:36.519673
34643527	3	2233	47858	35000	1302000	32227	2018	0	50 тыс. км	50	6	0	2	1	\N	1	f	/auto_tesla_model_3_34643527.html	5YJ3E1EBxJFxxxx74	10	10	2023-06-12 20:35:36.542489	2023-06-12 20:35:36.54249
34643518	4	18	161	2700	100440	2486	2007	0	150 тыс. км	150	4	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_34643518.html	SUPTF48Yx7Wxxxx57	20	20	2023-06-12 20:35:36.553284	2023-06-12 20:35:36.553285
34632971	3	28	262	13100	487451	12108	2011	0	119 тыс. км	119	1	2	2	\N	\N	1	f	/auto_honda_accord_34632971.html	JHMCU1650CC201972	15	15	2023-06-12 20:35:37.387276	2023-06-12 20:35:37.38728
34643516	3	84	39690	9999	371962	9207	2013	0	230 тыс. км	230	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34643516.html	1VWCN7A3xDCxxxx65	10	10	2023-06-12 20:35:37.610066	2023-06-12 20:35:37.61007
34643497	4	15	1082	6200	230702	5730	2011	13	140 тыс. км	140	1	1.6	1	2	\N	1	f	/auto_citroen_c4_34643497.html	VF7NC5FS0BY549901	15	15	2023-06-12 20:35:37.892025	2023-06-12 20:35:37.892028
34609103	5	79	2104	24999	930213	23105	2008	0	225 тыс. км	225	4	5.7	2	1	\N	1	f	/auto_toyota_sequoia_34609103.html	5TDBY67A88S019990	11	11	2023-06-12 20:35:37.968045	2023-06-12 20:35:37.968049
34471248	307	24	246	1700	63325	1563	1995	0	555 тыс. км	555	2	1.8	1	2	\N	1	f	/auto_ford_mondeo_34471248.html	WF0AXXGBxASxxxx73	15	200	2023-06-13 14:26:21.554672	2023-06-13 14:26:21.554674
34174144	3	29	2834	21500	800875	19779	2014	0	125 тыс. км	125	1	3.8	2	1	\N	1	t	/auto_hyundai_genesis_34174144.html	KMHGN4JExFUxxxx92	12	12	2023-06-13 14:26:21.554991	2023-06-13 14:26:21.554992
34646874	3	28	262	9100	338611	8411	2008	8	176 тыс. км	176	4	2	1	2	\N	1	f	/auto_honda_accord_34646874.html	JHMCU15509C221934	11	11	2023-06-13 14:26:21.655107	2023-06-13 14:26:21.655109
34646858	4	47	1692	9500	353495	8780	2011	13	118 тыс. км	118	1	2.3	1	\N	\N	1	f	/auto_mazda_3_34646858.html		9	9	2023-06-13 14:26:21.686261	2023-06-13 14:26:21.686263
34646876	6	9	43023	31800	1183278	29391	2017	13	48 тыс. км	48	1	3	2	1	\N	1	t	/auto_bmw_2_series_34646876.html	WBA2G3C33HV986759	10	10	2023-06-13 14:26:21.69945	2023-06-13 14:26:21.699452
34646856	5	3	49962	32000	1190720	29576	2017	0	81 тыс. км	81	1	0	2	1	\N	1	t	/auto_alfa_romeo_stelvio_34646856.html	ZASFAKNN2J7B72585	10	10	2023-06-13 14:26:21.715388	2023-06-13 14:26:21.715389
34646849	221	326	2284	4999	186013	4620	2008	13	500 тыс. км	500	2	5.7	1	3	\N	7	f	/auto_baz_a_079_etalon_34646849.html	Y7FA0791480006749	12	12	2023-06-13 14:26:21.724054	2023-06-13 14:26:21.724054
34271878	3	55	504	1650	61397	1525	1991	0	475 тыс. км	475	1	1.4	1	2	\N	1	f	/auto_nissan_sunny_34271878.html	JN1FCAN14U0009555	15	195	2023-06-13 14:26:21.739693	2023-06-13 14:26:21.739694
34476889	307	9	43029	16273	605518	15040	2014	0	182 тыс. км	182	1	2	2	1	\N	1	t	/auto_bmw_3_series_gt_34476889.html	WBA3X5C57FD561386	11	11	2023-06-13 14:26:21.780144	2023-06-13 14:26:21.780145
34649353	3	18	1642	2300	85583	2126	2006	13	187 тыс. км	187	1	1.3	1	2	\N	1	f	/auto_daewoo_sens_34649353.html	Y6DT1311060286413	4	4	2023-06-13 20:40:42.765307	2023-06-13 20:40:42.765308
34649308	4	88	844	2000	74420	1848	2007	0	340 тыс. км	340	1	1.6	1	2	\N	1	f	/auto_vaz_lada_1119_kalina_34649308.html	XTA11193х70хххх31	1	1	2023-06-13 20:40:42.772689	2023-06-13 20:40:42.772689
34650126	5	84	2692	36000	1342800	33114	2019	0	154 тыс. км	154	2	2	2	1	\N	1	f	/auto_volkswagen_tiguan_34650126.html	WVGZZZ5NxKWxxxx99	14	14	2023-06-13 23:27:37.736462	2023-06-13 23:27:37.736463
1910421	3	47	393	13000	483730	12015	2003	1	98 тыс. км	98	1	2	2	\N	\N	0	f	/auto_mazda_6_1910421.html		8	8	2023-06-14 11:19:09.496363	2023-06-14 11:19:09.496365
34688499	8	24	1679	999	37173	923	1996	0	425 тыс. км	425	2	1.8	1	2	\N	1	f	/auto_ford_courier_34688499.html	WF03XXBAJ3TS21341	9	9	2023-06-20 15:37:57.211056	2023-06-20 15:37:57.211057
1887642	3	88	851	300	11163	277	1987	1	85 тыс. км	85	1	1.3	1	\N	\N	1	t	/auto_vaz_lada_2106_1887642.html		18	18	2023-06-14 11:19:09.908489	2023-06-14 11:19:09.908492
1914673	3	52	457	10900	405589	10074	2005	1	82 тыс. км	82	1	1.6	1	\N	\N	0	f	/auto_mitsubishi_lancer_1914673.html		10	10	2023-06-14 11:19:09.96854	2023-06-14 11:19:09.968545
34420387	5	38	1344	81700	3040057	75511	2017	0	40 тыс. км	40	1	5.7	2	1	\N	1	f	/auto_lexus_lx_34420387.html	JTJHY00WX04246933	10	10	2023-06-14 11:19:10.168576	2023-06-14 11:19:10.16858
1899965	9	180	2370	2900	107909	2680	2004	1	62 тыс. км	62	4	1.2	1	\N	\N	1	f	/auto_bunge_pikap_1899965.html		10	10	2023-06-14 11:19:10.638641	2023-06-14 11:19:10.638646
34651836	3	62	1554	6000	223860	5519	2015	0	204 тыс. км	204	2	1.5	1	2	\N	1	f	/auto_renault_logan_34651836.html	VF14SRAWx52xxxx22	10	10	2023-06-14 11:19:12.142104	2023-06-14 11:19:12.14211
34651817	8	62	588	4400	164164	4047	2005	0	175 тыс. км	175	2	1.5	1	\N	\N	1	f	/auto_renault_scenic_34651817.html	VF1JMSE0x34xxxx95	4	498	2023-06-14 11:19:12.404242	2023-06-14 11:19:12.404244
1904770	3	79	698	23700	881877	21905	2006	1	52 тыс. км	52	1	2.4	2	\N	\N	0	f	/auto_toyota_camry_1904770.html		11	11	2023-06-14 11:19:12.708369	2023-06-14 11:19:12.708372
1908653	8	58	35447	10999	409273	10166	2002	1	260 тыс. км	260	2	2.2	1	\N	\N	0	f	/auto_peugeot_boxer_1908653.html		1	599	2023-06-14 11:19:12.713926	2023-06-14 11:19:12.71393
1904656	3	88	855	6800	253028	6285	2008	1	19 тыс. км	19	1	1.6	1	\N	\N	0	f	/auto_vaz_lada_21099_1904656.html		10	10	2023-06-14 11:19:12.925079	2023-06-14 11:19:12.925082
1908674	7	9	100	80000	2976800	73939	2002	1	49 тыс. км	49	1	5	1	\N	\N	0	f	/auto_bmw_z8_1908674.html		11	11	2023-06-14 11:19:12.945598	2023-06-14 11:19:12.945601
1909105	3	48	431	0	0	0	1995	1	500 тыс. км	500	1	5	2	\N	\N	0	f	/auto_mercedes_benz_s_class_1909105.html		23	477	2023-06-14 11:19:12.953029	2023-06-14 11:19:12.953031
1904779	4	67	636	11800	439078	10906	2003	1	85 тыс. км	85	1	1.6	2	\N	\N	0	f	/auto_seat_leon_1904779.html		11	11	2023-06-14 11:19:13.020464	2023-06-14 11:19:13.020466
34642829	4	67	636	6500	241800	5985	2011	0	187 тыс. км	187	1	1.2	1	2	\N	1	f	/auto_seat_leon_34642829.html	VSSZZZ1PxBRxxxx09	19	19	2023-06-12 18:41:08.131554	2023-06-12 18:41:08.131555
34643581	4	84	789	7500	279075	6932	2010	13	135 тыс. км	135	1	1.4	2	2	\N	1	f	/auto_volkswagen_polo_34643581.html	WVWZZZ6RZAY287802	15	608	2023-06-12 20:35:35.105181	2023-06-12 20:35:35.105182
34646890	5	47	2009	7500	279075	6932	2008	0	233 тыс. км	233	1	2.3	1	1	\N	1	f	/auto_mazda_cx_7_34646890.html	JMZER893680113319	3	433	2023-06-13 14:26:21.688156	2023-06-13 14:26:21.688158
34618562	2	24	240	4869	181170	4500	2004	0	292 тыс. км	292	2	1.8	1	2	\N	1	f	/auto_ford_focus_34618562.html	WF0NXXGCDN4G19830	25	25	2023-06-13 14:26:21.717592	2023-06-13 14:26:21.717593
1915837	4	88	854	3000	111630	2773	1993	5	1 тыс. км	1	0	1.3	1	\N	\N	0	f	/auto_vaz_lada_2109_1915837.html		17	17	2023-06-13 14:26:21.753526	2023-06-13 14:26:21.753527
34126692	5	79	35004	23300	866993	21535	2013	0	109 тыс. км	109	4	2.7	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34126692.html	JTEBX3FJх0Kхххх84	10	10	2023-06-13 14:26:21.809134	2023-06-13 14:26:21.809136
34649303	8	15	59440	1250	46513	1155	1999	0	401 тыс. км	401	0	1.9	1	2	\N	1	f	/auto_citroen_berlingo_34649303.html		3	3	2023-06-13 20:40:42.766408	2023-06-13 20:40:42.766409
34649354	4	89	33840	3500	130235	3235	2011	13	160 тыс. км	160	4	1.5	1	2	\N	1	f	/auto_zaz_forza_34649354.html	Y6DAF4854C0007624	7	7	2023-06-13 20:40:42.774815	2023-06-13 20:40:42.774816
34650330	4	24	239	8000	298400	7358	2013	0	150 тыс. км	150	1	1.6	2	2	\N	1	f	/auto_ford_fiesta_34650330.html	3FADP4EJxEMxxxx86	10	220	2023-06-13 23:27:37.737267	2023-06-13 23:27:37.737268
34650225	4	24	239	6000	223799	5519	2011	0	176 тыс. км	176	1	1.2	1	2	\N	1	f	/auto_ford_fiesta_34650225.html	WF0JXXJAxJBxxxx93	20	605	2023-06-13 23:27:37.749925	2023-06-13 23:27:37.749926
34650267	2	84	39690	5400	200934	4991	2005	13	276 тыс. км	276	2	1.9	1	2	\N	1	f	/auto_volkswagen_passat_34650267.html	WVWZZZ3CZ6E074711	5	297	2023-06-13 23:27:37.910498	2023-06-13 23:27:37.9105
34648019	5	59	546	39999	1488363	36969	2013	0	70 тыс. км	70	1	4.8	2	1	\N	1	f	/auto_porsche_cayenne_34648019.html	WP1AD2A25DLA73226	11	11	2023-06-13 23:27:38.156346	2023-06-13 23:27:38.156348
34650300	4	13	33783	13950	520334	12831	2015	0	168 тыс. км	168	5	1.4	2	2	\N	1	t	/auto_chevrolet_volt_34650300.html	1G1RA6E4xFUxxxx11	5	306	2023-06-13 23:27:38.58872	2023-06-13 23:27:38.588722
34650306	17	28	64884	8000	298400	7358	2016	0	19 тыс. км	19	1	750	1	6	\N	2	f	/auto_honda_nc_750x_34650306.html	RCx01xxxx54	10	210	2023-06-13 23:27:38.600144	2023-06-13 23:27:38.600145
34650298	3	13	1038	3700	137677	3420	2008	13	203 тыс. км	203	4	1.5	2	\N	\N	1	f	/auto_chevrolet_aveo_34650298.html	Y6DSA69YE8W014205	16	239	2023-06-13 23:27:38.87217	2023-06-13 23:27:38.872171
34623789	212	177	37865	26508	986370	24500	2013	0	686 тыс. км	686	2	10.5	1	3	\N	6	f	/auto_man_18_440_34623789.html	WMA06XZZ9DP041316	1	1	2023-06-13 23:27:38.936509	2023-06-13 23:27:38.936512
34650337	8	84	35448	5999	223762	5518	2007	0	268 тыс. км	268	2	1.9	2	2	\N	1	f	/auto_volkswagen_caddy_34650337.html	WV1ZZZ2Kx8Xxxxx01	10	610	2023-06-13 23:27:39.532062	2023-06-13 23:27:39.532064
34650102	3	84	785	7500	279750	6898	2009	0	173 тыс. км	173	4	1.6	1	2	\N	1	f	/auto_volkswagen_jetta_34650102.html	WVWZZZ1Kx9Mxxxx28	7	464	2023-06-13 23:27:39.542244	2023-06-13 23:27:39.542245
34650283	3	29	295	6200	230702	5730	2007	0	184 тыс. км	184	4	2.4	1	2	\N	1	f	/auto_hyundai_sonata_34650283.html	KMHEU41Bх7Aхххх29	11	94	2023-06-13 23:27:39.781123	2023-06-13 23:27:39.781125
34650254	4	55	36565	9500	353495	8780	2015	8	184 тыс. км	184	6	0	2	2	\N	1	f	/auto_nissan_leaf_34650254.html	1N4AZ0CP0FC332312	9	9	2023-06-13 23:27:39.816512	2023-06-13 23:27:39.816514
34650262	8	56	1524	3900	145119	3605	2003	13	300 тыс. км	300	2	2	1	2	\N	1	f	/auto_opel_zafira_34650262.html	W0L0TGF7542019362	5	5	2023-06-13 23:27:39.828079	2023-06-13 23:27:39.828081
34650265	3	88	855	2100	78141	1941	2007	0	201 тыс. км	201	4	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34650265.html	Y6D21099070040572	24	528	2023-06-13 23:27:39.855948	2023-06-13 23:27:39.85595
34650242	8	48	30874	7300	272290	6714	2014	0	208 тыс. км	208	2	0	1	2	\N	1	f	/auto_mercedes_benz_citan_34650242.html	WDF41560x1Uxxxx76	6	551	2023-06-13 23:27:40.280024	2023-06-13 23:27:40.280039
34561682	3	88	851	810	30140	749	1987	0	56 тыс. км	56	4	1.3	1	3	\N	1	f	/auto_vaz_lada_2106_34561682.html	XTA210610J1872225	6	560	2023-06-13 23:27:40.55013	2023-06-13 23:27:40.550135
1907357	4	52	456	0	0	0	1989	1	1 тыс. км	1	1	2	1	\N	\N	0	f	/auto_mitsubishi_galant_1907357.html		12	12	2023-06-14 11:19:13.147343	2023-06-14 11:19:13.147347
1903351	3	56	1518	2500	93025	2311	1988	1	200 тыс. км	200	1	2	1	\N	\N	0	f	/auto_opel_omega_1903351.html		12	12	2023-06-14 11:19:13.204918	2023-06-14 11:19:13.204919
1912031	5	79	715	25800	960018	23845	2008	1	37 тыс. км	37	1	2	1	\N	\N	0	f	/auto_toyota_rav4_1912031.html		5	5	2023-06-14 11:19:13.413921	2023-06-14 11:19:13.413927
1910422	4	24	239	10500	390705	9705	2006	1	41 тыс. км	41	2	1.4	1	\N	\N	0	f	/auto_ford_fiesta_1910422.html		12	12	2023-06-14 11:19:13.553007	2023-06-14 11:19:13.55301
1912042	8	48	31180	18800	699548	17376	2006	1	88 тыс. км	88	2	2.2	3	\N	\N	0	f	/auto_mercedes_benz_vito_gruz_1912042.html		9	9	2023-06-14 11:19:13.650174	2023-06-14 11:19:13.650178
34651829	5	75	663	7800	291174	7177	2010	0	127 тыс. км	127	0	2.5	2	1	\N	1	f	/auto_subaru_forester_34651829.html		10	10	2023-06-14 11:19:14.212179	2023-06-14 11:19:14.212181
1909211	3	29	1258	10588	393979	9786	2008	1	45 тыс. км	45	1	1.4	2	\N	\N	0	f	/auto_hyundai_accent_1909211.html		10	10	2023-06-14 11:19:14.52363	2023-06-14 11:19:14.523636
1913098	8	79	713	18900	703269	17468	2003	1	138 тыс. км	138	4	2.4	2	\N	\N	0	f	/auto_toyota_previa_1913098.html		15	15	2023-06-14 11:19:14.585035	2023-06-14 11:19:14.585037
1900548	8	62	60014	11900	442799	10998	2003	1	200 тыс. км	200	2	1.9	1	\N	\N	0	f	/auto_renault_trafic_1900548.html		1	30	2023-06-14 11:19:14.745968	2023-06-14 11:19:14.74597
1908444	3	88	855	5300	197213	4898	2005	1	72 тыс. км	72	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1908444.html		15	15	2023-06-14 11:19:14.780014	2023-06-14 11:19:14.780015
1903343	4	70	652	17500	651175	16174	2007	1	110 тыс. км	110	2	2	1	\N	\N	0	f	/auto_skoda_octavia_1903343.html		15	15	2023-06-14 11:19:14.795979	2023-06-14 11:19:14.795981
1911481	5	48	3048	33333	1240321	30808	2000	1	191 тыс. км	191	4	5	3	\N	\N	0	f	/auto_mercedes_benz_g_class_1911481.html		2	133	2023-06-14 11:19:14.848681	2023-06-14 11:19:14.848682
1908448	8	84	64461	0	0	0	2003	1	29 тыс. км	29	2	2.5	1	\N	\N	0	f	/auto_volkswagen_transporter_1908448.html		18	18	2023-06-14 11:19:15.00914	2023-06-14 11:19:15.009143
1907437	2	84	0	8000	297680	7394	2003	1	120 тыс. км	120	2	2.5	3	\N	\N	0	f			10	10	2023-06-14 11:19:15.786499	2023-06-14 11:19:15.786503
1914442	3	9	32251	11000	409310	10167	1998	1	350 тыс. км	350	0	2.8	1	\N	\N	1	f	/auto_bmw_525_1914442.html		13	119	2023-06-14 11:19:17.230043	2023-06-14 11:19:17.230046
1907193	3	6	47	18500	688385	17098	2005	1	63 тыс. км	63	1	1.6	1	\N	\N	0	f	/auto_audi_a4_1907193.html		14	14	2023-06-14 11:19:17.510617	2023-06-14 11:19:17.510622
33941098	3	2233	47858	38500	1432585	35583	2019	0	75 тыс. км	75	6	0	2	1	\N	1	t	/auto_tesla_model_3_33941098.html	5YJ3E1EC6LF602530	22	161	2023-06-14 11:19:18.260993	2023-06-14 11:19:18.260997
1912386	3	84	781	10000	372100	9242	2000	1	112 тыс. км	112	1	1.6	1	\N	\N	1	f	/auto_volkswagen_bora_1912386.html		12	342	2023-06-14 11:19:18.70209	2023-06-14 11:19:18.702097
34642824	8	48	35252	10500	390600	9668	2009	0	264 тыс. км	264	2	2.1	1	3	\N	1	f	/auto_mercedes_benz_vito_34642824.html	WDF63960x13xxxx43	25	539	2023-06-12 18:41:08.131797	2023-06-12 18:41:08.131798
34643565	207	175	58476	21700	807457	20056	2016	13	420 тыс. км	420	2	3.2	1	3	\N	6	f	/auto_iveco_35s1701_gruz_34643565.html		18	18	2023-06-12 20:35:35.150494	2023-06-12 20:35:35.150496
34506776	4	15	1082	8200	305122	7579	2013	0	121 тыс. км	121	1	1.6	2	2	\N	1	f	/auto_citroen_c4_34506776.html	VF7NC5FSхDYхххх81	11	11	2023-06-13 14:26:21.740181	2023-06-13 14:26:21.740182
34649351	6	84	3006	10800	401868	9982	2011	13	217 тыс. км	217	2	2	2	2	\N	1	f	/auto_volkswagen_cc_passat_cc_34649351.html	WVWZZZ3CхCEхххх59	10	10	2023-06-13 20:40:42.766992	2023-06-13 20:40:42.766993
34650323	212	177	37865	23590	879906	21699	2012	0	1100 тыс. км	1100	0	12	2	\N	\N	6	f	/auto_man_18_440_34650323.html	WMA13XZZxCWxxxx96	18	55	2023-06-13 23:27:37.738161	2023-06-13 23:27:37.738161
34651838	5	67	636	3900	145509	3587	2006	0	363 тыс. км	363	4	1.6	1	2	\N	1	f	/auto_seat_leon_34651838.html	VSSZZZ1Px7Zxxxx18	10	10	2023-06-14 11:19:14.241227	2023-06-14 11:19:14.241231
1911517	4	24	237	5300	197213	4898	1995	1	135 тыс. км	135	1	1.4	1	\N	\N	1	f	/auto_ford_escort_1911517.html		1	1	2023-06-14 11:19:14.733681	2023-06-14 11:19:14.733688
1910906	3	85	810	4000	148840	3697	1993	1	280 тыс. км	280	1	2.5	1	\N	\N	0	f	/auto_volvo_850_1910906.html		15	15	2023-06-14 11:19:14.809184	2023-06-14 11:19:14.809187
1910319	3	79	702	5800	215818	5361	1996	1	1 тыс. км	1	1	1.3	1	\N	\N	0	f	/auto_toyota_corolla_1910319.html		12	12	2023-06-14 11:19:16.015031	2023-06-14 11:19:16.01504
1910418	3	13	1052	0	0	0	2005	1	107 тыс. км	107	1	1.6	1	\N	\N	1	f	/auto_chevrolet_lacetti_1910418.html		8	409	2023-06-14 11:19:16.697266	2023-06-14 11:19:16.697272
1916467	5	9	96	85500	3181455	79023	2008	1	9 тыс. км	9	2	3	2	\N	\N	0	f	/auto_bmw_x5_1916467.html		12	12	2023-06-14 11:19:17.259552	2023-06-14 11:19:17.259556
1891612	4	24	250	4500	167445	4159	1987	1	202 тыс. км	202	4	2	1	\N	\N	0	f	/auto_ford_scorpio_1891612.html		10	10	2023-06-14 11:19:17.555565	2023-06-14 11:19:17.55557
34654136	8	62	60014	14650	546884	13470	2013	0	260 тыс. км	260	2	2	1	2	\N	1	f	/auto_renault_trafic_34654136.html	VF1JLB7BxDYxxxx27	25	25	2023-06-14 17:04:40.954428	2023-06-14 17:04:40.95443
34307756	8	58	63875	3200	119072	2958	2005	0	550 тыс. км	550	4	0	1	2	\N	1	f	/auto_peugeot_partner_34307756.html	VF3GBKFWх96хххх33	7	7	2023-06-14 17:04:41.290755	2023-06-14 17:04:41.290758
34308071	8	56	59894	1100	40931	1017	2006	0	230 тыс. км	230	2	1.3	1	2	\N	1	t	/auto_opel_combo_34308071.html	W0L0XCF2х63хххх39	22	22	2023-06-14 17:04:41.859098	2023-06-14 17:04:41.859108
34483137	3	18	161	3700	138121	3398	2003	0	96 тыс. км	96	1	1.6	1	2	\N	1	f	/auto_daewoo_lanos_34483137.html	KLATF696x3Bxxxx53	7	7	2023-06-14 22:12:40.192934	2023-06-14 22:12:40.192938
34656340	307	70	3167	5100	189771	4714	2008	13	230 тыс. км	230	1	1.8	1	2	\N	1	f	/auto_skoda_superb_34656340.html	TMBDL23U08B302472	22	160	2023-06-14 22:29:27.883606	2023-06-14 22:29:27.883607
34656344	2	188	36194	3600	133956	3327	2011	13	133 тыс. км	133	4	1.6	1	2	\N	1	f	/auto_bogdan_2111_34656344.html	Y6L211140BL209788	11	83	2023-06-14 22:29:27.920874	2023-06-14 22:29:27.920875
34656345	5	37	45955	23800	885598	21997	2016	13	196 тыс. км	196	2	2.2	2	1	\N	1	f	/auto_land_rover_discovery_sport_34656345.html	SALCA2BC0GH633325	3	433	2023-06-14 22:29:27.922689	2023-06-14 22:29:27.92269
18850284	70	1583	29153	42000	1562820	38818	1991	0	3 тыс. км	3	2	7.64	2	2	\N	10	f	/auto_john_deere_1188_18850284.html		18	55	2023-06-14 22:29:27.932053	2023-06-14 22:29:27.932055
34483286	5	67	49222	23000	855830	21258	2017	0	38 тыс. км	38	1	1.4	2	2	\N	1	f	/auto_seat_ateca_34483286.html	VSSZZZ5FZH6541204	7	7	2023-06-14 22:29:28.413116	2023-06-14 22:29:28.41312
34023316	3	6	43	1800	67194	1653	1988	0	340 тыс. км	340	4	1.8	1	2	\N	1	f	/auto_audi_80_34023316.html	WAUZZZ89xJAxxxx49	4	4	2023-06-15 00:16:55.94605	2023-06-15 00:16:55.946051
34656861	2	70	652	5650	210237	5222	2008	13	247 тыс. км	247	2	1.9	1	2	\N	1	f	/auto_skoda_octavia_34656861.html	TMBGS21Z482186771	18	18	2023-06-15 00:16:56.13545	2023-06-15 00:16:56.135451
34656867	3	48	425	14500	539545	13402	2013	13	143 тыс. км	143	1	1.8	2	3	\N	1	f	/auto_mercedes_benz_c_class_34656867.html		10	610	2023-06-15 00:16:56.204744	2023-06-15 00:16:56.204745
34656864	3	33	58260	17000	632570	15712	2016	0	200 тыс. км	200	3	0	2	2	\N	1	f	/auto_kia_k5_34656864.html	KNAGS416BGA070291	1	30	2023-06-15 00:16:56.205049	2023-06-15 00:16:56.20505
34656827	5	37	348	44500	1655845	41129	2017	8	64 тыс. км	64	2	3	2	1	\N	1	f	/auto_land_rover_discovery_34656827.html	SALRRBBK6HA027709	11	11	2023-06-15 00:16:56.204337	2023-06-15 00:16:56.204338
34656802	3	52	457	3650	135817	3373	2004	8	230 тыс. км	230	4	2	1	\N	\N	1	f	/auto_mitsubishi_lancer_34656802.html	JMBSNCS9A4U000696	11	72	2023-06-15 00:16:56.210914	2023-06-15 00:16:56.210915
34483859	4	52	452	4550	169306	4205	2010	0	163 тыс. км	163	4	1.3	1	2	\N	1	f	/auto_mitsubishi_colt_34483859.html	XMCXNZ33х9Fхххх48	18	18	2023-06-15 00:16:56.209275	2023-06-15 00:16:56.209277
34656815	307	56	1523	3850	143259	3558	2003	13	420 тыс. км	420	1	1.8	1	2	\N	1	f	/auto_opel_vectra_34656815.html	W0L0ZCF6838044906	3	430	2023-06-15 00:16:56.20889	2023-06-15 00:16:56.208891
33306403	3	88	856	2500	93025	2311	2001	0	256 тыс. км	256	4	1.5	1	2	\N	1	t	/auto_vaz_lada_2110_33306403.html	XTA21103х20хххх81	12	12	2023-06-15 00:16:56.251606	2023-06-15 00:16:56.251607
34656806	3	79	700	2700	100467	2495	1994	13	546 тыс. км	546	1	0	1	2	\N	1	f	/auto_toyota_carina_e_34656806.html	SB153ABK00E086491	12	12	2023-06-15 00:16:56.254666	2023-06-15 00:16:56.254667
34471490	5	79	2090	16300	606523	15065	2012	0	137 тыс. км	137	4	3.5	2	2	\N	1	t	/auto_toyota_highlander_34471490.html	5TDZK3EH1DS103741	14	14	2023-06-15 00:16:56.264881	2023-06-15 00:16:56.264882
1916590	3	13	1038	6500	241865	6008	2005	1	99 тыс. км	99	4	1.5	1	\N	\N	1	f	/auto_chevrolet_aveo_1916590.html		6	560	2023-06-15 00:16:56.365739	2023-06-15 00:16:56.365741
34483713	2	56	1508	6500	242645	5970	2009	0	227 тыс. км	227	1	1.8	1	2	\N	1	f	/auto_opel_astra_34483713.html	W0L0AHL3x95xxxx89	16	16	2023-06-15 00:16:56.588461	2023-06-15 00:16:56.588463
34142303	5	76	672	10000	373300	9185	2006	0	275 тыс. км	275	1	2	2	1	\N	1	f	/auto_suzuki_grand_vitara_34142303.html	JSAJTD54x00xxxx94	3	3	2023-06-15 00:16:56.597913	2023-06-15 00:16:56.597915
34483744	5	185	37427	3350	125055	3077	2013	0	117 тыс. км	117	4	1.5	1	2	\N	1	f	/auto_geely_mk_cross_34483744.html	Y7WJL715xD0xxxx02	1	1	2023-06-15 00:16:56.599833	2023-06-15 00:16:56.599835
34483845	449	56	1505	3400	126922	3123	2001	0	134 тыс. км	134	1	1	1	\N	\N	1	f	/auto_opel_agila_34483845.html	W0L0HAF6x1Gxxxx90	5	5	2023-06-15 00:16:56.601536	2023-06-15 00:16:56.601538
34483714	3	29	291	2100	78393	1928	1994	0	250 тыс. км	250	1	1.5	1	2	\N	1	f	/auto_hyundai_pony_34483714.html	KMHVF21JxRUxxxx82	10	10	2023-06-15 00:16:56.601017	2023-06-15 00:16:56.601019
34483823	3	62	586	5999	223942	5510	2006	0	278 тыс. км	278	4	1.4	1	2	\N	1	f	/auto_renault_megane_34483823.html	VF1LM1A0x36xxxx06	11	76	2023-06-15 00:16:56.629151	2023-06-15 00:16:56.629153
34483875	3	9	3219	27000	1004670	24955	2017	0	134 тыс. км	134	1	3	2	3	\N	1	t	/auto_bmw_3_series_34483875.html	WBA8B3G5XJNV01284	10	10	2023-06-15 00:16:56.827242	2023-06-15 00:16:56.827248
34473369	4	55	36565	12000	446520	11091	2016	0	125 тыс. км	125	6	0	2	2	\N	1	f	/auto_nissan_leaf_34473369.html	1N4BZ0CP0GC307139	10	10	2023-06-15 00:16:56.834159	2023-06-15 00:16:56.834162
34642838	4	84	2813	14200	528240	13075	2014	0	220 тыс. км	220	1	2	2	2	\N	1	f	/auto_volkswagen_golf_gti_34642838.html	3VW4T7AUxFMxxxx35	24	24	2023-06-12 18:41:08.131281	2023-06-12 18:41:08.131282
34643563	3	9	3219	3850	143259	3558	2000	13	390 тыс. км	390	2	2	1	3	\N	1	f	/auto_bmw_3_series_34643563.html	WBAAL71010KG43092	4	505	2023-06-12 20:35:35.156436	2023-06-12 20:35:35.156437
34643579	8	84	2093	6500	241865	6008	2005	0	184 тыс. км	184	1	1.6	1	2	\N	1	f	/auto_volkswagen_touran_34643579.html	WVGZZZ1TZ4W100670	6	546	2023-06-12 20:35:35.406359	2023-06-12 20:35:35.406362
33919586	200	177	30551	37300	1387933	34474	2011	0	899 тыс. км	899	0	0	2	\N	\N	6	f	/auto_man_tgx_33919586.html		16	16	2023-06-12 20:35:35.425978	2023-06-12 20:35:35.42598
34643547	4	84	786	3500	130200	3222	2000	0	221 тыс. км	221	1	1.4	2	2	\N	1	f	/auto_volkswagen_lupo_34643547.html	WVWZZZ6XxXWxxxx31	5	5	2023-06-12 20:35:35.698314	2023-06-12 20:35:35.698316
34643532	5	70	56023	14300	531960	13167	2021	0	115 тыс. км	115	4	1.6	1	2	\N	1	f	/auto_skoda_kamiq_34643532.html	TMBGC4NWxN3xxxx04	10	10	2023-06-12 20:35:35.711005	2023-06-12 20:35:35.711007
34643569	3	52	457	2900	107909	2680	1996	0	321 тыс. км	321	1	1.3	2	2	\N	1	f	/auto_mitsubishi_lancer_34643569.html	JMBSRCK1ATU000450	12	12	2023-06-12 20:35:35.942957	2023-06-12 20:35:35.942963
34643184	5	48	3048	32900	1224209	30408	2004	0	257 тыс. км	257	4	5	2	1	\N	1	f	/auto_mercedes_benz_g_class_34643184.html	WDB4632481X155117	10	10	2023-06-12 20:35:35.987743	2023-06-12 20:35:35.987745
34487265	449	56	1515	5350	199074	4945	2008	0	185 тыс. км	185	1	1.4	1	2	\N	1	f	/auto_opel_meriva_34487265.html	W0L0XCE7х84хххх80	15	15	2023-06-12 20:35:36.028802	2023-06-12 20:35:36.028804
1911405	5	48	3048	105000	3907050	97045	2007	1	42 тыс. км	42	1	5	2	\N	\N	0	f	/auto_mercedes_benz_g_class_1911405.html		10	10	2023-06-12 20:35:36.100686	2023-06-12 20:35:36.100689
1913881	4	84	784	222	8261	205	2003	1	70 тыс. км	70	6	1.6	5	\N	\N	0	t	/auto_volkswagen_golf_i_1913881.html		10	10	2023-06-12 20:35:36.301324	2023-06-12 20:35:36.301336
34643538	4	88	859	1750	65100	1611	2005	0	310 тыс. км	310	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2113_samara_34643538.html	XTA21130x54xxxx96	8	8	2023-06-12 20:35:36.522116	2023-06-12 20:35:36.522118
34643543	2	88	842	2200	81840	2025	2008	0	400 тыс. км	400	1	1.6	1	2	\N	1	f	/auto_vaz_lada_1117_kalina_34643543.html	XTA11173x80xxxx54	5	5	2023-06-12 20:35:36.531965	2023-06-12 20:35:36.531967
34643522	3	85	817	10800	401760	9944	2011	0	189 тыс. км	189	1	2	2	2	\N	1	f	/auto_volvo_s80_34643522.html	YV1AS475xC1xxxx16	24	527	2023-06-12 20:35:36.541732	2023-06-12 20:35:36.541733
34643511	197	84	64461	4700	174840	4327	2000	0	321 тыс. км	321	2	2.5	1	2	\N	6	f	/auto_volkswagen_transporter_34643511.html	WV1ZZZ70xYHxxxx94	10	10	2023-06-12 20:35:36.550562	2023-06-12 20:35:36.550563
34643288	3	9	3219	10900	405589	10074	2011	0	176 тыс. км	176	1	3	2	1	\N	1	t	/auto_bmw_3_series_34643288.html	WBAPK5G5хBNхххх00	5	291	2023-06-12 20:35:36.760631	2023-06-12 20:35:36.760641
34056627	449	58	37443	4050	150701	3743	2005	0	66 тыс. км	66	1	1.4	1	2	\N	1	f	/auto_peugeot_1007_34056627.html	VF3KMKFVх20хххх95	5	5	2023-06-12 20:35:36.783605	2023-06-12 20:35:36.783607
31921054	195	177	3287	21639	805200	20000	2011	0	826 тыс. км	826	2	4.6	2	3	\N	6	f	/auto_man_tgl_31921054.html		25	25	2023-06-12 20:35:36.870667	2023-06-12 20:35:36.870669
34630767	5	47	37381	9999	372063	9242	2017	0	115 тыс. км	115	1	2.5	3	\N	\N	1	t	/auto_mazda_cx_5_34630767.html		10	210	2023-06-12 20:35:37.385629	2023-06-12 20:35:37.385636
34646887	5	128	45132	26700	993507	24677	2016	8	77 тыс. км	77	1	3.5	2	1	\N	1	t	/auto_infiniti_qx60_34646887.html	5N1DL0MMXHC515387	10	10	2023-06-13 14:26:21.742611	2023-06-13 14:26:21.742612
34649333	4	84	35449	5600	208376	5176	2004	8	217 тыс. км	217	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34649333.html	WWWZZZ1KZ5W020276	1	1	2023-06-13 20:40:42.767055	2023-06-13 20:40:42.767055
34650325	5	9	96	38000	1417400	34954	2015	0	150 тыс. км	150	2	3	2	1	\N	1	f	/auto_bmw_x5_34650325.html		1	1	2023-06-13 23:27:37.738633	2023-06-13 23:27:37.738634
34650343	5	38	1344	298000	11115400	274115	2022	0	2 тыс. км	2	2	3.3	2	1	\N	1	f	/auto_lexus_lx_34650343.html	JTJPABCXx04xxxx32	11	11	2023-06-13 23:27:37.779124	2023-06-13 23:27:37.779126
34473472	3	79	702	7800	290238	7209	2007	0	282 тыс. км	282	4	1.6	1	2	\N	1	f	/auto_toyota_corolla_34473472.html	JTNBV56E302040373	10	10	2023-06-13 23:27:37.906745	2023-06-13 23:27:37.906747
34650336	2	62	586	7100	264830	6530	2011	0	280 тыс. км	280	2	1.5	1	2	\N	1	t	/auto_renault_megane_34650336.html	VF1KZ5G0x45xxxx96	5	617	2023-06-13 23:27:38.584125	2023-06-13 23:27:38.584126
34650321	5	9	96	18900	704970	17385	2007	0	350 тыс. км	350	2	3	2	1	\N	1	f	/auto_bmw_x5_34650321.html	WBAFF410x0Lxxxx16	11	11	2023-06-13 23:27:38.596181	2023-06-13 23:27:38.596182
34650315	5	32	315	3600	134280	3311	2006	0	250 тыс. км	250	2	3	1	\N	\N	1	t	/auto_jeep_grand_cherokee_34650315.html	1J8HCE8Mx6Yxxxx29	5	306	2023-06-13 23:27:38.622065	2023-06-13 23:27:38.622066
34650271	5	79	715	33800	1257698	31239	2019	13	82 тыс. км	82	5	2.5	2	2	\N	1	f	/auto_toyota_rav4_34650271.html	JTMW23FV40D016039	1	1	2023-06-13 23:27:38.843137	2023-06-13 23:27:38.84314
34650295	6	47	398	2650	98607	2449	1994	13	260 тыс. км	260	4	1.6	1	2	\N	1	f	/auto_mazda_mx_3_34650295.html		9	9	2023-06-13 23:27:38.857656	2023-06-13 23:27:38.857658
34650286	5	84	2692	17600	654896	16267	2015	13	199 тыс. км	199	1	2	3	1	\N	1	t	/auto_volkswagen_tiguan_34650286.html	WVGBV7AXXFW086501	12	12	2023-06-13 23:27:38.904629	2023-06-13 23:27:38.904631
34650243	3	9	2319	24400	910119	22444	2014	0	158 тыс. км	158	2	2	3	1	\N	1	f	/auto_bmw_5_series_34650243.html	WBA5C910x0Dxxxx85	8	416	2023-06-13 23:27:39.544295	2023-06-13 23:27:39.544297
34649916	3	88	850	900	33489	832	1998	13	160 тыс. км	160	1	1.5	1	3	\N	1	f	/auto_vaz_lada_2105_34649916.html		3	3	2023-06-13 23:27:39.788632	2023-06-13 23:27:39.788633
34650273	5	84	793	55700	2072597	51480	2018	13	89 тыс. км	89	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34650273.html	WVGZZZCRZKD012274	6	6	2023-06-13 23:27:39.804687	2023-06-13 23:27:39.804688
34650258	4	13	1038	4500	167445	4159	2008	0	205 тыс. км	205	4	1.5	1	\N	\N	1	f	/auto_chevrolet_aveo_34650258.html	KL1SF48YE9B304744	14	14	2023-06-13 23:27:39.816963	2023-06-13 23:27:39.816964
34650277	5	29	293	13950	519080	12893	2010	8	255 тыс. км	255	2	0	2	1	\N	1	f	/auto_hyundai_santa_fe_34650277.html	KMHSH81XхBUхххх94	7	7	2023-06-13 23:27:39.833909	2023-06-13 23:27:39.833911
34582153	198	48	35249	7200	267912	6655	2005	0	521 тыс. км	521	2	2.1	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_34582153.html	WDB9036632R814045	20	605	2023-06-13 23:27:39.934335	2023-06-13 23:27:39.934337
34650274	3	38	1343	10850	403729	10028	2008	8	258 тыс. км	258	1	3.5	3	2	\N	1	f	/auto_lexus_es_34650274.html	JTHBJ46G782172879	12	341	2023-06-13 23:27:40.539647	2023-06-13 23:27:40.539654
33576520	8	56	59894	5000	186050	4621	2009	0	304 тыс. км	304	2	1.3	1	2	\N	1	f	/auto_opel_combo_33576520.html	W0L0XCF2594205457	24	24	2023-06-13 23:27:40.588163	2023-06-13 23:27:40.588166
1894729	4	84	2377	13000	483730	12015	1999	1	172 тыс. км	172	2	1.9	1	\N	\N	0	f	/auto_volkswagen_new_beetle_1894729.html		19	19	2023-06-14 11:19:14.584011	2023-06-14 11:19:14.584013
1913757	3	386	2890	7200	267912	6655	2007	1	55 тыс. км	55	1	1.6	1	\N	\N	0	f	/auto_byd_f3_1913757.html		12	12	2023-06-14 11:19:14.751011	2023-06-14 11:19:14.751013
1907535	3	70	3167	14900	554429	13771	2002	1	115 тыс. км	115	2	2.5	1	\N	\N	0	f	/auto_skoda_superb_1907535.html		15	15	2023-06-14 11:19:14.794971	2023-06-14 11:19:14.794972
34642834	8	24	2036	5499	204562	5063	2004	0	227 тыс. км	227	1	1.6	1	2	\N	1	f	/auto_ford_c_max_34642834.html	WF0MXXGCxM4xxxx12	14	14	2023-06-12 18:41:08.132002	2023-06-12 18:41:08.132002
34643556	68	1586	45969	6300	234423	5823	2018	13	без пробега	0	0	0	1	1	\N	10	f	/auto_jinma_3244_34643556.html		9	405	2023-06-12 20:35:35.157422	2023-06-12 20:35:35.157423
34469038	3	38	1343	27300	1015833	25232	2016	0	100 тыс. км	100	1	3.5	2	2	\N	1	f	/auto_lexus_es_34469038.html	58ABK1GG5HU047965	11	11	2023-06-12 20:35:35.407875	2023-06-12 20:35:35.407879
34643564	2	62	586	9500	353495	8780	2013	8	235 тыс. км	235	2	1.5	2	2	\N	1	f	/auto_renault_megane_34643564.html		10	10	2023-06-12 20:35:35.471	2023-06-12 20:35:35.471003
1914043	3	88	855	3650	135817	3373	1995	13	94 тыс. км	94	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1914043.html		14	14	2023-06-12 20:35:36.068675	2023-06-12 20:35:36.068677
34643540	3	88	855	1651	61417	1520	2008	0	250 тыс. км	250	4	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34643540.html	Y6D21099x80xxxx26	6	560	2023-06-12 20:35:36.520279	2023-06-12 20:35:36.520281
34342012	5	9	3597	11500	427800	10589	2010	0	236 тыс. км	236	2	2	2	1	\N	1	f	/auto_bmw_x1_34342012.html	WBAVP310x0Vxxxx50	10	10	2023-06-12 20:35:36.537736	2023-06-12 20:35:36.537738
33981319	196	97	1790	12500	465000	11509	1990	0	235 тыс. км	235	2	0	1	\N	\N	6	f	/auto_kamaz_5511_33981319.html		16	16	2023-06-12 20:35:36.545043	2023-06-12 20:35:36.545045
34643325	3	56	3121	7700	286440	7090	2009	0	200 тыс. км	200	2	2	1	\N	\N	1	f	/auto_opel_insignia_34643325.html	W0LGS6EKxA1xxxx84	15	205	2023-06-12 20:35:36.586348	2023-06-12 20:35:36.58635
34643553	2	70	652	11999	446483	11090	2017	0	188 тыс. км	188	1	1.4	1	2	\N	1	f	/auto_skoda_octavia_34643553.html	TMBJC2NE1JB006391	7	7	2023-06-12 20:35:36.947057	2023-06-12 20:35:36.947058
34643525	3	84	39690	11950	444540	11003	2015	0	98 тыс. км	98	1	1.8	2	2	\N	1	f	/auto_volkswagen_passat_34643525.html	1VWAT7A3xFCxxxx99	14	14	2023-06-12 20:35:37.60765	2023-06-12 20:35:37.607652
34643196	4	56	1512	5299	197176	4898	2011	0	270 тыс. км	270	2	1.3	1	2	\N	1	f	/auto_opel_corsa_34643196.html	W0L0SDL08B6023434	10	10	2023-06-12 20:35:37.867992	2023-06-12 20:35:37.868001
34627736	17	2474	34879	11950	444660	11045	2008	0	12 тыс. км	12	1	1.73	1	5	\N	2	f	/auto_victory_vision_tour_34627736.html		2	141	2023-06-12 20:35:37.927114	2023-06-12 20:35:37.927116
34649346	197	62	59145	7500	279075	6932	2012	0	130 тыс. км	130	6	0	2	\N	\N	6	f	/auto_renault_kangoo_34649346.html	VF1FW0ZBC47717279	6	556	2023-06-13 20:40:42.767868	2023-06-13 20:40:42.767869
34412122	5	79	35000	22900	853025	21067	2007	0	245 тыс. км	245	4	4.7	2	1	\N	1	f	/auto_toyota_land_cruiser_34412122.html	JTMCT05Jx04xxxx52	10	10	2023-06-13 14:28:19.577604	2023-06-13 14:28:19.577605
27959364	2	62	56291	7300	271633	6747	2011	0	293 тыс. км	293	2	1.5	1	2	\N	1	f	/auto_renault_megane_scenic_27959364.html	VF1JZ3W0х45хххх45	14	28	2023-06-13 20:40:42.782523	2023-06-13 20:40:42.782525
32321893	4	24	239	9350	347914	8642	2018	0	77 тыс. км	77	1	1.6	2	2	\N	1	t	/auto_ford_fiesta_32321893.html	3FADP4EJ1KM105710	12	12	2023-06-13 20:40:43.079932	2023-06-13 20:40:43.079939
34385609	3	15	1082	5200	193492	4806	2010	0	290 тыс. км	290	1	1.6	4	2	\N	1	f	/auto_citroen_c4_34385609.html	VF7UA5FXHAJ555372	10	10	2023-06-13 14:28:19.773324	2023-06-13 14:28:19.773325
34646711	4	55	36565	9200	342332	8503	2014	13	78 тыс. км	78	6	0	2	2	\N	1	f	/auto_nissan_leaf_34646711.html		12	12	2023-06-13 14:28:19.829691	2023-06-13 14:28:19.829692
34649296	4	17	3166	3999	148803	3696	2012	0	187 тыс. км	187	4	1.2	1	\N	\N	1	f	/auto_dacia_sandero_34649296.html	UU1BSDM2P47341131	18	18	2023-06-13 20:40:43.569047	2023-06-13 20:40:43.569048
34646859	3	48	425	5400	200934	4991	2001	13	371 тыс. км	371	2	2.7	2	3	\N	1	f	/auto_mercedes_benz_c_class_34646859.html	WDB2030161A157783	10	10	2023-06-13 14:28:20.763523	2023-06-13 14:28:20.763532
34478207	5	84	2692	17200	640012	15897	2013	0	248 тыс. км	248	2	0	4	1	\N	1	f	/auto_volkswagen_tiguan_34478207.html	WVGZZZ5NZDW601062	24	24	2023-06-13 14:28:20.778685	2023-06-13 14:28:20.778687
34649292	2	70	652	8800	327448	8133	2010	0	298 тыс. км	298	2	0	1	2	\N	1	f	/auto_skoda_octavia_34649292.html	TMBHT61Z7A8039052	10	220	2023-06-13 20:40:43.575701	2023-06-13 20:40:43.575702
34646857	5	9	96	15500	576755	14326	2008	8	248 тыс. км	248	2	3	2	1	\N	1	f	/auto_bmw_x5_34646857.html	WBAFF010X0L203898	11	11	2023-06-13 14:28:20.837079	2023-06-13 14:28:20.83708
34646847	25	1572	62940	1400	52094	1294	2016	13	15 тыс. км	15	1	2.5	1	6	\N	2	f	/auto_shineray_xy_250gy_6c_34646847.html	LXYJCNL07G0277094	6	6	2023-06-13 14:28:20.899616	2023-06-13 14:28:20.899618
34649325	8	84	64461	7900	293959	7302	2008	13	276 тыс. км	276	2	1.9	1	3	\N	1	f	/auto_volkswagen_transporter_34649325.html	WV1ZZZ7HZ8H011264	10	214	2023-06-13 20:40:43.597867	2023-06-13 20:40:43.597868
34646844	4	89	35257	457	17000	422	1991	13	111 тыс. км	111	0	0	1	2	\N	1	f	/auto_zaz_1102_tavriya_34646844.html		11	84	2023-06-13 14:28:21.674695	2023-06-13 14:28:21.674698
34646837	2	28	262	7500	279075	6932	2006	13	343 тыс. км	343	2	2.2	1	2	\N	1	f	/auto_honda_accord_34646837.html	JHMCN273х6Cхххх24	20	20	2023-06-13 14:28:21.696177	2023-06-13 14:28:21.696178
34646827	4	70	62633	6900	256749	6377	2013	0	106 тыс. км	106	4	1.4	1	2	\N	1	f	/auto_skoda_fabia_scout_34646827.html	TMBEC45JхEBхххх00	7	7	2023-06-13 14:28:21.701044	2023-06-13 14:28:21.701045
34646824	5	79	35004	28500	1060485	26341	2013	8	183 тыс. км	183	2	3	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34646824.html	JTEBH3FJх0Kхххх18	25	25	2023-06-13 14:28:21.839038	2023-06-13 14:28:21.83904
34474288	5	6	3222	16550	615826	15296	2013	0	255 тыс. км	255	1	2	2	1	\N	1	t	/auto_audi_q5_34474288.html	WA1LFAFP7DA098010	18	18	2023-06-13 20:40:43.699681	2023-06-13 20:40:43.699682
34451404	5	55	507	12800	477439	11774	2014	0	220 тыс. км	220	2	2	1	1	\N	1	f	/auto_nissan_x_trail_34451404.html	JN1TCNT3xU0xxxx17	4	511	2023-06-13 20:40:44.367289	2023-06-13 20:40:44.367295
34649306	3	52	457	9500	353495	8780	2015	0	160 тыс. км	160	4	2	2	2	\N	1	f	/auto_mitsubishi_lancer_34649306.html	JA32U2FU3FU014509	10	10	2023-06-13 20:40:44.639358	2023-06-13 20:40:44.639362
34537456	4	84	35449	6777	252172	6264	2007	0	268 тыс. км	268	2	1.9	1	2	\N	1	f	/auto_volkswagen_golf_34537456.html	WVWZZZ1Kх7Wхххх71	2	2	2023-06-13 20:40:44.65095	2023-06-13 20:40:44.650951
34649247	3	9	2319	15500	576755	14326	2011	13	162 тыс. км	162	1	3	2	1	\N	1	t	/auto_bmw_5_series_34649247.html		11	11	2023-06-13 20:40:44.742979	2023-06-13 20:40:44.74298
34649265	3	9	3219	9700	360937	8965	2011	13	270 тыс. км	270	1	3	2	1	\N	1	f	/auto_bmw_3_series_34649265.html	WBAPK7C50BF196110	10	234	2023-06-13 20:40:44.818568	2023-06-13 20:40:44.818569
34649152	195	29	53051	16800	625128	15527	2018	0	110 тыс. км	110	2	2.5	1	3	\N	6	f	/auto_hyundai_hd_35_34649152.html	JHMCU16609C206201	10	10	2023-06-13 20:40:45.231168	2023-06-13 20:40:45.231173
34046611	3	9	3219	7300	271633	6747	2007	0	250 тыс. км	250	1	2	2	3	\N	1	f	/auto_bmw_3_series_34046611.html	WBAVA510х0Vхххх39	18	50	2023-06-13 20:40:45.771006	2023-06-13 20:40:45.771008
34649266	4	24	240	7399	275317	6838	2013	0	209 тыс. км	209	1	1	1	2	\N	1	f	/auto_ford_focus_34649266.html	WF0KXXGCBKDA23057	11	11	2023-06-13 20:40:45.784121	2023-06-13 20:40:45.784122
34649260	8	84	2093	6500	241865	6008	2007	0	230 тыс. км	230	1	1.4	1	2	\N	1	f	/auto_volkswagen_touran_34649260.html	WVGZZZ1TZ7W086519	25	25	2023-06-13 20:40:45.793964	2023-06-13 20:40:45.793965
34650324	3	185	2533	2000	74600	1839	2007	0	306 тыс. км	306	4	1.5	1	2	\N	1	f	/auto_geely_ck_34650324.html	Y7CMR715x70xxxx34	10	10	2023-06-13 23:27:37.740727	2023-06-13 23:27:37.740729
34642833	5	48	2950	13300	494760	12246	2010	0	259 тыс. км	259	2	2.1	2	1	\N	1	f	/auto_mercedes_benz_glk_class_34642833.html	WDC20498x1Fxxxx16	5	5	2023-06-12 18:41:08.133449	2023-06-12 18:41:08.13345
34643572	4	15	2599	5300	197213	4898	2012	13	85 тыс. км	85	0	1	4	2	\N	1	f	/auto_citroen_c1_34643572.html	VF7PNCFB089603017	5	290	2023-06-12 20:35:35.41298	2023-06-12 20:35:35.412983
34643531	5	9	96	8800	327360	8102	2004	0	310 тыс. км	310	4	4.4	2	1	\N	1	f	/auto_bmw_x5_34643531.html	WBAFB510x0Lxxxx72	1	1	2023-06-12 20:35:35.709293	2023-06-12 20:35:35.709294
34237002	8	62	588	4500	167445	4159	2003	0	248 тыс. км	248	2	1.9	1	2	\N	1	f	/auto_renault_scenic_34237002.html	VF1JM0G0х29хххх45	1	602	2023-06-12 20:35:35.965683	2023-06-12 20:35:35.965685
34643568	3	48	425	13300	494893	12292	2011	8	233 тыс. км	233	1	3	2	1	\N	1	f	/auto_mercedes_benz_c_class_34643568.html		5	5	2023-06-12 20:35:35.982178	2023-06-12 20:35:35.98218
33610875	5	37	351	38999	1451153	36045	2013	0	154 тыс. км	154	2	3	2	1	\N	1	f	/auto_land_rover_range_rover_33610875.html	SALGA2FFхDAхххх00	11	11	2023-06-12 20:35:36.03273	2023-06-12 20:35:36.032732
34482877	5	79	35004	27500	1023275	25417	2011	0	200 тыс. км	200	4	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34482877.html	JTEBU3FJ805014533	11	11	2023-06-12 20:35:36.205317	2023-06-12 20:35:36.205324
34643546	2	56	1508	7200	267840	6629	2013	0	237 тыс. км	237	2	1.7	1	\N	\N	1	f	/auto_opel_astra_34643546.html	W0LPD8EKxE8xxxx05	16	242	2023-06-12 20:35:36.55651	2023-06-12 20:35:36.556511
33099791	2	84	39690	5000	186050	4621	2003	0	346 тыс. км	346	2	1.9	2	2	\N	1	f	/auto_volkswagen_passat_33099791.html	WVWZZZ3Bх3Eхххх89	15	205	2023-06-12 20:35:36.778672	2023-06-12 20:35:36.778677
34325157	5	37	3117	44499	1655808	41128	2016	0	108 тыс. км	108	2	3	2	1	\N	1	f	/auto_land_rover_range_rover_sport_34325157.html	SALWA2KF6GA661632	11	11	2023-06-12 20:35:36.858416	2023-06-12 20:35:36.858418
34523952	5	79	35000	35999	1339523	33272	2012	0	165 тыс. км	165	2	4.5	2	1	\N	1	f	/auto_toyota_land_cruiser_34523952.html	JTMHV05Jх04хххх18	10	10	2023-06-12 20:35:36.919769	2023-06-12 20:35:36.919773
34643537	9	52	1478	14500	539400	13351	2008	0	215 тыс. км	215	2	2.5	2	\N	\N	1	f	/auto_mitsubishi_l_200_34643537.html	MMBJRKB4x8Dxxxx77	22	165	2023-06-12 20:35:37.606973	2023-06-12 20:35:37.606977
34649279	3	88	855	650	24187	601	2005	13	250 тыс. км	250	1	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34649279.html		15	200	2023-06-13 20:40:42.766931	2023-06-13 20:40:42.766932
33573624	4	24	240	9500	353875	8739	2017	0	134 тыс. км	134	1	2	2	2	\N	1	t	/auto_ford_focus_33573624.html	1FADP3K2xHLxxxx03	20	20	2023-06-13 14:28:19.580104	2023-06-13 14:28:19.580106
34450003	3	88	31636	3000	111899	2759	2007	0	127 тыс. км	127	4	1.6	1	\N	\N	1	f	/auto_vaz_lada_2170_priora_34450003.html	XTA21703x80xxxx15	1	35	2023-06-13 20:40:43.346711	2023-06-13 20:40:43.346713
34649356	2	47	393	10800	401868	9982	2012	0	255 тыс. км	255	2	2.2	1	2	\N	1	f	/auto_mazda_6_34649356.html	JMZGJ691621109034	4	498	2023-06-13 20:40:43.552715	2023-06-13 20:40:43.552717
1915831	5	52	2684	24600	915366	22736	2007	1	45 тыс. км	45	4	3	3	\N	\N	0	f	/auto_mitsubishi_outlander_xl_1915831.html		18	18	2023-06-13 14:28:19.77172	2023-06-13 14:28:19.771726
34649323	3	9	2319	17000	632570	15712	2010	0	106 тыс. км	106	2	2	2	\N	\N	1	f	/auto_bmw_5_series_34649323.html	WBAFW11070C279262	12	12	2023-06-13 20:40:43.585096	2023-06-13 20:40:43.585097
34649305	3	62	586	5050	187911	4667	2007	0	230 тыс. км	230	0	0	1	2	\N	1	f	/auto_renault_megane_34649305.html	VF1LM0B0H40272427	22	168	2023-06-13 20:40:43.598312	2023-06-13 20:40:43.598314
34574626	3	2233	47858	37000	1378250	34039	2019	0	40 тыс. км	40	6	0	4	1	\N	1	t	/auto_tesla_model_3_34574626.html	5YJ3E1EBxKFxxxx25	7	7	2023-06-13 14:28:20.427744	2023-06-13 14:28:20.427746
34645693	2	70	652	8800	327448	8133	2008	0	204 тыс. км	204	2	1.9	2	2	\N	1	f	/auto_skoda_octavia_34645693.html	TMBGS61Zх82хххх60	10	10	2023-06-13 14:28:20.883593	2023-06-13 14:28:20.883593
34649294	449	84	2093	10500	390705	9705	2011	0	255 тыс. км	255	2	1.6	1	2	\N	1	f	/auto_volkswagen_touran_34649294.html	WVGZZZ1TZCW030536	18	18	2023-06-13 20:40:43.64321	2023-06-13 20:40:43.643212
34649336	4	84	35449	5799	215781	5360	2004	0	214 тыс. км	214	4	0	1	2	\N	1	f	/auto_volkswagen_golf_34649336.html	WVWZZZ1Kх4Wхххх16	7	7	2023-06-13 20:40:43.787132	2023-06-13 20:40:43.787134
34649304	307	70	652	17800	662338	16452	2017	0	92 тыс. км	92	1	1.4	2	2	\N	1	f	/auto_skoda_octavia_34649304.html	TMBAC2NE4JB008426	6	6	2023-06-13 20:40:44.643784	2023-06-13 20:40:44.643786
34649099	2	24	240	6900	256749	6377	2012	0	197 тыс. км	197	1	1.6	1	2	\N	1	f	/auto_ford_focus_34649099.html	WF0LXXGCхLCхххх90	10	210	2023-06-13 20:40:44.655421	2023-06-13 20:40:44.655429
34300372	3	75	666	12699	472530	11737	2017	0	63 тыс. км	63	1	2.5	2	1	\N	1	t	/auto_subaru_legacy_34300372.html		10	10	2023-06-13 20:40:44.743893	2023-06-13 20:40:44.743895
34649177	3	24	246	3500	130235	3235	2001	0	209 тыс. км	209	2	2	1	2	\N	1	f	/auto_ford_mondeo_34649177.html	WF04XXGBB41E21057	12	341	2023-06-13 20:40:44.819159	2023-06-13 20:40:44.81916
34476121	5	37	351	46900	1745149	43347	2014	0	129 тыс. км	129	2	3	2	1	\N	1	f	/auto_land_rover_range_rover_34476121.html	SALGA2FF5EA151736	10	10	2023-06-13 20:40:45.309315	2023-06-13 20:40:45.309322
32668699	4	62	3566	5700	212097	5268	2011	0	99 тыс. км	99	4	1.4	1	2	\N	1	f	/auto_renault_sandero_32668699.html	VF1BSRAAH45318416	5	5	2023-06-13 20:40:45.785791	2023-06-13 20:40:45.785793
32146197	198	48	64195	10800	401868	9982	1996	0	740 тыс. км	740	2	11	1	3	\N	6	f	/auto_mercedes_benz_mk_series_32146197.html	WDB65245х1Kхххх71	25	25	2023-06-13 20:40:45.826621	2023-06-13 20:40:45.826623
34650240	3	84	39690	3700	138010	3403	1999	0	350 тыс. км	350	4	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34650240.html	WVWZZZ3BxYPxxxx59	10	10	2023-06-13 23:27:37.739452	2023-06-13 23:27:37.739454
1914638	3	13	1038	5800	215818	5361	2005	1	95 тыс. км	95	1	1.5	1	\N	\N	0	f	/auto_chevrolet_aveo_1914638.html		10	10	2023-06-14 11:19:14.844576	2023-06-14 11:19:14.844577
1913749	3	88	851	417	15500	385	1985	1	85 тыс. км	85	1	1.6	1	\N	\N	0	f	/auto_vaz_lada_2106_1913749.html		13	104	2023-06-14 11:19:14.991248	2023-06-14 11:19:14.991251
34686831	307	70	652	5700	212097	5268	2005	8	356 тыс. км	356	2	1.9	1	2	\N	1	f	/auto_skoda_octavia_34686831.html	TMBDG41U06B061741	20	361	2023-06-20 11:39:48.078752	2023-06-20 11:39:48.078753
1914626	5	79	35002	61700	2295857	57026	2008	1	19 тыс. км	19	1	4.7	3	\N	\N	0	f	/auto_toyota_land_cruiser_200_1914626.html		11	11	2023-06-14 11:19:15.768288	2023-06-14 11:19:15.768291
1910794	3	84	781	10000	372100	9242	2001	1	100 тыс. км	100	1	1.6	1	\N	\N	0	f	/auto_volkswagen_bora_1910794.html		11	11	2023-06-14 11:19:16.027195	2023-06-14 11:19:16.027197
1914633	3	58	520	8500	316285	7856	2007	1	30 тыс. км	30	1	1.4	1	\N	\N	0	f	/auto_peugeot_206_1914633.html		11	11	2023-06-14 11:19:17.214702	2023-06-14 11:19:17.214709
33294219	7	48	428	23300	869789	21402	2014	0	85 тыс. км	85	1	3	2	3	\N	1	t	/auto_mercedes_benz_e_class_33294219.html	WDDKK6FFxFFxxxx11	12	12	2023-06-14 22:12:37.701359	2023-06-14 22:12:37.701361
34656245	3	33	323	7300	271633	6747	2013	13	137 тыс. км	137	4	1.4	1	2	\N	1	f	/auto_kia_rio_34656245.html		11	76	2023-06-14 22:12:37.857078	2023-06-14 22:12:37.857081
34656268	12	28	55187	1600	59536	1479	2014	0	31 тыс. км	31	1	0.12	5	5	\N	2	f	/auto_honda_pcx_125_34656268.html		12	336	2023-06-14 22:12:37.864818	2023-06-14 22:12:37.86482
34656217	5	55	2197	14600	543266	13494	2015	13	233 тыс. км	233	2	1.5	1	\N	\N	1	f	/auto_nissan_qashqai_34656217.html	SJNFAAJ11U1384431	5	5	2023-06-14 22:12:37.875048	2023-06-14 22:12:37.87505
34131821	8	62	59145	3500	130200	3222	2000	0	325 тыс. км	325	2	1.9	1	2	\N	1	f	/auto_renault_kangoo_34131821.html	VF1FC0UAx22xxxx90	4	504	2023-06-12 19:10:52.514006	2023-06-12 19:10:52.514008
32933844	4	71	28289	12900	479880	11878	2018	0	25 тыс. км	25	6	0	2	3	\N	1	f	/auto_smart_forfour_32933844.html	WME45309x1Yxxxx71	10	10	2023-06-12 19:10:52.54474	2023-06-12 19:10:52.544742
34470632	307	70	652	10500	390600	9668	2014	0	201 тыс. км	201	1	1.4	1	2	\N	1	f	/auto_skoda_octavia_34470632.html	TMBAC2NExEBxxxx75	20	366	2023-06-12 19:10:52.552663	2023-06-12 19:10:52.552665
34643088	5	24	2874	10900	405589	10074	2011	13	124 тыс. км	124	2	2	2	1	\N	1	f	/auto_ford_kuga_34643088.html	WF0RXXGCDRBM10806	18	18	2023-06-12 19:10:53.009509	2023-06-12 19:10:53.009511
34242990	3	9	2319	16700	621407	15435	2010	0	240 тыс. км	240	2	3	2	\N	\N	1	f	/auto_bmw_5_series_34242990.html	WBAFW310х0Cхххх02	15	15	2023-06-12 19:10:53.08378	2023-06-12 19:10:53.083781
33418520	5	6	3222	15200	565592	14048	2011	0	350 тыс. км	350	2	2	2	1	\N	1	f	/auto_audi_q5_33418520.html	WAUZZZ8RхBAхххх41	3	3	2023-06-12 19:10:53.159548	2023-06-12 19:10:53.159549
34643520	5	84	793	17000	632400	15653	2012	0	200 тыс. км	200	4	3.6	2	1	\N	1	f	/auto_volkswagen_touareg_34643520.html	WVGFF9BPxCDxxxx05	10	10	2023-06-12 20:35:37.658464	2023-06-12 20:35:37.658467
33024941	2	85	36922	19200	715200	17663	2014	0	200 тыс. км	200	5	2.4	2	1	\N	1	f	/auto_volvo_v60_33024941.html	YV1GWAA5xE1xxxx57	5	5	2023-06-13 14:28:19.578449	2023-06-13 14:28:19.57845
34646893	5	85	824	13299	494856	12292	2007	0	288 тыс. км	288	2	2.4	2	1	\N	1	f	/auto_volvo_xc90_34646893.html	YV1CM714681419248	10	10	2023-06-13 14:28:19.682133	2023-06-13 14:28:19.682135
34649222	5	55	2228	10550	392566	9751	2016	8	121 тыс. км	121	1	0	2	1	\N	1	t	/auto_nissan_rogue_34649222.html	5N1AT2MV9GC869214	10	10	2023-06-13 20:40:42.769365	2023-06-13 20:40:42.769366
34650326	5	84	2692	9800	365540	9014	2010	0	163 тыс. км	163	1	1.4	1	1	\N	1	f	/auto_volkswagen_tiguan_34650326.html		11	11	2023-06-13 23:27:37.743046	2023-06-13 23:27:37.743047
34153224	307	2233	31567	62000	2309500	57038	2020	0	27 тыс. км	27	6	0	2	1	\N	1	t	/auto_tesla_model_s_34153224.html	5YJSA1E4xMFxxxx30	10	10	2023-06-13 14:28:20.426005	2023-06-13 14:28:20.426007
1909094	3	88	851	2000	74420	1848	1995	1	200 тыс. км	200	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_2106_1909094.html		12	12	2023-06-14 11:19:14.988377	2023-06-14 11:19:14.98838
1902800	5	48	1715	110000	4093100	101667	2008	1	3 тыс. км	3	1	6.3	2	\N	\N	0	f	/auto_mercedes_benz_glc_400_1902800.html		10	10	2023-06-14 11:19:15.258765	2023-06-14 11:19:15.258774
1912040	4	24	250	2100	78141	1941	1986	5	300 тыс. км	300	1	2	1	\N	\N	0	f	/auto_ford_scorpio_1912040.html		17	17	2023-06-14 11:19:15.767162	2023-06-14 11:19:15.767166
34346566	5	85	2908	16500	613965	15250	2012	0	186 тыс. км	186	2	2	1	2	\N	1	f	/auto_volvo_xc60_34346566.html	YV1DZ88AхD2хххх92	15	15	2023-06-13 14:28:20.883334	2023-06-13 14:28:20.883335
34646822	3	13	1038	4500	167445	4159	2007	0	230 тыс. км	230	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34646822.html	Y6DSF69YE8B060053	14	14	2023-06-13 14:28:21.691956	2023-06-13 14:28:21.691958
34646836	5	84	793	14350	533964	13263	2012	8	231 тыс. км	231	1	3.6	2	1	\N	1	f	/auto_volkswagen_touareg_34646836.html	WVGEF9BP0DD006104	22	161	2023-06-13 14:28:21.698176	2023-06-13 14:28:21.698177
34162595	307	70	3167	19999	744163	18484	2017	0	188 тыс. км	188	1	2	2	2	\N	1	f	/auto_skoda_superb_34162595.html	TMBAD8NP8JB300064	10	10	2023-06-13 14:28:21.825196	2023-06-13 14:28:21.825199
34527827	2	84	35449	6850	254889	6331	2009	0	259 тыс. км	259	2	1.9	1	2	\N	1	f	/auto_volkswagen_golf_34527827.html	WVWZZZ1KZ9M312388	1	1	2023-06-13 14:28:22.64061	2023-06-13 14:28:22.640619
1895382	3	70	652	8500	316285	7856	2008	1	65 тыс. км	65	1	1.6	1	\N	\N	0	t	/auto_skoda_octavia_1895382.html		10	213	2023-06-14 11:19:17.437503	2023-06-14 11:19:17.437507
1913099	3	88	852	3000	111630	2773	2006	1	100 тыс. км	100	4	1.5	1	\N	\N	0	f	/auto_vaz_lada_2107_1913099.html		23	482	2023-06-14 11:19:18.244137	2023-06-14 11:19:18.244142
1908044	5	155	1607	6900	256749	6377	2007	1	33 тыс. км	33	1	1.7	1	\N	\N	0	f	/auto_niva_rostselmash_sk5_1908044.html		14	14	2023-06-14 11:19:18.472765	2023-06-14 11:19:18.472768
34282131	4	24	239	11499	429257	10562	2019	0	33 тыс. км	33	1	1.6	2	2	\N	1	t	/auto_ford_fiesta_34282131.html	3FADP4EJxKMxxxx20	14	14	2023-06-14 22:12:37.704257	2023-06-14 22:12:37.704258
34656249	2	6	49	16650	619547	15389	2012	8	336 тыс. км	336	2	3	2	\N	\N	1	f	/auto_audi_a6_34656249.html	WAUZZZ4GхDNхххх60	18	18	2023-06-14 22:12:37.868962	2023-06-14 22:12:37.868964
34656262	3	88	850	1550	57676	1433	1988	0	113 тыс. км	113	0	1.3	1	3	\N	1	f	/auto_vaz_lada_2105_34656262.html	XTA21050хK1хххх52	14	14	2023-06-14 22:12:37.872479	2023-06-14 22:12:37.872481
34656261	5	24	2874	23000	855830	21258	2019	13	22 тыс. км	22	2	1.5	2	2	\N	1	f	/auto_ford_kuga_34656261.html	WF0AXXWPхAKхххх93	10	650	2023-06-14 22:12:37.878539	2023-06-14 22:12:37.878541
34656247	4	24	240	5388	200487	4980	2008	13	250 тыс. км	250	2	1.6	1	2	\N	1	f	/auto_ford_focus_34656247.html	WF0PXXGCDP8G37081	5	294	2023-06-14 22:12:37.883837	2023-06-14 22:12:37.883839
34656267	3	18	161	1780	66234	1645	2008	13	176 тыс. км	176	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34656267.html	Y6DTF69YD8W405890	5	5	2023-06-14 22:12:37.936055	2023-06-14 22:12:37.936057
34483252	3	56	509	1300	48373	1202	1989	0	53 тыс. км	53	1	1.6	1	2	\N	1	f	/auto_opel_kadett_34483252.html	W0L000039L5030090	5	287	2023-06-14 22:12:38.694607	2023-06-14 22:12:38.694618
34483103	3	88	856	3300	123189	3031	2007	0	86 тыс. км	86	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34483103.html	XTA21101x71xxxx06	3	438	2023-06-14 22:12:39.065881	2023-06-14 22:12:39.065885
34656220	219	84	35399	5000	186050	4621	2000	0	516 тыс. км	516	2	2.5	1	2	\N	7	f	/auto_volkswagen_lt_34656220.html	WV1ZZZ2DZYH006463	19	19	2023-06-14 22:12:39.311659	2023-06-14 22:12:39.311661
34656213	5	29	293	11300	420473	10444	2011	13	230 тыс. км	230	2	2.2	2	1	\N	1	f	/auto_hyundai_santa_fe_34656213.html	KMHSH81XDBU759262	10	10	2023-06-14 22:12:39.319421	2023-06-14 22:12:39.319423
34656233	3	88	861	2600	96746	2403	2003	13	175 тыс. км	175	4	1.5	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34656233.html	XTA21150033409533	14	14	2023-06-14 22:12:39.351879	2023-06-14 22:12:39.35188
34483289	3	88	855	2000	74420	1848	2008	0	268 тыс. км	268	4	1.6	1	2	\N	1	f	/auto_vaz_lada_21099_34483289.html	Y6D21099480071314	22	161	2023-06-14 22:12:39.445275	2023-06-14 22:12:39.445277
34483244	5	32	315	7000	261310	6429	1994	0	200 тыс. км	200	4	4	2	1	\N	1	f	/auto_jeep_grand_cherokee_34483244.html	1J4GZ58SxRCxxxx64	12	12	2023-06-14 22:12:40.112279	2023-06-14 22:12:40.112286
34483140	3	89	3570	2000	74660	1837	2006	0	155 тыс. км	155	1	1.3	1	2	\N	1	f	/auto_zaz_sens_34483140.html	Y6DT1311x60xxxx22	14	14	2023-06-14 22:12:40.132956	2023-06-14 22:12:40.132959
34483119	3	79	698	8400	313572	7715	2007	0	320 тыс. км	320	4	2.4	2	2	\N	1	t	/auto_toyota_camry_34483119.html	4T1BE46Kx7Uxxxx91	19	19	2023-06-14 22:12:40.139567	2023-06-14 22:12:40.139568
34483113	12	1201	35948	321	12000	295	2007	0	400 тыс. км	400	0	0	5	\N	\N	2	f	/auto_viper_150_34483113.html		5	651	2023-06-14 22:12:40.195995	2023-06-14 22:12:40.195996
34483153	5	9	1866	8800	327448	8133	2005	0	260 тыс. км	260	2	3	2	1	\N	1	f	/auto_bmw_x3_34483153.html	WBAPB510х0Wхххх16	1	1	2023-06-14 22:12:40.398689	2023-06-14 22:12:40.39869
34482990	3	89	3570	2800	104188	2588	2011	0	115 тыс. км	115	4	1.3	1	2	\N	1	f	/auto_zaz_sens_34482990.html	Y6DTF698KB0286474	5	294	2023-06-14 22:12:40.399137	2023-06-14 22:12:40.399139
34643092	5	28	269	9000	334890	8318	2008	13	246 тыс. км	246	4	2	2	1	\N	1	f	/auto_honda_cr_v_34643092.html	SHSRE58708U018619	10	10	2023-06-12 19:10:53.158927	2023-06-12 19:10:53.158928
34639132	5	9	96	29500	1097695	27265	2015	0	333 тыс. км	333	2	3	2	1	\N	1	f	/auto_bmw_x5_34639132.html	5UXKS4C53F0N09265	10	10	2023-06-12 19:10:53.384165	2023-06-12 19:10:53.38417
34631915	3	47	1692	12500	465000	11509	2017	0	156 тыс. км	156	1	2	2	2	\N	1	t	/auto_mazda_3_34631915.html	3MZBN1V7xHMxxxx73	5	291	2023-06-12 20:35:37.660537	2023-06-12 20:35:37.660542
31847680	2	58	37293	9100	338611	8411	2014	0	291 тыс. км	291	2	1.6	4	2	\N	1	f	/auto_peugeot_508_31847680.html	VF38E9HD8EL007875	5	5	2023-06-13 20:40:44.761776	2023-06-13 20:40:44.761777
34646884	3	56	3121	7500	279075	6932	2008	8	235 тыс. км	235	2	2	2	2	\N	1	f	/auto_opel_insignia_34646884.html		2	146	2023-06-13 14:28:19.714059	2023-06-13 14:28:19.71406
34646886	5	47	37381	26740	995000	24714	2018	13	59 тыс. км	59	1	2	2	2	\N	1	f	/auto_mazda_cx_5_34646886.html	JMZKFGW7A00781841	10	10	2023-06-13 14:28:19.733314	2023-06-13 14:28:19.733315
34646870	8	67	46505	6700	249307	6192	2007	8	177 тыс. км	177	4	1.6	1	2	\N	1	f	/auto_seat_altea_xl_34646870.html		18	18	2023-06-13 14:28:19.811118	2023-06-13 14:28:19.811119
1913525	2	48	35252	7900	293959	7302	1998	1	190 тыс. км	190	2	2.3	1	\N	\N	0	f	/auto_mercedes_benz_vito_1913525.html		23	482	2023-06-13 14:28:19.846839	2023-06-13 14:28:19.846841
34644148	212	177	37865	24500	912625	22539	2012	0	1000 тыс. км	1000	2	0	2	3	\N	6	f	/auto_man_18_440_34644148.html		9	9	2023-06-13 14:28:20.426814	2023-06-13 14:28:20.426815
34646866	2	70	652	2700	100467	2495	1999	0	222 тыс. км	222	2	1.9	1	2	\N	1	f	/auto_skoda_octavia_34646866.html	TMBGP21U6Y2284547	6	560	2023-06-13 14:28:20.775336	2023-06-13 14:28:20.775339
34650320	5	48	45217	36000	1342800	33114	2019	0	69 тыс. км	69	2	3	2	1	\N	1	t	/auto_mercedes_benz_gle_class_34650320.html		10	10	2023-06-13 23:27:37.748632	2023-06-13 23:27:37.748633
34640477	3	9	3219	14500	539545	13402	2016	0	155 тыс. км	155	1	2	2	3	\N	1	t	/auto_bmw_3_series_34640477.html	WBA8E9G5хGNхххх06	5	5	2023-06-13 14:28:20.8367	2023-06-13 14:28:20.836702
34646834	5	29	293	14200	528382	13124	2011	0	223 тыс. км	223	2	2.2	2	1	\N	1	f	/auto_hyundai_santa_fe_34646834.html	KMHSH81XDCU840312	9	9	2023-06-13 14:28:21.673498	2023-06-13 14:28:21.6735
34646830	2	84	35449	9900	368379	9150	2013	8	320 тыс. км	320	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34646830.html	WVWZZZAUZEP511489	22	161	2023-06-13 14:28:21.686357	2023-06-13 14:28:21.686359
34646839	4	79	57812	13500	502335	12477	2016	13	101 тыс. км	101	5	1.5	2	2	\N	1	f	/auto_toyota_aqua_34646839.html	NHP106509834	10	10	2023-06-13 14:28:21.694525	2023-06-13 14:28:21.694527
34646823	3	9	18490	28950	1077230	26757	2017	8	96 тыс. км	96	0	3	2	3	\N	1	f	/auto_bmw_7_series_34646823.html	WBA7E2C51GG548204	5	5	2023-06-13 14:28:21.700429	2023-06-13 14:28:21.700431
34646833	3	84	39690	7200	267912	6655	2008	13	261 тыс. км	261	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34646833.html	WVWZZZ3CZ8P072892	2	146	2023-06-13 14:28:21.727864	2023-06-13 14:28:21.727865
34646793	8	48	35252	11500	427915	10629	2009	8	352 тыс. км	352	0	2.2	1	3	\N	1	f	/auto_mercedes_benz_vito_34646793.html	WDF63960х13хххх14	15	208	2023-06-13 14:28:21.838326	2023-06-13 14:28:21.838328
34650310	3	28	265	7500	279750	6898	2008	0	280 тыс. км	280	0	1.8	1	2	\N	1	f	/auto_honda_civic_34650310.html	NLAFD757x8Wxxxx88	11	11	2023-06-13 23:27:38.591684	2023-06-13 23:27:38.591685
34650301	41	1471	25415	5400	201419	4967	2009	0	без пробега	0	1	400	5	5	\N	2	f	/auto_brp_outlander_34650301.html		22	22	2023-06-13 23:27:38.623643	2023-06-13 23:27:38.623644
34649795	8	13	35248	7800	290238	7209	2011	8	180 тыс. км	180	2	2	2	2	\N	1	f	/auto_chevrolet_orlando_34649795.html	KL1YA75Y9CK624099	4	498	2023-06-13 23:27:38.862106	2023-06-13 23:27:38.862108
34650285	196	115	1673	50000	1860500	46212	2006	0	420 тыс. км	420	2	0	1	3	\N	6	f	/auto_daf_85_34650285.html		22	22	2023-06-13 23:27:38.869339	2023-06-13 23:27:38.869341
32789602	307	6	40988	38800	1443748	35861	2015	0	72 тыс. км	72	1	4	2	1	\N	1	t	/auto_audi_s7_sportback_32789602.html	WAUW2AFC7GN113904	10	10	2023-06-13 23:27:38.921942	2023-06-13 23:27:38.921944
34650231	5	48	46268	44800	1671039	41209	2018	0	15 тыс. км	15	2	2.1	2	1	\N	1	f	/auto_mercedes_benz_glc_class_34650231.html	WDC25390x1Fxxxx58	7	7	2023-06-13 23:27:39.541508	2023-06-13 23:27:39.54151
34650272	3	6	46	22000	818620	20333	2016	0	62 тыс. км	62	0	2	2	\N	\N	1	t	/auto_audi_a3_34650272.html	WAUZZZ8V0G1104104	10	10	2023-06-13 23:27:39.81481	2023-06-13 23:27:39.814811
34627078	2	9	2319	9200	342332	8503	2008	0	265 тыс. км	265	2	2	2	3	\N	1	f	/auto_bmw_5_series_34627078.html	WBAPX310X0CX40631	25	25	2023-06-13 23:27:39.821358	2023-06-13 23:27:39.82136
34650251	5	59	546	21900	814899	20241	2011	13	155 тыс. км	155	1	4.8	2	1	\N	1	f	/auto_porsche_cayenne_34650251.html	WP1ZZZ92ZBLA50951	11	11	2023-06-13 23:27:39.854274	2023-06-13 23:27:39.854276
34650235	4	88	860	3100	115629	2851	2012	0	112 тыс. км	112	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2114_samara_34650235.html	XTA21144xC5xxxx72	24	527	2023-06-13 23:27:40.264039	2023-06-13 23:27:40.26405
34472186	4	47	391	3500	130235	3235	2004	0	203 тыс. км	203	1	1.4	1	2	\N	1	f	/auto_mazda_2_34472186.html	JMZNC2WPJN3Y52964	5	289	2023-06-13 23:27:40.597857	2023-06-13 23:27:40.597858
34481026	5	52	2684	8190	305732	7530	2008	0	187 тыс. км	187	1	2.4	5	1	\N	1	f	/auto_mitsubishi_outlander_xl_34481026.html	JMBXTCW5x8Zxxxx30	12	12	2023-06-14 17:04:37.134281	2023-06-14 17:04:37.134282
34481140	3	28	262	7500	279975	6895	2007	0	266 тыс. км	266	1	0	2	2	\N	1	f	/auto_honda_accord_34481140.html	JHMCL968x8Cxxxx73	10	10	2023-06-14 17:04:37.280623	2023-06-14 17:04:37.280625
34481294	4	56	1508	5000	186050	4621	2009	0	208 тыс. км	208	1	1.4	4	2	\N	1	f	/auto_opel_astra_34481294.html	W0L0AHL4895067197	5	5	2023-06-14 17:04:37.389569	2023-06-14 17:04:37.38957
34481210	4	24	240	8700	324771	7999	2011	0	131 тыс. км	131	1	1.6	1	2	\N	1	f	/auto_ford_focus_34481210.html	WF0KXXGCxKBxxxx14	10	10	2023-06-14 17:04:38.081973	2023-06-14 17:04:38.081976
34481236	3	98	42241	20400	761532	18756	2016	0	71 тыс. км	71	1	3.5	2	2	\N	1	t	/auto_acura_rlx_34481236.html	JH4KC1F9xHCxxxx56	7	7	2023-06-14 17:04:38.100252	2023-06-14 17:04:38.100254
34481289	8	56	59772	8300	308843	7671	2007	0	420 тыс. км	420	2	2.5	1	2	\N	1	f	/auto_opel_vivaro_34481289.html	W0LF7AJA68V607524	15	15	2023-06-14 17:04:38.353507	2023-06-14 17:04:38.353512
34307638	5	6	3222	14000	520940	12939	2013	0	100 тыс. км	100	1	2	2	1	\N	1	t	/auto_audi_q5_34307638.html	WA1LFAFP4EA030801	10	10	2023-06-14 17:04:38.583291	2023-06-14 17:04:38.583295
34480963	3	88	850	430	16000	397	1991	0	200 тыс. км	200	1	1.5	1	3	\N	1	f	/auto_vaz_lada_2105_34480963.html	XTA210510M1159583	10	10	2023-06-14 17:04:38.634344	2023-06-14 17:04:38.634351
34480993	3	6	39	2000	74420	1848	1991	0	400 тыс. км	400	4	2.3	1	2	\N	1	f	/auto_audi_100_34480993.html	WAUZZZ4AхMNхххх54	16	253	2023-06-14 17:04:38.785672	2023-06-14 17:04:38.785675
34480936	2	6	49	3800	141854	3493	1994	0	499 тыс. км	499	4	2.6	2	2	\N	1	f	/auto_audi_a6_34480936.html	WAUZZZ4AxSNxxxx50	6	557	2023-06-14 17:04:39.751623	2023-06-14 17:04:39.751626
34654147	5	84	793	9300	347169	8550	2007	0	127 тыс. км	127	4	4.2	2	\N	\N	1	f	/auto_volkswagen_touareg_34654147.html	WVGZZZ7Lx8Zxxxx96	24	527	2023-06-14 17:04:39.768968	2023-06-14 17:04:39.768971
34139844	5	9	96	42500	1581425	39280	2016	0	202 тыс. км	202	2	3	2	1	\N	1	f	/auto_bmw_x5_34139844.html	WBAKS410600R80419	1	1	2023-06-14 17:04:40.072859	2023-06-14 17:04:40.072866
34643073	3	18	165	2200	81862	2033	2006	0	76 тыс. км	76	1	1.5	1	2	\N	1	f	/auto_daewoo_nexia_34643073.html	XWB3L31UD6A204104	25	25	2023-06-12 19:10:53.159021	2023-06-12 19:10:53.159022
34294717	193	175	1628	13000	483600	11970	1992	0	270 тыс. км	270	2	3.7	1	3	\N	6	f	/auto_iveco_zeta_34294717.html	ZCFA6560x02xxxx26	11	76	2023-06-12 23:20:50.956609	2023-06-12 23:20:50.95661
34644468	3	76	675	5000	186050	4621	2005	13	193 тыс. км	193	1	1.6	2	2	\N	1	f	/auto_suzuki_liana_34644468.html		20	605	2023-06-12 23:20:51.32619	2023-06-12 23:20:51.326194
31275472	6	13	112	54000	2009340	49909	2017	0	27 тыс. км	27	1	6.2	1	3	\N	1	t	/auto_chevrolet_corvette_31275472.html	1G1YV2D7хJ5хххх61	12	12	2023-06-12 23:20:51.58362	2023-06-12 23:20:51.583621
32516518	8	84	64461	7900	293959	7302	2005	0	400 тыс. км	400	2	1.9	1	2	\N	1	f	/auto_volkswagen_transporter_32516518.html	WV1ZZZ7Hх5Hхххх93	20	361	2023-06-12 23:20:51.60513	2023-06-12 23:20:51.605131
34411309	8	84	35448	4250	158100	3913	2005	0	330 тыс. км	330	2	2	1	\N	\N	1	f	/auto_volkswagen_caddy_34411309.html	WV1ZZZ2Kx5Xxxxx17	5	308	2023-06-12 23:20:52.67147	2023-06-12 23:20:52.671474
34644431	2	70	652	5700	212040	5248	2005	0	258 тыс. км	258	0	0	1	2	\N	1	f	/auto_skoda_octavia_34644431.html	TMBHB61Zx62xxxx10	15	15	2023-06-12 23:20:52.69858	2023-06-12 23:20:52.698581
34644428	5	58	2658	8500	316200	7826	2009	0	258 тыс. км	258	2	2.2	1	1	\N	1	f	/auto_peugeot_4007_34644428.html	VF3VV4HNx9Uxxxx28	3	428	2023-06-12 23:20:52.723219	2023-06-12 23:20:52.72322
34644427	307	70	652	16799	624922	15468	2019	0	223 тыс. км	223	2	0	2	2	\N	1	f	/auto_skoda_octavia_34644427.html	TMBAJ7NExK0xxxx41	22	22	2023-06-12 23:20:52.756288	2023-06-12 23:20:52.756289
34644474	4	55	2775	7200	267912	6655	2011	13	124 тыс. км	124	4	1.6	2	2	\N	1	f	/auto_nissan_tiida_34644474.html	3N1FCAC11UK546253	11	11	2023-06-12 23:20:52.913764	2023-06-12 23:20:52.913767
34474356	3	29	3086	11000	409310	10167	2012	0	74 тыс. км	74	1	1.8	2	2	\N	1	f	/auto_hyundai_elantra_34474356.html	KMHDH41EBCU393107	10	10	2023-06-12 23:20:52.939038	2023-06-12 23:20:52.939039
34644461	6	118	3108	17999	669743	16635	2015	13	80 тыс. км	80	1	3.6	2	3	\N	1	f	/auto_dodge_challenger_34644461.html	2C3CDZAG9GH157649	22	164	2023-06-12 23:20:52.948876	2023-06-12 23:20:52.948878
34641742	3	48	428	5000	186000	4603	2002	0	250 тыс. км	250	4	3.2	2	3	\N	1	f	/auto_mercedes_benz_e_class_34641742.html		10	650	2023-06-12 23:20:53.299976	2023-06-12 23:20:53.299979
34471823	5	88	863	1100	40920	1012	1988	0	320 тыс. км	320	1	1.6	1	1	\N	1	f	/auto_vaz_lada_2121_niva_34471823.html	XTA21210xK0xxxx60	12	643	2023-06-12 23:20:53.323439	2023-06-12 23:20:53.323442
34299421	307	89	872	1500	55815	1386	2008	0	82 тыс. км	82	1	1.2	1	2	\N	1	f	/auto_zaz_1103_slavuta_34299421.html	Y6D11030780131203	12	336	2023-06-12 23:20:53.697826	2023-06-12 23:20:53.697828
34471869	4	48	2622	17311	644160	16000	2014	0	73 тыс. км	73	6	0	2	\N	\N	1	f	/auto_mercedes_benz_b_class_34471869.html	WDDVP9ABхEJхххх34	25	25	2023-06-12 23:20:53.813186	2023-06-12 23:20:53.813189
34471729	5	85	2908	26800	996960	24677	2017	0	122 тыс. км	122	2	2	2	2	\N	1	f	/auto_volvo_xc60_34471729.html	YV1DZARCxH2xxxx66	18	18	2023-06-12 23:20:54.551286	2023-06-12 23:20:54.551295
34471850	4	48	423	3500	130235	3235	2003	0	257 тыс. км	257	2	1.7	1	3	\N	1	f	/auto_mercedes_benz_a_class_34471850.html	WDB16800х1Jхххх89	2	2	2023-06-12 23:20:54.858686	2023-06-12 23:20:54.85869
34646861	3	84	39690	11950	444660	11045	2013	8	128 тыс. км	128	4	2.5	2	2	\N	1	f	/auto_volkswagen_passat_34646861.html		10	10	2023-06-13 14:28:19.697322	2023-06-13 14:28:19.697324
34649310	5	79	35000	24900	926529	23014	2008	0	290 тыс. км	290	2	0	3	1	\N	1	f	/auto_toyota_land_cruiser_34649310.html		14	14	2023-06-13 20:40:44.762498	2023-06-13 20:40:44.7625
34508138	5	55	2197	11299	420436	10443	2012	0	173 тыс. км	173	2	1.6	1	2	\N	1	f	/auto_nissan_qashqai_34508138.html	SJNFEAJ1хU2хххх79	5	307	2023-06-13 14:28:19.83692	2023-06-13 14:28:19.836922
34650338	197	48	2170	55000	2051499	50591	2016	0	431 тыс. км	431	2	12.9	2	\N	\N	6	f	/auto_mercedes_benz_actros_34650338.html	WDB96340x10xxxx53	9	9	2023-06-13 23:27:37.783005	2023-06-13 23:27:37.783006
34646891	3	84	39690	6400	238144	5915	2006	13	355 тыс. км	355	2	1.9	1	2	\N	1	f	/auto_volkswagen_passat_34646891.html	WVWZZZ3CZ7P016855	10	10	2023-06-13 14:28:20.764909	2023-06-13 14:28:20.764912
34646853	5	15	53478	1371	51000	1267	2018	13	48 тыс. км	48	1	1.2	1	2	\N	1	f	/auto_citroen_c3_aircross_34646853.html		10	10	2023-06-13 14:28:20.83355	2023-06-13 14:28:20.833552
34650345	307	70	3167	28800	1074240	26491	2019	0	78 тыс. км	78	2	0	2	1	\N	1	f	/auto_skoda_superb_34650345.html	TMBCJ7NPxK7xxxx42	9	9	2023-06-13 23:27:38.567918	2023-06-13 23:27:38.56792
34650313	5	79	35004	45000	1678499	41393	2020	0	71 тыс. км	71	1	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34650313.html	JTEBU3FJx0Kxxxx92	7	7	2023-06-13 23:27:38.59119	2023-06-13 23:27:38.591191
34650278	5	55	1835	16800	625128	15527	2016	13	151 тыс. км	151	4	3.5	5	2	\N	1	t	/auto_nissan_pathfinder_34650278.html	5N1AR2MN4GC623038	1	1	2023-06-13 23:27:38.837951	2023-06-13 23:27:38.837956
34650297	4	84	35449	4850	180469	4483	2004	13	215 тыс. км	215	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34650297.html		9	9	2023-06-13 23:27:38.856694	2023-06-13 23:27:38.856703
34399758	5	52	1486	5900	219539	5453	1997	0	330 тыс. км	330	4	3.5	2	1	\N	1	f	/auto_mitsubishi_pajero_34399758.html	JMB0RV450VJ000481	15	202	2023-06-13 23:27:39.32239	2023-06-13 23:27:39.322397
34650312	5	84	793	9800	365540	9014	2005	0	285 тыс. км	285	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34650312.html	WVGZZZ7Lx6Dxxxx60	5	5	2023-06-13 23:27:39.547161	2023-06-13 23:27:39.547163
34650287	4	62	42148	13900	517219	12847	2017	13	70 тыс. км	70	6	0	2	2	\N	1	f	/auto_renault_zoe_34650287.html		22	22	2023-06-13 23:27:39.789069	2023-06-13 23:27:39.789071
34649979	2	62	586	6800	253028	6285	2009	13	230 тыс. км	230	2	1.5	1	2	\N	1	f	/auto_renault_megane_34649979.html	VF1KZ0C0541797501	12	12	2023-06-13 23:27:39.813606	2023-06-13 23:27:39.813607
34650282	2	62	586	4800	178608	4436	2003	0	188 тыс. км	188	1	1.6	1	2	\N	1	f	/auto_renault_megane_34650282.html	VF1KM0J0х29хххх87	8	8	2023-06-13 23:27:39.817852	2023-06-13 23:27:39.817854
34650291	2	70	652	10250	381403	9473	2011	8	233 тыс. км	233	2	2	1	2	\N	1	f	/auto_skoda_octavia_34650291.html	TMBGE61ZхC2хххх76	25	25	2023-06-13 23:27:39.836317	2023-06-13 23:27:39.836318
34438423	219	84	60426	29900	1112579	27635	2017	0	180 тыс. км	180	2	2	1	2	\N	7	f	/auto_volkswagen_crafter_34438423.html	WV1ZZZSYZH9002582	11	11	2023-06-13 23:27:40.056535	2023-06-13 23:27:40.056544
34650280	3	88	848	850	31629	786	1982	13	2 тыс. км	2	4	1.3	1	\N	\N	1	f	/auto_vaz_lada_2103_34650280.html	XTA210330C1274359	16	16	2023-06-13 23:27:40.543644	2023-06-13 23:27:40.543654
26833700	3	48	428	6450	240778	5930	2002	0	360 тыс. км	360	2	2.7	2	3	\N	1	f	/auto_mercedes_benz_e_class_26833700.html	WDB21101x1Axxxx39	18	18	2023-06-14 17:04:37.133713	2023-06-14 17:04:37.133715
34481186	3	79	698	12999	483693	12014	2011	0	200 тыс. км	200	4	2.5	2	2	\N	1	f	/auto_toyota_camry_34481186.html	JTNBF4FK103002650	3	3	2023-06-14 17:04:37.378467	2023-06-14 17:04:37.37847
34481180	3	56	1523	6900	256749	6377	2008	0	228 тыс. км	228	4	2.2	2	2	\N	1	f	/auto_opel_vectra_34481180.html	W0L0ZCF6х81хххх94	5	5	2023-06-14 17:04:37.41915	2023-06-14 17:04:37.419151
34654167	4	88	854	1500	55815	1386	2008	0	120 тыс. км	120	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2109_34654167.html	Y6D21093480028042	15	15	2023-06-14 17:04:37.6027	2023-06-14 17:04:37.602703
34148508	5	13	2544	8000	297680	7394	2007	0	125 тыс. км	125	2	2	2	1	\N	1	f	/auto_chevrolet_captiva_34148508.html	KL1CD26RJ7B086429	25	25	2023-06-12 19:10:53.159647	2023-06-12 19:10:53.159648
34643050	3	84	789	6600	245586	6100	2012	13	128 тыс. км	128	1	1.6	1	2	\N	1	f	/auto_volkswagen_polo_34643050.html		5	614	2023-06-12 19:10:53.181228	2023-06-12 19:10:53.18123
34644447	4	70	649	4499	167362	4142	2005	0	273 тыс. км	273	1	0	1	2	\N	1	f	/auto_skoda_fabia_34644447.html	TMBMD46Yx6Bxxxx38	10	10	2023-06-12 23:20:50.957099	2023-06-12 23:20:50.957101
25272908	16	28	55174	12000	446400	11049	2012	0	13 тыс. км	13	1	1800	2	4	\N	2	f	/auto_honda_gl_1800_gold_wing_25272908.html	JH2SC681xDKxxxx83	12	12	2023-06-12 23:20:50.962296	2023-06-12 23:20:50.962297
34644464	3	13	1052	4000	148840	3697	2004	13	466 тыс. км	466	1	1.8	1	2	\N	1	f	/auto_chevrolet_lacetti_34644464.html	KL1NF193х5Kхххх74	22	22	2023-06-12 23:20:51.324768	2023-06-12 23:20:51.32477
34644465	197	177	39046	10700	398147	9889	2003	8	740 тыс. км	740	2	4.6	1	3	\N	6	f	/auto_man_8_185_34644465.html	WMAL33ZZZ4Y123890	11	11	2023-06-12 23:20:51.382619	2023-06-12 23:20:51.382621
34630652	5	9	2153	19700	733037	18208	2009	0	160 тыс. км	160	1	4.4	2	1	\N	1	f	/auto_bmw_x6_34630652.html		1	1	2023-06-12 23:20:51.394504	2023-06-12 23:20:51.394505
34640650	2	9	3219	15000	558150	13864	2006	0	255 тыс. км	255	2	3	2	1	\N	1	f	/auto_bmw_3_series_34640650.html	WBAVT91030KT90979	10	10	2023-06-12 23:20:51.654764	2023-06-12 23:20:51.654765
34644426	2	70	652	7900	293880	7274	2009	0	226 тыс. км	226	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34644426.html		3	3	2023-06-12 23:20:52.693402	2023-06-12 23:20:52.693403
34644437	3	6	47	12999	483562	11969	2013	0	230 тыс. км	230	1	2	2	1	\N	1	f	/auto_audi_a4_34644437.html	WAUFFAFLxDNxxxx38	11	11	2023-06-12 23:20:52.700833	2023-06-12 23:20:52.700835
34646894	3	6	47	19500	725595	18023	2017	0	60 тыс. км	60	1	2	2	2	\N	1	t	/auto_audi_a4_34646894.html	WAUMMAF47JN005803	10	10	2023-06-13 14:28:20.884711	2023-06-13 14:28:20.884713
34649263	4	79	702	2950	109770	2727	1996	0	400 тыс. км	400	4	1.3	2	\N	\N	1	f	/auto_toyota_corolla_34649263.html	JT152EEA100246224	12	12	2023-06-13 20:40:44.762997	2023-06-13 20:40:44.762998
34650429	15	76	35701	4300	160390	3955	2010	0	28 тыс. км	28	1	400	1	6	\N	2	f	/auto_suzuki_gladius_34650429.html		1	34	2023-06-13 23:53:24.544566	2023-06-13 23:53:24.544568
34650416	3	52	457	6500	242449	5979	2008	0	147 тыс. км	147	1	2	1	2	\N	1	f	/auto_mitsubishi_lancer_34650416.html	JMBSNCY4x9Uxxxx66	5	5	2023-06-13 23:53:24.554522	2023-06-13 23:53:24.554524
1901762	3	84	781	13900	517219	12847	2005	11	87 тыс. км	87	1	1.6	2	\N	\N	0	f	/auto_volkswagen_bora_1901762.html		10	10	2023-06-13 23:53:24.788691	2023-06-13 23:53:24.788693
34481222	5	24	1183	12500	466625	11493	2017	0	84 тыс. км	84	1	1.5	2	1	\N	1	t	/auto_ford_escape_34481222.html	1FMCU9GDxHUxxxx96	5	5	2023-06-14 17:04:37.138828	2023-06-14 17:04:37.13883
34481103	2	24	240	6400	238912	5884	2010	0	152 тыс. км	152	2	1.6	1	2	\N	1	f	/auto_ford_focus_34481103.html	WF0SXXGCxSAxxxx03	25	647	2023-06-14 17:04:37.148869	2023-06-14 17:04:37.14887
34611013	2	62	586	8299	309801	7623	2012	0	340 тыс. км	340	2	1.5	1	2	\N	1	f	/auto_renault_megane_34611013.html	VF1KZ140x47xxxx15	9	9	2023-06-14 22:12:37.704652	2023-06-14 22:12:37.704654
34656252	198	48	35249	15900	591639	14695	2009	13	294 тыс. км	294	2	0	1	3	\N	6	f	/auto_mercedes_benz_sprinter_34656252.html		5	5	2023-06-14 22:12:37.85977	2023-06-14 22:12:37.859773
34656236	11	28	58321	460	17117	425	2004	0	9 тыс. км	9	1	0.05	2	5	\N	2	f	/auto_honda_dio_af_35_34656236.html		2	2	2023-06-14 22:12:37.908208	2023-06-14 22:12:37.908208
34379631	197	48	35249	68000	2530280	62848	2021	0	4 тыс. км	4	2	3.2	2	\N	\N	6	f	/auto_mercedes_benz_sprinter_34379631.html	W1V9076371P364388	3	3	2023-06-14 22:12:37.968461	2023-06-14 22:12:37.968462
34130334	449	24	60475	6000	223980	5511	2007	0	170 тыс. км	170	2	1.6	1	2	\N	1	f	/auto_ford_focus_c_max_34130334.html	WF0EXXGCxE7xxxx13	20	20	2023-06-14 22:12:39.027281	2023-06-14 22:12:39.02729
34656244	2	84	39690	2500	93025	2311	1996	8	180 тыс. км	180	4	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34656244.html	WVWZZZ3AZTE033794	1	604	2023-06-14 22:12:39.296993	2023-06-14 22:12:39.296996
34470356	2	58	2109	7700	286517	7117	2016	0	250 тыс. км	250	2	1.6	1	2	\N	1	f	/auto_peugeot_308_34470356.html	VF3LC9HPAGS250403	10	10	2023-06-14 22:12:39.312128	2023-06-14 22:12:39.31213
34656235	3	88	846	400	14884	370	1973	13	100 тыс. км	100	1	1.2	1	3	\N	1	f	/auto_vaz_lada_2101_34656235.html		12	12	2023-06-14 22:12:39.32531	2023-06-14 22:12:39.325312
34483265	2	48	1427	13000	483730	12015	2009	0	330 тыс. км	330	2	3	2	1	\N	1	f	/auto_mercedes_benz_r_class_34483265.html	WDC2510221A087032	10	10	2023-06-14 22:12:39.365328	2023-06-14 22:12:39.36533
34483191	5	9	96	41000	1525610	37894	2015	0	111 тыс. км	111	5	2	2	\N	\N	1	t	/auto_bmw_x5_34483191.html	5UXKT0C52G0S74767	12	12	2023-06-14 22:12:39.395057	2023-06-14 22:12:39.395059
34483192	66	1583	29020	18500	688385	17098	1986	0	4 тыс. км	4	2	0	1	1	\N	10	f	/auto_john_deere_2850_34483192.html		19	323	2023-06-14 22:12:39.418323	2023-06-14 22:12:39.418329
33694825	5	9	96	39900	1489467	36650	2016	0	75 тыс. км	75	5	2	2	1	\N	1	t	/auto_bmw_x5_33694825.html	5UXKT0C5xG0xxxx43	5	5	2023-06-14 22:12:40.107271	2023-06-14 22:12:40.107279
34483148	8	29	43940	27000	1007910	24800	2018	0	120 тыс. км	120	2	2.5	1	3	\N	1	f	/auto_hyundai_h_1_34483148.html	KMHWH81KxKUxxxx82	10	10	2023-06-14 22:12:40.139269	2023-06-14 22:12:40.13927
34656223	3	56	3121	8000	297680	7394	2011	8	367 тыс. км	367	2	2	1	\N	\N	1	f	/auto_opel_insignia_34656223.html	W0LGM5EY6B1099191	4	505	2023-06-14 22:12:40.444401	2023-06-14 22:12:40.444405
34483081	307	70	3167	9300	346053	8595	2010	0	163 тыс. км	163	1	1.8	4	2	\N	1	f	/auto_skoda_superb_34483081.html	TMBAB93T0A9030749	10	10	2023-06-14 22:12:40.452692	2023-06-14 22:12:40.452697
34483052	5	76	682	15000	558150	13864	2018	0	95 тыс. км	95	4	1.6	1	2	\N	1	f	/auto_suzuki_vitara_34483052.html	TSMLYD21х00хххх73	16	16	2023-06-14 22:12:40.713843	2023-06-14 22:12:40.713854
34483159	3	18	161	2550	94886	2357	2006	0	172 тыс. км	172	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34483159.html	Y6DTF69YD7W316571	16	256	2023-06-14 22:12:41.676554	2023-06-14 22:12:41.67656
34483064	4	13	1038	5300	197213	4898	2007	0	100 тыс. км	100	1	1.4	2	2	\N	1	f	/auto_chevrolet_aveo_34483064.html	KL1SA487J7B765055	5	306	2023-06-14 22:12:42.156258	2023-06-14 22:12:42.156262
34483296	2	6	3457	33000	1227930	30500	2017	0	217 тыс. км	217	2	2	2	1	\N	1	f	/auto_audi_a4_allroad_34483296.html	WAUZZZF42HA167913	5	5	2023-06-14 22:12:42.216652	2023-06-14 22:12:42.216657
34656360	5	33	326	13250	493033	12246	2011	8	207 тыс. км	207	2	0	1	1	\N	1	f	/auto_kia_sorento_34656360.html	KNAKU815хB5хххх33	5	306	2023-06-14 22:29:27.896076	2023-06-14 22:29:27.896077
34610472	4	56	1508	3950	146980	3651	2008	0	235 тыс. км	235	4	1.4	1	2	\N	1	f	/auto_opel_astra_34610472.html	W0L0AHL4х82хххх30	11	11	2023-06-14 22:29:27.903065	2023-06-14 22:29:27.903066
33434753	198	177	2659	33500	1246535	30962	2005	0	9999 тыс. км	9999	2	12.8	1	3	\N	6	f	/auto_man_tga_33434753.html	WMAT5004х6Mхххх32	12	12	2023-06-14 22:29:27.930972	2023-06-14 22:29:27.930973
34656370	3	79	698	23900	889319	22089	2020	0	85 тыс. км	85	1	2.5	2	2	\N	1	f	/auto_toyota_camry_34656370.html	4T1C11AKхLUхххх38	11	11	2023-06-14 22:29:28.32243	2023-06-14 22:29:28.322436
34380862	2	6	47	9499	353458	8779	2012	0	319 тыс. км	319	2	2	2	2	\N	1	f	/auto_audi_a4_34380862.html	WAUZZZ8K9DA161807	10	10	2023-06-15 00:16:56.070421	2023-06-15 00:16:56.070424
32932762	4	71	28289	12600	468846	11645	2018	0	22 тыс. км	22	6	0	2	3	\N	1	f	/auto_smart_forfour_32932762.html	WME45309х1Yхххх76	10	10	2023-06-12 19:10:53.16051	2023-06-12 19:10:53.160511
34644445	3	24	241	13750	511500	12660	2015	0	200 тыс. км	200	5	2	2	2	\N	1	t	/auto_ford_fusion_34644445.html	3FA6P0PUxGRxxxx23	10	10	2023-06-12 23:20:50.959923	2023-06-12 23:20:50.959925
34644479	5	75	663	8400	312564	7764	2008	13	194 тыс. км	194	4	2.5	2	1	\N	1	f	/auto_subaru_forester_34644479.html	JF1SH9LTх9Gхххх58	12	12	2023-06-12 23:20:51.322398	2023-06-12 23:20:51.322401
34473173	4	48	423	4000	148840	3697	2002	0	233 тыс. км	233	2	1.7	2	\N	\N	1	f	/auto_mercedes_benz_a_class_34473173.html	WDB1680091J874655	1	1	2023-06-12 23:20:51.375513	2023-06-12 23:20:51.375514
33632299	197	177	40735	9000	334890	8318	2004	0	293 тыс. км	293	2	4.5	1	3	\N	6	f	/auto_man_le_8_180_33632299.html	\N	1	1	2023-06-12 23:20:51.390324	2023-06-12 23:20:51.390325
34214643	3	48	428	7700	286517	7117	2004	0	440 тыс. км	440	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34214643.html	WDB2110061A536510	15	15	2023-06-12 23:20:51.463297	2023-06-12 23:20:51.463299
34466319	212	175	2119	31900	1186999	29483	2015	0	763 тыс. км	763	2	0	2	3	\N	6	f	/auto_iveco_stralis_34466319.html	WJMM1VTHх0Cхххх38	25	25	2023-06-12 23:20:52.454421	2023-06-12 23:20:52.454427
34471928	5	84	793	28800	1071360	26518	2014	0	198 тыс. км	198	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34471928.html	WVGEP9BPxEDxxxx71	4	4	2023-06-12 23:20:52.688617	2023-06-12 23:20:52.688618
34470783	3	48	431	8400	312564	7764	1997	0	421 тыс. км	421	4	5	2	3	\N	1	f	/auto_mercedes_benz_s_class_34470783.html	WDB1400511A359157	25	25	2023-06-12 23:20:52.93003	2023-06-12 23:20:52.930031
34644452	8	62	59145	11400	424194	10536	2013	13	200 тыс. км	200	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_34644452.html	VF1FW58M549839430	12	336	2023-06-12 23:20:52.966125	2023-06-12 23:20:52.966127
33476245	5	79	35000	120000	4465200	110909	2019	0	57 тыс. км	57	2	4.5	2	1	\N	1	f	/auto_toyota_land_cruiser_33476245.html		12	12	2023-06-12 23:20:53.036353	2023-06-12 23:20:53.036355
34471905	2	13	1663	3800	141360	3499	2006	0	240 тыс. км	240	1	0	1	\N	\N	1	f	/auto_chevrolet_tacuma_34471905.html	Y6DUF75Zx6Kxxxx07	12	12	2023-06-12 23:20:53.317337	2023-06-12 23:20:53.31734
34471851	4	48	423	7800	290238	7209	2000	0	228 тыс. км	228	1	1.6	2	2	\N	1	f	/auto_mercedes_benz_a_class_34471851.html	WDB16803х1Jхххх42	10	10	2023-06-12 23:20:53.563584	2023-06-12 23:20:53.563586
34481582	4	18	1642	1486	55294	1373	2005	0	90 тыс. км	90	4	1.3	1	2	\N	1	f	/auto_daewoo_sens_34481582.html	Y6DT1311050229665	3	430	2023-06-12 23:20:53.591462	2023-06-12 23:20:53.591464
33983650	2	84	39690	20500	762805	18947	2018	0	174 тыс. км	174	2	2	2	1	\N	1	f	/auto_volkswagen_passat_33983650.html	WVWZZZ3CZJE185138	25	25	2023-06-12 23:20:53.612444	2023-06-12 23:20:53.612447
34053173	4	55	36565	20900	777689	19317	2018	0	105 тыс. км	105	6	0	2	2	\N	1	f	/auto_nissan_leaf_34053173.html	SJNFAAZEхU0хххх56	3	3	2023-06-12 23:20:53.660596	2023-06-12 23:20:53.660599
34471887	3	88	851	1200	44652	1109	1986	0	200 тыс. км	200	4	1.6	1	\N	\N	1	f	/auto_vaz_lada_2106_34471887.html	XTA210600G0806303	16	16	2023-06-12 23:20:53.713135	2023-06-12 23:20:53.713137
34471945	6	84	3006	9800	364560	9023	2011	0	250 тыс. км	250	4	2	2	2	\N	1	t	/auto_volkswagen_cc_passat_cc_34471945.html	WVWHN7ANxCExxxx43	11	76	2023-06-12 23:20:54.038118	2023-06-12 23:20:54.038121
34299494	15	176	35717	1900	70699	1756	2000	0	36 тыс. км	36	0	0.25	1	6	\N	2	f	/auto_kawasaki_balius_34299494.html		7	7	2023-06-12 23:20:54.873759	2023-06-12 23:20:54.873763
34646554	4	84	45152	15400	573034	14233	2016	1	104 тыс. км	104	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_34646554.html		5	5	2023-06-13 14:28:20.884911	2023-06-13 14:28:20.884913
34648726	3	89	3569	3400	126514	3142	2012	0	94 тыс. км	94	1	1.5	1	2	\N	1	f	/auto_zaz_lanos_34648726.html	Y6DTF69Y0C0312900	5	295	2023-06-13 20:40:44.76308	2023-06-13 20:40:44.763081
34650449	5	84	2692	17500	652750	16097	2017	0	68 тыс. км	68	1	2	2	1	\N	1	t	/auto_volkswagen_tiguan_34650449.html	WVGUV7AXxHKxxxx09	16	252	2023-06-13 23:53:24.550539	2023-06-13 23:53:24.55054
33635865	5	9	96	45500	1693055	42053	2018	0	98 тыс. км	98	1	3	2	1	\N	1	t	/auto_bmw_x5_33635865.html	5UXKR0C54J0X99464	10	10	2023-06-13 23:53:24.784084	2023-06-13 23:53:24.784087
34649452	2	84	39690	7000	260470	6470	2010	0	291 тыс. км	291	4	1.4	2	2	\N	1	f	/auto_volkswagen_passat_34649452.html	WVWZZZ3CZAE155003	10	10	2023-06-13 23:53:24.852547	2023-06-13 23:53:24.852549
34375038	3	79	698	16900	628849	15620	2006	0	43 тыс. км	43	1	3.5	3	2	\N	1	f	/auto_toyota_camry_34375038.html	4T1BK46K67U515487	11	11	2023-06-13 23:53:25.316773	2023-06-13 23:53:25.316778
34481243	3	28	265	3000	111990	2758	1994	0	60 тыс. км	60	1	0	1	2	\N	1	f	/auto_honda_civic_34481243.html	JHMEG855x0Sxxxx54	7	7	2023-06-14 17:04:37.138292	2023-06-14 17:04:37.138293
34656256	2	84	39690	15950	593500	14742	2017	13	165 тыс. км	165	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34656256.html	WVWZZZ3CZHP029809	5	307	2023-06-14 22:12:37.879042	2023-06-14 22:12:37.879044
34656200	3	24	240	9900	368379	9150	2017	13	60 тыс. км	60	1	2	2	2	\N	1	f	/auto_ford_focus_34656200.html	1FADP3H20HL247166	15	197	2023-06-14 22:12:37.904279	2023-06-14 22:12:37.904281
34656257	2	84	35449	4000	148840	3697	2001	13	290 тыс. км	290	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34656257.html		5	308	2023-06-14 22:12:37.936349	2023-06-14 22:12:37.93635
34656239	4	18	163	2200	81862	2033	2013	13	250 тыс. км	250	4	0.8	1	\N	\N	1	f	/auto_daewoo_matiz_34656239.html	XWB4A11EDDA580175	1	1	2023-06-14 22:12:37.992436	2023-06-14 22:12:37.992441
34483233	5	38	1344	40969	1529372	37632	2013	0	126 тыс. км	126	1	5.7	2	1	\N	1	f	/auto_lexus_lx_34483233.html	JTJHY00Wx04xxxx60	10	10	2023-06-14 22:12:39.030166	2023-06-14 22:12:39.030175
34656071	2	9	2319	7500	279075	6932	2006	5	217 тыс. км	217	2	2.5	1	3	\N	1	f	/auto_bmw_5_series_34656071.html	WBANJ51090B415043	19	327	2023-06-14 22:12:39.305948	2023-06-14 22:12:39.30595
34656218	8	79	1897	7800	290238	7209	2006	8	230 тыс. км	230	4	3.3	2	2	\N	1	f	/auto_toyota_sienna_34656218.html		10	10	2023-06-14 22:12:39.313224	2023-06-14 22:12:39.313226
34655909	5	47	37381	14800	550708	13679	2012	13	139 тыс. км	139	2	2.2	1	1	\N	1	f	/auto_mazda_cx_5_34655909.html	JMZKEN91600121933	5	302	2023-06-14 22:12:39.330691	2023-06-14 22:12:39.330693
34656203	8	56	59894	10500	390705	9705	2017	13	148 тыс. км	148	2	1.3	1	2	\N	1	f	/auto_opel_combo_34656203.html	W0L6VZU1AH9619253	20	20	2023-06-14 22:12:39.376721	2023-06-14 22:12:39.376724
34483084	8	62	588	4600	171166	4252	2005	0	330 тыс. км	330	2	1.9	1	2	\N	1	f	/auto_renault_scenic_34483084.html	VF1JM1GE633600735	24	516	2023-06-14 22:12:39.894002	2023-06-14 22:12:39.894013
34483118	11	313	55364	375	14000	344	1997	0	28 тыс. км	28	1	49000	2	5	\N	2	f	/auto_piaggio_nrg_50_34483118.html		5	290	2023-06-14 22:12:40.186652	2023-06-14 22:12:40.186653
34483259	3	6	49	3000	111630	2773	1997	0	430 тыс. км	430	4	2.6	2	2	\N	1	f	/auto_audi_a6_34483259.html	WAUZZZ44ZEN025153	24	525	2023-06-14 22:12:40.380974	2023-06-14 22:12:40.380976
34483171	2	84	35449	9800	364658	9058	2012	0	240 тыс. км	240	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34483171.html	WVWZZZ1KZDM604043	2	2	2023-06-14 22:12:40.411987	2023-06-14 22:12:40.411988
34483268	4	84	35449	5300	197213	4898	2002	0	169 тыс. км	169	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34483268.html	WVWZZZ1JZ2U398874	3	3	2023-06-14 22:12:40.515566	2023-06-14 22:12:40.515572
34483150	2	6	49	23800	885598	21997	2016	0	190 тыс. км	190	2	2	2	2	\N	1	f	/auto_audi_a6_34483150.html	WAUZZZ4G2GN178804	4	502	2023-06-14 22:12:40.541119	2023-06-14 22:12:40.541125
33112382	299	48	2098	14200	528382	13124	1998	0	600 тыс. км	600	2	6	1	3	\N	4	f	/auto_mercedes_benz_atego_33112382.html	WDB65101х1Kхххх09	15	15	2023-06-12 11:45:18.57295	2023-06-12 11:45:18.572951
30573299	219	48	35249	7900	293959	7302	1997	0	545 тыс. км	545	2	2.9	1	3	\N	7	f	/auto_mercedes_benz_sprinter_30573299.html		25	539	2023-06-12 11:45:18.631056	2023-06-12 11:45:18.631057
34640203	2	58	2109	6990	259678	6446	2010	0	183 тыс. км	183	1	1.6	2	2	\N	1	f	/auto_peugeot_308_34640203.html	VF34H5FVxASxxxx13	10	10	2023-06-12 11:45:18.949566	2023-06-12 11:45:18.949568
34360723	2	62	586	13650	507097	12589	2019	0	209 тыс. км	209	2	1.5	1	2	\N	1	f	/auto_renault_megane_34360723.html	VF1RFB00x63xxxx32	18	18	2023-06-12 11:45:18.967851	2023-06-12 11:45:18.967852
34640199	2	84	39690	12999	483693	12014	2013	0	252 тыс. км	252	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34640199.html	WVWZZZ3CZDE099087	18	18	2023-06-12 11:45:19.229231	2023-06-12 11:45:19.229233
34649258	5	84	2692	18900	703269	17468	2016	13	61 тыс. км	61	1	2	2	1	\N	1	f	/auto_volkswagen_tiguan_34649258.html	WVGBV7AX1GK000095	1	1	2023-06-13 20:40:44.820742	2023-06-13 20:40:44.820744
34650444	4	84	45152	26800	999639	24652	2019	0	18 тыс. км	18	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_34650444.html	WVWZZZAUxL8xxxx11	1	1	2023-06-13 23:53:24.552394	2023-06-13 23:53:24.552395
34640196	8	84	2093	10999	409273	10166	2010	0	301 тыс. км	301	2	2	1	1	\N	1	f	/auto_volkswagen_touran_34640196.html	WVGZZZ1TZBW005940	2	140	2023-06-12 11:45:19.304254	2023-06-12 11:45:19.304256
34458982	5	37	351	138500	5153585	128008	2020	0	25 тыс. км	25	2	4.4	2	1	\N	1	f	/auto_land_rover_range_rover_34458982.html	SALGA2BJ4LA406738	12	12	2023-06-12 11:45:19.479078	2023-06-12 11:45:19.47908
34650450	2	84	39690	10800	401868	9982	2012	13	244 тыс. км	244	2	1.6	2	2	\N	1	f	/auto_volkswagen_passat_34650450.html	WVWZZZ3CZDE027559	3	3	2023-06-13 23:53:24.75349	2023-06-13 23:53:24.753492
34049303	5	128	62408	15500	576755	14326	2013	0	180 тыс. км	180	4	3.5	2	1	\N	1	f	/auto_infiniti_jx35_34049303.html	5N1AL0MMхDCхххх04	15	15	2023-06-13 23:53:24.830958	2023-06-13 23:53:24.83096
34477796	3	8	83	33499	1246498	30961	2007	0	157 тыс. км	157	1	6	2	1	\N	1	f	/auto_bentley_continental_34477796.html	SCBBE53W58C051482	3	3	2023-06-13 23:53:25.053733	2023-06-13 23:53:25.053736
34481225	8	84	64461	7500	279975	6895	2002	0	382 тыс. км	382	2	2.5	1	2	\N	1	f	/auto_volkswagen_transporter_34481225.html	WV1ZZZ70x2Hxxxx30	9	9	2023-06-14 17:04:37.139154	2023-06-14 17:04:37.139156
34654125	5	75	38372	9000	335970	8275	2013	0	135 тыс. км	135	1	2	4	1	\N	1	f	/auto_subaru_xv_34654125.html	JF1GP7LCxDGxxxx09	10	10	2023-06-14 17:04:37.147995	2023-06-14 17:04:37.147997
34654164	3	24	240	3300	122793	3050	2000	0	333 тыс. км	333	2	1.8	1	2	\N	1	f	/auto_ford_focus_34654164.html	WF0NXXGCDNYB17349	2	2	2023-06-14 17:04:37.384693	2023-06-14 17:04:37.384695
34481193	5	55	2197	8700	323727	8041	2009	0	142 тыс. км	142	1	1.6	1	2	\N	1	f	/auto_nissan_qashqai_34481193.html	SJNFAAJ10U1354214	5	302	2023-06-14 17:04:37.419513	2023-06-14 17:04:37.419514
34481194	3	13	1052	3500	130235	3235	2005	0	50 тыс. км	50	4	1.8	1	\N	\N	1	f	/auto_chevrolet_lacetti_34481194.html	Y6DNF193E5K186825	13	113	2023-06-14 17:04:37.476208	2023-06-14 17:04:37.47621
34481263	9	84	31575	26000	967460	24030	2013	0	156 тыс. км	156	2	2	2	1	\N	1	f	/auto_volkswagen_amarok_34481263.html	WV1ZZZ2HZEH005046	9	388	2023-06-14 17:04:37.484338	2023-06-14 17:04:37.484339
34481036	8	15	59440	3800	141854	3493	2004	0	263 тыс. км	263	2	1.9	1	2	\N	1	f	/auto_citroen_berlingo_34481036.html	VF7GBWJYx94xxxx46	25	539	2023-06-14 17:04:38.091556	2023-06-14 17:04:38.091558
34481132	5	52	1485	19500	727935	17929	2013	0	192 тыс. км	192	5	2	2	1	\N	1	t	/auto_mitsubishi_outlander_34481132.html	JMBXDGG2xEZxxxx27	5	5	2023-06-14 17:04:38.119746	2023-06-14 17:04:38.119748
34654156	5	55	2228	16000	595360	14788	2016	8	102 тыс. км	102	4	2.5	5	2	\N	1	t	/auto_nissan_rogue_34654156.html	5N1AT2MT1GC813217	10	10	2023-06-14 17:04:38.427828	2023-06-14 17:04:38.427831
34480961	307	70	652	6990	260098	6460	2007	0	186 тыс. км	186	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34480961.html	TMBCA22ZX7B154118	14	14	2023-06-14 17:04:38.644663	2023-06-14 17:04:38.64467
34481094	5	75	53173	25200	937692	23291	2019	0	44 тыс. км	44	1	0	5	1	\N	1	t	/auto_subaru_ascent_34481094.html	4S4WMAMD7K3461291	5	287	2023-06-14 17:04:38.968058	2023-06-14 17:04:38.968065
34480938	5	47	37381	18500	690605	17009	2016	0	165 тыс. км	165	1	2.5	3	2	\N	1	t	/auto_mazda_cx_5_34480938.html	JM3KE2DYxG0xxxx49	10	610	2023-06-14 17:04:39.74967	2023-06-14 17:04:39.749673
34654149	3	18	161	2790	104150	2565	2004	0	200 тыс. км	200	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34654149.html	SUPTF69Yx4Wxxxx58	3	3	2023-06-14 17:04:39.766091	2023-06-14 17:04:39.766094
34480910	307	70	3167	9500	354635	8734	2012	0	222 тыс. км	222	4	1.8	2	2	\N	1	f	/auto_skoda_superb_34480910.html	TMBAB43TxCBxxxx12	1	1	2023-06-14 17:04:39.805434	2023-06-14 17:04:39.805435
34307867	8	62	59145	4400	163724	4067	2007	0	290 тыс. км	290	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_34307867.html	VF1FC1EBF37443573	5	293	2023-06-14 17:04:40.147865	2023-06-14 17:04:40.147868
34480972	2	9	2319	10000	372100	9242	2005	0	292 тыс. км	292	2	3	2	3	\N	1	f	/auto_bmw_5_series_34480972.html	WBANS71040CP29783	12	12	2023-06-14 17:04:40.364204	2023-06-14 17:04:40.364206
34307552	2	17	1890	4500	167445	4159	2008	0	253 тыс. км	253	1	1.6	1	2	\N	1	t	/auto_dacia_logan_34307552.html	UU1KSDAD540271919	5	5	2023-06-14 17:04:40.646514	2023-06-14 17:04:40.646516
34480969	11	76	47087	780	29024	721	2009	0	7 тыс. км	7	1	0.5	2	5	\N	2	f	/auto_suzuki_zz_inch_up_sport_34480969.html		24	645	2023-06-14 17:04:40.727532	2023-06-14 17:04:40.727534
34480934	4	13	1038	4800	179184	4413	2010	0	141 тыс. км	141	4	1.49	1	2	\N	1	f	/auto_chevrolet_aveo_34480934.html	Y6DSF48YxAWxxxx43	19	318	2023-06-14 17:04:40.974189	2023-06-14 17:04:40.974193
34307835	2	56	1518	3000	111630	2773	1997	0	280 тыс. км	280	4	2	1	3	\N	1	f	/auto_opel_omega_34307835.html	W0L000021V1108638	16	16	2023-06-14 17:04:41.293656	2023-06-14 17:04:41.293662
34656095	5	79	2090	17500	651175	16174	2010	13	200 тыс. км	200	1	3.5	2	1	\N	1	f	/auto_toyota_highlander_34656095.html	JTEES42A902169978	12	12	2023-06-14 22:12:37.907803	2023-06-14 22:12:37.907803
34656237	14	1201	49375	537	20000	497	2013	0	без пробега	0	1	0.15	1	6	\N	2	f	/auto_viper_v150a_34656237.html		1	604	2023-06-14 22:12:38.122062	2023-06-14 22:12:38.122065
34483239	2	56	3121	7700	287441	7072	2012	0	249 тыс. км	249	2	2	1	2	\N	1	f	/auto_opel_insignia_34483239.html	W0LGB8EJxC1xxxx34	1	604	2023-06-14 22:12:39.060485	2023-06-14 22:12:39.060495
34483290	3	89	3569	3700	137677	3420	2011	0	248 тыс. км	248	4	1.5	1	2	\N	1	f	/auto_zaz_lanos_34483290.html	Y6DTF69Y0C0297235	11	11	2023-06-14 22:12:39.306705	2023-06-14 22:12:39.306708
34656199	212	62	1707	13200	491172	12200	2007	13	959 тыс. км	959	2	12.9	2	3	\N	6	f	/auto_renault_magnum_34656199.html		3	3	2023-06-14 22:12:39.315666	2023-06-14 22:12:39.315667
34483255	2	84	35449	7299	271596	6746	2007	0	205 тыс. км	205	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34483255.html	WVWZZZ1Kх8Mхххх87	8	417	2023-06-14 22:12:39.505587	2023-06-14 22:12:39.50559
34483002	5	52	1485	14800	552484	13594	2013	0	175 тыс. км	175	2	2.3	1	1	\N	1	f	/auto_mitsubishi_outlander_34483002.html	JMBXJGF6xDZxxxx02	5	5	2023-06-14 22:12:40.133331	2023-06-14 22:12:40.133332
34656225	8	84	64461	26500	986065	24492	2015	13	235 тыс. км	235	2	2	2	2	\N	1	f	/auto_volkswagen_transporter_34656225.html	WV1ZZZ7HZGH037057	7	7	2023-06-14 22:12:40.369036	2023-06-14 22:12:40.369038
34656860	4	55	36565	8800	327448	8133	2013	8	62 тыс. км	62	6	0	2	2	\N	1	f	/auto_nissan_leaf_34656860.html		22	22	2023-06-15 00:16:56.83751	2023-06-15 00:16:56.837512
34656768	5	84	793	9999	372063	9242	2006	13	290 тыс. км	290	2	2.5	2	1	\N	1	f	/auto_volkswagen_touareg_34656768.html	WVGZZZ7LZ7D022536	10	10	2023-06-15 00:16:56.847155	2023-06-15 00:16:56.847157
34309787	5	62	49115	15000	558150	13864	2017	0	199 тыс. км	199	2	1.5	5	2	\N	1	f	/auto_renault_kadjar_34309787.html	VF1RFE00957057524	25	25	2023-06-15 00:16:56.853761	2023-06-15 00:16:56.853762
34483861	3	47	393	11900	442799	10998	2014	0	210 тыс. км	210	1	2	1	2	\N	1	f	/auto_mazda_6_34483861.html	JMZGJ527611167659	5	5	2023-06-15 00:16:56.863089	2023-06-15 00:16:56.86309
34483684	2	9	2319	9200	342332	8503	2003	0	329 тыс. км	329	2	2.5	2	3	\N	1	f	/auto_bmw_5_series_34483684.html	WBADP01040GX13676	2	2	2023-06-15 00:16:56.895333	2023-06-15 00:16:56.89534
34483865	4	62	42148	18600	692106	17191	2020	0	9 тыс. км	9	6	0	2	2	\N	1	t	/auto_renault_zoe_34483865.html	VF1AG000х64хххх27	15	200	2023-06-15 00:16:56.911321	2023-06-15 00:16:56.911322
34656796	212	203	56435	50636	1884168	46800	2015	0	757 тыс. км	757	0	0	2	\N	\N	6	f	/auto_scania_r_450_34656796.html		25	25	2023-06-15 00:16:57.22355	2023-06-15 00:16:57.223554
34483747	219	48	35249	6499	242607	5969	2003	0	820 тыс. км	820	2	2.3	1	3	\N	7	f	/auto_mercedes_benz_sprinter_34483747.html		10	10	2023-06-15 00:16:57.443487	2023-06-15 00:16:57.443489
34309712	8	56	1524	7000	260470	6470	2007	0	242 тыс. км	242	4	1.8	1	2	\N	1	f	/auto_opel_zafira_34309712.html	W0L0AHM757G166921	7	462	2023-06-15 00:16:57.751603	2023-06-15 00:16:57.751605
34309745	4	13	51091	24000	893040	22182	2019	0	116 тыс. км	116	6	0	2	2	\N	1	t	/auto_chevrolet_bolt_ev_34309745.html	1G1FY6S01K4131008	10	10	2023-06-15 00:16:57.924854	2023-06-15 00:16:57.924857
34309941	3	29	2386	15500	576755	14326	2016	0	190 тыс. км	190	2	1.6	2	\N	\N	1	f	/auto_hyundai_avante_34309941.html	KMHD641UGHU204852	5	5	2023-06-15 00:16:58.221218	2023-06-15 00:16:58.221222
34142525	8	62	60014	7900	294907	7256	2007	0	432 тыс. км	432	2	2	1	2	\N	1	f	/auto_renault_trafic_34142525.html	VF1FLAMAx7Yxxxx41	10	612	2023-06-15 00:16:58.506633	2023-06-15 00:16:58.506638
34309768	5	6	1943	24500	911645	22644	2015	0	95 тыс. км	95	1	3	2	1	\N	1	t	/auto_audi_q7_34309768.html	WA1LGAFE3FD013189	4	496	2023-06-15 00:16:58.917737	2023-06-15 00:16:58.917743
34686826	5	6	3222	28400	1056764	26248	2018	8	48 тыс. км	48	1	2	2	\N	\N	1	f	/auto_audi_q5_34686826.html	WAUZZZFYхH2хххх77	15	200	2023-06-20 11:39:48.080543	2023-06-20 11:39:48.080545
34686830	5	6	3222	11400	424194	10536	2011	8	210 тыс. км	210	1	2	2	1	\N	1	f	/auto_audi_q5_34686830.html	WA1LFAFP0BA112813	25	25	2023-06-20 11:39:48.870352	2023-06-20 11:39:48.870357
34686811	2	84	35449	5200	193492	4806	2005	13	230 тыс. км	230	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34686811.html	WVWZZZ1JZ5W056753	18	50	2023-06-20 11:39:49.434351	2023-06-20 11:39:49.434353
1915571	2	85	824	36000	1339560	33273	2005	1	71 тыс. км	71	1	2.5	3	\N	\N	0	f	/auto_volvo_xc90_1915571.html		10	10	2023-06-20 11:39:49.898445	2023-06-20 11:39:49.89845
34686793	8	62	588	5999	223223	5545	2009	13	247 тыс. км	247	2	1.5	1	2	\N	1	f	/auto_renault_scenic_34686793.html		18	18	2023-06-20 11:39:53.12785	2023-06-20 11:39:53.127854
1892402	4	47	392	5950	221400	5499	1997	11	276 тыс. км	276	1	1.5	1	\N	\N	0	f	/auto_mazda_323_1892402.html		10	10	2023-06-20 11:39:53.177065	2023-06-20 11:39:53.177066
1916706	3	55	498	10900	405589	10074	2004	1	135 тыс. км	135	1	0	1	\N	\N	0	f	/auto_nissan_primera_1916706.html		10	10	2023-06-20 11:39:53.229676	2023-06-20 11:39:53.229678
34686792	8	56	1524	5700	212097	5268	2006	8	184 тыс. км	184	1	1.8	2	2	\N	1	f	/auto_opel_zafira_34686792.html	W0L0AHM7562218398	4	496	2023-06-20 11:39:53.879658	2023-06-20 11:39:53.879663
34627137	3	15	1082	4950	184190	4575	2010	0	217 тыс. км	217	1	1.6	1	2	\N	1	f	/auto_citroen_c4_34627137.html	VF7UA5FS0AJ771336	10	10	2023-06-20 11:39:53.885278	2023-06-20 11:39:53.885279
1916326	3	79	702	17500	651175	16174	2008	1	50 тыс. км	50	1	1.6	1	\N	\N	0	f	/auto_toyota_corolla_1916326.html		10	10	2023-06-20 11:39:53.930777	2023-06-20 11:39:53.930778
1914738	4	70	649	10700	398147	9889	2008	1	17 тыс. км	17	1	1.2	1	\N	\N	0	f	/auto_skoda_fabia_1914738.html		14	170	2023-06-20 15:37:57.260961	2023-06-20 15:37:57.260963
34688394	5	24	2874	15777	587062	14582	2015	0	155 тыс. км	155	2	2	2	1	\N	1	f	/auto_ford_kuga_34688394.html	WF0AXXWPхAFхххх96	11	11	2023-06-20 15:37:57.308069	2023-06-20 15:37:57.30807
34656797	3	88	855	1599	59499	1478	2005	13	235 тыс. км	235	1	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34656797.html	Y6D21099050015229	4	507	2023-06-15 00:16:56.841992	2023-06-15 00:16:56.841994
34483698	4	56	1508	3650	135817	3373	2001	0	300 тыс. км	300	4	1.6	1	2	\N	1	f	/auto_opel_astra_34483698.html	W0L0TGF4815270472	24	528	2023-06-15 00:16:56.871733	2023-06-15 00:16:56.871734
34308181	2	62	586	8500	316285	7856	2013	0	249 тыс. км	249	2	1.5	1	\N	\N	1	f	/auto_renault_megane_34308181.html	VF1KZX40649278989	12	341	2023-06-15 00:16:57.015692	2023-06-15 00:16:57.015695
34483711	3	29	295	10480	391218	9626	2014	0	205 тыс. км	205	1	2.4	2	2	\N	1	t	/auto_hyundai_sonata_34483711.html	5NPE24AFxFHxxxx82	10	10	2023-06-15 00:16:57.428699	2023-06-15 00:16:57.428702
34483715	4	88	853	1473	55000	1353	1987	0	484 тыс. км	484	1	0	1	\N	\N	1	f	/auto_vaz_lada_2108_34483715.html	XTA21080xH0xxxx17	11	87	2023-06-15 00:16:57.440919	2023-06-15 00:16:57.440921
34483753	6	9	3219	5800	215818	5361	1995	0	400 тыс. км	400	4	1.8	1	3	\N	1	f	/auto_bmw_3_series_34483753.html	WBABE51070JG29237	9	9	2023-06-15 00:16:57.705262	2023-06-15 00:16:57.705265
34483794	2	9	3219	5950	221400	5499	2005	0	280 тыс. км	280	4	2.2	3	3	\N	1	f	/auto_bmw_3_series_34483794.html	WBAEN11080PB24150	10	10	2023-06-15 00:16:57.720333	2023-06-15 00:16:57.720338
34142350	3	185	2534	3200	119072	2958	2013	0	100 тыс. км	100	4	1.5	1	2	\N	1	f	/auto_geely_mk_34142350.html	Y7WJL7152D0022496	8	8	2023-06-15 00:16:57.780099	2023-06-15 00:16:57.780101
34483767	3	14	43386	7750	288378	7163	2005	0	209 тыс. км	209	1	3.5	2	\N	\N	1	f	/auto_chrysler_300_c_34483767.html	2C3LA53G06H129087	19	19	2023-06-15 00:16:57.859892	2023-06-15 00:16:57.859895
34309743	5	28	269	14800	550708	13679	2012	0	143 тыс. км	143	4	2.4	2	1	\N	1	f	/auto_honda_cr_v_34309743.html	SHSRE7870CU004694	8	410	2023-06-15 00:16:57.934949	2023-06-15 00:16:57.934951
34142320	8	48	35252	4700	175451	4317	2002	0	410 тыс. км	410	2	2.2	2	2	\N	1	f	/auto_mercedes_benz_vito_34142320.html	WDF63809x13xxxx86	9	405	2023-06-15 00:16:58.517483	2023-06-15 00:16:58.517487
33825581	6	3268	38368	11000	409310	10167	2015	0	195 тыс. км	195	1	2.5	3	2	\N	1	t	/auto_scion_tc_33825581.html	JTKJF5C7хGJхххх29	18	18	2023-06-15 00:16:58.790423	2023-06-15 00:16:58.790425
34309720	307	70	652	15410	573406	14243	2016	0	129 тыс. км	129	1	1.8	1	2	\N	1	f	/auto_skoda_octavia_34309720.html	TMBAD2NE3HB006206	5	291	2023-06-15 00:16:58.898862	2023-06-15 00:16:58.898865
34686823	5	55	2197	22790	848000	21063	2020	13	38 тыс. км	38	1	1.2	2	2	\N	1	f	/auto_nissan_qashqai_34686823.html	SJNFEAJ11U2926200	10	10	2023-06-20 11:39:48.090024	2023-06-20 11:39:48.090027
18443715	3	79	698	7000	261099	6362	2005	0	447 тыс. км	447	4	2.4	2	2	\N	1	f	/auto_toyota_camry_18443715.html	4T1BE30Kx5Uxxxx17	5	5	2023-06-29 11:19:00.683844	2023-06-29 11:19:00.683846
34738899	5	28	64096	28200	1049322	26064	2023	8	1 тыс. км	1	6	0	2	2	\N	1	f	/auto_honda_ens1_34738899.html	LHGRS2875P8004593	5	5	2023-06-29 11:19:00.841966	2023-06-29 11:19:00.841967
34738887	4	48	423	3200	119072	2958	1999	13	190 тыс. км	190	1	1.6	2	2	\N	1	f	/auto_mercedes_benz_a_class_34738887.html		12	12	2023-06-29 11:19:00.869238	2023-06-29 11:19:00.869239
34738890	197	48	35249	20800	773968	19224	2017	8	291 тыс. км	291	2	0	1	3	\N	6	f	/auto_mercedes_benz_sprinter_34738890.html		9	392	2023-06-29 11:19:00.893901	2023-06-29 11:19:00.893902
33396649	87	97	1790	42000	1562820	38818	2008	0	47 тыс. км	47	2	0	1	3	\N	4	f	/auto_kamaz_5511_33396649.html		10	214	2023-06-29 11:19:00.933474	2023-06-29 11:19:00.933476
1905767	3	29	295	12900	480009	11923	2005	1	81 тыс. км	81	1	2	3	\N	\N	0	f	/auto_hyundai_sonata_1905767.html		12	12	2023-06-29 11:19:00.945094	2023-06-29 11:19:00.945095
34570310	5	62	49115	17850	665805	16223	2018	0	233 тыс. км	233	2	1.5	2	2	\N	1	f	/auto_renault_kadjar_34570310.html	VF1RFE00x61xxxx36	12	12	2023-06-29 11:19:01.575607	2023-06-29 11:19:01.57561
34379951	307	70	3167	6500	241865	6008	2008	0	183 тыс. км	183	0	1.8	1	\N	\N	1	f	/auto_skoda_superb_34379951.html	TMBDL23U08B302234	11	11	2023-06-29 11:19:01.828106	2023-06-29 11:19:01.828108
1912281	3	58	534	9000	334890	8318	1998	1	210 тыс. км	210	1	3	2	\N	\N	0	f	/auto_peugeot_605_1912281.html		3	3	2023-06-29 11:19:01.970228	2023-06-29 11:19:01.97023
1897479	4	24	250	2400	89304	2218	1989	1	260 тыс. км	260	1	2	1	\N	\N	0	f	/auto_ford_scorpio_1897479.html		1	43	2023-06-29 11:19:02.013864	2023-06-29 11:19:02.013865
1912077	5	124	1869	87	3250	81	2008	5	28 тыс. км	28	1	2.4	1	\N	\N	1	f	/auto_great_wall_hover_1912077.html		17	17	2023-06-29 11:19:02.097459	2023-06-29 11:19:02.097461
1906656	5	52	1485	15000	558150	13864	2005	1	88 тыс. км	88	1	2.4	3	\N	\N	0	f	/auto_mitsubishi_outlander_1906656.html		10	10	2023-06-29 11:19:02.135575	2023-06-29 11:19:02.135577
34697081	5	76	672	8700	323727	8041	2007	0	166 тыс. км	166	4	2.7	2	1	\N	1	f	/auto_suzuki_grand_vitara_34697081.html	JS3DT947х74хххх73	11	11	2023-06-29 11:19:05.453559	2023-06-29 11:19:05.45356
1917046	8	58	59956	10200	379542	9427	2005	1	151 тыс. км	151	2	2	1	\N	\N	0	f	/auto_peugeot_expert_1917046.html		4	4	2023-06-29 11:19:05.500702	2023-06-29 11:19:05.500704
1917339	8	52	1475	17000	632570	15712	2006	1	75 тыс. км	75	1	2.4	1	\N	\N	0	f	/auto_mitsubishi_grandis_1917339.html		11	82	2023-06-29 11:19:05.580582	2023-06-29 11:19:05.580584
1916323	3	48	428	16500	613965	15250	2001	11	225 тыс. км	225	1	3.2	3	\N	\N	0	f	/auto_mercedes_benz_e_class_1916323.html		4	4	2023-06-29 11:19:05.657071	2023-06-29 11:19:05.657074
1916956	3	79	698	34500	1283745	31886	2008	1	без пробега	0	1	2.4	2	\N	\N	0	f	/auto_toyota_camry_1916956.html		7	7	2023-06-29 11:19:05.730785	2023-06-29 11:19:05.730788
34495453	4	13	1052	4900	182329	4529	2007	0	136 тыс. км	136	1	1.6	1	\N	\N	1	f	/auto_chevrolet_lacetti_34495453.html	Y7DNF487хK7хххх67	11	11	2023-06-29 11:19:06.289172	2023-06-29 11:19:06.289179
33313085	118	1778	49450	32000	1190720	29576	2010	0	7 тыс. км	7	2	0	2	\N	\N	4	f	/auto_manitou_mlt_735_120_lsu_33313085.html		9	404	2023-06-29 11:19:07.295434	2023-06-29 11:19:07.295438
1915846	3	47	393	14000	520940	12939	2005	1	100 тыс. км	100	1	2	2	\N	\N	0	f	/auto_mazda_6_1915846.html		12	12	2023-06-29 11:19:08.607605	2023-06-29 11:19:08.607607
1912318	4	94	1758	134	5000	124	1990	1	1 тыс. км	1	1	1.6	1	\N	\N	1	f	/auto_moskvich_azlk_21412_1912318.html		20	374	2023-06-29 11:19:08.649643	2023-06-29 11:19:08.649646
34656830	3	24	240	9000	334890	8318	2014	13	202 тыс. км	202	1	2	1	2	\N	1	t	/auto_ford_focus_34656830.html	1FADP3F28EL367022	10	10	2023-06-15 00:16:56.842672	2023-06-15 00:16:56.842674
34483764	3	84	39690	3100	115351	2865	1996	0	550 тыс. км	550	2	1.9	1	2	\N	1	f	/auto_volkswagen_passat_34483764.html	WVWZZZ32ZDE183502	24	525	2023-06-15 00:16:56.858945	2023-06-15 00:16:56.858948
34656795	25	1976	53741	1600	59536	1479	2021	0	5 тыс. км	5	1	0.25	1	6	\N	2	f	/auto_geon_scrambler_34656795.html	LY4JCNL7XM0B62263	3	3	2023-06-15 00:16:56.875395	2023-06-15 00:16:56.87542
34483771	5	52	1485	27900	1038159	25786	2018	0	86 тыс. км	86	5	2	2	1	\N	1	t	/auto_mitsubishi_outlander_34483771.html	JA4J24A59JZ614648	9	9	2023-06-15 00:16:57.016226	2023-06-15 00:16:57.016227
34483847	8	62	56291	5490	204941	5042	2007	0	287 тыс. км	287	2	1.5	1	2	\N	1	f	/auto_renault_megane_scenic_34483847.html	VF1JMSE0x36xxxx37	5	5	2023-06-15 00:16:57.425979	2023-06-15 00:16:57.425982
34483758	3	58	37293	9200	342332	8503	2012	0	250 тыс. км	250	2	1.6	1	\N	\N	1	f	/auto_peugeot_508_34483758.html	VF38D9HL0CL021095	5	5	2023-06-15 00:16:57.700982	2023-06-15 00:16:57.700984
34483699	8	29	63620	1700	63257	1571	1996	0	452 тыс. км	452	2	2.5	1	3	\N	1	f	/auto_hyundai_h_100_34483699.html	KMFFD27APTU226862	2	147	2023-06-15 00:16:57.719727	2023-06-15 00:16:57.719729
34309937	8	62	60014	11500	427915	10629	2008	0	250 тыс. км	250	2	2	3	2	\N	1	f	/auto_renault_trafic_34309937.html	VF1FLFHAH8V328766	12	12	2023-06-15 00:16:57.786376	2023-06-15 00:16:57.786377
34305251	2	70	652	7400	275354	6839	2005	0	273 тыс. км	273	2	2	2	2	\N	1	f	/auto_skoda_octavia_34305251.html	TMBGE61Z462127055	5	649	2023-06-15 00:16:58.785271	2023-06-15 00:16:58.785277
34686790	42	1231	28211	20000	744200	18485	2016	0	4 тыс. км	4	1	1	5	4	\N	2	f	/auto_polaris_rzr_34686790.html		11	72	2023-06-20 11:39:48.153028	2023-06-20 11:39:48.153029
34404542	8	56	59772	7800	290940	7089	2004	0	318 тыс. км	318	2	2.5	1	\N	\N	1	f	/auto_opel_vivaro_34404542.html	W0LF7ADAx4Vxxxx78	4	4	2023-06-29 11:19:00.684233	2023-06-29 11:19:00.684234
32440601	87	4707	60071	37000	1380100	33628	1994	0	50 тыс. км	50	2	0	2	1	\N	4	f	/auto_ppm_20_09_32440601.html		10	10	2023-06-29 11:19:00.697776	2023-06-29 11:19:00.697778
34738874	2	84	35449	6950	258610	6423	2008	13	197 тыс. км	197	1	0	1	2	\N	1	f	/auto_volkswagen_golf_34738874.html	WVWZZZ1KZ8M277105	1	1	2023-06-29 11:19:00.832366	2023-06-29 11:19:00.832367
34584156	5	58	2658	9000	334890	8318	2007	0	258 тыс. км	258	1	2.4	5	1	\N	1	f	/auto_peugeot_4007_34584156.html	VF3VVSFZF8U908579	5	5	2023-06-29 11:19:00.85373	2023-06-29 11:19:00.853731
34735304	4	24	239	9500	353495	8780	2014	0	121 тыс. км	121	1	1.6	2	2	\N	1	f	/auto_ford_fiesta_34735304.html	3FADP4EJ6FM123349	5	5	2023-06-29 11:19:00.870185	2023-06-29 11:19:00.870186
34738897	3	56	1523	1050	39071	970	1990	0	320 тыс. км	320	0	1.6	1	2	\N	1	f	/auto_opel_vectra_34738897.html	W0L00008хL5хххх54	15	200	2023-06-29 11:19:00.893451	2023-06-29 11:19:00.893452
1915040	3	29	1258	7800	290238	7209	2002	5	75 тыс. км	75	1	1.6	2	\N	\N	0	f	/auto_hyundai_accent_1915040.html		21	21	2023-06-29 11:19:00.931766	2023-06-29 11:19:00.931767
32999043	3	56	1523	6799	252991	6284	2008	0	208 тыс. км	208	4	2.2	1	2	\N	1	f	/auto_opel_vectra_32999043.html	W0L0ZCF6х81хххх77	20	373	2023-06-29 11:19:00.941485	2023-06-29 11:19:00.941486
34595566	2	70	652	6500	241865	6008	2008	0	197 тыс. км	197	4	1.6	1	\N	\N	1	f	/auto_skoda_octavia_34595566.html	TMBJX41UX98842317	4	4	2023-06-29 11:19:00.948811	2023-06-29 11:19:00.948812
34280324	4	76	681	5800	216339	5271	2007	0	150 тыс. км	150	1	1.5	2	2	\N	1	t	/auto_suzuki_swift_34280324.html	TSMMZC21x00xxxx85	10	10	2023-06-29 11:19:01.574541	2023-06-29 11:19:01.574543
34738896	2	70	652	4400	163724	4067	2008	13	157 тыс. км	157	1	1.6	1	\N	\N	1	f	/auto_skoda_octavia_34738896.html	TMBDX41U78B011941	15	205	2023-06-29 11:19:01.81989	2023-06-29 11:19:01.819893
1916631	3	88	849	1800	66978	1664	1997	1	1 тыс. км	1	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_2104_1916631.html		4	511	2023-06-29 11:19:01.934887	2023-06-29 11:19:01.934889
1917881	3	18	166	7500	279075	6932	2003	1	108 тыс. км	108	1	2	1	\N	\N	0	f	/auto_daewoo_nubira_1917881.html		7	7	2023-06-29 11:19:05.494981	2023-06-29 11:19:05.494983
1917163	3	18	161	6000	223260	5545	2003	1	113 тыс. км	113	4	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_1917163.html		10	10	2023-06-29 11:19:05.559969	2023-06-29 11:19:05.55997
1913253	2	56	509	2500	93025	2311	1988	1	361 тыс. км	361	2	1.6	1	\N	\N	0	f	/auto_opel_kadett_1913253.html		8	8	2023-06-29 11:19:05.677853	2023-06-29 11:19:05.677855
34738877	2	62	586	5899	219502	5452	2007	0	230 тыс. км	230	1	1.6	1	2	\N	1	f	/auto_renault_megane_34738877.html	VF1KM1H0R37644284	10	10	2023-06-29 11:19:08.542613	2023-06-29 11:19:08.542615
34735810	5	55	2228	17700	658617	16359	2019	0	62 тыс. км	62	1	2.5	2	1	\N	1	f	/auto_nissan_rogue_34735810.html	KNMAT2MV2KP547357	19	19	2023-06-29 11:19:08.592709	2023-06-29 11:19:08.592712
34656855	3	13	1052	5300	197213	4898	2008	8	247 тыс. км	247	4	1.8	1	2	\N	1	f	/auto_chevrolet_lacetti_34656855.html		7	459	2023-06-15 00:16:56.845493	2023-06-15 00:16:56.845496
34656801	307	9	52144	68000	2530280	62848	2022	0	1 тыс. км	1	2	2	2	1	\N	1	f	/auto_bmw_6_series_gt_34656801.html	WBAJY010х0Cхххх36	10	10	2023-06-15 00:16:56.853147	2023-06-15 00:16:56.853149
34377859	8	79	28487	10500	390705	9705	2012	0	220 тыс. км	220	2	2.2	3	2	\N	1	f	/auto_toyota_verso_34377859.html	NMTDB26R80R008601	15	15	2023-06-15 00:16:56.892518	2023-06-15 00:16:56.89252
34483843	5	6	3222	14500	541285	13319	2011	0	300 тыс. км	300	2	2	3	1	\N	1	f	/auto_audi_q5_34483843.html	WAUZZZ8RxCAxxxx26	11	76	2023-06-15 00:16:57.429674	2023-06-15 00:16:57.429676
34142332	4	56	1508	4700	175451	4317	2004	0	239 тыс. км	239	1	1.6	1	2	\N	1	f	/auto_opel_astra_34142332.html	W0L0AHL4x55xxxx78	25	25	2023-06-15 00:16:57.438307	2023-06-15 00:16:57.43831
34309925	3	84	39690	10500	390705	9705	2015	0	105 тыс. км	105	1	1.8	2	2	\N	1	t	/auto_volkswagen_passat_34309925.html	1VWAT7A31FC071287	5	5	2023-06-15 00:16:57.695435	2023-06-15 00:16:57.695437
34275193	3	94	900	350	13024	323	1989	0	100 тыс. км	100	4	1.5	1	3	\N	1	f	/auto_moskvich_azlk_412_34275193.html	XTK412IE0K0062004	5	289	2023-06-15 00:16:57.766061	2023-06-15 00:16:57.766063
34142254	227	167	2625	2700	100467	2495	1986	0	400 тыс. км	400	2	10	1	3	\N	7	f	/auto_ikarus_256_34142254.html		24	24	2023-06-15 00:16:57.854867	2023-06-15 00:16:57.854869
34309784	5	9	96	13900	517219	12847	2011	0	233 тыс. км	233	1	4.4	2	1	\N	1	f	/auto_bmw_x5_34309784.html	5UXZV8C56BL421767	25	25	2023-06-15 00:16:57.931753	2023-06-15 00:16:57.931756
34309936	5	85	824	49000	1823290	45288	2016	0	108 тыс. км	108	5	2	2	1	\N	1	f	/auto_volvo_xc90_34309936.html	YV1LFBABDH1136255	15	15	2023-06-15 00:16:58.307508	2023-06-15 00:16:58.307513
34309729	8	48	35252	13000	483730	12015	2009	0	322 тыс. км	322	2	2.2	1	3	\N	1	f	/auto_mercedes_benz_vito_34309729.html	WDF63960313553131	25	25	2023-06-15 00:16:58.782981	2023-06-15 00:16:58.782983
34294067	5	6	1943	13525	503250	12500	2007	0	227 тыс. км	227	2	3	2	1	\N	1	f	/auto_audi_q7_34294067.html	WAUZZZ4L17D069933	9	398	2023-06-15 00:16:58.796934	2023-06-15 00:16:58.796936
34686835	227	84	35399	8500	316285	7856	2000	0	18 тыс. км	18	2	2.9	1	3	\N	7	f	/auto_volkswagen_lt_34686835.html	WV1ZZZ2DZYH002175	4	503	2023-06-20 11:39:48.154303	2023-06-20 11:39:48.154304
34686805	3	29	1258	8888	330722	8215	2015	0	148 тыс. км	148	1	1.6	2	2	\N	1	t	/auto_hyundai_accent_34686805.html	KMHCT4AE2FU927455	6	6	2023-06-20 11:39:48.371179	2023-06-20 11:39:48.371182
1912343	4	79	702	7000	260470	6470	2001	1	130 тыс. км	130	1	1.4	1	\N	\N	0	f	/auto_toyota_corolla_1912343.html		20	360	2023-06-20 11:39:48.414382	2023-06-20 11:39:48.414384
34686825	5	13	2544	9700	360937	8965	2008	0	138 тыс. км	138	0	0	2	\N	\N	1	f	/auto_chevrolet_captiva_34686825.html	Y6DCD26FJ7B083543	12	341	2023-06-20 11:39:48.788803	2023-06-20 11:39:48.788811
34521061	8	56	1524	7900	293959	7302	2009	0	227 тыс. км	227	2	1.7	1	2	\N	1	f	/auto_opel_zafira_34521061.html	W0L0AHM75A2019374	1	1	2023-06-20 11:39:49.431961	2023-06-20 11:39:49.431965
1914278	4	76	681	13800	513498	12755	2007	1	32 тыс. км	32	1	1.5	2	\N	\N	0	f	/auto_suzuki_swift_1914278.html		12	12	2023-06-20 11:39:49.96633	2023-06-20 11:39:49.966334
1914282	3	47	393	15350	571174	14187	2006	1	1 тыс. км	1	1	2	1	\N	\N	0	f	/auto_mazda_6_1914282.html		14	14	2023-06-20 11:39:50.886695	2023-06-20 11:39:50.886699
34686810	3	29	1258	7500	279075	6932	2012	0	179 тыс. км	179	4	1.4	1	2	\N	1	f	/auto_hyundai_accent_34686810.html	Z94CT41CACR141438	14	14	2023-06-20 11:39:53.103597	2023-06-20 11:39:53.103606
34686762	3	55	498	2200	81862	2033	1995	13	100 тыс. км	100	1	0	1	2	\N	1	f	/auto_nissan_primera_34686762.html		12	12	2023-06-20 11:39:53.126306	2023-06-20 11:39:53.126308
34686794	4	17	3166	3300	122793	3050	2010	13	250 тыс. км	250	2	1.5	1	2	\N	1	f	/auto_dacia_sandero_34686794.html	UU1BSDEKP44015286	10	10	2023-06-20 11:39:53.145983	2023-06-20 11:39:53.145986
34686804	3	84	39690	8000	297680	7394	2007	8	245 тыс. км	245	2	2	2	\N	\N	1	f	/auto_volkswagen_passat_34686804.html	WVWZZZ3CZ8Z000835	1	1	2023-06-20 11:39:53.153624	2023-06-20 11:39:53.153625
1899184	3	88	856	1290	48000	1192	2006	1	70 тыс. км	70	1	1.6	1	\N	\N	1	f	/auto_vaz_lada_2110_1899184.html		19	19	2023-06-20 11:39:53.164838	2023-06-20 11:39:53.164839
33128458	6	84	3006	9500	353495	8780	2012	0	218 тыс. км	218	1	2	2	2	\N	1	t	/auto_volkswagen_cc_passat_cc_33128458.html	WVWMN7AN7CE509788	2	2	2023-06-20 11:39:53.87399	2023-06-20 11:39:53.873995
34686796	3	18	165	1650	61397	1525	2007	0	172 тыс. км	172	1	1.5	1	2	\N	1	f	/auto_daewoo_nexia_34686796.html	XWB3L31UD7A246482	15	15	2023-06-20 11:39:53.884993	2023-06-20 11:39:53.884994
34686791	5	24	1945	19500	725595	18023	2017	8	101 тыс. км	101	1	2	2	2	\N	1	f	/auto_ford_edge_34686791.html	2FMPK3K93JBB44823	11	76	2023-06-20 11:39:53.903269	2023-06-20 11:39:53.90327
34401115	254	91	929	3200	119359	2908	1999	0	80 тыс. км	80	2	2.7	1	3	\N	6	f	/auto_gaz_3302_gazel_34401115.html	Y7D27050xX1xxxx19	12	12	2023-06-29 11:19:00.692531	2023-06-29 11:19:00.692532
34738898	2	70	652	15500	576755	14326	2015	13	235 тыс. км	235	2	2	2	2	\N	1	f	/auto_skoda_octavia_34738898.html	TMBJK9NE6G0048460	5	5	2023-06-29 11:19:00.840565	2023-06-29 11:19:00.840568
34684684	3	84	785	10500	390705	9705	2015	0	105 тыс. км	105	1	1.8	2	2	\N	1	f	/auto_volkswagen_jetta_34684684.html	3VWD17AJ9FM300816	10	10	2023-06-29 11:19:00.861463	2023-06-29 11:19:00.861464
34738893	3	48	428	1400	52094	1294	1981	13	374 тыс. км	374	2	2.4	1	3	\N	1	f	/auto_mercedes_benz_e_class_34738893.html		15	200	2023-06-29 11:19:00.88752	2023-06-29 11:19:00.887522
1892609	4	70	652	13300	494893	12292	2007	5	65 тыс. км	65	1	1.6	1	\N	\N	0	f	/auto_skoda_octavia_1892609.html		13	13	2023-06-29 11:19:00.906235	2023-06-29 11:19:00.906237
1911215	3	9	30851	10400	386984	9612	1999	1	295 тыс. км	295	2	2	1	\N	\N	1	f	/auto_bmw_316_1911215.html		13	113	2023-06-29 11:19:00.939474	2023-06-29 11:19:00.939475
1911245	2	88	849	4800	178608	4436	2006	1	64 тыс. км	64	4	1.5	1	\N	\N	0	f	/auto_vaz_lada_2104_1911245.html		1	1	2023-06-29 11:19:00.946707	2023-06-29 11:19:00.946708
1908299	9	52	1478	26000	967460	24030	2008	1	без пробега	0	2	2.5	2	\N	\N	0	f	/auto_mitsubishi_l_200_1908299.html		10	10	2023-06-29 11:19:01.950103	2023-06-29 11:19:01.950105
1913560	3	9	32251	8300	308843	7671	1994	1	234 тыс. км	234	1	2.5	2	\N	\N	1	f	/auto_bmw_525_1913560.html		12	334	2023-06-29 11:19:01.963278	2023-06-29 11:19:01.96328
1910481	8	56	31454	14300	532103	13217	2007	1	65 тыс. км	65	2	2	1	\N	\N	0	f	/auto_opel_vivaro_gruz_1910481.html		4	505	2023-06-29 11:19:02.048511	2023-06-29 11:19:02.048513
34738883	5	79	63765	34000	1265140	31424	2022	0	1 тыс. км	1	6	0	2	2	\N	1	f	/auto_toyota_bz4x_34738883.html	LFMKP14T2N0005848	6	6	2023-06-29 11:19:05.448943	2023-06-29 11:19:05.448946
1917007	3	88	855	7300	271633	6747	2009	1	4 тыс. км	4	1	1.6	1	\N	\N	1	f	/auto_vaz_lada_21099_1917007.html		14	28	2023-06-29 11:19:05.553439	2023-06-29 11:19:05.553441
34483855	8	15	146	4440	165212	4104	2005	0	250 тыс. км	250	2	2	1	2	\N	1	f	/auto_citroen_xsara_picasso_34483855.html	VF7CHRHYх39хххх63	5	5	2023-06-15 00:16:56.84776	2023-06-15 00:16:56.847762
34656807	197	84	60426	17400	647454	16082	2016	13	207 тыс. км	207	0	2	1	3	\N	6	f	/auto_volkswagen_crafter_34656807.html	WV1ZZZ2EZG6066156	18	55	2023-06-15 00:16:56.854902	2023-06-15 00:16:56.854904
34483856	2	84	39690	11299	420436	10443	2013	0	237 тыс. км	237	2	0	1	2	\N	1	f	/auto_volkswagen_passat_34483856.html	WVWZZZ3CхEAхххх29	1	30	2023-06-15 00:16:56.952312	2023-06-15 00:16:56.952314
34482300	3	79	698	15500	578615	14237	2017	0	149 тыс. км	149	4	2.5	3	2	\N	1	f	/auto_toyota_camry_34482300.html	4T1BF1FKxHUxxxx90	7	7	2023-06-15 00:16:57.424886	2023-06-15 00:16:57.42489
34483721	5	55	54621	13490	503581	12391	2019	0	30 тыс. км	30	1	1.6	2	2	\N	1	t	/auto_nissan_kicks_34483721.html	3N1CP5CUxKLxxxx01	12	12	2023-06-15 00:16:57.433989	2023-06-15 00:16:57.433992
34142287	3	75	666	7682	285846	7100	2009	0	179 тыс. км	179	1	2	1	1	\N	1	f	/auto_subaru_legacy_34142287.html	JF1BM5LA1AG006238	10	10	2023-06-15 00:16:57.68519	2023-06-15 00:16:57.685196
34309725	5	190	53598	9700	360937	8965	2019	0	115 тыс. км	115	4	1.5	1	2	\N	1	f	/auto_chery_tiggo_2_34309725.html	LVVDB11B1KE021260	10	10	2023-06-15 00:16:57.709933	2023-06-15 00:16:57.709935
34142263	3	14	1070	22600	840946	20888	2017	0	119 тыс. км	119	1	3.6	2	2	\N	1	t	/auto_chrysler_pacifica_34142263.html	2C4RC1BG4JR149355	5	5	2023-06-15 00:16:58.316803	2023-06-15 00:16:58.316806
34142250	5	9	96	20700	770247	19132	2013	0	230 тыс. км	230	2	3	2	1	\N	1	t	/auto_bmw_x5_34142250.html	5UXZW0C51D0B94736	9	397	2023-06-15 00:16:58.894093	2023-06-15 00:16:58.894095
34483900	4	55	36565	24700	922051	22688	2020	0	18 тыс. км	18	6	0	2	2	\N	1	t	/auto_nissan_leaf_34483900.html	1N4AZ1CVxMCxxxx44	5	5	2023-06-15 01:13:12.227638	2023-06-15 01:13:12.22764
34483949	307	6	32378	27999	1045202	25718	2017	0	136 тыс. км	136	1	0	2	\N	\N	1	t	/auto_audi_a7_sportback_34483949.html	WAU22AFCxHNxxxx95	10	220	2023-06-15 01:13:12.231991	2023-06-15 01:13:12.231993
34312417	4	17	3166	7000	261310	6429	2018	0	31 тыс. км	31	1	1	1	\N	\N	1	f	/auto_dacia_sandero_34312417.html	UU1B5220x61xxxx28	25	25	2023-06-15 01:13:12.233893	2023-06-15 01:13:12.233894
34656982	2	9	2319	18300	680943	16914	2014	8	210 тыс. км	210	2	3	2	3	\N	1	f	/auto_bmw_5_series_34656982.html	WBA5K11020D758948	10	10	2023-06-15 01:13:12.365425	2023-06-15 01:13:12.365429
34656983	307	70	652	8700	323727	8041	2013	13	302 тыс. км	302	2	2	1	2	\N	1	f	/auto_skoda_octavia_34656983.html	TMBCE61Z4C8025777	5	5	2023-06-15 01:13:12.368543	2023-06-15 01:13:12.368545
34656985	3	9	2319	62500	2325625	57765	2017	8	71 тыс. км	71	1	4.4	2	1	\N	1	f	/auto_bmw_5_series_34656985.html	WBAJB9C5хJBхххх84	5	5	2023-06-15 01:13:12.405954	2023-06-15 01:13:12.405956
34656984	8	118	37700	15127	562876	13981	2017	13	297 тыс. км	297	1	3.6	2	2	\N	1	f	/auto_dodge_grand_caravan_34656984.html	2C4RDGEG2HR718063	10	10	2023-06-15 01:13:12.412861	2023-06-15 01:13:12.412862
33976111	2	33	3488	7800	290238	7209	2009	0	45 тыс. км	45	4	1.6	1	2	\N	1	t	/auto_kia_soul_33976111.html	KNAJG551297076140	1	1	2023-06-15 01:13:12.421434	2023-06-15 01:13:12.421436
34136982	310	1583	46901	149000	5544290	137712	2011	0	1 тыс. км	1	0	9	2	3	\N	10	f	/auto_john_deere_9770_sts_34136982.html		2	153	2023-06-15 01:13:12.447092	2023-06-15 01:13:12.447094
34136943	311	1583	40585	169000	6288490	156197	2008	0	1 тыс. км	1	1	0	2	\N	\N	10	f	/auto_john_deere_4830_34136943.html		2	153	2023-06-15 01:13:12.454944	2023-06-15 01:13:12.454946
33976018	3	48	428	17900	666059	16544	2010	0	95 тыс. км	95	1	3.5	3	3	\N	1	f	/auto_mercedes_benz_e_class_33976018.html	WDD2120571A347108	7	7	2023-06-15 01:13:12.457514	2023-06-15 01:13:12.457517
34656988	2	67	2053	6000	223260	5545	2005	0	239 тыс. км	239	2	2	2	2	\N	1	f	/auto_seat_altea_34656988.html	VSSZZZ5PZ5R037587	1	48	2023-06-15 01:13:12.463775	2023-06-15 01:13:12.463776
34477588	5	2233	60290	39999	1488363	36969	2022	0	10 тыс. км	10	6	0	2	1	\N	1	t	/auto_tesla_model_y_34477588.html		9	9	2023-06-15 01:13:12.486316	2023-06-15 01:13:12.486318
34655388	5	47	37381	12800	476288	11830	2013	0	152 тыс. км	152	1	2	2	2	\N	1	t	/auto_mazda_cx_5_34655388.html	JM3KE2BE8E0383926	3	3	2023-06-15 01:13:12.486973	2023-06-15 01:13:12.486974
34656980	3	6	51	5358	199371	4952	2000	0	230 тыс. км	230	2	3.3	3	1	\N	1	f	/auto_audi_a8_34656980.html	WAUZZZ4DZ1N000175	22	163	2023-06-15 01:13:12.498409	2023-06-15 01:13:12.49841
34481096	5	24	1945	19000	706990	17561	2019	0	68 тыс. км	68	1	2	2	2	\N	1	t	/auto_ford_edge_34481096.html	2FMPK3J93KBC25839	5	307	2023-06-15 01:13:12.521836	2023-06-15 01:13:12.521837
34656957	5	9	2153	20300	755363	18762	2013	0	168 тыс. км	168	1	3	3	1	\N	1	f	/auto_bmw_x6_34656957.html	WBAFG21050L966940	5	307	2023-06-15 01:13:12.648127	2023-06-15 01:13:12.64813
34483936	2	84	35449	8300	309839	7623	2010	0	229 тыс. км	229	2	1.6	2	2	\N	1	f	/auto_volkswagen_golf_34483936.html	WVWZZZ1KxBMxxxx04	5	5	2023-06-15 01:16:02.879423	2023-06-15 01:16:02.879424
34738895	4	9	44838	16500	613965	15250	2017	13	140 тыс. км	140	6	0	2	3	\N	1	f	/auto_bmw_i3_34738895.html	WBY1Z6103H7A07671	5	5	2023-06-29 11:19:00.858933	2023-06-29 11:19:00.858935
34310038	2	15	129	7250	270642	6659	2009	0	273 тыс. км	273	2	2	2	2	\N	1	f	/auto_citroen_c5_34310038.html	WF7RWRHRx9Lxxxx47	18	18	2023-06-15 01:16:02.882303	2023-06-15 01:16:02.882304
34483939	3	56	1523	1550	57861	1423	1989	0	260 тыс. км	260	4	2	1	2	\N	1	f	/auto_opel_vectra_34483939.html	W0L00008xK5xxxx88	1	603	2023-06-15 01:16:02.88518	2023-06-15 01:16:02.885181
34483930	14	2108	41843	430	16051	394	2008	0	11 тыс. км	11	0	0	1	6	\N	2	f	/auto_alpha_50_34483930.html		2	135	2023-06-15 01:16:02.887219	2023-06-15 01:16:02.88722
34737829	2	84	35449	11999	446483	11090	2014	0	227 тыс. км	227	2	0	2	2	\N	1	f	/auto_volkswagen_golf_34737829.html	WVWZZZAUхEPхххх22	18	18	2023-06-29 11:19:00.876426	2023-06-29 11:19:00.876427
34738889	3	88	843	3555	132282	3286	2007	13	69 тыс. км	69	1	1.6	1	2	\N	1	f	/auto_vaz_lada_1118_kalina_34738889.html	XTA11183060036644	11	11	2023-06-29 11:19:00.902956	2023-06-29 11:19:00.902957
1907854	3	6	47	26000	967460	24030	2006	1	100 тыс. км	100	1	1.8	3	\N	\N	0	f	/auto_audi_a4_1907854.html		11	11	2023-06-29 11:19:00.947867	2023-06-29 11:19:00.947868
34738860	5	70	49223	34900	1298629	32256	2019	13	127 тыс. км	127	2	1.97	2	1	\N	1	f	/auto_skoda_kodiaq_34738860.html	TMBLK9NS2L8506408	5	302	2023-06-29 11:19:01.33303	2023-06-29 11:19:01.333038
34738892	5	76	674	9900	368379	9150	2007	0	240 тыс. км	240	2	1.5	1	\N	\N	1	f	/auto_suzuki_jimny_34738892.html	JSAFJB53V00341131	15	15	2023-06-29 11:19:01.815974	2023-06-29 11:19:01.815979
1906340	8	55	1737	6800	253028	6285	1999	1	240 тыс. км	240	2	2.3	1	\N	\N	1	f	/auto_nissan_vanette_pass_1906340.html		22	161	2023-06-29 11:19:01.919525	2023-06-29 11:19:01.919528
34483994	2	24	240	9750	362798	9011	2013	0	198 тыс. км	198	2	1.6	1	2	\N	1	f	/auto_ford_focus_34483994.html	WF0LXXGCBLDC60070	9	9	2023-06-15 01:16:02.999765	2023-06-15 01:16:02.999782
34656979	3	13	1060	2450	91165	2264	2004	13	218 тыс. км	218	1	1.8	1	2	\N	1	f	/auto_chevrolet_nubira_34656979.html	KLANF193E4K990601	22	161	2023-06-15 01:16:03.000774	2023-06-15 01:16:03.000776
34627657	4	84	35449	5950	221400	5499	2006	0	214 тыс. км	214	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34627657.html	WVWZZZ1Kх7Bхххх73	24	527	2023-06-20 11:39:48.154773	2023-06-20 11:39:48.154774
1915596	8	76	672	18000	669780	16636	2006	1	46 тыс. км	46	1	2	4	\N	\N	0	f	/auto_suzuki_grand_vitara_1915596.html		13	123	2023-06-29 11:19:02.001558	2023-06-29 11:19:02.00156
34483889	4	88	853	600	22326	555	1992	0	32 тыс. км	32	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2108_34483889.html	XTA21080хN1хххх28	8	410	2023-06-15 01:16:03.094974	2023-06-15 01:16:03.094976
34142437	5	28	269	20100	750333	18462	2018	0	149 тыс. км	149	1	1.5	2	1	\N	1	t	/auto_honda_cr_v_34142437.html	7FARW2H8xJExxxx40	11	11	2023-06-15 01:16:03.424626	2023-06-15 01:16:03.424628
34483905	8	84	35448	9250	345302	8496	2009	0	245 тыс. км	245	2	1.9	1	2	\N	1	f	/auto_volkswagen_caddy_34483905.html	WV2ZZZ2Kx9Xxxxx83	10	10	2023-06-15 01:16:03.43963	2023-06-15 01:16:03.439637
34278922	2	70	652	4450	165585	4113	2002	0	304 тыс. км	304	2	1.9	1	1	\N	1	f	/auto_skoda_octavia_34278922.html	TMBKS21U638674269	5	5	2023-06-15 01:16:03.710617	2023-06-15 01:16:03.71062
34142492	4	88	854	1350	50234	1248	1998	0	85 тыс. км	85	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2109_34142492.html	XTA210830W9010903	25	25	2023-06-15 01:16:03.733466	2023-06-15 01:16:03.733468
34309956	3	9	2319	24800	922808	22921	2015	0	178 тыс. км	178	2	2	2	1	\N	1	f	/auto_bmw_5_series_34309956.html	WBA5C91050D464519	1	1	2023-06-15 01:16:04.460025	2023-06-15 01:16:04.460032
34142454	8	23	35398	4200	156282	3882	1998	0	176 тыс. км	176	1	1.6	1	\N	\N	1	f	/auto_fiat_scudo_34142454.html	ZFA22000х12хххх50	1	644	2023-06-15 01:16:06.317878	2023-06-15 01:16:06.317882
33976167	3	88	861	2700	100467	2495	2003	0	188 тыс. км	188	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2115_samara_33976167.html	XTA21150х33хххх75	11	11	2023-06-15 01:16:06.333262	2023-06-15 01:16:06.333267
33987819	2	70	652	14000	520940	12939	2014	0	236 тыс. км	236	2	2	1	1	\N	1	f	/auto_skoda_octavia_33987819.html	TMBLJN9EхF0хххх47	22	22	2023-06-15 01:16:06.408706	2023-06-15 01:16:06.408707
33825900	5	84	63346	43499	1618598	40204	2017	0	109 тыс. км	109	2	3	3	1	\N	1	f	/auto_volkswagen_touareg_r_33825900.html	WVGZZZ7PхHDхххх49	25	25	2023-06-15 01:16:06.435134	2023-06-15 01:16:06.435135
33825788	3	9	2319	25800	960018	23845	2013	0	93 тыс. км	93	2	3	3	3	\N	1	f	/auto_bmw_5_series_33825788.html	WBAXA5C5хEDхххх09	25	540	2023-06-15 01:16:06.806152	2023-06-15 01:16:06.806156
34142681	4	47	1692	8250	306983	7625	2012	0	211 тыс. км	211	2	1.6	1	2	\N	1	f	/auto_mazda_3_34142681.html	JMZBLB4Yх11хххх86	10	220	2023-06-15 01:16:07.280922	2023-06-15 01:16:07.280924
33826269	4	47	394	4000	148840	3697	1996	0	258 тыс. км	258	1	1.8	1	2	\N	1	f	/auto_mazda_626_33826269.html	JMZGE14B201443178	8	418	2023-06-15 01:16:07.373596	2023-06-15 01:16:07.373599
34667692	3	79	698	11200	416752	10352	2008	0	285 тыс. км	285	4	3.5	2	2	\N	1	f	/auto_toyota_camry_34667692.html	JTNBK40Kх03хххх56	7	443	2023-06-29 11:19:05.451636	2023-06-29 11:19:05.451638
34706073	4	67	636	13500	502335	12477	2013	0	189 тыс. км	189	2	1.6	2	2	\N	1	f	/auto_seat_leon_34706073.html		10	10	2023-06-29 11:19:05.490675	2023-06-29 11:19:05.490677
34738867	5	37	35857	27300	1015833	25232	2013	13	90 тыс. км	90	2	2.2	2	1	\N	1	f	/auto_land_rover_range_rover_evoque_34738867.html		10	10	2023-06-29 11:19:08.538562	2023-06-29 11:19:08.538565
1892903	8	84	3156	13000	483730	12015	2002	1	183 тыс. км	183	2	1.9	1	\N	\N	1	f	/auto_volkswagen_t5_transporter_gruz_1892903.html		1	1	2023-06-29 11:19:08.573164	2023-06-29 11:19:08.573167
1916825	2	15	127	296	11000	273	1991	1	220 тыс. км	220	2	1.8	1	\N	\N	0	t	/auto_citroen_bx_1916825.html		5	289	2023-06-20 11:39:48.158665	2023-06-20 11:39:48.158666
1917010	3	79	698	0	0	0	2004	1	96 тыс. км	96	1	2.4	2	\N	\N	0	f	/auto_toyota_camry_1917010.html		10	610	2023-06-29 11:19:05.738015	2023-06-29 11:19:05.738018
1917384	3	48	407	3000	111630	2773	1983	1	300 тыс. км	300	1	2	1	\N	\N	1	f	/auto_mercedes_benz_190_1917384.html		10	10	2023-06-29 11:19:06.351407	2023-06-29 11:19:06.351414
1897502	3	56	1518	7000	260470	6470	1995	1	220 тыс. км	220	1	2.5	1	\N	\N	0	f	/auto_opel_omega_1897502.html		12	12	2023-06-29 11:19:07.781711	2023-06-29 11:19:07.781712
1916955	3	88	855	5000	186050	4621	2004	1	84 тыс. км	84	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_21099_1916955.html		7	453	2023-06-29 11:19:08.565791	2023-06-29 11:19:08.565794
1917124	3	56	1523	4000	148840	3697	1992	1	250 тыс. км	250	1	1.6	1	\N	\N	0	f	/auto_opel_vectra_1917124.html		24	24	2023-06-29 11:19:08.632767	2023-06-29 11:19:08.632771
34686821	4	33	2033	6000	223260	5545	2007	13	320 тыс. км	320	4	1.6	2	\N	\N	1	f	/auto_kia_ceed_34686821.html		7	7	2023-06-20 11:39:48.261238	2023-06-20 11:39:48.26124
34686789	4	48	2622	7200	267912	6655	2006	13	190 тыс. км	190	2	2	2	2	\N	1	f	/auto_mercedes_benz_b_class_34686789.html	WDD2452071J070627	4	4	2023-06-20 11:39:48.385843	2023-06-20 11:39:48.385845
34142552	3	24	241	23500	874435	21720	2020	0	38 тыс. км	38	5	2	2	2	\N	1	t	/auto_ford_fusion_34142552.html	3FA6P0SU4LR231631	12	12	2023-06-15 01:16:03.072378	2023-06-15 01:16:03.07238
34483928	8	29	55769	3100	115723	2847	2000	0	433 тыс. км	433	2	2.5	1	3	\N	1	f	/auto_hyundai_h_200_34483928.html	KMJWVH7Fx1Uxxxx87	10	210	2023-06-15 01:16:03.41879	2023-06-15 01:16:03.418792
34310113	307	70	652	6800	253844	6246	2011	0	226 тыс. км	226	1	1.8	1	2	\N	1	f	/auto_skoda_octavia_34310113.html	TMBCK41ZxCBxxxx02	15	197	2023-06-15 01:16:03.431663	2023-06-15 01:16:03.43167
34483924	2	24	246	9000	335970	8266	2011	0	250 тыс. км	250	2	2	1	2	\N	1	f	/auto_ford_mondeo_34483924.html	WF0GXXGBxGBxxxx65	1	45	2023-06-15 01:16:03.439092	2023-06-15 01:16:03.439094
34310115	4	6	31914	8900	332237	8175	2010	0	163 тыс. км	163	2	1.6	1	3	\N	1	f	/auto_audi_a1_34310115.html	WAUZZZ8XxBBxxxx23	5	5	2023-06-15 01:16:03.462506	2023-06-15 01:16:03.462507
34483956	4	24	240	7290	271261	6738	2010	0	68 тыс. км	68	1	1.4	1	2	\N	1	f	/auto_ford_focus_34483956.html	WF0PXXGCхPAхххх35	1	1	2023-06-15 01:16:03.675272	2023-06-15 01:16:03.675285
34310050	5	29	1268	9400	349774	8688	2006	0	240 тыс. км	240	2	0	1	1	\N	1	f	/auto_hyundai_tucson_34310050.html	KMHJN81VP6U334158	15	194	2023-06-15 01:16:03.687456	2023-06-15 01:16:03.687461
34142783	3	52	457	13000	483730	12015	2016	0	122 тыс. км	122	1	2	1	2	\N	1	t	/auto_mitsubishi_lancer_34142783.html	JA32U2FU4GU001656	10	10	2023-06-15 01:16:03.696121	2023-06-15 01:16:03.696123
34483885	2	62	586	8490	315913	7847	2013	0	216 тыс. км	216	2	1.5	1	2	\N	1	f	/auto_renault_megane_34483885.html	VF1KZ140х48хххх18	5	5	2023-06-15 01:16:03.700875	2023-06-15 01:16:03.700876
34142666	8	23	219	9999	372063	9242	2011	0	101 тыс. км	101	4	1.4	1	2	\N	1	f	/auto_fiat_doblo_34142666.html	ZFA26300009108342	24	516	2023-06-15 01:16:03.722985	2023-06-15 01:16:03.722987
34309978	8	84	792	14700	546987	13586	2013	0	214 тыс. км	214	2	2	2	2	\N	1	f	/auto_volkswagen_sharan_34309978.html	WVWZZZ7NZDV034274	18	51	2023-06-15 01:16:03.727521	2023-06-15 01:16:03.727522
33975991	3	88	843	2500	93025	2311	2007	0	230 тыс. км	230	4	1.6	1	2	\N	1	f	/auto_vaz_lada_1118_kalina_33975991.html	XTA11183х70хххх95	22	22	2023-06-15 01:16:03.917658	2023-06-15 01:16:03.917663
34142569	3	91	883	350	13024	323	1990	0	500 тыс. км	500	1	2.4	1	3	\N	1	f	/auto_gaz_2410_34142569.html	XTH24100хL0хххх87	12	12	2023-06-15 01:16:03.934364	2023-06-15 01:16:03.934368
34483971	3	190	2087	2500	93025	2311	2007	0	148 тыс. км	148	4	1.6	1	2	\N	1	f	/auto_chery_amulet_34483971.html	Y6DDA11AX7D013231	4	499	2023-06-15 01:16:05.235602	2023-06-15 01:16:05.235606
33976103	8	56	59894	3800	141398	3512	2006	0	255 тыс. км	255	4	1.6	1	2	\N	1	f	/auto_opel_combo_33976103.html	W0L0XCF2563071985	11	84	2023-06-15 01:16:06.316608	2023-06-15 01:16:06.316613
34142567	5	52	1485	7000	260470	6470	2008	0	203 тыс. км	203	4	2.4	2	1	\N	1	f	/auto_mitsubishi_outlander_34142567.html	JMBXRCU5W8U001728	5	5	2023-06-15 01:16:06.319306	2023-06-15 01:16:06.319309
33827841	307	56	1523	4200	156282	3882	2003	0	336 тыс. км	336	2	2.2	1	2	\N	1	f	/auto_opel_vectra_33827841.html	W0L0ZCF6х38хххх74	3	3	2023-06-15 01:16:06.334171	2023-06-15 01:16:06.334175
33975801	8	56	1524	6350	236284	5869	2008	0	196 тыс. км	196	2	1.7	1	2	\N	1	f	/auto_opel_zafira_33975801.html	W0L0AHM7х8Gхххх07	9	398	2023-06-15 01:16:06.338571	2023-06-15 01:16:06.338573
34137068	5	9	1866	17900	666059	16544	2013	0	228 тыс. км	228	2	2	2	1	\N	1	f	/auto_bmw_x3_34137068.html	WBAWY310800A84121	2	2	2023-06-15 01:16:06.384101	2023-06-15 01:16:06.384103
33825546	2	75	1720	15350	571174	14187	2015	0	147 тыс. км	147	1	2.5	5	1	\N	1	t	/auto_subaru_outback_33825546.html	4S4BSACC5F3320108	5	5	2023-06-15 01:16:06.416583	2023-06-15 01:16:06.416584
33976014	14	1100	40107	600	22326	555	2015	0	12 тыс. км	12	1	0	1	\N	\N	2	f	/auto_kanuni_sport_33976014.html		10	226	2023-06-15 01:16:06.429044	2023-06-15 01:16:06.429045
33825305	9	24	2103	34000	1265140	31424	2019	0	70 тыс. км	70	1	5	2	1	\N	1	t	/auto_ford_f_150_33825305.html	1FTFX1E57KKE85387	5	5	2023-06-15 01:16:06.582423	2023-06-15 01:16:06.582426
34142296	3	18	161	2800	104188	2588	2008	0	107 тыс. км	107	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34142296.html	SUPTF69YD8W414343	15	15	2023-06-15 01:16:07.271462	2023-06-15 01:16:07.271466
33835591	3	55	2034	10490	390333	9695	2012	0	50 тыс. км	50	1	2.5	5	2	\N	1	f	/auto_nissan_teana_33835591.html	JN1BBUJ3хU0хххх02	6	557	2023-06-15 01:16:07.272638	2023-06-15 01:16:07.272641
33825828	3	13	1038	3300	122793	3050	2005	0	162 тыс. км	162	1	1.4	1	2	\N	1	f	/auto_chevrolet_aveo_33825828.html	Y6DSF69Yх6Bхххх18	20	605	2023-06-15 01:16:07.330818	2023-06-15 01:16:07.330821
33976010	4	48	423	6200	230702	5730	2007	0	214 тыс. км	214	1	1.5	2	2	\N	1	f	/auto_mercedes_benz_a_class_33976010.html	WDD1690311J477332	13	114	2023-06-15 01:16:07.397178	2023-06-15 01:16:07.39718
1916602	5	48	46268	59900	2228879	55362	2006	1	20 тыс. км	20	1	5	3	\N	\N	0	f	/auto_mercedes_benz_glc_class_1916602.html		12	12	2023-06-20 11:39:48.414915	2023-06-20 11:39:48.414917
34686834	8	15	59440	22500	837225	20795	2019	13	144 тыс. км	144	2	1.5	2	2	\N	1	t	/auto_citroen_berlingo_34686834.html	VR7ECYHZRKJ732097	10	10	2023-06-20 11:39:48.79062	2023-06-20 11:39:48.790627
34509120	2	17	1890	5700	212097	5268	2008	0	215 тыс. км	215	4	1.6	1	2	\N	1	f	/auto_dacia_logan_34509120.html	UU1KSDAFH40690738	1	603	2023-06-20 11:39:49.42333	2023-06-20 11:39:49.423335
33518856	212	62	1707	19500	725595	18023	2011	0	1150 тыс. км	1150	2	12.6	2	3	\N	6	f	/auto_renault_magnum_33518856.html	VF617GKA000023531	22	22	2023-06-20 11:39:49.474112	2023-06-20 11:39:49.474114
1911236	3	18	1642	5100	189771	4714	2005	1	51 тыс. км	51	1	1.3	1	\N	\N	0	f	/auto_daewoo_sens_1911236.html		14	14	2023-06-20 11:39:49.672379	2023-06-20 11:39:49.672386
34452273	197	91	932	2000	74420	1848	2003	0	100 тыс. км	100	4	0	1	3	\N	6	f	/auto_gaz_2705_gazel_34452273.html	XTH27050030303364	1	36	2023-06-20 11:39:49.924978	2023-06-20 11:39:49.924981
34520318	3	13	1038	3400	126650	3104	2008	0	206 тыс. км	206	4	1.6	1	2	\N	1	f	/auto_chevrolet_aveo_34520318.html		20	20	2023-06-20 11:39:52.807741	2023-06-20 11:39:52.807745
34686807	2	75	1720	12000	446520	11091	2013	13	97 тыс. км	97	2	2	2	1	\N	1	f	/auto_subaru_outback_34686807.html	JF1BRDLY5EG170294	10	10	2023-06-20 11:39:53.125502	2023-06-20 11:39:53.125504
34686803	8	62	3185	9500	353495	8780	2014	0	170 тыс. км	170	2	1.5	4	2	\N	1	f	/auto_renault_grand_scenic_34686803.html	VF1JZS0AE51700249	1	1	2023-06-20 11:39:53.1443	2023-06-20 11:39:53.144303
34428414	3	52	457	6650	247447	6146	2007	0	215 тыс. км	215	4	2	1	2	\N	1	f	/auto_mitsubishi_lancer_34428414.html	JMBSNCY4A8U005456	16	16	2023-06-20 11:39:53.254908	2023-06-20 11:39:53.25491
34684861	2	9	3219	4850	180469	4483	2003	0	286 тыс. км	286	2	2	1	3	\N	1	f	/auto_bmw_3_series_34684861.html	WBACA01060AC30032	6	560	2023-06-20 11:39:54.264873	2023-06-20 11:39:54.264881
34136861	118	1590	47653	63836	2375340	59000	2016	0	20 тыс. км	20	2	0	2	1	\N	4	f	/auto_jcb_535_95_34136861.html		2	153	2023-06-15 01:16:03.116781	2023-06-15 01:16:03.116782
34483993	8	84	64461	24990	929878	23097	2017	0	129 тыс. км	129	2	2	1	1	\N	1	f	/auto_volkswagen_transporter_34483993.html	WV1ZZZ7HхHHхххх65	10	10	2023-06-15 01:16:03.205917	2023-06-15 01:16:03.205919
34534674	4	56	509	1200	44652	1109	1986	0	300 тыс. км	300	4	1.3	1	2	\N	1	f	/auto_opel_kadett_34534674.html	W0L000033G2705268	7	7	2023-06-20 11:39:48.260695	2023-06-20 11:39:48.260697
34310058	3	58	37293	9200	342332	8503	2012	0	141 тыс. км	141	1	1.6	1	2	\N	1	f	/auto_peugeot_508_34310058.html	VF38D5FV8BL050477	3	441	2023-06-15 01:16:03.688551	2023-06-15 01:16:03.688554
34483894	2	70	649	3900	145119	3605	2006	0	322 тыс. км	322	4	1.4	1	2	\N	1	f	/auto_skoda_fabia_34483894.html	TMBGD46Y37B453566	10	10	2023-06-15 01:16:03.699959	2023-06-15 01:16:03.699961
34266126	3	84	785	8999	334853	8317	2012	0	255 тыс. км	255	1	2.5	2	2	\N	1	t	/auto_volkswagen_jetta_34266126.html	3VWDP7AJхCMхххх56	19	317	2023-06-15 01:16:03.926631	2023-06-15 01:16:03.926635
34483976	2	79	696	13990	520568	12930	2012	0	233 тыс. км	233	2	2.2	1	2	\N	1	f	/auto_toyota_avensis_34483976.html	SB1EB76Lх0Eхххх77	12	12	2023-06-15 01:16:05.837997	2023-06-15 01:16:05.838003
33952144	3	24	250	1100	41063	1010	1988	0	250 тыс. км	250	4	2.4	1	3	\N	1	f	/auto_ford_scorpio_33952144.html	WF0AXXGAxAJxxxx60	3	427	2023-06-15 01:16:06.053383	2023-06-15 01:16:06.053386
34142424	3	58	1526	4500	167985	4133	2007	0	266 тыс. км	266	4	2	2	\N	\N	1	f	/auto_peugeot_407_34142424.html	VF36DRFJx21xxxx70	10	10	2023-06-15 01:16:06.066243	2023-06-15 01:16:06.066245
33825865	8	23	35398	9300	346053	8595	2012	0	226 тыс. км	226	2	2	1	2	\N	1	f	/auto_fiat_scudo_33825865.html	ZFA27000х64хххх99	5	5	2023-06-15 01:16:06.323933	2023-06-15 01:16:06.323935
34131380	2	56	3121	8800	327448	8133	2011	0	235 тыс. км	235	2	2	1	2	\N	1	f	/auto_opel_insignia_34131380.html	W0LGM8EL5C1014252	10	213	2023-06-15 01:16:06.342732	2023-06-15 01:16:06.342734
33825787	2	47	393	5600	208376	5176	2007	0	197 тыс. км	197	2	2	1	2	\N	1	f	/auto_mazda_6_33825787.html	JMZGY19Tх71хххх19	5	297	2023-06-15 01:16:06.397024	2023-06-15 01:16:06.39703
33825716	4	79	714	11500	427915	10629	2014	0	63 тыс. км	63	1	1.5	2	2	\N	1	t	/auto_toyota_prius_33825716.html	JTDKDTB3хE1хххх84	12	12	2023-06-15 01:16:06.419098	2023-06-15 01:16:06.419099
33825817	3	55	2034	8500	316285	7856	2012	0	270 тыс. км	270	1	2.5	5	2	\N	1	f	/auto_nissan_teana_33825817.html	JN1BBUJ3хU0хххх59	14	14	2023-06-15 01:16:06.430416	2023-06-15 01:16:06.430417
33825631	5	79	35000	53000	1972130	48985	2016	0	190 тыс. км	190	2	4.5	2	1	\N	1	f	/auto_toyota_land_cruiser_33825631.html	JTMCV05Jх04хххх25	5	5	2023-06-15 01:16:06.583415	2023-06-15 01:16:06.583418
33976127	6	58	526	3900	145119	3605	2004	0	260 тыс. км	260	1	2	1	2	\N	1	t	/auto_peugeot_307_33976127.html	VF33ARFNC82928994	1	1	2023-06-15 01:16:07.277324	2023-06-15 01:16:07.277326
33825758	2	3	1959	7500	279075	6932	2006	0	270 тыс. км	270	2	2.4	2	2	\N	1	f	/auto_alfa_romeo_159_33825758.html	ZAR93900х07хххх06	7	7	2023-06-15 01:16:07.283437	2023-06-15 01:16:07.283439
33825677	2	84	39690	15700	584197	14511	2016	0	285 тыс. км	285	2	2	4	2	\N	1	f	/auto_volkswagen_passat_33825677.html	WVWZZZ3CZGE163670	3	3	2023-06-15 01:16:07.614782	2023-06-15 01:16:07.614787
1916731	4	29	35223	10500	390705	9705	2006	1	20 тыс. км	20	1	1.4	2	\N	\N	0	f	/auto_hyundai_getz_1916731.html		12	12	2023-06-20 11:39:48.408209	2023-06-20 11:39:48.408211
34086319	118	1590	47653	47300	1760033	43717	2010	0	без пробега	0	2	4.4	2	1	\N	4	f	/auto_jcb_535_95_34086319.html		18	18	2023-06-20 11:39:48.876829	2023-06-20 11:39:48.876831
1914078	3	94	900	3800	141398	3512	1990	1	14 тыс. км	14	4	1.5	1	\N	\N	0	f	/auto_moskvich_azlk_412_1914078.html		7	7	2023-06-20 11:39:49.464923	2023-06-20 11:39:49.464927
34686814	2	62	586	6000	223260	5545	2008	13	189 тыс. км	189	1	1.6	1	2	\N	1	f	/auto_renault_megane_34686814.html	VF1KM1R0H36904587	10	10	2023-06-20 11:39:49.486625	2023-06-20 11:39:49.486626
1914283	2	13	1052	6100	226981	5638	2006	1	66 тыс. км	66	1	1.8	1	\N	\N	0	f	/auto_chevrolet_lacetti_1914283.html		22	22	2023-06-20 11:39:49.604706	2023-06-20 11:39:49.60471
1902854	3	47	406	14000	520940	12939	2003	1	120 тыс. км	120	1	2.5	2	\N	\N	1	f	/auto_mazda_xedos_1902854.html		17	267	2023-06-20 11:39:49.695366	2023-06-20 11:39:49.695368
33293337	197	48	35249	12000	447000	10955	2005	0	367 тыс. км	367	2	2.7	2	3	\N	6	f	/auto_mercedes_benz_sprinter_33293337.html	WDB60232x1Pxxxx35	10	10	2023-06-20 11:39:52.762538	2023-06-20 11:39:52.762541
34686777	2	56	1508	6850	254889	6331	2011	13	237 тыс. км	237	1	1.7	1	2	\N	1	f	/auto_opel_astra_34686777.html		9	9	2023-06-20 11:39:53.106795	2023-06-20 11:39:53.106798
34686754	5	29	293	12999	483693	12014	2011	13	220 тыс. км	220	2	2.2	2	1	\N	1	f	/auto_hyundai_santa_fe_34686754.html	KMHSH81XDBU727495	5	5	2023-06-20 11:39:53.128446	2023-06-20 11:39:53.128448
34686798	197	23	219	4000	148840	3697	2008	8	251 тыс. км	251	4	0	1	2	\N	6	f	/auto_fiat_doblo_34686798.html		10	10	2023-06-20 11:39:53.154098	2023-06-20 11:39:53.1541
1912346	3	56	1518	11300	420473	10444	2001	1	140 тыс. км	140	1	2.2	1	\N	\N	0	f	/auto_opel_omega_1912346.html		10	10	2023-06-20 11:39:53.169845	2023-06-20 11:39:53.169846
34686819	5	84	2692	20500	762805	18947	2015	0	107 тыс. км	107	2	0	2	\N	\N	1	f	/auto_volkswagen_tiguan_34686819.html	WVGZZZ5NZGW539171	2	131	2023-06-20 11:39:53.878304	2023-06-20 11:39:53.878316
1906690	5	9	96	77000	2865170	71167	2007	1	68 тыс. км	68	1	4.8	3	\N	\N	0	f	/auto_bmw_x5_1906690.html		14	14	2023-06-20 11:39:54.419976	2023-06-20 11:39:54.419988
34191153	192	177	30551	25500	948855	23568	2012	0	1200 тыс. км	1200	2	0	2	\N	\N	6	f	/auto_man_tgx_34191153.html		11	76	2023-06-15 01:16:03.200823	2023-06-15 01:16:03.200824
34483922	3	17	1890	4600	171718	4225	2008	0	88 тыс. км	88	1	1.6	1	2	\N	1	f	/auto_dacia_logan_34483922.html	UU1LSDAHx39xxxx98	10	212	2023-06-15 01:16:03.432117	2023-06-15 01:16:03.432118
1902474	5	165	1617	400	14884	370	2008	5	5 тыс. км	5	1	0.5	2	\N	\N	0	f	/auto_drugoe_drugaya_1902474.html		10	10	2023-06-20 11:39:48.578885	2023-06-20 11:39:48.578888
34142577	2	56	1518	2000	74420	1848	1993	0	298 тыс. км	298	4	2	1	3	\N	1	f	/auto_opel_omega_34142577.html	W0L000066P1140674	10	10	2023-06-15 01:16:03.69519	2023-06-15 01:16:03.695192
33976179	5	28	269	5700	212097	5268	1999	0	270 тыс. км	270	4	2	1	1	\N	1	f	/auto_honda_cr_v_33976179.html	JHLRD1750WC282041	7	7	2023-06-15 01:16:03.720155	2023-06-15 01:16:03.720157
34309973	3	6	43	1400	52094	1294	1981	0	265 тыс. км	265	1	1.8	1	2	\N	1	f	/auto_audi_80_34309973.html	WAUZZZ81ZBA150392	12	12	2023-06-15 01:16:03.778707	2023-06-15 01:16:03.778709
34136899	310	1583	46901	155000	5767550	143258	2011	0	30 тыс. км	30	2	0	2	1	\N	10	f	/auto_john_deere_9770_sts_34136899.html		2	153	2023-06-15 01:16:04.481379	2023-06-15 01:16:04.481387
34142436	3	185	2534	2300	85859	2112	2010	0	2 тыс. км	2	4	1.6	1	2	\N	1	f	/auto_geely_mk_34142436.html	Y7WJL716xA0xxxx01	2	137	2023-06-15 01:16:06.047707	2023-06-15 01:16:06.047709
34310053	3	48	428	2500	93025	2311	1992	0	520 тыс. км	520	2	3	2	3	\N	1	f	/auto_mercedes_benz_e_class_34310053.html	WDB1241331B222841	15	203	2023-06-15 01:16:06.318657	2023-06-15 01:16:06.31866
34056910	3	48	428	4900	182329	4529	2001	0	359 тыс. км	359	2	2.1	1	3	\N	1	f	/auto_mercedes_benz_e_class_34056910.html	WDB2100071B475176	5	5	2023-06-15 01:16:06.330297	2023-06-15 01:16:06.330299
33975868	3	38	1343	12000	446520	11091	2008	0	180 тыс. км	180	4	3.5	2	2	\N	1	f	/auto_lexus_es_33975868.html	JTHBJ46GX82193628	11	76	2023-06-15 01:16:06.364487	2023-06-15 01:16:06.364489
34309998	2	70	652	3950	146980	3651	2004	0	330 тыс. км	330	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34309998.html	TMBJX21U348765868	8	416	2023-06-15 01:16:06.402482	2023-06-15 01:16:06.402484
33699228	307	70	1575	8000	297680	7394	2013	0	185 тыс. км	185	1	1.2	1	2	\N	1	f	/auto_skoda_rapid_33699228.html	TMBAN2NHхDBхххх85	22	161	2023-06-15 01:16:06.585293	2023-06-15 01:16:06.585296
33976192	3	29	3086	9200	342332	8503	2011	0	109 тыс. км	109	4	1.8	2	2	\N	1	f	/auto_hyundai_elantra_33976192.html	KMHDH41EBCU344516	10	10	2023-06-15 01:16:07.278593	2023-06-15 01:16:07.278596
33976104	4	17	1669	1000	37210	924	2002	0	190 тыс. км	190	1	1.4	1	1	\N	1	f	/auto_dacia_supernova_33976104.html	UU1R5231523064249	24	24	2023-06-15 01:16:07.284025	2023-06-15 01:16:07.284027
34480309	4	84	2811	5800	216339	5324	2005	0	207 тыс. км	207	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_plus_34480309.html	WVWZZZ1Kx5Wxxxx74	10	10	2023-06-15 11:45:20.151935	2023-06-15 11:45:20.151937
34480405	5	135	1350	84000	3133199	77115	2017	0	68 тыс. км	68	1	3.5	2	1	\N	1	t	/auto_lincoln_navigator_34480405.html	5LMJJ2TTxJExxxx58	22	161	2023-06-15 11:45:20.153059	2023-06-15 11:45:20.153062
34658300	307	70	1575	6900	256749	6377	2013	0	168 тыс. км	168	1	1.2	1	2	\N	1	f	/auto_skoda_rapid_34658300.html	TMBAN2NH4DB102234	7	7	2023-06-15 11:45:20.302557	2023-06-15 11:45:20.302559
34658278	5	37	3117	16999	632533	15711	2011	8	220 тыс. км	220	2	3	2	1	\N	1	f	/auto_land_rover_range_rover_sport_34658278.html		9	9	2023-06-15 11:45:20.306811	2023-06-15 11:45:20.306813
34657904	3	29	295	12700	472567	11738	2018	13	67 тыс. км	67	1	2.4	2	2	\N	1	f	/auto_hyundai_sonata_34657904.html		1	1	2023-06-15 11:45:20.330263	2023-06-15 11:45:20.330265
34658254	3	88	851	900	33489	832	1990	13	500 тыс. км	500	4	1.5	1	3	\N	1	f	/auto_vaz_lada_2106_34658254.html		13	113	2023-06-15 11:45:20.343968	2023-06-15 11:45:20.343969
34658295	5	6	1943	69900	2600979	64605	2019	13	988 тыс. км	988	2	3	3	1	\N	1	f	/auto_audi_q7_34658295.html	WAUZZZ4MхKDхххх04	9	9	2023-06-15 11:45:20.344409	2023-06-15 11:45:20.34441
34658269	2	84	35449	6555	243912	6058	2013	13	282 тыс. км	282	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34658269.html		15	208	2023-06-15 11:45:20.347193	2023-06-15 11:45:20.347195
34658293	449	23	3208	5300	197213	4898	2009	13	245 тыс. км	245	1	1.4	1	2	\N	1	f	/auto_fiat_doblo_panorama_34658293.html	ZFA22300005561553	24	525	2023-06-15 11:45:20.371204	2023-06-15 11:45:20.371206
34658279	2	70	652	5000	186050	4621	2007	0	262 тыс. км	262	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34658279.html	TMBJX41U678880397	15	15	2023-06-15 11:45:20.381055	2023-06-15 11:45:20.381056
34658239	5	52	1485	8500	316285	7856	2006	13	329 тыс. км	329	4	2.4	2	1	\N	1	t	/auto_mitsubishi_outlander_34658239.html		10	10	2023-06-15 11:45:20.43202	2023-06-15 11:45:20.432028
34658288	5	37	349	15555	578802	14377	2012	8	140 тыс. км	140	2	2.2	2	1	\N	1	f	/auto_land_rover_freelander_34658288.html	SALFA2BDхCHхххх32	10	10	2023-06-15 11:45:20.432293	2023-06-15 11:45:20.432294
34647237	3	48	428	6500	241865	6008	2003	0	380 тыс. км	380	2	2.7	1	3	\N	1	f	/auto_mercedes_benz_e_class_34647237.html	WDB2110161A206353	1	1	2023-06-15 11:45:20.433685	2023-06-15 11:45:20.433686
33806128	3	6	49	24000	893040	22182	2015	0	157 тыс. км	157	2	2	2	\N	\N	1	t	/auto_audi_a6_33806128.html	WAUZZZ4GхFNхххх47	22	161	2023-06-15 11:45:20.439949	2023-06-15 11:45:20.43995
34116171	3	48	428	22500	837225	20795	2013	0	211 тыс. км	211	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34116171.html	WDD2120021A805653	22	161	2023-06-15 11:45:20.467545	2023-06-15 11:45:20.467546
34480585	3	29	1258	4900	182329	4529	2008	0	146 тыс. км	146	1	1.4	1	2	\N	1	f	/auto_hyundai_accent_34480585.html	NLHCM41AP8Z123585	22	161	2023-06-15 11:45:20.468091	2023-06-15 11:45:20.468092
34018743	3	9	18490	35900	1335839	33180	2018	0	105 тыс. км	105	1	3	2	1	\N	1	t	/auto_bmw_7_series_34018743.html	WBA7E4C5хKGхххх39	12	12	2023-06-15 11:45:20.528284	2023-06-15 11:45:20.528286
34506948	2	70	652	7500	279075	6932	2008	0	289 тыс. км	289	2	2	2	2	\N	1	f	/auto_skoda_octavia_34506948.html	TMBHE61Z682223180	9	405	2023-06-15 11:45:20.546683	2023-06-15 11:45:20.546685
1878058	9	62	59145	7500	279075	6932	2004	1	90 тыс. км	90	2	1.5	1	\N	\N	0	f	/auto_renault_kangoo_1878058.html		13	116	2023-06-15 11:45:20.835605	2023-06-15 11:45:20.835608
34438027	8	47	1912	8600	320006	7948	2010	0	135 тыс. км	135	2	1.6	1	2	\N	1	f	/auto_mazda_5_34438027.html	JMZCWA9Y600110212	11	11	2023-06-15 11:45:21.029457	2023-06-15 11:45:21.029462
34423165	3	79	698	10700	398147	9889	2012	0	350 тыс. км	350	5	2.5	5	2	\N	1	t	/auto_toyota_camry_34423165.html	4T1B01FKхCUхххх96	1	1	2023-06-15 11:45:21.032546	2023-06-15 11:45:21.03255
1859907	8	84	31169	13300	494893	12292	2003	1	300 тыс. км	300	0	2.8	1	\N	\N	6	f	/auto_volkswagen_lt_gruz_1859907.html		11	76	2023-06-15 11:45:21.139029	2023-06-15 11:45:21.139036
1915974	3	88	846	188	7000	174	1971	1	10 тыс. км	10	1	1.2	1	\N	\N	0	f	/auto_vaz_lada_2101_1915974.html		14	14	2023-06-15 11:45:21.417433	2023-06-15 11:45:21.417438
34654423	3	48	428	27500	1025749	25246	2015	0	96 тыс. км	96	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34654423.html	WDD21200x1Bxxxx58	12	12	2023-06-15 11:45:21.635413	2023-06-15 11:45:21.635416
33244932	197	48	1428	2800	104439	2570	1989	0	760 тыс. км	760	2	0	1	3	\N	6	t	/auto_mercedes_benz_t1_33244932.html		13	109	2023-06-15 11:45:21.63672	2023-06-15 11:45:21.636722
34122314	5	48	430	10200	380460	9364	2006	0	216 тыс. км	216	2	3	2	1	\N	1	f	/auto_mercedes_benz_m_class_34122314.html	WDC16412x1Axxxx06	25	25	2023-06-15 11:45:21.642732	2023-06-15 11:45:21.642734
34491126	3	24	240	7990	298027	7335	2013	0	192 тыс. км	192	1	2	1	2	\N	1	t	/auto_ford_focus_34491126.html	1FADP3F2xDLxxxx14	4	4	2023-06-15 11:45:21.669439	2023-06-15 11:45:21.66944
33956578	2	24	240	5100	189771	4714	2008	0	208 тыс. км	208	2	1.6	1	2	\N	1	f	/auto_ford_focus_33956578.html	WF0SXXGCхS8хххх44	25	25	2023-06-15 11:45:21.924021	2023-06-15 11:45:21.924023
1903900	8	62	59145	7300	271633	6747	2004	1	160 тыс. км	160	2	1.9	1	\N	\N	0	f	/auto_renault_kangoo_1903900.html		6	6	2023-06-15 11:45:22.22789	2023-06-15 11:45:22.227896
34640879	8	48	35252	23900	889319	22089	2015	0	313 тыс. км	313	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_vito_34640879.html	WDF44770313063121	12	12	2023-06-15 11:45:22.846658	2023-06-15 11:45:22.846663
34658266	3	47	1692	11000	409310	10167	2013	0	185 тыс. км	185	1	2	2	2	\N	1	t	/auto_mazda_3_34658266.html	JM1BM1V74E1108132	19	19	2023-06-15 11:45:23.356599	2023-06-15 11:45:23.356603
34658255	307	70	652	6300	234423	5823	2005	8	243 тыс. км	243	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34658255.html	TMBCA21Z662163848	1	602	2023-06-15 11:45:23.387324	2023-06-15 11:45:23.387328
1878336	4	88	854	5500	204655	5083	2007	1	65 тыс. км	65	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_2109_1878336.html		19	19	2023-06-15 11:45:23.42149	2023-06-15 11:45:23.421491
1897718	4	47	3050	2016	75000	1863	2006	5	49 тыс. км	49	1	1.6	2	\N	\N	0	t	/auto_mazda_3_hatchback_1897718.html		21	593	2023-06-15 11:45:23.483306	2023-06-15 11:45:23.483309
34347677	5	9	96	33999	1265103	31423	2017	0	83 тыс. км	83	1	3	2	1	\N	1	f	/auto_bmw_x5_34347677.html	WBAKR010х00хххх00	10	10	2023-06-15 11:45:23.651108	2023-06-15 11:45:23.651112
34502218	197	187	39386	3400	126819	3121	2006	0	150 тыс. км	150	2	2.8	1	3	\N	6	f	/auto_foton_bj_34502218.html		10	10	2023-06-15 11:45:24.409864	2023-06-15 11:45:24.409868
34658177	3	88	855	806	30000	745	2001	8	400 тыс. км	400	1	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34658177.html		12	12	2023-06-15 11:45:24.672897	2023-06-15 11:45:24.672901
34511218	219	24	35396	6600	245850	6025	2000	0	250 тыс. км	250	2	2.5	1	3	\N	7	f	/auto_ford_transit_34511218.html	WF0LXXGBxLYxxxx01	2	2	2023-06-20 11:39:49.08461	2023-06-20 11:39:49.084613
34686806	3	18	161	3000	111630	2773	2005	13	300 тыс. км	300	4	0	1	\N	\N	1	f	/auto_daewoo_lanos_34686806.html	Y6DTF69Y050003964	8	8	2023-06-20 11:39:49.468384	2023-06-20 11:39:49.468387
34665705	3	79	698	14500	539545	13402	2015	0	117 тыс. км	117	1	0	2	\N	\N	1	f	/auto_toyota_camry_34665705.html		22	165	2023-06-20 11:39:49.615052	2023-06-20 11:39:49.615053
1914284	5	13	2544	26501	986102	24493	2008	1	39 тыс. км	39	1	3.2	2	\N	\N	0	f	/auto_chevrolet_captiva_1914284.html		10	10	2023-06-20 11:39:49.922356	2023-06-20 11:39:49.922358
34544948	5	29	1268	9350	348287	8536	2009	0	89 тыс. км	89	1	2	1	1	\N	1	f	/auto_hyundai_tucson_34544948.html	YMHJN91Bx0Uxxxx46	11	72	2023-06-20 11:39:52.763306	2023-06-20 11:39:52.763308
34686802	4	84	64469	36999	1376733	34196	2021	8	21 тыс. км	21	5	0	2	\N	\N	1	f	/auto_volkswagen_golf_gte_34686802.html	WVWZZZCDZMW322931	22	22	2023-06-20 11:39:53.109858	2023-06-20 11:39:53.109861
34686788	5	28	269	16700	621407	15435	2013	13	117 тыс. км	117	1	2.4	3	1	\N	1	f	/auto_honda_cr_v_34686788.html	1HGRM4870EL511278	10	10	2023-06-20 11:39:53.130531	2023-06-20 11:39:53.130534
34669825	5	79	35000	30777	1145212	28445	2013	0	248 тыс. км	248	2	4.5	2	1	\N	1	f	/auto_toyota_land_cruiser_34669825.html	JTMCV05Jх04хххх63	12	12	2023-06-20 11:39:53.163334	2023-06-20 11:39:53.163335
34686808	4	84	35449	2700	100467	2495	1998	13	300 тыс. км	300	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34686808.html	WVWZZZ1JZXP020108	4	511	2023-06-20 11:39:53.207389	2023-06-20 11:39:53.207391
1896744	2	9	32251	10099	375784	9334	1997	1	290 тыс. км	290	1	2.8	2	\N	\N	1	f	/auto_bmw_525_1896744.html		10	10	2023-06-20 11:39:53.344986	2023-06-20 11:39:53.344988
34686787	197	48	35249	36800	1369328	34012	2019	8	358 тыс. км	358	2	0	2	3	\N	6	f	/auto_mercedes_benz_sprinter_34686787.html	WDB9071551N045731	10	10	2023-06-20 11:39:53.884708	2023-06-20 11:39:53.88471
34658262	6	48	1710	21700	807457	20056	2009	0	170 тыс. км	170	4	5.5	2	1	\N	1	f	/auto_mercedes_benz_cl_class_34658262.html		12	12	2023-06-15 11:45:21.872999	2023-06-15 11:45:21.873001
34658275	3	88	851	600	22326	555	1979	13	300 тыс. км	300	1	1.2	1	3	\N	1	f	/auto_vaz_lada_2106_34658275.html		11	72	2023-06-15 11:45:21.88851	2023-06-15 11:45:21.888511
34658272	21	179	35715	5500	204655	5083	2012	0	10 тыс. км	10	1	0.25	1	6	\N	2	f	/auto_yamaha_tricker_34658272.html		11	11	2023-06-15 11:45:21.905142	2023-06-15 11:45:21.905144
1909903	3	48	428	8300	308843	7671	1994	1	209 тыс. км	209	1	4.2	2	\N	\N	0	f	/auto_mercedes_benz_e_class_1909903.html		10	10	2023-06-15 11:45:22.837298	2023-06-15 11:45:22.837304
34658260	4	84	35449	3600	133956	3327	2002	8	300 тыс. км	300	2	1.9	1	\N	\N	1	f	/auto_volkswagen_golf_34658260.html		5	5	2023-06-15 11:45:23.329792	2023-06-15 11:45:23.329797
34658215	3	18	161	2500	93025	2311	2005	13	370 тыс. км	370	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34658215.html		10	10	2023-06-15 11:45:23.350024	2023-06-15 11:45:23.350028
1903997	8	84	35399	0	0	0	2004	1	150 тыс. км	150	2	2.5	1	\N	\N	0	f	/auto_volkswagen_lt_1903997.html		9	9	2023-06-15 11:45:23.37114	2023-06-15 11:45:23.371143
1910444	4	56	509	3700	137677	3420	1988	1	233 тыс. км	233	1	2	1	\N	\N	1	f	/auto_opel_kadett_1910444.html		1	1	2023-06-15 11:45:23.419333	2023-06-15 11:45:23.419334
34498829	212	62	1707	11500	427915	10629	2008	0	1400 тыс. км	1400	2	0	1	3	\N	6	f	/auto_renault_magnum_34498829.html	VF617GKA000009677	11	72	2023-06-15 11:45:24.200096	2023-06-15 11:45:24.200099
34658252	2	6	49	23500	874435	21720	2013	0	253 тыс. км	253	2	3	2	1	\N	1	f	/auto_audi_a6_34658252.html	WAUZZZ4G8EN043615	25	25	2023-06-15 11:45:24.671654	2023-06-15 11:45:24.671658
34681037	5	37	45955	25500	950130	23281	2016	0	85 тыс. км	85	1	2	2	1	\N	1	t	/auto_land_rover_discovery_sport_34681037.html	SALCP2BGxGHxxxx34	5	5	2023-06-20 15:37:33.359733	2023-06-20 15:37:33.359734
34688527	3	18	161	2200	81862	2033	2011	13	220 тыс. км	220	4	1.5	1	2	\N	1	t	/auto_daewoo_lanos_34688527.html		11	11	2023-06-20 15:37:33.898652	2023-06-20 15:37:33.898653
34658276	2	17	53103	4500	167445	4159	2007	13	200 тыс. км	200	4	1.6	1	\N	\N	1	f	/auto_dacia_logan_mcv_34658276.html	UU1KSD0Mх37хххх70	7	7	2023-06-15 11:45:21.874623	2023-06-15 11:45:21.874625
34437921	2	84	39690	10000	372100	9242	2009	0	314 тыс. км	314	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34437921.html	WVWZZZ3CZAE010886	11	11	2023-06-15 11:45:21.889471	2023-06-15 11:45:21.889473
34468963	6	84	3006	10000	372100	9242	2013	0	200 тыс. км	200	1	2	2	2	\N	1	t	/auto_volkswagen_cc_passat_cc_34468963.html	WVWBP7AN8EE503261	5	5	2023-06-15 11:45:21.929411	2023-06-15 11:45:21.929413
34438868	221	4514	47583	19500	725595	18023	2006	0	682 тыс. км	682	2	0	2	\N	\N	7	f	/auto_solaris_urbino_34438868.html	SUU2411616BPN1453	11	11	2023-06-15 11:45:21.964354	2023-06-15 11:45:21.964356
32437744	3	9	2319	20000	744200	18485	2014	0	198 тыс. км	198	2	2	3	1	\N	1	f	/auto_bmw_5_series_32437744.html	WBA5B910х0Dхххх69	11	11	2023-06-15 11:45:22.285557	2023-06-15 11:45:22.285562
34483164	197	56	60548	17400	647454	16082	2017	0	198 тыс. км	198	2	0	1	2	\N	6	f	/auto_opel_movano_34483164.html		10	10	2023-06-15 11:45:22.650365	2023-06-15 11:45:22.650368
34658240	197	48	35250	10000	372100	9242	2000	13	600 тыс. км	600	2	0	1	3	\N	6	f	/auto_mercedes_benz_vario_34658240.html	WDB6703531N095952	24	24	2023-06-15 11:45:23.359159	2023-06-15 11:45:23.359162
1892629	6	28	278	12000	446520	11091	1999	1	1 тыс. км	1	1	2	1	\N	\N	0	f	/auto_honda_prelude_1892629.html		4	4	2023-06-15 11:45:23.412445	2023-06-15 11:45:23.41245
1908131	3	84	0	21200	788852	19594	2006	1	85 тыс. км	85	1	2	2	\N	\N	0	f			23	23	2023-06-15 11:45:23.457861	2023-06-15 11:45:23.457866
1908142	4	88	858	7000	260470	6470	2008	1	25 тыс. км	25	1	1.6	1	\N	\N	0	f	/auto_vaz_lada_2112_1908142.html		2	140	2023-06-15 11:45:23.555306	2023-06-15 11:45:23.555312
1898127	8	29	36512	67000	2493070	61924	2003	1	300 тыс. км	300	2	0	1	\N	\N	1	f	/auto_hyundai_aero_city_1898127.html		11	82	2023-06-15 11:45:23.632731	2023-06-15 11:45:23.632734
34658041	5	84	63711	32800	1220488	30315	2022	8	1 тыс. км	1	6	0	2	3	\N	1	f	/auto_volkswagen_id_4_crozz_34658041.html	LFVVB9E65N5005425	10	10	2023-06-15 11:45:23.874981	2023-06-15 11:45:23.874987
34658222	5	79	715	28800	1071648	26618	2017	13	38 тыс. км	38	5	2.5	2	2	\N	1	f	/auto_toyota_rav4_34658222.html	JTMWRREV20D036029	10	10	2023-06-15 11:45:24.669882	2023-06-15 11:45:24.669888
33424149	5	29	293	24400	909144	22277	2018	0	73 тыс. км	73	1	2.4	2	2	\N	1	t	/auto_hyundai_santa_fe_33424149.html	5NMS23ADxKHxxxx20	25	25	2023-06-20 15:37:33.361767	2023-06-20 15:37:33.361769
34658214	4	18	163	3600	133956	3327	2013	13	14 тыс. км	14	1	0.8	1	\N	\N	1	f	/auto_daewoo_matiz_34658214.html		11	76	2023-06-15 11:45:21.879419	2023-06-15 11:45:21.879421
34658283	5	29	3901	12500	465125	11553	2012	8	184 тыс. км	184	4	2	2	1	\N	1	f	/auto_hyundai_ix35_34658283.html	TMAJU81BхCJхххх16	10	10	2023-06-15 11:45:21.894313	2023-06-15 11:45:21.894315
34399052	2	79	696	5300	197213	4898	2003	0	230 тыс. км	230	1	2	1	2	\N	1	f	/auto_toyota_avensis_34399052.html		18	18	2023-06-15 11:45:21.945856	2023-06-15 11:45:21.945857
34658280	3	6	49	3600	133956	3327	1995	13	500 тыс. км	500	4	2.8	2	1	\N	1	f	/auto_audi_a6_34658280.html	WAUZZZ4AZSN080487	2	133	2023-06-15 11:45:22.389415	2023-06-15 11:45:22.38943
34658270	4	55	494	5650	210237	5222	2010	8	86 тыс. км	86	1	1.24	1	2	\N	1	f	/auto_nissan_micra_34658270.html	SJNFBAK1хU3хххх24	12	12	2023-06-15 11:45:23.328439	2023-06-15 11:45:23.328444
34658180	307	24	246	3350	124654	3096	2003	13	424 тыс. км	424	2	2	1	2	\N	1	f	/auto_ford_mondeo_34658180.html	WF05XXGBх53хххх84	3	3	2023-06-15 11:45:23.362882	2023-06-15 11:45:23.362884
34658258	3	88	856	2950	109770	2727	2011	0	183 тыс. км	183	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34658258.html	Y6L211040BL230362	6	6	2023-06-15 11:45:23.416222	2023-06-15 11:45:23.416228
1906607	5	29	293	28500	1060485	26341	2008	1	1 тыс. км	1	1	2.7	2	\N	\N	0	f	/auto_hyundai_santa_fe_1906607.html		10	10	2023-06-15 11:45:23.461371	2023-06-15 11:45:23.461375
34658251	5	84	793	53000	1972130	48985	2018	8	99 тыс. км	99	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34658251.html	WVGZZZCRZJD007206	14	14	2023-06-15 11:45:23.876758	2023-06-15 11:45:23.876763
34324844	2	56	1508	10000	373000	9180	2017	0	260 тыс. км	260	2	1.6	1	2	\N	1	f	/auto_opel_astra_34324844.html	W0LBD8EKxH8xxxx30	19	19	2023-06-15 11:45:24.401608	2023-06-15 11:45:24.401613
34658257	3	84	39690	11100	413031	10259	2014	13	170 тыс. км	170	1	1.8	2	\N	\N	1	t	/auto_volkswagen_passat_34658257.html	1VWBT7A30FC024479	10	10	2023-06-15 11:45:24.657203	2023-06-15 11:45:24.657207
34688505	5	33	327	19900	740479	18392	2019	8	79 тыс. км	79	1	1.6	2	2	\N	1	f	/auto_kia_sportage_34688505.html		10	210	2023-06-20 15:37:53.63212	2023-06-20 15:37:53.632123
34688547	5	79	715	18999	706953	17560	2013	0	28 тыс. км	28	1	2	1	1	\N	1	f	/auto_toyota_rav4_34688547.html	JTMREREVх0Dхххх03	11	11	2023-06-20 15:37:53.868921	2023-06-20 15:37:53.868923
34688508	5	6	3222	28900	1075369	26711	2018	13	124 тыс. км	124	1	0	2	1	\N	1	f	/auto_audi_q5_34688508.html	WA1ANAFY4J2178826	25	25	2023-06-20 15:37:53.876351	2023-06-20 15:37:53.876351
34658265	3	62	586	5199	193455	4805	2007	8	257 тыс. км	257	1	2	1	2	\N	1	f	/auto_renault_megane_34658265.html		10	10	2023-06-15 11:45:21.925456	2023-06-15 11:45:21.925457
34662147	3	2233	47858	24900	927525	22817	2018	0	65 тыс. км	65	6	0	2	2	\N	1	t	/auto_tesla_model_3_34662147.html	5YJ3E1EAxJFxxxx01	10	10	2023-06-15 21:34:11.306007	2023-06-15 21:34:11.306008
34662115	5	84	793	23999	893962	21991	2014	0	188 тыс. км	188	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34662115.html	WVGDP9BPxEDxxxx28	5	307	2023-06-15 21:34:11.368622	2023-06-15 21:34:11.368624
34662106	4	84	35449	5900	219775	5406	2005	0	216 тыс. км	216	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34662106.html	WVWZZZ1Kx5Pxxxx59	11	11	2023-06-15 21:34:12.194227	2023-06-15 21:34:12.194232
34662089	8	84	64461	8500	316285	7856	2008	13	319 тыс. км	319	0	0	1	2	\N	1	f	/auto_volkswagen_transporter_34662089.html	WV1ZZZ7HZ9H055709	2	146	2023-06-15 21:34:12.395029	2023-06-15 21:34:12.39503
34662090	4	88	860	1650	61397	1525	2004	13	195 тыс. км	195	0	0	1	2	\N	1	f	/auto_vaz_lada_2114_samara_34662090.html	XTA21140043778846	5	294	2023-06-15 21:34:12.426596	2023-06-15 21:34:12.426597
34655173	3	9	3213	69990	2604328	64688	2018	0	34 тыс. км	34	1	4.4	2	1	\N	1	t	/auto_bmw_m5_34655173.html	WBSJF0C5хJBхххх12	5	5	2023-06-15 21:34:12.634755	2023-06-15 21:34:12.634764
34662142	8	62	59145	7600	283100	6964	2011	0	207 тыс. км	207	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_34662142.html	VF1KW05Bx44xxxx88	18	18	2023-06-15 21:34:13.348154	2023-06-15 21:34:13.348156
34662030	5	58	32556	9800	365050	8980	2010	0	280 тыс. км	280	2	2	2	2	\N	1	f	/auto_peugeot_3008_34662030.html	VF30URHHxASxxxx25	9	397	2023-06-15 21:34:13.36125	2023-06-15 21:34:13.361251
34662067	3	18	1642	1950	72560	1802	2005	0	262 тыс. км	262	1	0	1	1	\N	1	f	/auto_daewoo_sens_34662067.html	Y6DT1311050238422	12	12	2023-06-15 21:34:13.612146	2023-06-15 21:34:13.612152
34662086	195	91	929	2700	100467	2495	1996	13	50 тыс. км	50	4	2.5	1	3	\N	6	f	/auto_gaz_3302_gazel_34662086.html		7	7	2023-06-15 21:34:13.622832	2023-06-15 21:34:13.622834
34662065	3	52	449	4450	165585	4113	2002	0	278 тыс. км	278	1	0	1	2	\N	1	f	/auto_mitsubishi_carisma_34662065.html	XTA21104071016902	24	24	2023-06-15 21:34:13.686535	2023-06-15 21:34:13.686536
34662051	4	67	640	6000	223260	5545	2008	13	200 тыс. км	200	4	0	1	\N	\N	1	f	/auto_seat_toledo_34662051.html		5	5	2023-06-15 21:34:13.694056	2023-06-15 21:34:13.694057
31021958	254	48	35249	7400	275354	6839	2000	0	300 тыс. км	300	2	2.1	1	3	\N	6	f	/auto_mercedes_benz_sprinter_31021958.html	WDB90361х1Rхххх18	15	15	2023-06-15 21:34:13.846134	2023-06-15 21:34:13.846137
34107322	3	6	47	24500	911645	22644	2017	0	127 тыс. км	127	1	0	2	\N	\N	1	t	/auto_audi_a4_34107322.html	WAUENAF4хHNхххх99	5	5	2023-06-15 21:34:14.741616	2023-06-15 21:34:14.741618
34503202	4	24	239	5900	219539	5380	2013	0	94 тыс. км	94	1	1	1	\N	\N	1	f	/auto_ford_fiesta_34503202.html	WF0DXXGAxDDxxxx31	12	12	2023-06-19 12:12:02.554096	2023-06-19 12:12:02.554097
34688532	5	62	30503	8100	301401	7486	2010	13	198 тыс. км	198	2	1.5	1	1	\N	1	f	/auto_renault_duster_34688532.html	VF1HSRAVN43790284	7	7	2023-06-20 15:37:53.874233	2023-06-20 15:37:53.874234
34328761	385	177	30551	59000	2195390	54530	2015	0	521 тыс. км	521	2	12	2	\N	\N	6	f	/auto_man_tgx_34328761.html	WMA21XZZ3GM691644	7	7	2023-06-19 12:12:02.98602	2023-06-19 12:12:02.986022
34509476	4	67	2053	8500	316285	7856	2010	0	252 тыс. км	252	4	1.4	1	2	\N	1	f	/auto_seat_altea_34509476.html	VSSZZZ5PZBR010342	10	10	2023-06-19 12:12:03.067163	2023-06-19 12:12:03.067168
34680818	4	84	35449	7800	290238	7113	2009	0	173 тыс. км	173	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34680818.html	WVWZZZ1Kx9Wxxxx32	13	109	2023-06-19 12:12:03.623961	2023-06-19 12:12:03.623963
34680839	8	56	59772	11500	427915	10488	2011	0	2 тыс. км	2	2	2	1	2	\N	1	f	/auto_opel_vivaro_34680839.html	W0LJ7BHBxBVxxxx54	9	399	2023-06-19 12:12:03.635676	2023-06-19 12:12:03.635678
34680869	3	88	855	1350	50234	1248	1998	0	111 тыс. км	111	4	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34680869.html	XTABA0998W2384365	7	7	2023-06-19 12:12:03.849977	2023-06-19 12:12:03.849979
34680853	3	88	855	1550	57676	1433	1995	13	200 тыс. км	200	4	1.3	1	2	\N	1	f	/auto_vaz_lada_21099_34680853.html	XTA210993S1744190	6	6	2023-06-19 12:12:03.887017	2023-06-19 12:12:03.887019
34688528	3	91	937	2200	81862	2033	2004	0	150 тыс. км	150	4	2.4	1	\N	\N	1	f	/auto_gaz_31105_34688528.html	Y7C31105040017371	11	11	2023-06-20 15:37:53.886717	2023-06-20 15:37:53.886718
34497234	5	55	2774	15200	565592	14048	2013	0	60 тыс. км	60	4	1.6	1	2	\N	1	f	/auto_nissan_qashqai_2_34497234.html	SJNJAAJ1хU7хххх25	20	20	2023-06-19 12:12:04.045864	2023-06-19 12:12:04.045866
34680814	3	55	492	3500	130235	3192	1997	0	300 тыс. км	300	4	3	1	2	\N	1	f	/auto_nissan_maxima_34680814.html	JN1CCUA3xZ0xxxx35	11	76	2023-06-19 12:12:04.878649	2023-06-19 12:12:04.878651
34680854	3	33	319	6700	249307	6192	2009	13	186 тыс. км	186	4	2	2	2	\N	1	f	/auto_kia_magentis_34680854.html	Y6DGE227395363407	5	5	2023-06-19 12:12:05.24368	2023-06-19 12:12:05.243684
34509301	4	88	853	1200	44652	1109	1990	0	76 тыс. км	76	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2108_34509301.html	XTA210830L0604413	19	19	2023-06-19 12:12:05.290836	2023-06-19 12:12:05.290838
1914716	9	24	1679	4400	163724	4067	1999	1	150 тыс. км	150	2	1.8	1	\N	\N	0	f	/auto_ford_courier_1914716.html		23	23	2023-06-19 12:12:05.310966	2023-06-19 12:12:05.310969
1896763	3	58	1526	14700	546987	13586	2005	1	84 тыс. км	84	1	2	1	\N	\N	0	f	/auto_peugeot_407_1896763.html		10	10	2023-06-19 12:12:05.345955	2023-06-19 12:12:05.345957
34505462	7	71	28290	6600	245586	6100	2007	0	128 тыс. км	128	1	1	2	2	\N	1	f	/auto_smart_fortwo_34505462.html	WME45133х1Kхххх45	19	19	2023-06-19 12:12:05.519773	2023-06-19 12:12:05.519786
19611262	4	29	2772	5550	206516	5130	2008	0	166 тыс. км	166	1	1.4	1	2	\N	1	f	/auto_hyundai_i30_19611262.html	KMDHB51CP8U098433	10	10	2023-06-19 12:12:06.128574	2023-06-19 12:12:06.128579
34635882	5	84	2692	9950	370240	9196	2010	0	293 тыс. км	293	2	2	2	1	\N	1	f	/auto_volkswagen_tiguan_34635882.html	WVGZZZ5NZBW044149	7	7	2023-06-19 12:12:06.695491	2023-06-19 12:12:06.695492
1916367	4	88	2547	2032	75600	1878	2009	1	1 тыс. км	1	1	1.6	1	\N	\N	0	f	/auto_vaz_lada_2172_priora_1916367.html		10	10	2023-06-19 12:12:06.80852	2023-06-19 12:12:06.808523
34512944	8	56	1524	6800	253300	6208	2007	0	228 тыс. км	228	2	1.9	2	2	\N	1	f	/auto_opel_zafira_34512944.html	W0L0AHM7x8Gxxxx74	5	5	2023-06-19 18:18:37.061312	2023-06-19 18:18:37.061338
34683083	229	15	59442	3750	139538	3466	2004	0	332 тыс. км	332	2	2.9	1	\N	\N	7	f	/auto_citroen_jumper_34683083.html		1	27	2023-06-19 18:18:37.377156	2023-06-19 18:18:37.37716
34658259	3	9	2319	8500	316285	7856	2005	0	258 тыс. км	258	2	3	2	3	\N	1	f	/auto_bmw_5_series_34658259.html	WBANC71020B654066	9	392	2023-06-15 11:45:24.735035	2023-06-15 11:45:24.73504
34662125	6	84	3006	10700	398575	9805	2012	0	220 тыс. км	220	1	2	2	2	\N	1	f	/auto_volkswagen_cc_passat_cc_34662125.html	WVWBN7ANxDExxxx74	9	9	2023-06-15 21:34:11.310546	2023-06-15 21:34:11.310546
34680831	2	75	1720	18800	699548	17145	2018	0	61 тыс. км	61	1	2.5	2	1	\N	1	f	/auto_subaru_outback_34680831.html	4S4BSACCxJ3xxxx05	6	560	2023-06-19 12:12:02.555087	2023-06-19 12:12:02.555088
34641750	3	18	161	2650	98607	2449	2003	0	380 тыс. км	380	4	1.6	1	2	\N	1	f	/auto_daewoo_lanos_34641750.html	Y6DTF696х30хххх75	10	10	2023-06-19 12:12:02.828715	2023-06-19 12:12:02.828717
34677545	5	73	3187	8200	305122	7579	2010	0	161 тыс. км	161	4	2.3	1	\N	\N	1	f	/auto_ssangyong_kyron_34677545.html	Y7WDJ6M0хA0хххх12	10	10	2023-06-19 12:12:02.984921	2023-06-19 12:12:02.984924
34680836	14	1201	49375	725	27000	661	2017	0	7 тыс. км	7	1	0	1	6	\N	2	f	/auto_viper_v150a_34680836.html	LZEPCKL0xH4xxxx96	8	410	2023-06-19 12:12:03.634503	2023-06-19 12:12:03.634506
34007875	3	84	781	3950	146980	3651	2003	0	199 тыс. км	199	1	1.6	1	2	\N	1	f	/auto_volkswagen_bora_34007875.html	WVWZZZ1JZ3W531630	25	25	2023-06-19 12:12:03.839408	2023-06-19 12:12:03.839411
34263099	8	56	1524	6000	223260	5545	2006	0	296 тыс. км	296	4	1.8	1	2	\N	1	f	/auto_opel_zafira_34263099.html	W0L0AHM7х62хххх54	10	214	2023-06-19 12:12:03.923318	2023-06-19 12:12:03.923319
34249003	3	28	265	5900	219539	5453	2008	0	313 тыс. км	313	4	1.8	2	2	\N	1	f	/auto_honda_civic_34249003.html	NLAFD764х8Wхххх12	12	12	2023-06-19 12:12:04.039636	2023-06-19 12:12:04.039638
34218270	8	79	31933	6200	230702	5730	2005	0	341 тыс. км	341	2	2.5	1	\N	\N	1	f	/auto_toyota_hiace_34218270.html	JT121JK1х00хххх08	12	12	2023-06-19 12:12:04.04687	2023-06-19 12:12:04.046872
34680826	8	62	3185	5100	189771	4651	2009	0	240 тыс. км	240	1	1.4	1	2	\N	1	f	/auto_renault_grand_scenic_34680826.html		3	433	2023-06-19 12:12:04.879855	2023-06-19 12:12:04.879857
34680855	4	56	1508	4999	186013	4620	2006	8	209 тыс. км	209	1	0	1	2	\N	1	f	/auto_opel_astra_34680855.html	W0L0AHL4865111625	24	24	2023-06-19 12:12:05.236658	2023-06-19 12:12:05.236734
34509473	2	9	3219	7700	286517	7117	2007	0	220 тыс. км	220	1	2	1	3	\N	1	f	/auto_bmw_3_series_34509473.html	WBAVR910х0Aхххх46	9	9	2023-06-19 12:12:05.276425	2023-06-19 12:12:05.276429
1911381	5	128	1270	12500	465125	11553	2006	1	58 тыс. км	58	1	3.5	3	\N	\N	0	f	/auto_infiniti_fx_1911381.html		12	12	2023-06-19 12:12:05.381004	2023-06-19 12:12:05.381007
34511691	8	79	31933	5500	204655	5083	1999	0	400 тыс. км	400	2	2.4	1	\N	\N	1	f	/auto_toyota_hiace_34511691.html	JT121LK1100065864	12	12	2023-06-19 12:12:05.611622	2023-06-19 12:12:05.611626
34680834	5	55	507	14500	539545	13224	2014	0	131 тыс. км	131	4	2	5	\N	\N	1	f	/auto_nissan_x_trail_34680834.html	JN1TBNT3xU0xxxx90	16	16	2023-06-19 12:12:06.341094	2023-06-19 12:12:06.341098
34683138	5	29	293	9500	353875	8673	2007	0	248 тыс. км	248	2	2.2	2	1	\N	1	f	/auto_hyundai_santa_fe_34683138.html	Y6LSH81Wx7Lxxxx62	11	83	2023-06-19 18:18:37.121127	2023-06-19 18:18:37.121134
34688514	8	84	35448	2000	74420	1848	2000	13	300 тыс. км	300	4	0	1	2	\N	1	f	/auto_volkswagen_caddy_34688514.html		10	10	2023-06-20 15:37:53.874171	2023-06-20 15:37:53.874172
34658887	5	84	793	20000	744200	18485	2011	13	227 тыс. км	227	2	3	2	\N	\N	1	f	/auto_volkswagen_touareg_34658887.html	WVGZZZ7PZBD049566	10	10	2023-06-15 13:21:37.97837	2023-06-15 13:21:37.978374
1909655	4	88	860	6200	230702	5730	2006	1	50 тыс. км	50	1	1.5	1	\N	\N	1	f	/auto_vaz_lada_2114_samara_1909655.html		5	291	2023-06-15 13:21:38.01578	2023-06-15 13:21:38.015781
34222019	212	48	2170	12500	465125	11553	2006	0	820 тыс. км	820	2	0	2	3	\N	6	f	/auto_mercedes_benz_actros_34222019.html	WDB9340331L098196	5	306	2023-06-15 13:21:38.052553	2023-06-15 13:21:38.052556
34475512	4	23	2635	4500	167445	4159	2007	0	184 тыс. км	184	1	0	4	2	\N	1	f	/auto_fiat_grande_punto_34475512.html	ZFA19900001205442	10	10	2023-06-15 13:21:38.074783	2023-06-15 13:21:38.074784
34662141	3	88	855	1150	42837	1053	2002	0	234 тыс. км	234	1	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34662141.html	XTA21099x23xxxx26	5	309	2023-06-15 21:34:11.310602	2023-06-15 21:34:11.310603
34662103	3	13	1052	4800	178800	4398	2006	0	165 тыс. км	165	1	1.6	1	2	\N	1	f	/auto_chevrolet_lacetti_34662103.html	Y6DNF196x6Kxxxx03	14	14	2023-06-15 21:34:12.116456	2023-06-15 21:34:12.116458
34662098	8	84	64461	8300	308843	7671	2009	0	250 тыс. км	250	2	2.5	1	2	\N	1	f	/auto_volkswagen_transporter_34662098.html	WV1ZZZ7HZ9H103266	6	6	2023-06-15 21:34:12.359551	2023-06-15 21:34:12.359553
32489086	5	48	3048	86000	3200060	79485	2017	0	119 тыс. км	119	2	3	2	1	\N	1	f	/auto_mercedes_benz_g_class_32489086.html		10	10	2023-06-15 21:34:12.763739	2023-06-15 21:34:12.763748
34662102	2	84	35449	4600	171350	4215	2003	0	210 тыс. км	210	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34662102.html		9	9	2023-06-15 21:34:13.355917	2023-06-15 21:34:13.355918
34662047	219	91	15721	2000	74500	1832	2005	0	5 тыс. км	5	3	0	1	2	\N	7	f	/auto_gaz_32213_gazel_34662047.html		19	316	2023-06-15 21:34:13.402575	2023-06-15 21:34:13.402578
34662088	4	88	854	1700	63257	1571	2006	0	184 тыс. км	184	1	1.5	1	2	\N	1	f	/auto_vaz_lada_2109_34662088.html	Y6D21093060015697	25	25	2023-06-15 21:34:13.619045	2023-06-15 21:34:13.619046
34662076	2	70	652	12590	468474	11636	2018	13	173 тыс. км	173	2	0	1	2	\N	1	f	/auto_skoda_octavia_34662076.html	TMBJG7NE3J0287316	10	10	2023-06-15 21:34:13.686178	2023-06-15 21:34:13.68618
34662068	5	9	96	14000	520940	12939	2008	0	254 тыс. км	254	1	3	2	1	\N	1	f	/auto_bmw_x5_34662068.html	5UXFE43538L032170	15	192	2023-06-15 21:34:13.694313	2023-06-15 21:34:13.694314
34662066	8	56	1524	8600	320006	7948	2011	13	240 тыс. км	240	2	1.7	1	\N	\N	1	f	/auto_opel_zafira_34662066.html		10	10	2023-06-15 21:34:14.726091	2023-06-15 21:34:14.726095
34662063	5	52	60035	12500	465125	11553	2012	13	134 тыс. км	134	1	2	5	1	\N	1	f	/auto_mitsubishi_outlander_sport_34662063.html	4A4AR3AU5DE002406	5	5	2023-06-15 21:34:14.747313	2023-06-15 21:34:14.747317
34680845	2	70	651	1881	69992	1715	1997	0	350 тыс. км	350	1	1.3	1	2	\N	1	f	/auto_skoda_felicia_34680845.html	TMBEFF65xW0xxxx44	10	10	2023-06-19 12:12:02.554357	2023-06-19 12:12:02.554358
34509302	11	28	55170	645	24000	596	2007	0	14 тыс. км	14	1	0	5	\N	\N	2	f	/auto_honda_dio_af_62_34509302.html		19	19	2023-06-19 12:12:02.747077	2023-06-19 12:12:02.747079
34680881	5	76	672	8500	316285	7856	2009	13	204 тыс. км	204	4	2.4	2	1	\N	1	f	/auto_suzuki_grand_vitara_34680881.html	JSAJTAA4V00140528	12	12	2023-06-19 12:12:02.879274	2023-06-19 12:12:02.879275
1904088	4	88	853	3000	111630	2773	1991	1	150 тыс. км	150	1	1.1	1	\N	\N	1	f	/auto_vaz_lada_2108_1904088.html		7	7	2023-06-19 12:12:02.986439	2023-06-19 12:12:02.98644
34503947	7	58	2108	7800	290238	7113	2009	0	148 тыс. км	148	1	1.6	2	2	\N	1	f	/auto_peugeot_207_34503947.html	VF3WB5FWx9Exxxx84	19	19	2023-06-19 12:12:03.627017	2023-06-19 12:12:03.627019
34680858	3	56	1523	1200	44652	1109	1989	13	344 тыс. км	344	1	1.6	1	2	\N	1	f	/auto_opel_vectra_34680858.html	W0L000087K1052516	18	18	2023-06-19 12:12:03.870253	2023-06-19 12:12:03.870255
34680856	3	62	28942	3000	111630	2773	2007	0	205 тыс. км	205	4	1.4	1	2	\N	1	f	/auto_renault_clio_symbol_34680856.html	VF1LB2BC537711896	10	234	2023-06-19 12:12:03.889295	2023-06-19 12:12:03.889297
34526892	4	48	423	5500	204655	5083	2005	0	216 тыс. км	216	1	1.5	1	2	\N	1	f	/auto_mercedes_benz_a_class_34526892.html	WDD1693311J098793	14	14	2023-06-19 12:12:03.931747	2023-06-19 12:12:03.931749
1911218	5	9	96	88000	3274480	81333	2008	1	1 тыс. км	1	2	3	3	\N	\N	0	f	/auto_bmw_x5_1911218.html		12	12	2023-06-19 12:12:04.041278	2023-06-19 12:12:04.041279
34680824	5	29	1268	12700	472567	11582	2012	0	91 тыс. км	91	4	2	2	1	\N	1	f	/auto_hyundai_tucson_34680824.html	Y6LJN81BxCLxxxx86	10	10	2023-06-19 12:12:04.868501	2023-06-19 12:12:04.868503
1915167	4	58	3028	14000	520940	12939	2008	1	без пробега	0	1	1	1	\N	\N	0	f	/auto_peugeot_107_hatchback_5d_1915167.html		19	19	2023-06-19 12:12:05.321609	2023-06-19 12:12:05.321611
34503489	2	84	35449	16500	613965	15250	2015	0	90 тыс. км	90	2	2	2	\N	\N	1	f	/auto_volkswagen_golf_34503489.html	3VWCA7AU3GM501344	11	11	2023-06-19 12:12:05.389727	2023-06-19 12:12:05.389729
1916940	3	48	431	17500	651175	16174	1994	1	173 тыс. км	173	2	3.5	2	\N	\N	0	f	/auto_mercedes_benz_s_class_1916940.html		12	12	2023-06-19 12:12:05.612436	2023-06-19 12:12:05.612439
34333084	3	13	1052	5150	191632	4760	2012	0	160 тыс. км	160	1	1.6	1	2	\N	1	f	/auto_chevrolet_lacetti_34333084.html	KL1NF1961CK780397	1	44	2023-06-19 12:12:06.652931	2023-06-19 12:12:06.652933
34509483	3	88	855	2500	93025	2311	2006	0	190 тыс. км	190	1	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34509483.html	Y6D21099070039243	12	335	2023-06-19 12:12:06.840962	2023-06-19 12:12:06.840967
34683131	3	6	47	5200	193700	4747	2004	0	233 тыс. км	233	1	2	2	2	\N	1	f	/auto_audi_a4_34683131.html	WAUZZZ8Ex4Axxxx77	3	3	2023-06-19 18:18:37.122018	2023-06-19 18:18:37.12202
34658900	8	23	219	6500	241865	6008	2013	13	190 тыс. км	190	2	1.3	1	2	\N	1	f	/auto_fiat_doblo_34658900.html	ZFA22300006525450	11	11	2023-06-15 13:21:37.985963	2023-06-15 13:21:37.985964
34646645	4	84	42605	8299	308806	7670	2013	0	99 тыс. км	99	1	1	4	2	\N	1	f	/auto_volkswagen_up_34646645.html	WVWZZZAAZED051202	4	505	2023-06-15 13:21:38.038566	2023-06-15 13:21:38.038567
1894427	4	180	1637	2500	93025	2311	2004	1	92 тыс. км	92	1	1.1	1	\N	\N	0	f	/auto_bunge_tavriya_1894427.html		7	7	2023-06-15 13:21:38.080458	2023-06-15 13:21:38.080459
32805037	5	6	1943	47900	1782359	44271	2017	0	65 тыс. км	65	2	3	2	1	\N	1	f	/auto_audi_q7_32805037.html	WAUZZZ4MхJDхххх52	10	10	2023-06-15 13:21:38.09246	2023-06-15 13:21:38.092461
34658838	6	84	3006	10000	372100	9242	2013	13	290 тыс. км	290	1	2	2	2	\N	1	f	/auto_volkswagen_cc_passat_cc_34658838.html		18	18	2023-06-15 13:21:38.557572	2023-06-15 13:21:38.557576
34658898	8	48	35252	8000	297680	7394	2006	8	260 тыс. км	260	2	2.2	2	3	\N	1	f	/auto_mercedes_benz_vito_34658898.html		18	62	2023-06-15 13:21:38.566417	2023-06-15 13:21:38.566418
34658874	3	48	431	8000	297680	7394	2004	13	350 тыс. км	350	2	3.2	2	\N	\N	1	f	/auto_mercedes_benz_s_class_34658874.html	WDB2200251A445754	25	543	2023-06-15 13:21:38.579662	2023-06-15 13:21:38.579664
34658896	5	48	45217	59999	2232563	55454	2018	0	33 тыс. км	33	1	0	2	\N	\N	1	f	/auto_mercedes_benz_gle_class_34658896.html	WDC2923561A119897	12	12	2023-06-15 13:21:38.614869	2023-06-15 13:21:38.61487
34657987	3	13	1060	4550	169306	4205	2004	0	256 тыс. км	256	4	1.6	1	2	\N	1	f	/auto_chevrolet_nubira_34657987.html		24	24	2023-06-15 13:21:38.687262	2023-06-15 13:21:38.687265
1906712	3	18	161	3500	130235	3235	1998	1	234 тыс. км	234	1	1.5	1	\N	\N	0	f	/auto_daewoo_lanos_1906712.html		1	1	2023-06-15 13:21:38.723907	2023-06-15 13:21:38.723909
34658880	5	52	1486	10000	372100	9242	2007	8	281 тыс. км	281	4	3	2	1	\N	1	f	/auto_mitsubishi_pajero_34658880.html	JMYLRV93W7J710282	5	302	2023-06-15 13:21:42.141065	2023-06-15 13:21:42.141067
34658870	3	6	49	14100	524661	13032	2012	8	192 тыс. км	192	1	2	5	\N	\N	1	f	/auto_audi_a6_34658870.html	WAUZZZ4GXDN082687	10	10	2023-06-15 13:21:42.163738	2023-06-15 13:21:42.163739
1898094	3	97	1785	1747	65000	1615	1988	1	10 тыс. км	10	2	0	1	\N	\N	1	f	/auto_kamaz_5410_1898094.html		14	184	2023-06-15 13:21:42.201116	2023-06-15 13:21:42.201118
1916658	4	18	163	0	0	0	2007	1	18 тыс. км	18	1	0.8	2	\N	\N	0	f	/auto_daewoo_matiz_1916658.html		7	7	2023-06-15 13:21:42.264375	2023-06-15 13:21:42.264377
1903457	3	38	356	105555	3927702	97558	2008	5	без пробега	0	1	4.6	3	\N	\N	0	f	/auto_lexus_ls_1903457.html		17	17	2023-06-15 13:21:42.441113	2023-06-15 13:21:42.441116
34658883	3	33	1311	2450	91165	2264	2007	13	134 тыс. км	134	1	1.6	1	2	\N	1	t	/auto_kia_cerato_34658883.html	Y6LFE22727L004158	12	12	2023-06-15 13:21:42.957177	2023-06-15 13:21:42.957181
34655765	2	70	3167	11000	409310	10167	2011	0	260 тыс. км	260	2	2	1	2	\N	1	f	/auto_skoda_superb_34655765.html	TMBJE73T1B9068729	5	287	2023-06-15 13:21:43.055901	2023-06-15 13:21:43.055905
34442683	5	38	1895	29900	1112579	27635	2012	0	155 тыс. км	155	4	4.6	2	1	\N	1	f	/auto_lexus_gx_34442683.html	JTJJM7FXх05хххх30	20	20	2023-06-15 13:21:44.432197	2023-06-15 13:21:44.432199
34662049	3	79	698	22990	856377	21067	2017	0	116 тыс. км	116	1	2.5	2	2	\N	1	f	/auto_toyota_camry_34662049.html	JTNBF3HKx03xxxx69	12	12	2023-06-15 21:34:11.312684	2023-06-15 21:34:11.312685
34598064	4	84	2813	19500	725595	18023	2016	0	52 тыс. км	52	1	2	2	2	\N	1	t	/auto_volkswagen_golf_gti_34598064.html	3VW447AU5HM010061	10	10	2023-06-15 21:34:11.507926	2023-06-15 21:34:11.507928
34628678	4	55	36565	19100	710711	17653	2018	0	81 тыс. км	81	6	0	2	2	\N	1	f	/auto_nissan_leaf_34628678.html	SJNFAAZE1U0025474	18	18	2023-06-15 21:34:11.572571	2023-06-15 21:34:11.572573
34662107	2	6	49	3999	148962	3664	2003	0	445 тыс. км	445	2	2.5	2	2	\N	1	f	/auto_audi_a6_34662107.html	WAUZZZ4Bx4Nxxxx34	5	310	2023-06-15 21:34:12.112069	2023-06-15 21:34:12.11207
34661390	4	84	35449	14100	524661	13032	2014	0	243 тыс. км	243	1	1.8	2	\N	\N	1	f	/auto_volkswagen_golf_34661390.html	3VW217AU0FM007372	5	5	2023-06-15 21:34:12.406778	2023-06-15 21:34:12.406779
34662083	5	118	3235	12500	465125	11553	2015	0	162 тыс. км	162	1	2.4	2	2	\N	1	f	/auto_dodge_journey_34662083.html	3C4PDCAB2FT723090	15	199	2023-06-15 21:34:12.445987	2023-06-15 21:34:12.445988
31888214	2	6	49	20000	744200	18485	2014	0	200 тыс. км	200	2	2	2	2	\N	1	f	/auto_audi_a6_31888214.html	WAUZZZ4GхENхххх31	6	552	2023-06-15 21:34:12.788931	2023-06-15 21:34:12.788935
34661997	5	52	1485	16700	621407	15435	2013	13	27 тыс. км	27	1	2	2	\N	\N	1	f	/auto_mitsubishi_outlander_34661997.html		11	11	2023-06-15 21:34:13.614484	2023-06-15 21:34:13.614489
34662079	8	56	1524	8500	316285	7856	2011	13	262 тыс. км	262	4	1.6	1	2	\N	1	f	/auto_opel_zafira_34662079.html	W0L0AHM75B2105508	20	361	2023-06-15 21:34:13.623143	2023-06-15 21:34:13.623144
34662057	3	84	39690	12500	465125	11553	2015	0	152 тыс. км	152	1	1.8	2	2	\N	1	t	/auto_volkswagen_passat_34662057.html	1VWAS7A38FC089918	3	3	2023-06-15 21:34:13.68713	2023-06-15 21:34:13.687131
34662045	4	29	2771	5400	201150	4948	2010	0	220 тыс. км	220	2	1.4	1	2	\N	1	f	/auto_hyundai_i20_34662045.html	NLHBB51RxBZxxxx36	10	10	2023-06-15 21:34:14.453695	2023-06-15 21:34:14.4537
34662053	5	84	63711	34900	1298629	32256	2022	0	1 тыс. км	1	6	0	2	3	\N	1	f	/auto_volkswagen_id_4_crozz_34662053.html	LFVVB9E68N5044915	22	161	2023-06-15 21:34:14.754736	2023-06-15 21:34:14.754738
34603413	212	85	47974	39900	1484679	36389	2014	0	998 тыс. км	998	2	12.9	2	\N	\N	6	f	/auto_volvo_fh_13_34603413.html		5	5	2023-06-19 12:12:02.555354	2023-06-19 12:12:02.555354
34680868	17	176	55293	3500	130235	3235	2000	8	без пробега	0	1	0.75	1	6	\N	2	f	/auto_kawasaki_z_750s_34680868.html		10	10	2023-06-19 12:12:02.822341	2023-06-19 12:12:02.822343
1916177	5	13	1059	7300	271633	6747	2005	1	134 тыс. км	134	1	1.7	1	\N	\N	0	f	/auto_chevrolet_niva_1916177.html		20	605	2023-06-19 12:12:02.887021	2023-06-19 12:12:02.887023
34497348	4	48	2622	7800	290238	7209	2009	0	165 тыс. км	165	1	1.7	5	2	\N	1	f	/auto_mercedes_benz_b_class_34497348.html	WDD24523х1Jхххх79	10	10	2023-06-19 12:12:03.034329	2023-06-19 12:12:03.03433
27048682	24	28	49474	4500	167445	4159	2007	0	10 тыс. км	10	1	0.75	1	4	\N	2	f	/auto_honda_vt_750c_27048682.html		10	10	2023-06-19 12:12:03.275636	2023-06-19 12:12:03.275641
34680871	3	24	241	9700	360937	8965	2015	13	123 тыс. км	123	1	2.5	2	2	\N	1	t	/auto_ford_fusion_34680871.html	3FA6P0H75GR298116	12	342	2023-06-19 12:12:03.769028	2023-06-19 12:12:03.769031
34680870	5	55	2197	9700	360937	8965	2009	8	220 тыс. км	220	2	1.5	1	\N	\N	1	f	/auto_nissan_qashqai_34680870.html		22	159	2023-06-19 12:12:03.877532	2023-06-19 12:12:03.877536
34597598	3	15	40442	6700	249307	6192	2014	0	203 тыс. км	203	2	1.6	1	\N	\N	1	f	/auto_citroen_c_elysee_34597598.html	VF7DD9HPхEJхххх91	15	15	2023-06-19 12:12:03.919761	2023-06-19 12:12:03.919766
1915683	8	84	31495	11500	427915	10629	2000	1	349 тыс. км	349	2	2.5	1	\N	\N	0	f	/auto_volkswagen_t4_transporter_gruz_1915683.html		6	557	2023-06-19 12:12:04.336336	2023-06-19 12:12:04.336337
34680835	3	84	39690	5888	219092	5369	2000	0	226 тыс. км	226	2	1.9	1	2	\N	1	f	/auto_volkswagen_passat_34680835.html	WVWZZZ3Bx1Exxxx23	15	15	2023-06-19 12:12:04.873248	2023-06-19 12:12:04.873251
34680825	8	62	60014	8500	316285	7752	2007	0	436 тыс. км	436	2	2	1	2	\N	1	f	/auto_renault_trafic_34680825.html	VF1JLBHBx8Vxxxx20	7	462	2023-06-19 12:12:04.883781	2023-06-19 12:12:04.883783
34680879	198	48	35249	16800	625128	15527	2003	0	313 тыс. км	313	2	2.2	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_34680879.html		9	9	2023-06-19 12:12:05.240683	2023-06-19 12:12:05.240686
34658914	3	28	262	5100	189771	4714	2003	13	262 тыс. км	262	4	2	2	\N	\N	1	f	/auto_honda_accord_34658914.html	JHMCL76403C210612	7	7	2023-06-15 13:21:37.986934	2023-06-15 13:21:37.986936
34306952	3	79	698	30500	1134905	28189	2019	0	34 тыс. км	34	5	2.5	2	2	\N	1	t	/auto_toyota_camry_34306952.html		5	5	2023-06-15 13:21:38.073068	2023-06-15 13:21:38.073068
34658871	3	9	2319	31800	1183278	29391	2018	13	187 тыс. км	187	2	2	2	3	\N	1	f	/auto_bmw_5_series_34658871.html	WBAJC31040B052552	18	18	2023-06-15 13:21:38.552801	2023-06-15 13:21:38.552807
1890536	4	18	163	6800	253028	6285	2008	5	15 тыс. км	15	1	0.8	2	\N	\N	0	f	/auto_daewoo_matiz_1890536.html		13	13	2023-06-15 13:21:38.570789	2023-06-15 13:21:38.570791
34658882	2	56	1508	5600	208376	5176	2006	0	315 тыс. км	315	4	1.8	1	2	\N	1	f	/auto_opel_astra_34658882.html	W0L0AHL3562092447	10	10	2023-06-15 13:21:38.619162	2023-06-15 13:21:38.619163
33975707	5	32	314	12500	465125	11553	2013	0	190 тыс. км	190	4	3.2	2	1	\N	1	t	/auto_jeep_cherokee_33975707.html	1C4PJMCS5EW165210	8	8	2023-06-15 13:21:38.734298	2023-06-15 13:21:38.734299
34658899	3	56	1523	1500	55815	1386	1990	0	37 тыс. км	37	4	0	1	2	\N	1	f	/auto_opel_vectra_34658899.html	W0L000089L1239254	12	12	2023-06-15 13:21:42.135922	2023-06-15 13:21:42.135923
1916654	2	13	1052	6150	228842	5684	2006	1	68 тыс. км	68	1	1.8	1	\N	\N	0	f	/auto_chevrolet_lacetti_1916654.html		22	22	2023-06-15 13:21:42.196635	2023-06-15 13:21:42.196637
1916655	3	18	161	2063	76752	1906	2008	1	1 тыс. км	1	1	1.5	1	\N	\N	0	f	/auto_daewoo_lanos_1916655.html		10	10	2023-06-15 13:21:42.260492	2023-06-15 13:21:42.260494
34590882	4	55	494	5500	204655	5083	2007	0	172 тыс. км	172	1	1.2	2	2	\N	1	f	/auto_nissan_micra_34590882.html	SJNFBAK1хU3хххх63	12	12	2023-06-15 13:21:42.329073	2023-06-15 13:21:42.329074
1895076	3	48	428	6800	253028	6285	1992	1	111 тыс. км	111	4	2.6	1	\N	\N	0	f	/auto_mercedes_benz_e_class_1895076.html		15	196	2023-06-15 13:21:42.487079	2023-06-15 13:21:42.48708
34658885	3	84	781	4000	148840	3697	1998	13	255 тыс. км	255	1	1.6	1	2	\N	1	f	/auto_volkswagen_bora_34658885.html	WVWZZZ1JZXW150950	5	306	2023-06-15 13:21:42.970854	2023-06-15 13:21:42.970856
34662117	3	18	1642	1900	70775	1741	2007	0	157 тыс. км	157	1	1.3	1	\N	\N	1	f	/auto_daewoo_sens_34662117.html	Y6DT1311x70xxxx45	16	242	2023-06-15 21:34:11.308954	2023-06-15 21:34:11.308955
34662112	8	62	3185	6500	242125	5956	2010	0	229 тыс. км	229	2	1.5	1	2	\N	1	f	/auto_renault_grand_scenic_34662112.html	VF1JZ1GAx43xxxx36	5	298	2023-06-15 21:34:11.330551	2023-06-15 21:34:11.330551
34680821	5	32	315	7200	267912	6566	2002	0	250 тыс. км	250	2	2.7	2	\N	\N	1	f	/auto_jeep_grand_cherokee_34680821.html	1J8GWE82x2Yxxxx90	3	3	2023-06-19 12:12:02.554807	2023-06-19 12:12:02.554808
34680873	3	18	161	1650	61397	1525	2008	8	150 тыс. км	150	4	0	1	\N	\N	1	f	/auto_daewoo_lanos_34680873.html		10	210	2023-06-19 12:12:02.835015	2023-06-19 12:12:02.835017
34635299	5	48	45217	61500	2288415	56841	2019	0	119 тыс. км	119	2	1.9	2	1	\N	1	f	/auto_mercedes_benz_gle_class_34635299.html	WDC1671191A032315	10	10	2023-06-19 12:12:02.985478	2023-06-19 12:12:02.98548
34680830	3	79	1832	20500	762805	18696	2015	0	78 тыс. км	78	5	0	2	2	\N	1	t	/auto_toyota_avalon_34680830.html	4T1BD1EBxFUxxxx95	14	14	2023-06-19 12:12:03.626424	2023-06-19 12:12:03.626426
34688533	4	84	45152	17300	643733	15989	2017	13	94 тыс. км	94	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_34688533.html	WVWZZZAUZJ8903672	3	3	2023-06-20 15:37:53.874412	2023-06-20 15:37:53.874412
34680876	207	48	35249	15300	569313	14141	2006	8	650 тыс. км	650	0	2.2	1	\N	\N	6	f	/auto_mercedes_benz_sprinter_34680876.html		9	9	2023-06-19 12:12:03.932395	2023-06-19 12:12:03.932396
34680850	2	6	49	10999	409273	10166	2011	13	192 тыс. км	192	2	2	2	2	\N	1	f	/auto_audi_a6_34680850.html	WAUZZZ4F2BN072997	5	5	2023-06-19 12:12:04.041828	2023-06-19 12:12:04.041831
34507471	4	29	2771	5950	221400	5499	2013	0	190 тыс. км	190	4	1.2	1	\N	\N	1	f	/auto_hyundai_i20_34507471.html	NLHBA51BADZ223632	10	212	2023-06-19 12:12:04.292878	2023-06-19 12:12:04.292886
33812132	5	6	62601	63000	2344230	57456	2022	0	10 тыс. км	10	6	0	2	3	\N	1	f	/auto_audi_q4_sportback_33812132.html	WAUZZZFZxNPxxxx61	4	4	2023-06-19 12:12:04.872322	2023-06-19 12:12:04.872324
34512806	3	18	166	3000	111630	2736	2003	0	222 тыс. км	222	1	2	1	2	\N	1	f	/auto_daewoo_nubira_34512806.html	Y6DJF69Zx30xxxx69	10	10	2023-06-19 12:12:04.888054	2023-06-19 12:12:04.888055
34509484	8	84	35448	12500	465125	11553	2015	0	317 тыс. км	317	4	0	1	\N	\N	1	f	/auto_volkswagen_caddy_34509484.html	WV1ZZZ2KхFXхххх25	3	3	2023-06-19 12:12:05.250126	2023-06-19 12:12:05.250128
1915681	3	9	0	11000	409310	10167	1995	1	234 тыс. км	234	1	3	1	\N	\N	0	f			10	10	2023-06-19 12:12:05.314082	2023-06-19 12:12:05.314083
34680828	8	29	55769	3399	126476	3099	2001	0	268 тыс. км	268	2	2.5	1	\N	\N	1	f	/auto_hyundai_h_200_34680828.html	KMJWVH7Fx1Uxxxx11	18	55	2023-06-19 12:12:06.331898	2023-06-19 12:12:06.331904
1915063	3	29	1258	11800	439078	10906	2009	1	10 тыс. км	10	1	1.6	1	\N	\N	0	f	/auto_hyundai_accent_1915063.html		1	1	2023-06-19 12:12:06.755948	2023-06-19 12:12:06.755951
1912061	3	52	457	6000	223260	5545	1998	1	130 тыс. км	130	1	1.3	1	\N	\N	1	f	/auto_mitsubishi_lancer_1912061.html		10	10	2023-06-19 12:12:06.822062	2023-06-19 12:12:06.822064
34491412	3	84	39690	12500	465750	11412	2013	0	270 тыс. км	270	2	1.6	1	2	\N	1	f	/auto_volkswagen_passat_34491412.html	WVWZZZ3CxEPxxxx21	25	25	2023-06-20 15:37:54.607799	2023-06-20 15:37:54.607802
34688523	307	70	652	5900	219539	5453	2007	8	241 тыс. км	241	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34688523.html	TMBBA21Zх82хххх69	7	7	2023-06-20 15:37:54.861492	2023-06-20 15:37:54.861495
34688506	5	52	2685	6005	223443	5550	2006	8	217 тыс. км	217	2	2.5	1	1	\N	1	f	/auto_mitsubishi_pajero_sport_34688506.html		10	10	2023-06-20 15:37:54.921389	2023-06-20 15:37:54.921391
34688525	5	124	1869	6500	241865	6008	2009	13	97 тыс. км	97	1	2.4	1	1	\N	1	f	/auto_great_wall_hover_34688525.html		10	214	2023-06-20 15:37:54.993365	2023-06-20 15:37:54.993366
1905990	3	88	855	3450	128375	3189	1999	1	190 тыс. км	190	4	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1905990.html		14	14	2023-06-20 15:37:57.180834	2023-06-20 15:37:57.180835
1914356	3	92	892	700	26047	647	1987	1	150 тыс. км	150	1	1.6	1	\N	\N	0	f	/auto_izh_412_2125_1914356.html		4	503	2023-06-20 15:37:57.217998	2023-06-20 15:37:57.217999
34496359	212	115	18381	14700	546987	13586	1999	0	1 тыс. км	1	2	12.6	1	\N	\N	6	f	/auto_daf_xf_95_34496359.html		12	342	2023-06-20 15:37:57.294888	2023-06-20 15:37:57.294889
34688507	4	79	714	27900	1038159	25786	2020	13	10 тыс. км	10	5	1.8	2	2	\N	1	f	/auto_toyota_prius_34688507.html	JTDKARFP3L3152131	12	12	2023-06-20 15:37:57.412486	2023-06-20 15:37:57.412488
34658897	4	62	586	9000	334890	8318	2011	13	229 тыс. км	229	2	1.5	4	1	\N	1	f	/auto_renault_megane_34658897.html	VF1BZ090E46103272	12	341	2023-06-15 13:21:37.987709	2023-06-15 13:21:37.987711
34662123	5	59	60099	176000	6556000	161279	2022	0	1 тыс. км	1	1	0	2	1	\N	1	f	/auto_porsche_cayenne_coupe_34662123.html	WP1ZZZ9YxNDxxxx38	1	1	2023-06-15 21:34:11.312855	2023-06-15 21:34:11.312855
34654679	3	52	457	5800	215818	5361	2007	0	310 тыс. км	310	2	2	1	2	\N	1	f	/auto_mitsubishi_lancer_34654679.html		19	19	2023-06-15 21:34:11.500515	2023-06-15 21:34:11.500517
34484152	299	177	31670	62000	2307020	57303	2015	0	775 тыс. км	775	2	12.4	2	3	\N	4	f	/auto_man_tgs_34484152.html		11	76	2023-06-15 21:34:11.56088	2023-06-15 21:34:11.560881
34662105	3	47	393	11000	409750	10079	2014	0	208 тыс. км	208	1	2.5	2	2	\N	1	f	/auto_mazda_6_34662105.html	JM1GJ1W6xE1xxxx28	1	1	2023-06-15 21:34:12.11075	2023-06-15 21:34:12.110755
34661767	227	378	3404	16000	595360	14788	1992	13	860 тыс. км	860	2	11	1	3	\N	7	f	/auto_neoplan_n_316_34661767.html		24	24	2023-06-15 21:34:12.357355	2023-06-15 21:34:12.357357
34661687	2	79	696	7150	266052	6608	2007	8	251 тыс. км	251	2	2	1	\N	\N	1	f	/auto_toyota_avensis_34661687.html	SB1ED56L80E030248	2	2	2023-06-15 21:34:12.383837	2023-06-15 21:34:12.383838
34661960	5	38	1344	43500	1618635	40205	2011	13	165 тыс. км	165	4	5.7	2	1	\N	1	f	/auto_lexus_lx_34661960.html	JTJHY00Wх04хххх76	5	5	2023-06-15 21:34:12.467847	2023-06-15 21:34:12.467849
34471056	23	1078	30112	20500	762805	18947	2021	0	6 тыс. км	6	1	0	1	\N	\N	2	f	/auto_harley_davidson_heritage_softail_34471056.html	1HD1YAJ1хMBхххх60	5	306	2023-06-15 21:34:12.648157	2023-06-15 21:34:12.648159
33807235	5	38	1895	18400	684664	17006	2008	0	280 тыс. км	280	4	4.7	2	1	\N	1	f	/auto_lexus_gx_33807235.html	JTJBT20X480162411	12	352	2023-06-15 21:34:13.123032	2023-06-15 21:34:13.123037
34662119	227	48	35249	35000	1303750	32072	2013	0	256 тыс. км	256	2	0	2	3	\N	7	f	/auto_mercedes_benz_sprinter_34662119.html	WDB90665x1Sxxxx21	6	6	2023-06-15 21:34:13.353144	2023-06-15 21:34:13.353145
33830241	6	75	38347	12999	484212	11911	2015	0	110 тыс. км	110	1	2	2	3	\N	1	t	/auto_subaru_brz_33830241.html	JF1ZCAC1xF8xxxx50	12	12	2023-06-15 21:34:13.401482	2023-06-15 21:34:13.401483
34662060	6	75	38347	16000	595360	14788	2017	13	112 тыс. км	112	1	2	2	3	\N	1	t	/auto_subaru_brz_34662060.html	JF1ZCAC14H8604145	12	12	2023-06-15 21:34:13.618782	2023-06-15 21:34:13.618783
34662062	5	79	35000	65500	2437255	60538	2020	13	53 тыс. км	53	1	4.6	2	1	\N	1	f	/auto_toyota_land_cruiser_34662062.html	JTMCX05J404204187	9	392	2023-06-15 21:34:13.640529	2023-06-15 21:34:13.64053
33858225	4	84	45152	22999	855793	21257	2019	0	48 тыс. км	48	6	0	5	2	\N	1	f	/auto_volkswagen_e_golf_33858225.html	WVWZZZAUZK8911908	25	25	2023-06-15 21:34:13.688046	2023-06-15 21:34:13.688047
34488023	6	118	3108	17999	669743	16635	2017	0	139 тыс. км	139	1	3.6	2	3	\N	1	t	/auto_dodge_challenger_34488023.html	2C3CDZAG3HH584844	12	12	2023-06-15 21:34:13.828853	2023-06-15 21:34:13.828855
34443334	3	13	1052	4500	167625	4123	2005	0	248 тыс. км	248	4	1.6	1	2	\N	1	f	/auto_chevrolet_lacetti_34443334.html	Y6DNF196x5Kxxxx41	13	113	2023-06-15 21:34:14.470688	2023-06-15 21:34:14.470691
34662061	3	9	2319	1549	57638	1432	1984	0	360 тыс. км	360	4	2	1	3	\N	1	f	/auto_bmw_5_series_34662061.html	WBADK510309191512	10	233	2023-06-15 21:34:14.772413	2023-06-15 21:34:14.772415
34680842	5	47	37381	19499	725557	17783	2018	0	84 тыс. км	84	1	0	2	2	\N	1	t	/auto_mazda_cx_5_34680842.html	JM3KFACMxJ0xxxx28	5	5	2023-06-19 12:12:02.590034	2023-06-19 12:12:02.590035
1914352	3	52	457	12200	453962	11276	2007	1	31 тыс. км	31	1	1.6	1	\N	\N	0	f	/auto_mitsubishi_lancer_1914352.html		11	76	2023-06-20 15:37:53.874824	2023-06-20 15:37:53.874825
1901742	3	75	664	13500	502335	12477	2004	1	124 тыс. км	124	0	1.6	2	\N	\N	1	f	/auto_subaru_impreza_1901742.html		10	10	2023-06-15 13:21:37.993229	2023-06-15 13:21:37.993231
34662118	11	179	3340	751	28000	688	2012	0	34 тыс. км	34	1	490	2	5	\N	2	f	/auto_yamaha_jog_34662118.html	SAx9Jxxxx53	1	1	2023-06-15 21:34:11.324765	2023-06-15 21:34:11.324773
34680841	3	88	851	2499	92987	2279	1986	0	86 тыс. км	86	4	1.3	1	3	\N	1	t	/auto_vaz_lada_2106_34680841.html	XTA21063xG1xxxx74	1	44	2023-06-19 12:12:02.590535	2023-06-19 12:12:02.590536
34688490	212	175	2119	21639	805200	20000	2006	0	974 тыс. км	974	0	0	1	\N	\N	6	f	/auto_iveco_stralis_34688490.html		10	10	2023-06-20 15:37:53.875249	2023-06-20 15:37:53.875249
34688513	5	9	96	10000	372100	9242	2000	13	387 тыс. км	387	2	3	2	1	\N	1	f	/auto_bmw_x5_34688513.html	WBAFB335х1Lхххх69	24	533	2023-06-20 15:37:53.883991	2023-06-20 15:37:53.883992
32935290	2	58	2109	6500	241865	6008	2011	0	249 тыс. км	249	2	1.6	4	\N	\N	1	f	/auto_peugeot_308_32935290.html	VF34E9HRхBSхххх23	3	425	2023-06-20 15:37:54.12168	2023-06-20 15:37:54.121683
33491304	3	56	1523	6200	231012	5660	2007	0	168 тыс. км	168	4	2.2	1	2	\N	1	f	/auto_opel_vectra_33491304.html		4	510	2023-06-20 15:37:54.61925	2023-06-20 15:37:54.619252
34485967	5	55	2197	9300	346053	8595	2009	0	166 тыс. км	166	1	2	2	2	\N	1	f	/auto_nissan_qashqai_34485967.html	SJNFBAJ10U1429451	25	25	2023-06-20 15:37:54.862992	2023-06-20 15:37:54.862994
34603393	3	84	39690	1950	72560	1802	1989	0	450 тыс. км	450	4	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34603393.html	WVWZZZ31ZKE134667	5	5	2023-06-15 13:21:38.008472	2023-06-15 13:21:38.008473
34658889	66	1584	28746	14500	539545	13402	2012	8	4 тыс. км	4	2	4.8	1	1	\N	10	f	/auto_mtz_892_belarus_34658889.html		3	438	2023-06-15 13:21:38.077798	2023-06-15 13:21:38.077799
34662129	4	84	35449	2300	85675	2107	1999	0	215 тыс. км	215	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34662129.html	WVWZZZ1JxXWxxxx52	10	225	2023-06-15 21:34:11.369625	2023-06-15 21:34:11.369628
34680885	2	84	39690	6199	230665	5729	2008	13	272 тыс. км	272	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34680885.html		22	168	2023-06-19 12:12:03.015828	2023-06-19 12:12:03.015836
34688539	3	88	856	2300	85583	2126	2007	13	165 тыс. км	165	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34688539.html	XTA21104071019220	4	510	2023-06-20 15:37:53.875395	2023-06-20 15:37:53.875395
34658893	4	55	36565	9299	346016	8595	2013	13	100 тыс. км	100	6	0	2	2	\N	1	f	/auto_nissan_leaf_34658893.html		5	646	2023-06-15 13:21:38.014862	2023-06-15 13:21:38.014865
34662100	4	76	2035	7500	279375	6872	2009	0	82 тыс. км	82	1	0	1	2	\N	1	f	/auto_suzuki_sx4_34662100.html	TSMEYA21x00xxxx34	12	12	2023-06-15 21:34:12.195924	2023-06-15 21:34:12.195925
34509504	3	6	49	22000	818620	20333	2014	0	109 тыс. км	109	1	0	2	\N	\N	1	t	/auto_audi_a6_34509504.html	WAUGFAFC7FN003877	15	15	2023-06-19 12:12:05.338165	2023-06-19 12:12:05.338167
34680862	3	89	3569	2200	81862	2033	2011	13	235 тыс. км	235	4	1.5	1	2	\N	1	f	/auto_zaz_lanos_34680862.html	Y6DTF69Y0B0273229	22	165	2023-06-19 12:12:05.446026	2023-06-19 12:12:05.446028
34159544	3	48	428	8500	316285	7856	2005	0	344 тыс. км	344	1	3.2	3	1	\N	1	f	/auto_mercedes_benz_e_class_34159544.html	WDB2110821X176086	5	5	2023-06-19 12:12:06.691679	2023-06-19 12:12:06.691682
1904087	5	128	1270	40800	1518168	37709	2008	1	20 тыс. км	20	1	3.5	3	\N	\N	0	f	/auto_infiniti_fx_1904087.html		11	11	2023-06-19 12:12:06.781786	2023-06-19 12:12:06.781788
34688530	307	6	32378	62500	2325625	57765	2018	13	54 тыс. км	54	1	3	2	1	\N	1	f	/auto_audi_a7_sportback_34688530.html	WAUV2AF20KN036420	10	10	2023-06-20 15:37:53.877829	2023-06-20 15:37:53.87783
34688531	5	386	62955	33000	1227930	30500	2021	13	19 тыс. км	19	6	0	2	2	\N	1	f	/auto_byd_song_plus_34688531.html	LGXCE4CBхM0хххх87	12	12	2023-06-20 15:37:53.885166	2023-06-20 15:37:53.885167
32592908	8	56	59772	11800	439668	10773	2008	0	242 тыс. км	242	2	0	1	2	\N	1	f	/auto_opel_vivaro_32592908.html	W0LJ7AJAx9Vxxxx74	12	12	2023-06-20 15:37:54.598968	2023-06-20 15:37:54.598971
34258825	3	62	586	5350	199074	4945	2005	0	209 тыс. км	209	1	1.6	2	2	\N	1	f	/auto_renault_megane_34258825.html	VF1LM1B0E34514206	24	24	2023-06-20 15:37:54.867653	2023-06-20 15:37:54.867655
34518928	2	84	39690	10950	407450	10120	2011	0	316 тыс. км	316	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34518928.html	WVWZZZ3CZBE385128	2	146	2023-06-20 15:37:54.879836	2023-06-20 15:37:54.879837
34688487	5	93	915	2200	81862	2033	1989	13	41 тыс. км	41	4	0	1	\N	\N	1	f	/auto_uaz_31512_34688487.html		20	605	2023-06-20 15:37:54.926729	2023-06-20 15:37:54.92673
34072124	6	84	3006	12300	458298	11230	2011	0	187 тыс. км	187	2	2	2	2	\N	1	f	/auto_volkswagen_cc_passat_cc_34072124.html	WVWZZZ3CxCExxxx44	11	11	2023-06-20 15:37:56.916358	2023-06-20 15:37:56.916359
34688529	3	58	529	1600	59536	1479	1988	0	183 тыс. км	183	4	1.6	1	2	\N	1	f	/auto_peugeot_405_34688529.html	VF315BB1208099629	8	8	2023-06-20 15:37:57.186498	2023-06-20 15:37:57.1865
1913519	3	79	698	18300	680943	16914	2005	1	85 тыс. км	85	1	2.4	1	\N	\N	0	f	/auto_toyota_camry_1913519.html		1	1	2023-06-20 15:37:57.21307	2023-06-20 15:37:57.213072
34514859	2	62	586	7299	271596	6746	2010	0	230 тыс. км	230	0	1.5	1	2	\N	1	f	/auto_renault_megane_34514859.html	VF1BZ1W0643533474	4	498	2023-06-20 15:37:57.222877	2023-06-20 15:37:57.222879
34687795	3	48	428	3500	130235	3235	1999	0	400 тыс. км	400	2	2.2	2	2	\N	1	f	/auto_mercedes_benz_e_class_34687795.html	WDB2100061A859153	10	10	2023-06-20 15:37:57.281493	2023-06-20 15:37:57.281495
34688494	2	88	849	1400	52094	1294	1989	0	100 тыс. км	100	1	1.3	1	3	\N	1	f	/auto_vaz_lada_2104_34688494.html	XTA210430R0464773	12	338	2023-06-20 15:37:57.316886	2023-06-20 15:37:57.316888
1916686	3	56	1508	12000	446520	11091	2008	1	47 тыс. км	47	4	1.6	1	\N	\N	0	f	/auto_opel_astra_1916686.html		10	10	2023-06-20 15:37:58.299358	2023-06-20 15:37:58.299359
34658918	307	89	872	1950	72560	1802	2006	13	43 тыс. км	43	1	1.2	1	2	\N	1	f	/auto_zaz_1103_slavuta_34658918.html	Y6D11030х60хххх76	10	10	2023-06-15 13:21:38.027852	2023-06-15 13:21:38.027856
34658884	3	38	1343	21500	800015	19871	2014	8	227 тыс. км	227	4	3.5	2	\N	\N	1	f	/auto_lexus_es_34658884.html	JTHBK1GG6E2141743	6	6	2023-06-15 13:21:38.091714	2023-06-15 13:21:38.091715
34658859	6	71	28290	4200	156282	3882	2005	13	110 тыс. км	110	1	0.7	2	3	\N	1	f	/auto_smart_fortwo_34658859.html		11	11	2023-06-15 13:21:38.554805	2023-06-15 13:21:38.554807
1900229	5	52	1478	116	4300	107	2007	5	55 тыс. км	55	2	2.5	1	\N	\N	1	f	/auto_mitsubishi_l_200_1900229.html		17	17	2023-06-15 13:21:38.564014	2023-06-15 13:21:38.564016
1907446	3	185	2533	1048	39000	969	2007	1	30 тыс. км	30	1	1.6	1	\N	\N	0	f	/auto_geely_ck_1907446.html		8	8	2023-06-15 13:21:38.575369	2023-06-15 13:21:38.57537
34658886	5	189	1886	2000	74420	1848	1992	13	50 тыс. км	50	4	1.2	1	1	\N	1	f	/auto_luaz_969_volyn_34658886.html	XTD969M00N0174286	10	233	2023-06-15 13:21:38.606006	2023-06-15 13:21:38.606008
1906711	3	55	498	8600	320006	7948	1997	1	112 тыс. км	112	1	1.6	1	\N	\N	0	f	/auto_nissan_primera_1906711.html		1	1	2023-06-15 13:21:38.705499	2023-06-15 13:21:38.7055
1894121	8	48	1426	3800	141398	3512	1989	1	500 тыс. км	500	2	2.4	1	\N	\N	0	f	/auto_mercedes_benz_mb_class_1894121.html		13	116	2023-06-15 13:21:42.138803	2023-06-15 13:21:42.138804
34658742	3	6	39	2000	74420	1848	1989	0	455 тыс. км	455	4	2.2	1	2	\N	1	f	/auto_audi_100_34658742.html	WAUZZZ44ZKN064736	4	510	2023-06-15 13:21:42.152055	2023-06-15 13:21:42.152056
34658869	310	1614	28798	7500	279075	6932	1980	13	1 тыс. км	1	0	0	1	\N	\N	10	f	/auto_massey_ferguson_186_34658869.html		18	53	2023-06-15 13:21:42.157103	2023-06-15 13:21:42.157105
1916657	4	70	652	13700	509777	12662	2007	1	41 тыс. км	41	1	1.6	1	\N	\N	0	f	/auto_skoda_octavia_1916657.html		9	9	2023-06-15 13:21:42.263774	2023-06-15 13:21:42.263775
1911477	3	18	161	7200	267912	6655	2009	1	14 тыс. км	14	1	1.4	1	\N	\N	0	f	/auto_daewoo_lanos_1911477.html		10	10	2023-06-15 13:21:42.507485	2023-06-15 13:21:42.507487
34658855	2	84	39690	4869	181170	4500	2001	13	170 тыс. км	170	1	1.6	1	2	\N	1	f	/auto_volkswagen_passat_34658855.html		25	25	2023-06-15 13:21:42.983542	2023-06-15 13:21:42.983544
1914754	3	47	1692	0	0	0	2008	1	24 тыс. км	24	1	2	1	\N	\N	1	f	/auto_mazda_3_1914754.html		5	306	2023-06-15 13:21:44.045258	2023-06-15 13:21:44.045261
34662101	5	9	2153	43222	1610019	39606	2016	0	124 тыс. км	124	2	3	2	\N	\N	1	f	/auto_bmw_x6_34662101.html		10	10	2023-06-15 21:34:12.195829	2023-06-15 21:34:12.195832
34514003	307	70	652	14700	547575	13420	2016	0	186 тыс. км	186	1	1.8	4	2	\N	1	f	/auto_skoda_octavia_34514003.html	TMBAD4NExHBxxxx98	10	220	2023-06-19 18:18:33.456385	2023-06-19 18:18:33.456386
34551135	3	84	39690	3750	139687	3423	1998	0	240 тыс. км	240	2	1.9	2	2	\N	1	f	/auto_volkswagen_passat_34551135.html	WVWZZZ3BxWPxxxx42	3	3	2023-06-19 18:18:33.473314	2023-06-19 18:18:33.473315
34683169	198	85	48095	48689	1811700	45000	2008	8	813 тыс. км	813	0	9.99	2	\N	\N	6	f	/auto_volvo_fm_9_34683169.html		10	210	2023-06-19 18:18:33.845072	2023-06-19 18:18:33.845074
34502269	5	19	180	8500	316285	7856	2007	0	153 тыс. км	153	4	1.5	2	1	\N	1	f	/auto_daihatsu_terios_34502269.html	JDAJ210G001022588	24	24	2023-06-19 18:18:33.925736	2023-06-19 18:18:33.925737
1916999	3	18	165	1610	59900	1488	2009	1	11 тыс. км	11	1	1.5	1	\N	\N	0	f	/auto_daewoo_nexia_1916999.html		5	5	2023-06-19 18:18:33.973267	2023-06-19 18:18:33.973268
34683013	5	79	715	30900	1151025	28211	2020	0	30 тыс. км	30	1	0	4	2	\N	1	f	/auto_toyota_rav4_34683013.html	JTMW43FVx0Dxxxx87	5	5	2023-06-19 18:18:34.244308	2023-06-19 18:18:34.24431
34683110	5	52	30805	12000	447000	10955	2013	0	190 тыс. км	190	1	2	5	1	\N	1	f	/auto_mitsubishi_asx_34683110.html	JMBXTGA2xDExxxx02	12	12	2023-06-19 18:18:34.251018	2023-06-19 18:18:34.25102
34683171	3	47	393	6000	223260	5545	2007	13	220 тыс. км	220	4	0	1	2	\N	1	f	/auto_mazda_6_34683171.html		24	527	2023-06-19 18:18:34.554171	2023-06-19 18:18:34.554173
34683174	5	62	30503	11170	415636	10324	2020	13	109 тыс. км	109	2	1.5	1	1	\N	1	t	/auto_renault_duster_34683174.html	VF1HJD40763321119	10	10	2023-06-19 18:18:34.732058	2023-06-19 18:18:34.732062
34683144	3	24	241	9500	353875	8673	2013	0	290 тыс. км	290	5	2	5	2	\N	1	t	/auto_ford_fusion_34683144.html		5	287	2023-06-19 18:18:35.415834	2023-06-19 18:18:35.415838
34683105	307	70	652	5800	216050	5295	2007	0	192 тыс. км	192	4	1.8	1	2	\N	1	f	/auto_skoda_octavia_34683105.html	TMBDL41Ux7Bxxxx73	6	560	2023-06-19 18:18:35.435534	2023-06-19 18:18:35.435536
32697403	2	84	39690	5099	189734	4713	2007	0	339 тыс. км	339	2	2	1	2	\N	1	f	/auto_volkswagen_passat_32697403.html		3	3	2023-06-19 18:18:35.694778	2023-06-19 18:18:35.694781
34683179	3	91	886	680	25303	628	1998	8	70 тыс. км	70	4	0	1	\N	\N	1	f	/auto_gaz_31029_34683179.html		11	11	2023-06-19 18:18:35.708098	2023-06-19 18:18:35.7081
34248336	197	56	60548	13700	509777	12662	2016	0	360 тыс. км	360	2	2.3	1	2	\N	6	f	/auto_opel_movano_34248336.html	W0LVSU4Z2GB111655	11	11	2023-06-19 18:18:35.94088	2023-06-19 18:18:35.940883
34683048	2	24	240	3700	137825	3378	2000	0	266 тыс. км	266	1	1.8	1	2	\N	1	f	/auto_ford_focus_34683048.html	WF0NXXGCxNYxxxx72	13	113	2023-06-19 18:18:37.079309	2023-06-19 18:18:37.079312
33917212	5	28	62906	25400	945134	23476	2022	0	1 тыс. км	1	6	0	2	2	\N	1	f	/auto_honda_m_nv_33917212.html	LVHDH285хN5хххх79	25	25	2023-06-20 15:37:53.882679	2023-06-20 15:37:53.882681
34688455	196	2063	60020	68000	2530280	62848	2013	0	2 тыс. км	2	2	12.9	1	3	\N	6	f	/auto_astra_hd9_34688455.html	ZCNH96431DPC01614	12	12	2023-06-20 15:37:53.983729	2023-06-20 15:37:53.98373
33630188	5	6	3222	17500	651175	16174	2015	0	251 тыс. км	251	1	2	2	1	\N	1	t	/auto_audi_q5_33630188.html	WA1LFAFPхFAхххх09	25	25	2023-06-20 15:37:54.369769	2023-06-20 15:37:54.369777
34491433	3	31	2264	15850	590571	14471	2015	0	159 тыс. км	159	2	2.2	3	3	\N	1	f	/auto_jaguar_xf_34491433.html		15	15	2023-06-20 15:37:54.626611	2023-06-20 15:37:54.626613
34688517	3	48	425	24800	922808	22921	2016	8	118 тыс. км	118	1	2	2	3	\N	1	f	/auto_mercedes_benz_c_class_34688517.html	55SWF4JB4GU162062	10	10	2023-06-20 15:37:54.864745	2023-06-20 15:37:54.864747
34646691	4	24	241	5500	204655	5083	2006	0	109 тыс. км	109	1	1.4	1	2	\N	1	f	/auto_ford_fusion_34646691.html	WF0UXXGAJU6B61490	1	1	2023-06-20 15:37:54.924964	2023-06-20 15:37:54.924965
34688485	5	70	51759	29800	1108858	27542	2022	0	31 тыс. км	31	2	2	1	2	\N	1	f	/auto_skoda_karoq_34688485.html	TMBJF7NU3NB200650	10	210	2023-06-20 15:37:57.171802	2023-06-20 15:37:57.171804
33379799	5	75	38372	11685	434808	10800	2012	0	210 тыс. км	210	2	2	1	1	\N	1	f	/auto_subaru_xv_33379799.html	JF1GPDLZ3DG025137	22	22	2023-06-20 15:37:57.28331	2023-06-20 15:37:57.283312
31808539	198	177	2659	29500	1097695	27265	2005	0	800 тыс. км	800	2	11	2	2	\N	6	f	/auto_man_tga_31808539.html	WMAH21ZZх5Wхххх40	14	14	2023-06-20 15:37:57.335767	2023-06-20 15:37:57.335768
32787580	197	62	1707	15500	576755	14326	2006	0	600 тыс. км	600	2	11	2	3	\N	6	f	/auto_renault_magnum_32787580.html	VF617ASAх00хххх90	10	10	2023-06-15 13:21:38.041904	2023-06-15 13:21:38.041912
34658910	2	70	652	12200	453962	11276	2017	13	280 тыс. км	280	2	1.6	2	2	\N	1	f	/auto_skoda_octavia_34658910.html		10	10	2023-06-15 13:21:38.075181	2023-06-15 13:21:38.075182
34662116	5	62	30503	14000	521500	12829	2018	0	269 тыс. км	269	2	1.5	1	1	\N	1	f	/auto_renault_duster_34662116.html	VF1HJD40x60xxxx59	20	384	2023-06-15 21:34:12.196665	2023-06-15 21:34:12.196667
34683111	4	55	1975	6999	260712	6390	2007	0	147 тыс. км	147	1	1.6	2	2	\N	1	f	/auto_nissan_note_34683111.html	SJNFCAE1xE1xxxx77	1	1	2023-06-19 18:18:33.47656	2023-06-19 18:18:33.476561
34509742	2	70	652	13999	520903	12938	2015	0	227 тыс. км	227	2	2	2	2	\N	1	f	/auto_skoda_octavia_34509742.html		15	15	2023-06-19 18:18:33.828989	2023-06-19 18:18:33.828992
34682924	6	84	785	680	25303	628	1986	13	815 тыс. км	815	1	1.3	1	2	\N	1	f	/auto_volkswagen_jetta_34682924.html	WVWZZZ16ZGW514225	18	18	2023-06-19 18:18:33.840079	2023-06-19 18:18:33.840081
34492686	2	6	49	41115	1529880	38000	2017	0	83 тыс. км	83	2	3	3	1	\N	1	f	/auto_audi_a6_34492686.html	WAUZZZ4G8JN001021	10	10	2023-06-19 18:18:33.932226	2023-06-19 18:18:33.932227
33638350	5	33	57410	33900	1261419	31332	2019	0	58 тыс. км	58	1	3.8	2	1	\N	1	t	/auto_kia_telluride_33638350.html	5XYP5DHCхLGхххх02	15	200	2023-06-20 15:37:53.885066	2023-06-20 15:37:53.885067
34658909	3	18	1642	1950	72560	1802	2003	0	150 тыс. км	150	4	1.3	1	2	\N	1	f	/auto_daewoo_sens_34658909.html	Y6DT1311030165339	15	15	2023-06-15 13:21:38.041274	2023-06-15 13:21:38.041276
34662095	2	88	842	3100	115351	2865	2008	13	70 тыс. км	70	4	1.6	1	2	\N	1	f	/auto_vaz_lada_1117_kalina_34662095.html	XTA11173080008373	7	454	2023-06-15 21:34:13.688892	2023-06-15 21:34:13.688893
34682034	5	33	51968	17700	659325	16159	2018	0	83 тыс. км	83	2	1.6	2	2	\N	1	f	/auto_kia_stonic_34682034.html	KNADE815xJSxxxx21	10	10	2023-06-19 18:18:33.481396	2023-06-19 18:18:33.481397
1915520	5	38	3327	0	0	0	2009	1	1 тыс. км	1	1	3.5	2	\N	\N	1	f	/auto_lexus_rx_usa_1915520.html		10	10	2023-06-20 15:37:54.057486	2023-06-20 15:37:54.057487
1905984	3	84	0	13200	491172	12200	2002	1	106 тыс. км	106	1	1.8	1	\N	\N	0	f			2	2	2023-06-20 15:37:54.926427	2023-06-20 15:37:54.926428
34688503	5	147	40154	12700	472567	11738	2013	8	130 тыс. км	130	0	1.6	1	1	\N	1	f	/auto_mini_countryman_34688503.html	WMWZC5C55DWM16550	1	1	2023-06-20 15:37:55.0133	2023-06-20 15:37:55.013302
33805610	385	177	30551	19500	725595	18023	2008	0	840 тыс. км	840	2	11	2	3	\N	6	f	/auto_man_tgx_33805610.html	WMA06XZZх8Wхххх88	1	1	2023-06-15 13:21:38.069356	2023-06-15 13:21:38.069358
34658881	2	84	39690	7100	264191	6562	2008	13	340 тыс. км	340	2	2	2	2	\N	1	f	/auto_volkswagen_passat_34658881.html	WVWZZZ3CZ8E150493	1	41	2023-06-15 13:21:38.086127	2023-06-15 13:21:38.08613
34481320	3	190	2087	1450	54041	1331	2008	0	194 тыс. км	194	4	1.6	1	2	\N	1	f	/auto_chery_amulet_34481320.html	Y6DDA11Ax8Dxxxx03	5	5	2023-06-15 13:21:38.294121	2023-06-15 13:21:38.294123
34658903	2	84	35449	13455	500661	12436	2014	8	267 тыс. км	267	2	2	1	2	\N	1	f	/auto_volkswagen_golf_34658903.html	WVWZZZAUZEP581680	2	133	2023-06-15 13:21:38.557992	2023-06-15 13:21:38.557994
34658873	5	38	1344	77777	2894082	71885	2017	13	88 тыс. км	88	2	4.5	2	1	\N	1	f	/auto_lexus_lx_34658873.html	JTJCV00W904006579	10	10	2023-06-15 13:21:38.570205	2023-06-15 13:21:38.570207
1916656	4	88	854	1541	57350	1424	2009	1	1 тыс. км	1	1	1.6	1	\N	\N	0	f	/auto_vaz_lada_2109_1916656.html		10	10	2023-06-15 13:21:38.64095	2023-06-15 13:21:38.640952
1908049	3	9	30851	600	22326	555	2001	1	89 тыс. км	89	2	2	1	\N	\N	1	f	/auto_bmw_316_1908049.html		8	8	2023-06-15 13:21:38.700019	2023-06-15 13:21:38.700021
34658895	2	84	35449	6500	241865	6008	2007	0	180 тыс. км	180	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34658895.html	WVWZZZ1KZ7M305176	7	7	2023-06-15 13:21:39.133075	2023-06-15 13:21:39.133079
34658875	4	62	586	6300	234423	5823	2012	13	288 тыс. км	288	2	1.5	1	2	\N	1	f	/auto_renault_megane_34658875.html		15	15	2023-06-15 13:21:42.14977	2023-06-15 13:21:42.149771
1903767	3	91	1757	1500	55815	1386	1963	1	234 тыс. км	234	1	2.4	1	\N	\N	0	f	/auto_gaz_21_1903767.html		14	14	2023-06-15 13:21:42.154485	2023-06-15 13:21:42.154486
34658876	197	62	60014	12500	465125	11553	2017	0	285 тыс. км	285	2	0	1	2	\N	6	f	/auto_renault_trafic_34658876.html	VF1FL000458362504	6	563	2023-06-15 13:21:42.187993	2023-06-15 13:21:42.187995
34262277	8	84	792	4500	167445	4159	2001	0	390 тыс. км	390	2	0	2	2	\N	1	f	/auto_volkswagen_sharan_34262277.html	WVWZZZ7Mх2Vхххх40	22	165	2023-06-15 13:21:42.251255	2023-06-15 13:21:42.251256
34485715	18	1060	42507	18999	706953	17560	2020	0	2 тыс. км	2	1	0.96	1	6	\N	2	f	/auto_ducati_panigale_34485715.html		10	10	2023-06-15 13:21:42.282059	2023-06-15 13:21:42.282062
1907554	3	28	265	3000	111630	2773	2008	1	40 тыс. км	40	1	1.8	2	\N	\N	0	f	/auto_honda_civic_1907554.html		10	10	2023-06-15 13:21:42.390435	2023-06-15 13:21:42.390437
34658864	5	9	49169	111000	4130310	102591	2022	13	5 тыс. км	5	2	3	2	1	\N	1	f	/auto_bmw_x7_34658864.html	WBACW810х09хххх90	10	10	2023-06-15 13:21:42.968937	2023-06-15 13:21:42.96894
34649920	8	62	59145	5200	193492	4806	2008	0	179 тыс. км	179	2	1.5	1	2	\N	1	f	/auto_renault_kangoo_34649920.html	VF1FW1AB540537813	22	165	2023-06-15 13:21:43.136608	2023-06-15 13:21:43.13661
34662077	5	6	1943	49500	1841895	45750	2015	13	108 тыс. км	108	2	3	2	1	\N	1	f	/auto_audi_q7_34662077.html	WAUZZZ4M5GD017679	5	5	2023-06-15 21:34:13.688625	2023-06-15 21:34:13.688626
34683198	4	55	498	1500	55815	1386	1994	0	400 тыс. км	400	1	1.6	1	2	\N	1	f	/auto_nissan_primera_34683198.html	SJNFAAP10U0457607	2	2	2023-06-19 18:18:33.818777	2023-06-19 18:18:33.818784
34480884	9	24	2103	33300	1239093	30777	2017	0	96 тыс. км	96	1	3.5	2	1	\N	1	t	/auto_ford_f_150_34480884.html	1FTFX1EG5HKE43066	10	10	2023-06-19 18:18:33.925216	2023-06-19 18:18:33.925217
34328757	8	23	219	8500	316285	7856	2010	0	250 тыс. км	250	2	1.6	1	2	\N	1	f	/auto_fiat_doblo_34328757.html	ZFA26300009054917	24	24	2023-06-19 18:18:33.960535	2023-06-19 18:18:33.960536
34683173	14	76	3355	2850	106049	2634	2015	13	14 тыс. км	14	1	0	1	6	\N	2	f	/auto_suzuki_inazuma_34683173.html	LC6DC111101106573	10	10	2023-06-19 18:18:34.484448	2023-06-19 18:18:34.48445
25182559	5	24	3111	12000	446520	11091	2013	0	171 тыс. км	171	0	3.5	2	\N	\N	1	f	/auto_ford_flex_25182559.html	2FMGK5C8хDBхххх51	10	10	2023-06-19 18:18:34.491657	2023-06-19 18:18:34.491659
34427928	5	84	793	11000	409310	10167	2007	0	333 тыс. км	333	4	4.2	2	1	\N	1	f	/auto_volkswagen_touareg_34427928.html	WVGZZZ7LZ7D020642	10	10	2023-06-19 18:18:34.536415	2023-06-19 18:18:34.536417
34683128	3	79	698	22000	819500	20085	2019	0	70 тыс. км	70	1	2.5	2	2	\N	1	t	/auto_toyota_camry_34683128.html		10	10	2023-06-19 18:18:35.436344	2023-06-19 18:18:35.436346
27433928	21	176	31174	2900	108025	2647	2008	0	18 тыс. км	18	1	250	1	6	\N	2	f	/auto_kawasaki_super_sherpa_27433928.html		10	10	2023-06-19 18:18:35.475706	2023-06-19 18:18:35.475708
34672498	3	29	295	7500	279075	6932	2010	0	256 тыс. км	256	1	2	2	2	\N	1	f	/auto_hyundai_sonata_34672498.html		10	10	2023-06-19 18:18:35.698519	2023-06-19 18:18:35.698522
34527139	8	84	1653	7300	271633	6747	2002	0	180 тыс. км	180	4	2.8	2	2	\N	1	f	/auto_volkswagen_caravelle_34527139.html	WV2ZZZ70Z3H023471	10	10	2023-06-19 18:18:35.786943	2023-06-19 18:18:35.786946
34515113	3	9	3219	13900	517219	12847	2012	0	155 тыс. км	155	1	2	2	3	\N	1	t	/auto_bmw_3_series_34515113.html	WBA3B1C57CFX99911	15	15	2023-06-19 18:18:36.038854	2023-06-19 18:18:36.038861
34683118	8	62	60014	13800	514050	12599	2013	0	208 тыс. км	208	2	2	1	2	\N	1	f	/auto_renault_trafic_34683118.html	VF1JLB7AxDYxxxx97	10	10	2023-06-19 18:18:37.082442	2023-06-19 18:18:37.082444
34218854	449	84	45343	16446	611952	15200	2016	0	249 тыс. км	249	2	2	2	2	\N	1	f	/auto_volkswagen_golf_sportsvan_34218854.html	WVWZZZAUхHWхххх40	25	25	2023-06-19 18:18:37.422795	2023-06-19 18:18:37.422798
34688546	8	23	219	1850	68839	1710	2005	0	250 тыс. км	250	4	1.6	1	\N	\N	1	f	/auto_fiat_doblo_34688546.html	ZFA22300005359493	18	18	2023-06-20 15:37:53.875324	2023-06-20 15:37:53.875325
1909119	4	79	700	100	3721	92	1993	11	200 тыс. км	200	1	1.6	1	\N	\N	0	f	/auto_toyota_carina_e_1909119.html		12	12	2023-06-15 13:21:38.090291	2023-06-15 13:21:38.090292
1915889	8	24	2036	6500	241865	6008	2006	1	1 тыс. км	1	1	1.8	3	\N	\N	0	t	/auto_ford_c_max_1915889.html		10	10	2023-06-15 13:21:38.556103	2023-06-15 13:21:38.556105
1909198	4	84	784	3500	130235	3235	1989	1	210 тыс. км	210	1	1.3	1	\N	\N	0	f	/auto_volkswagen_golf_i_1909198.html		9	9	2023-06-15 13:21:38.60924	2023-06-15 13:21:38.609241
1908048	2	55	507	21000	781410	19409	2006	11	33 тыс. км	33	1	2.5	2	\N	\N	0	f	/auto_nissan_x_trail_1908048.html		10	10	2023-06-15 13:21:38.678364	2023-06-15 13:21:38.678366
1899976	3	18	161	3650	135817	3373	1998	1	250 тыс. км	250	1	1.5	1	\N	\N	1	f	/auto_daewoo_lanos_1899976.html		1	1	2023-06-15 13:21:38.723454	2023-06-15 13:21:38.723456
34658872	5	48	430	8500	316285	7856	2008	0	296 тыс. км	296	2	3	2	1	\N	1	f	/auto_mercedes_benz_m_class_34658872.html	WDC1641201A495192	10	229	2023-06-15 13:21:42.141744	2023-06-15 13:21:42.141745
34658879	4	24	241	5500	204655	5083	2011	0	163 тыс. км	163	1	3.5	1	2	\N	1	f	/auto_ford_fusion_34658879.html	2T2HK31Uх8Cхххх37	12	12	2023-06-15 13:21:42.170204	2023-06-15 13:21:42.170205
1903836	8	13	62143	4500	167445	4159	1994	1	150 тыс. км	150	1	4.2	2	\N	\N	0	f	/auto_chevrolet_astro_1903836.html		24	521	2023-06-15 13:21:42.221559	2023-06-15 13:21:42.22156
1916660	5	56	1514	7500	279075	6932	1996	1	280 тыс. км	280	1	2.2	1	\N	\N	0	f	/auto_opel_frontera_1916660.html		10	10	2023-06-15 13:21:42.33598	2023-06-15 13:21:42.335982
34658600	4	62	586	7500	279075	6932	2012	13	127 тыс. км	127	1	1.2	1	2	\N	1	f	/auto_renault_megane_34658600.html	VF1BZ110648241411	20	20	2023-06-15 13:21:42.96265	2023-06-15 13:21:42.962654
1898721	3	84	0	1300	48373	1202	2009	1	2 тыс. км	2	1	2	2	\N	\N	0	f			12	12	2023-06-15 13:21:43.057598	2023-06-15 13:21:43.057601
34154124	307	52	449	3600	133920	3286	2002	0	261 тыс. км	261	1	1.6	1	2	\N	1	f	/auto_mitsubishi_carisma_34154124.html	XMCLNDA1x3Fxxxx28	5	14949	2023-06-17 03:15:16.555829	2023-06-17 03:15:16.555831
34668961	3	88	846	4500	167445	4159	1977	0	37 тыс. км	37	1	1.2	1	3	\N	1	f	/auto_vaz_lada_2101_34668961.html		10	10	2023-06-17 03:15:16.666746	2023-06-17 03:15:16.666748
33835971	2	58	2108	4975	185120	4598	2007	0	219 тыс. км	219	1	1.6	1	2	\N	1	f	/auto_peugeot_207_33835971.html	VF3WE5FWх34хххх87	10	225	2023-06-17 03:15:16.6776	2023-06-17 03:15:16.677601
33584995	3	48	431	8500	316285	7856	2001	0	220 тыс. км	220	4	4.3	2	3	\N	1	f	/auto_mercedes_benz_s_class_33584995.html	WDB22017х1Aхххх19	11	11	2023-06-17 03:15:16.701595	2023-06-17 03:15:16.701596
33835649	3	88	848	1150	42792	1063	1975	0	175 тыс. км	175	4	1.5	1	\N	\N	1	f	/auto_vaz_lada_2103_33835649.html		11	72	2023-06-17 03:15:16.855905	2023-06-17 03:15:16.855907
33835612	4	9	2161	6700	249307	6192	2006	0	238 тыс. км	238	1	2	1	3	\N	1	f	/auto_bmw_1_series_33835612.html	WBAUF510х0Pхххх03	10	10	2023-06-17 03:15:17.408071	2023-06-17 03:15:17.408072
33835602	3	128	45128	17000	632570	15712	2015	0	80 тыс. км	80	1	2	2	1	\N	1	t	/auto_infiniti_q50_33835602.html	JN1CV7ARхGMхххх94	10	10	2023-06-17 03:15:17.452746	2023-06-17 03:15:17.452748
33535089	307	62	585	3550	132096	3281	2002	0	271 тыс. км	271	1	1.6	1	2	\N	1	f	/auto_renault_laguna_33535089.html	VF1BG0L0х26хххх72	5	5	2023-06-17 03:15:17.499607	2023-06-17 03:15:17.499609
33987949	8	91	39501	4000	148840	3697	2007	0	300 тыс. км	300	4	2.5	1	\N	\N	1	f	/auto_gaz_33029_33987949.html	Y6S33029070000044	12	341	2023-06-17 03:15:17.618082	2023-06-17 03:15:17.618084
33576092	2	58	37293	13000	483730	12015	2012	0	201 тыс. км	201	2	2.2	2	2	\N	1	f	/auto_peugeot_508_33576092.html	VF38E4HLхBLхххх43	10	650	2023-06-17 03:15:17.722663	2023-06-17 03:15:17.722665
32821900	8	14	1073	18500	688200	16888	2013	0	181 тыс. км	181	4	3.6	2	\N	\N	1	t	/auto_chrysler_town_country_32821900.html	2C4RC1HGxERxxxx51	15	15	2023-06-17 03:15:17.951198	2023-06-17 03:15:17.951199
33273354	3	24	241	11000	409310	10167	2016	0	140 тыс. км	140	4	2.5	2	2	\N	1	t	/auto_ford_fusion_33273354.html	3FA6P0H7хGRхххх87	10	10	2023-06-17 03:15:18.197775	2023-06-17 03:15:18.197778
33096773	3	70	649	4200	156282	3882	2004	0	143 тыс. км	143	1	1.2	1	2	\N	1	f	/auto_skoda_fabia_33096773.html	TMBDY16Yх5Bхххх93	7	7	2023-06-17 03:15:18.213769	2023-06-17 03:15:18.21377
33435410	5	52	2685	15000	558150	13864	2007	0	245 тыс. км	245	4	3	2	1	\N	1	f	/auto_mitsubishi_pajero_sport_33435410.html	JMB0RK9607J001796	7	7	2023-06-17 03:15:18.293833	2023-06-17 03:15:18.293835
33274459	3	47	1692	4300	160003	3974	2005	0	240 тыс. км	240	4	1.6	1	2	\N	1	f	/auto_mazda_3_33274459.html	JMZBK12Zх61хххх40	5	5	2023-06-17 03:15:18.349963	2023-06-17 03:15:18.349964
33273590	307	70	652	5700	212097	5268	2006	0	250 тыс. км	250	4	1.6	1	2	\N	1	f	/auto_skoda_octavia_33273590.html	TMBDK41Uх6Bхххх07	2	133	2023-06-17 03:15:18.865058	2023-06-17 03:15:18.865064
33375075	4	79	702	4300	160003	3974	2004	0	252 тыс. км	252	2	2	1	2	\N	1	f	/auto_toyota_corolla_33375075.html	SB1JW20Eх0Eхххх12	16	16	2023-06-17 03:15:18.945675	2023-06-17 03:15:18.945678
34683193	3	88	855	1100	40931	1017	1995	13	188 тыс. км	188	1	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34683193.html	XTA21099023222947	4	511	2023-06-19 18:18:33.821272	2023-06-19 18:18:33.821275
34683185	4	84	35449	3000	111630	2773	2001	13	218 тыс. км	218	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34683185.html	WVWZZZ1JZ1W290081	18	60	2023-06-19 18:18:33.836738	2023-06-19 18:18:33.83674
34486693	3	48	425	12899	479972	11922	2010	0	148 тыс. км	148	1	3	2	1	\N	1	t	/auto_mercedes_benz_c_class_34486693.html	WDDGF8BB2AR113106	10	10	2023-06-19 18:18:33.924859	2023-06-19 18:18:33.92486
32915634	3	91	883	999	37173	923	1984	0	152 тыс. км	152	4	2.4	1	3	\N	1	f	/auto_gaz_2410_32915634.html	WDB20212х1Fхххх64	5	306	2023-06-19 18:18:33.968119	2023-06-19 18:18:33.96812
34683126	197	84	60426	14000	521500	12781	2013	0	450 тыс. км	450	2	2	1	3	\N	6	f	/auto_volkswagen_crafter_34683126.html	WV1ZZZ2ExE6xxxx40	11	11	2023-06-19 18:18:34.24351	2023-06-19 18:18:34.243512
34337820	8	67	630	3400	126514	3142	1998	0	425 тыс. км	425	2	1.9	1	2	\N	1	f	/auto_seat_alhambra_34337820.html	VSSZZZ7MZXV509295	5	5	2023-06-19 18:18:34.492954	2023-06-19 18:18:34.492956
30716932	5	118	1122	11000	409310	10167	2004	0	340 тыс. км	340	1	5.7	2	1	\N	1	f	/auto_dodge_durango_30716932.html	1D8HB58Dх4Fхххх45	12	12	2023-06-19 18:18:34.592996	2023-06-19 18:18:34.592998
34683165	3	29	295	10200	379542	9427	2015	13	222 тыс. км	222	3	2	2	2	\N	1	f	/auto_hyundai_sonata_34683165.html	KMHE341DхFAхххх37	18	18	2023-06-19 18:18:34.878809	2023-06-19 18:18:34.878818
34652516	5	6	1943	23800	886550	21729	2013	0	127 тыс. км	127	2	3	2	1	\N	1	f	/auto_audi_q7_34652516.html	WAUZZZ4LxEDxxxx28	11	11	2023-06-19 18:18:35.423691	2023-06-19 18:18:35.423693
34332818	5	52	1486	8000	298000	7303	2003	0	350 тыс. км	350	4	3.5	2	1	\N	1	f	/auto_mitsubishi_pajero_34332818.html	JMYLYV75x3Jxxxx75	12	336	2023-06-19 18:18:35.461386	2023-06-19 18:18:35.461388
34683160	5	9	96	12750	474428	11784	2006	13	263 тыс. км	263	2	3	2	1	\N	1	f	/auto_bmw_x5_34683160.html	WBAFB71070LX65004	20	20	2023-06-19 18:18:35.678415	2023-06-19 18:18:35.678423
34682991	196	62	51295	77000	2865170	71167	2018	8	100 тыс. км	100	2	12.7	1	\N	\N	6	f	/auto_renault_k_series_34682991.html		5	5	2023-06-19 18:18:35.720032	2023-06-19 18:18:35.720034
34679514	3	135	1946	17800	662338	16452	2016	0	61 тыс. км	61	5	2	5	2	\N	1	f	/auto_lincoln_mkz_34679514.html	3LN6L2LU8GR634528	10	10	2023-06-19 18:18:35.793951	2023-06-19 18:18:35.793958
1912044	5	155	0	1400	52094	1294	1982	1	102 тыс. км	102	1	1.6	1	\N	\N	0	f			10	235	2023-06-15 13:21:38.090908	2023-06-15 13:21:38.090909
34154141	3	18	158	2100	78120	1917	1997	0	247 тыс. км	247	4	2	1	2	\N	1	f	/auto_daewoo_espero_34154141.html	KLAJF19WxVBxxxx52	16	16	2023-06-17 03:15:16.556413	2023-06-17 03:15:16.556414
32054909	5	9	43735	32900	1223880	30033	2015	0	158 тыс. км	158	2	2	2	1	\N	1	f	/auto_bmw_x4_32054909.html		5	5	2023-06-17 03:15:16.590119	2023-06-17 03:15:16.590122
33835604	3	79	702	2200	81862	2033	1999	0	300 тыс. км	300	1	1.4	1	2	\N	1	f	/auto_toyota_corolla_33835604.html	JT153EEBх03хххх86	9	388	2023-06-17 03:15:16.676658	2023-06-17 03:15:16.676659
33835652	8	84	2093	6100	226981	5638	2003	0	300 тыс. км	300	2	1.9	1	2	\N	1	f	/auto_volkswagen_touran_33835652.html	WVGZZZ1TZ4W017817	5	293	2023-06-17 03:15:16.686761	2023-06-17 03:15:16.686763
33988101	2	62	579	5200	193492	4806	2011	0	268 тыс. км	268	2	1.5	1	2	\N	1	f	/auto_renault_clio_33988101.html	VF1KR2V0х46хххх02	15	15	2023-06-17 03:15:16.694361	2023-06-17 03:15:16.694362
34317576	5	55	507	6300	234423	5823	2004	0	300 тыс. км	300	0	0	1	1	\N	1	f	/auto_nissan_x_trail_34317576.html	JN1TENT30U0097385	8	8	2023-06-17 03:15:16.860392	2023-06-17 03:15:16.860393
33702527	3	29	295	10300	383160	9402	2015	0	300 тыс. км	300	1	2	2	2	\N	1	f	/auto_hyundai_sonata_33702527.html	KMHE241CxGAxxxx12	12	333	2023-06-17 03:15:17.132268	2023-06-17 03:15:17.13227
33585291	4	185	39864	2000	74420	1848	2013	0	130 тыс. км	130	4	1.3	1	2	\N	1	f	/auto_geely_lc_33585291.html	LB37122S7DH043320	7	448	2023-06-17 03:15:17.38446	2023-06-17 03:15:17.384462
33707239	3	18	166	2100	78141	1941	1998	0	200 тыс. км	200	4	1.6	1	2	\N	1	f	/auto_daewoo_nubira_33707239.html	KLAJF696хWKхххх12	24	24	2023-06-17 03:15:17.425771	2023-06-17 03:15:17.425773
33096379	2	79	3248	14800	550708	13679	2011	0	225 тыс. км	225	4	2.7	5	1	\N	1	t	/auto_toyota_venza_33096379.html	4T3BA3BBхBUхххх99	6	6	2023-06-17 03:15:17.501965	2023-06-17 03:15:17.501967
33273506	4	17	1095	2600	96720	2373	2004	0	142 тыс. км	142	4	1.4	1	2	\N	1	f	/auto_dacia_solenza_33273506.html	UU1R5A71x43xxxx36	24	24	2023-06-17 03:15:17.946135	2023-06-17 03:15:17.946137
32946276	2	56	1508	5300	197213	4898	2007	0	218 тыс. км	218	1	1.8	1	\N	\N	1	f	/auto_opel_astra_32946276.html	W0L0AHL3х72хххх04	15	15	2023-06-17 03:15:18.186703	2023-06-17 03:15:18.186706
33087802	3	48	425	5500	204655	5083	2001	0	310 тыс. км	310	2	2.2	2	3	\N	1	f	/auto_mercedes_benz_c_class_33087802.html	WDB20300х1Aхххх20	15	202	2023-06-17 03:15:18.213238	2023-06-17 03:15:18.21324
33707269	3	29	295	11000	409310	10167	2015	0	196 тыс. км	196	1	2.4	2	2	\N	1	t	/auto_hyundai_sonata_33707269.html	5NPE24AF7GH283794	19	19	2023-06-17 03:15:18.264985	2023-06-17 03:15:18.264987
33707161	219	84	60426	20500	762805	18947	2016	0	220 тыс. км	220	2	0	1	3	\N	7	f	/auto_volkswagen_crafter_33707161.html	WV1ZZZ2EZG6056062	22	157	2023-06-17 03:15:18.289819	2023-06-17 03:15:18.289822
33384289	5	52	1486	9800	364658	9058	2008	0	337 тыс. км	337	4	3	2	1	\N	1	f	/auto_mitsubishi_pajero_33384289.html	JMYLRV93х8Jхххх19	7	7	2023-06-17 03:15:18.356907	2023-06-17 03:15:18.356909
32941402	5	6	1943	48000	1785600	43818	2017	0	98 тыс. км	98	2	3	2	1	\N	1	f	/auto_audi_q7_32941402.html	WAUZZZ4MxJDxxxx41	5	5	2023-06-17 03:15:18.607573	2023-06-17 03:15:18.607577
33273178	5	52	1485	10000	372100	9242	2007	0	240 тыс. км	240	1	2.4	2	2	\N	1	f	/auto_mitsubishi_outlander_33273178.html	JMBXTCW5х8Zхххх54	1	599	2023-06-17 03:15:18.939082	2023-06-17 03:15:18.939086
34683166	8	84	2093	7250	269773	6701	2007	13	211 тыс. км	211	1	0	1	2	\N	1	f	/auto_volkswagen_touran_34683166.html	WVGZZZ1TZ7W032819	10	10	2023-06-19 18:18:33.832577	2023-06-19 18:18:33.832579
34683164	3	79	699	2999	111593	2772	1993	13	450 тыс. км	450	1	1.6	1	2	\N	1	f	/auto_toyota_carina_34683164.html	JT164ATK0P0040600	12	12	2023-06-19 18:18:33.84592	2023-06-19 18:18:33.845923
34005195	3	56	1508	4000	148840	3697	2006	0	168 тыс. км	168	1	1.4	1	2	\N	1	f	/auto_opel_astra_34005195.html	Y6D0TGF696X007668	12	12	2023-06-19 18:18:33.92619	2023-06-19 18:18:33.926191
34683136	307	70	652	5850	217912	5340	2007	0	160 тыс. км	160	4	1.8	1	2	\N	1	f	/auto_skoda_octavia_34683136.html		10	10	2023-06-19 18:18:34.228032	2023-06-19 18:18:34.228034
34594737	12	179	49775	3400	126650	3104	2020	0	13 тыс. км	13	1	150	2	\N	\N	2	f	/auto_yamaha_nmax_34594737.html	MH3SG431x00xxxx60	10	10	2023-06-19 18:18:34.248821	2023-06-19 18:18:34.248822
34683151	3	29	2186	7500	279075	6932	2007	13	216 тыс. км	216	2	2.2	2	2	\N	1	f	/auto_hyundai_grandeur_34683151.html	Y6LEU41AP9L200751	12	12	2023-06-19 18:18:34.53976	2023-06-19 18:18:34.539762
34681492	2	76	2035	8400	312564	7764	2011	0	179 тыс. км	179	1	2	2	1	\N	1	t	/auto_suzuki_sx4_34681492.html	JS2YB5A38B6303357	10	10	2023-06-19 18:18:34.614101	2023-06-19 18:18:34.614103
34517241	4	67	635	3200	119072	2958	2007	0	202 тыс. км	202	1	1.2	1	2	\N	1	f	/auto_seat_ibiza_34517241.html	VSSZZZ6Lх8Rхххх21	22	22	2023-06-19 18:18:34.660279	2023-06-19 18:18:34.660281
34683172	3	79	698	13500	502335	12477	2016	13	94 тыс. км	94	1	2.5	2	2	\N	1	t	/auto_toyota_camry_34683172.html	4T1BF1FK4GU582804	20	20	2023-06-19 18:18:35.034273	2023-06-19 18:18:35.03428
34683139	5	75	663	6700	249575	6117	2006	0	204 тыс. км	204	4	2	2	1	\N	1	f	/auto_subaru_forester_34683139.html	JF1SG5LEx6Gxxxx62	12	12	2023-06-19 18:18:35.426562	2023-06-19 18:18:35.426565
34683147	2	84	39690	8650	322212	7897	2012	0	266 тыс. км	266	4	1.4	2	2	\N	1	f	/auto_volkswagen_passat_34683147.html	WVWZZZ3CxCExxxx27	7	7	2023-06-19 18:18:35.468559	2023-06-19 18:18:35.468562
34683153	3	18	1642	3300	122793	3050	2005	13	165 тыс. км	165	4	1.3	1	2	\N	1	f	/auto_daewoo_sens_34683153.html	Y6DT1311050247634	1	1	2023-06-19 18:18:35.685711	2023-06-19 18:18:35.685716
29879012	3	84	39690	10300	383263	9520	2012	0	111 тыс. км	111	1	2.5	1	2	\N	1	t	/auto_volkswagen_passat_29879012.html	1VWAP7A3XDC058135	5	309	2023-06-19 18:18:35.737821	2023-06-19 18:18:35.737823
33605647	5	79	715	20000	744200	18485	2018	0	61 тыс. км	61	1	2.5	2	2	\N	1	t	/auto_toyota_rav4_33605647.html	2T3ZFREVхJWхххх16	7	462	2023-06-19 18:18:35.91795	2023-06-19 18:18:35.917952
34682981	2	70	652	6300	234423	5823	2010	13	335 тыс. км	335	2	1.6	2	2	\N	1	f	/auto_skoda_octavia_34682981.html	TMBHT61Z9A8032006	10	10	2023-06-19 18:18:36.450332	2023-06-19 18:18:36.450337
34683143	3	9	2319	13500	502875	12325	2012	0	242 тыс. км	242	1	2	2	3	\N	1	f	/auto_bmw_5_series_34683143.html	WBAXG110x0Dxxxx27	19	19	2023-06-19 18:18:37.07539	2023-06-19 18:18:37.075393
34606205	3	17	1890	3800	141398	3512	2007	0	205 тыс. км	205	4	1.4	1	2	\N	1	f	/auto_dacia_logan_34606205.html	UU1LSDAGH38403672	14	14	2023-06-19 18:18:38.47137	2023-06-19 18:18:38.471377
34688473	3	62	568	1300	48373	1202	1991	0	196 тыс. км	196	4	1.7	1	2	\N	1	f	/auto_renault_19_34688473.html	VF1L5330503049687	6	558	2023-06-20 15:37:53.890176	2023-06-20 15:37:53.890177
34662146	3	18	1642	2000	74500	1832	2006	0	88 тыс. км	88	4	1.3	1	\N	\N	1	f	/auto_daewoo_sens_34662146.html	Y6DT1311x70xxxx00	3	426	2023-06-15 21:34:11.262591	2023-06-15 21:34:11.262594
34662114	4	33	323	5200	193700	4765	2006	0	156 тыс. км	156	4	1.4	2	2	\N	1	f	/auto_kia_rio_34662114.html		10	10	2023-06-15 21:34:11.298918	2023-06-15 21:34:11.298919
34662126	3	48	428	3700	137825	3390	1998	0	318 тыс. км	318	0	0	1	3	\N	1	f	/auto_mercedes_benz_e_class_34662126.html	WDB21006x1Axxxx57	8	8	2023-06-15 21:34:11.310482	2023-06-15 21:34:11.310483
34662132	3	88	856	2700	100575	2474	2007	0	175 тыс. км	175	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34662132.html	Y7C21101x70xxxx60	11	78	2023-06-15 21:34:11.330481	2023-06-15 21:34:11.330481
34154127	3	6	49	6800	252960	6207	2003	0	300 тыс. км	300	2	2.5	1	2	\N	1	f	/auto_audi_a6_34154127.html	WAUZZZ4Bx3Nxxxx46	2	144	2023-06-17 03:15:16.557686	2023-06-17 03:15:16.557688
34154140	4	88	2547	3500	130200	3195	2008	0	142 тыс. км	142	1	1.6	1	2	\N	1	f	/auto_vaz_lada_2172_priora_34154140.html	XTA21723x80xxxx69	15	15	2023-06-17 03:15:16.572501	2023-06-17 03:15:16.572503
34154065	3	84	785	6999	260433	6469	2006	0	171 тыс. км	171	1	1.6	1	2	\N	1	f	/auto_volkswagen_jetta_34154065.html	WVWZZZ1KZ6M775412	1	1	2023-06-17 03:15:16.676386	2023-06-17 03:15:16.676386
34154085	2	6	47	6950	258610	6423	2008	0	225 тыс. км	225	2	2	2	2	\N	1	f	/auto_audi_a4_34154085.html	WAUZZZ8E38A165173	11	11	2023-06-17 03:15:16.681377	2023-06-17 03:15:16.681384
33987962	3	58	534	1800	66978	1664	1990	0	493 тыс. км	493	4	2	1	2	\N	1	f	/auto_peugeot_605_33987962.html	VF36BR6A290743086	9	396	2023-06-17 03:15:16.693183	2023-06-17 03:15:16.693184
33707250	2	79	35004	31000	1153510	28652	2013	0	106 тыс. км	106	4	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_33707250.html	JTEBU3FJх0Kхххх95	7	7	2023-06-17 03:15:16.754268	2023-06-17 03:15:16.754269
34506602	5	58	32556	24000	893040	22182	2017	0	113 тыс. км	113	2	2	2	2	\N	1	f	/auto_peugeot_3008_34506602.html	VF3MJAHXхHSхххх96	19	19	2023-06-17 03:15:16.795754	2023-06-17 03:15:16.795755
33274101	5	13	1049	12600	468720	11502	2017	0	138 тыс. км	138	1	2.4	2	2	\N	1	t	/auto_chevrolet_equinox_33274101.html	2GNALBEKxH1xxxx92	11	76	2023-06-17 03:15:17.127822	2023-06-17 03:15:17.127824
33987984	4	62	579	1050	39071	970	1990	0	260 тыс. км	260	1	1.2	1	2	\N	1	f	/auto_renault_clio_33987984.html	VF1B5720х05хххх50	18	18	2023-06-17 03:15:17.376797	2023-06-17 03:15:17.3768
33835597	2	70	652	12600	468846	11645	2015	0	218 тыс. км	218	2	1.6	1	2	\N	1	f	/auto_skoda_octavia_33835597.html	TMBJG7NEхG0хххх79	10	10	2023-06-17 03:15:17.407284	2023-06-17 03:15:17.407285
33435757	2	58	37765	11300	420473	10444	2014	0	187 тыс. км	187	2	1.6	4	3	\N	1	f	/auto_peugeot_5008_33435757.html	VF30A9HDхESхххх00	5	5	2023-06-17 03:15:17.498932	2023-06-17 03:15:17.498934
32382244	2	70	652	5600	208320	5112	2001	0	151 тыс. км	151	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_32382244.html	TMBHX21Ux22xxxx56	24	24	2023-06-17 03:15:17.938042	2023-06-17 03:15:17.938045
32821406	3	13	2145	4700	174840	4290	2007	0	317 тыс. км	317	4	2.5	2	2	\N	1	f	/auto_chevrolet_epica_32821406.html	KL1LA69Lx7Bxxxx77	12	344	2023-06-17 03:15:17.951742	2023-06-17 03:15:17.951744
33435600	5	33	326	17500	651175	16174	2015	0	96 тыс. км	96	1	2	2	2	\N	1	t	/auto_kia_sorento_33435600.html	5XYPG4A1хGGхххх17	5	304	2023-06-17 03:15:18.24769	2023-06-17 03:15:18.247692
33435468	229	56	60548	4800	178608	4436	2000	0	338 тыс. км	338	2	2.8	1	2	\N	7	f	/auto_opel_movano_33435468.html		8	410	2023-06-17 03:15:18.302356	2023-06-17 03:15:18.302357
33273686	2	70	3167	28500	1060485	26341	2019	0	32 тыс. км	32	2	1.6	2	\N	\N	1	f	/auto_skoda_superb_33273686.html	TMBJG9NPхK7хххх48	10	10	2023-06-17 03:15:18.350784	2023-06-17 03:15:18.350786
33273573	8	52	463	2499	92988	2310	1993	0	228 тыс. км	228	1	1.8	1	1	\N	1	f	/auto_mitsubishi_space_runner_33273573.html	JMBSNN11хPZхххх05	19	329	2023-06-17 03:15:18.402239	2023-06-17 03:15:18.402241
32999706	2	56	1508	7199	267875	6654	2010	0	221 тыс. км	221	2	1.7	1	2	\N	1	f	/auto_opel_astra_32999706.html	W0LPD8EGхB8хххх24	10	10	2023-06-17 03:15:18.872891	2023-06-17 03:15:18.872899
34683192	4	70	649	3000	111630	2773	2003	13	264 тыс. км	264	1	1.2	1	2	\N	1	f	/auto_skoda_fabia_34683192.html	TMBPW16Y943954945	4	512	2023-06-19 18:18:33.926958	2023-06-19 18:18:33.926959
34688419	5	70	51759	20200	751642	18670	2019	0	283 тыс. км	283	2	1.6	2	2	\N	1	f	/auto_skoda_karoq_34688419.html	TMBJG7NU5KJ007737	2	133	2023-06-20 15:37:54.992699	2023-06-20 15:37:54.9927
34662104	2	62	586	6600	245850	6047	2010	0	219 тыс. км	219	2	1.5	2	2	\N	1	f	/auto_renault_megane_34662104.html	VF1KZ090x44xxxx99	3	429	2023-06-15 21:34:11.298301	2023-06-15 21:34:11.298302
34662130	4	84	35449	3000	111750	2749	1999	0	200 тыс. км	200	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34662130.html	WVWZZZ1JxYBxxxx53	9	9	2023-06-15 21:34:11.311459	2023-06-15 21:34:11.311462
34662120	2	84	39690	11999	446962	10995	2013	0	318 тыс. км	318	2	0	2	2	\N	1	f	/auto_volkswagen_passat_34662120.html	WVWZZZ3CxDExxxx84	10	214	2023-06-15 21:34:11.37525	2023-06-15 21:34:11.375252
31191154	5	127	2045	15900	591639	14695	2006	0	84 тыс. км	84	1	3.5	2	\N	\N	1	f	/auto_hummer_h3_31191154.html	5GTDN136х68хххх67	12	12	2023-06-15 21:34:11.539402	2023-06-15 21:34:11.539404
34661944	2	24	240	4750	176937	4352	2006	0	136 тыс. км	136	1	1.4	1	2	\N	1	f	/auto_ford_focus_34661944.html	WF0WXXGCxW6xxxx26	10	10	2023-06-15 21:34:12.107008	2023-06-15 21:34:12.107009
34662139	5	9	3597	11999	446962	10995	2012	0	180 тыс. км	180	1	2	2	\N	\N	1	f	/auto_bmw_x1_34662139.html	WBAVL310x0Vxxxx78	10	10	2023-06-15 21:34:12.121925	2023-06-15 21:34:12.121927
34662085	3	47	1692	5800	215818	5361	2006	13	275 тыс. км	275	4	1.6	2	2	\N	1	f	/auto_mazda_3_34662085.html	JMZBK12Z571535212	14	14	2023-06-15 21:34:12.371068	2023-06-15 21:34:12.37107
34369517	307	70	1575	8000	297680	7394	2013	0	175 тыс. км	175	1	1.2	1	2	\N	1	f	/auto_skoda_rapid_34369517.html	TMBAN2NH7EB101709	11	76	2023-06-15 21:34:12.447484	2023-06-15 21:34:12.447485
34283143	23	1078	56705	12900	480525	11821	2020	0	3 тыс. км	3	1	1200	1	5	\N	2	f	/auto_harley_davidson_xl_1200x_34283143.html	1HD1LC31xLBxxxx04	5	306	2023-06-15 21:34:13.350766	2023-06-15 21:34:13.350767
34662070	5	55	2774	12500	465125	11553	2012	0	152 тыс. км	152	1	1.6	1	2	\N	1	f	/auto_nissan_qashqai_2_34662070.html	SJNJAAJ10U7135507	10	10	2023-06-15 21:34:13.616313	2023-06-15 21:34:13.616315
34662056	5	52	2684	8800	327448	8133	2007	8	220 тыс. км	220	4	3	2	2	\N	1	f	/auto_mitsubishi_outlander_xl_34662056.html		11	11	2023-06-15 21:34:13.627474	2023-06-15 21:34:13.627476
34662092	2	84	39690	16500	613965	15250	2015	8	232 тыс. км	232	2	2	2	1	\N	1	f	/auto_volkswagen_passat_34662092.html		18	18	2023-06-15 21:34:13.687429	2023-06-15 21:34:13.68743
34058714	197	84	60426	12300	457683	11368	2012	0	3230 тыс. км	3230	2	2	1	3	\N	6	f	/auto_volkswagen_crafter_34058714.html	WV1ZZZ2EZC6033449	16	241	2023-06-15 21:34:13.763796	2023-06-15 21:34:13.763798
34662022	3	84	39690	1150	42837	1053	1989	0	444 тыс. км	444	4	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34662022.html	VWWZZZ31xK5xxxx71	18	18	2023-06-15 21:34:14.463593	2023-06-15 21:34:14.463597
34662082	3	29	295	9900	368379	9150	2013	13	145 тыс. км	145	1	2.4	2	2	\N	1	t	/auto_hyundai_sonata_34662082.html	5NPEB4AC7DH726852	11	76	2023-06-15 21:34:14.733989	2023-06-15 21:34:14.73399
34662064	3	6	49	25777	959162	23824	2015	13	167 тыс. км	167	1	3	2	1	\N	1	t	/auto_audi_a6_34662064.html	WAUFGAFC2GN098424	22	22	2023-06-15 21:34:14.769961	2023-06-15 21:34:14.769963
34409909	2	24	240	5550	206516	5130	2008	0	268 тыс. км	268	2	1.6	1	2	\N	1	f	/auto_ford_focus_34409909.html	WF0SXXGCDS7P48835	2	2	2023-06-17 03:15:16.671387	2023-06-17 03:15:16.671388
33585169	3	84	39690	13300	494893	12292	2013	0	92 тыс. км	92	2	2	2	\N	\N	1	t	/auto_volkswagen_passat_33585169.html	1VWBN7A3хDCхххх71	2	150	2023-06-17 03:15:16.679294	2023-06-17 03:15:16.679295
34317598	2	70	652	13800	513498	12755	2013	0	238 тыс. км	238	2	2	1	2	\N	1	f	/auto_skoda_octavia_34317598.html	TMBJK7NE4E0053805	15	194	2023-06-17 03:15:16.691621	2023-06-17 03:15:16.691622
33707168	3	18	161	2300	85583	2126	2004	0	257 тыс. км	257	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_33707168.html	SUPTF69Yх4Wхххх92	10	10	2023-06-17 03:15:16.707869	2023-06-17 03:15:16.707871
33835588	4	84	45152	16300	606523	15065	2015	0	70 тыс. км	70	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_33835588.html	WVWZZZAUхFWхххх34	15	15	2023-06-17 03:15:16.79412	2023-06-17 03:15:16.794121
34154078	429	76	27518	403	15000	373	1999	0	6 тыс. км	6	1	0	5	5	\N	2	f	/auto_suzuki_lets_34154078.html	CA1PA422470	2	2	2023-06-17 03:15:16.913267	2023-06-17 03:15:16.913269
33707166	3	24	246	4000	148840	3697	2001	0	500 тыс. км	500	1	0	1	2	\N	1	f	/auto_ford_mondeo_33707166.html	WF04XXGBB41U37433	10	10	2023-06-17 03:15:17.371673	2023-06-17 03:15:17.371677
33707343	5	52	1485	9200	342332	8503	2008	0	276 тыс. км	276	4	2.4	1	1	\N	1	f	/auto_mitsubishi_outlander_33707343.html	JMBXNCW5х8Zхххх14	10	10	2023-06-17 03:15:17.391685	2023-06-17 03:15:17.391686
33835655	3	88	846	450	16745	416	1974	0	90 тыс. км	90	0	0	1	\N	\N	1	f	/auto_vaz_lada_2101_33835655.html	\N	15	15	2023-06-17 03:15:17.448377	2023-06-17 03:15:17.448379
33835491	2	6	39	1600	59536	1479	1987	0	385 тыс. км	385	1	2.3	1	2	\N	1	f	/auto_audi_100_33835491.html	WAUZZZ44хENхххх65	5	5	2023-06-17 03:15:17.497509	2023-06-17 03:15:17.497511
33987972	3	33	318	2700	100467	2495	1999	0	250 тыс. км	250	4	1.8	1	2	\N	1	f	/auto_kia_clarus_33987972.html	KNEGC2232X5622280	4	4	2023-06-17 03:15:17.525405	2023-06-17 03:15:17.52541
33835560	3	9	2319	8700	323727	8041	2003	0	283 тыс. км	283	2	2.5	2	3	\N	1	f	/auto_bmw_5_series_33835560.html	WBADL010х0Gхххх80	20	374	2023-06-17 03:15:17.609039	2023-06-17 03:15:17.609041
33707191	8	62	588	7600	282796	7024	2010	0	188 тыс. км	188	2	1.5	1	2	\N	1	f	/auto_renault_scenic_33707191.html	VF1JZ2B0х43хххх36	22	155	2023-06-17 03:15:17.681229	2023-06-17 03:15:17.681232
33570928	5	128	45131	17400	647280	15884	2016	0	62 тыс. км	62	1	3.7	2	3	\N	1	t	/auto_infiniti_qx50_33570928.html	JN1BJ0RPxHMxxxx02	24	24	2023-06-17 03:15:17.950762	2023-06-17 03:15:17.950764
33273476	8	62	588	5500	204655	5083	2004	0	250 тыс. км	250	1	1.6	2	2	\N	1	f	/auto_renault_scenic_33273476.html	VF1JM0J0х32хххх88	3	3	2023-06-17 03:15:18.202653	2023-06-17 03:15:18.202655
33275106	5	55	2197	9100	338611	8411	2010	0	200 тыс. км	200	2	1.5	1	2	\N	1	f	/auto_nissan_qashqai_33275106.html	SJNFCAJ1хU1хххх65	10	10	2023-06-17 03:15:18.284462	2023-06-17 03:15:18.284463
33273363	8	24	1176	6000	223260	5545	2008	0	230 тыс. км	230	2	1.8	1	2	\N	1	f	/auto_ford_tourneo_connect_33273363.html	WF0UXXTTхU8хххх97	5	5	2023-06-17 03:15:18.350393	2023-06-17 03:15:18.350395
33273490	4	84	2813	17000	632570	15712	2016	0	90 тыс. км	90	1	2	1	2	\N	1	t	/auto_volkswagen_golf_gti_33273490.html	3VW5T7AUхHMхххх93	12	12	2023-06-17 03:15:18.386201	2023-06-17 03:15:18.386203
33273608	3	84	39690	8000	297600	7303	2008	0	320 тыс. км	320	2	2	4	2	\N	1	f	/auto_volkswagen_passat_33273608.html	WVWZZZ3Cx9Pxxxx47	16	16	2023-06-17 03:15:18.608386	2023-06-17 03:15:18.608388
33273478	2	56	1508	3950	146980	3651	2003	0	224 тыс. км	224	2	2	1	2	\N	1	f	/auto_opel_astra_33273478.html	W0L0TGF3532205005	10	228	2023-06-17 03:15:20.180297	2023-06-17 03:15:20.180305
34683184	5	9	96	38500	1432585	35583	2014	13	194 тыс. км	194	2	3	2	1	\N	1	f	/auto_bmw_x5_34683184.html	WBAKS810200H89106	12	12	2023-06-19 18:18:33.92723	2023-06-19 18:18:33.927231
34631676	212	203	41881	19500	725595	18023	2012	0	1073 тыс. км	1073	2	0	2	\N	\N	6	f	/auto_scania_r_440_34631676.html	XLER4X20005302577	16	16	2023-06-20 15:37:55.007003	2023-06-20 15:37:55.007005
34129720	3	2233	47858	27600	1026996	25509	2019	0	40 тыс. км	40	6	0	2	3	\N	1	t	/auto_tesla_model_3_34129720.html	5YJ3E1EA9KF399954	25	25	2023-06-20 15:37:56.720328	2023-06-20 15:37:56.720332
34662110	2	79	696	7300	271925	6689	2008	0	256 тыс. км	256	4	1.8	2	2	\N	1	f	/auto_toyota_avensis_34662110.html	SB1ER56Lx0Exxxx88	10	10	2023-06-15 21:34:11.304633	2023-06-15 21:34:11.304634
33987934	3	28	262	1300	48373	1202	1986	0	500 тыс. км	500	1	1.9	1	2	\N	1	f	/auto_honda_accord_33987934.html	JHMCA55300C055276	1	1	2023-06-17 03:15:16.676027	2023-06-17 03:15:16.676029
33987968	5	73	1584	7999	297643	7393	2008	0	248 тыс. км	248	2	2.7	2	1	\N	1	f	/auto_ssangyong_rexton_33987968.html	Y7CRJFA0080101222	5	5	2023-06-17 03:15:16.695318	2023-06-17 03:15:16.695319
33826367	6	24	2047	15800	587918	14603	2017	0	110 тыс. км	110	1	2.3	2	3	\N	1	t	/auto_ford_mustang_33826367.html	1FA6P8TH9H5218531	2	140	2023-06-17 03:15:16.771052	2023-06-17 03:15:16.771053
34154103	3	84	39690	12900	479880	11776	2013	0	184 тыс. км	184	2	2	4	2	\N	1	f	/auto_volkswagen_passat_34154103.html	1VWCN7A3xECxxxx44	5	302	2023-06-17 03:15:17.134766	2023-06-17 03:15:17.134769
33835575	2	24	240	3800	141398	3512	2004	0	350 тыс. км	350	2	1.8	1	2	\N	1	f	/auto_ford_focus_33835575.html	WF0NXXGCхN4хххх38	6	6	2023-06-17 03:15:17.387781	2023-06-17 03:15:17.387783
33988023	3	6	49	14800	550708	13679	2011	0	290 тыс. км	290	1	2.8	2	1	\N	1	f	/auto_audi_a6_33988023.html	WAUZZZ4G4CN020605	12	341	2023-06-17 03:15:17.472813	2023-06-17 03:15:17.472815
33435522	449	56	1515	4000	148840	3697	2006	0	263 тыс. км	263	2	1.69	1	2	\N	1	f	/auto_opel_meriva_33435522.html	W0L0XCE7х74хххх06	12	346	2023-06-17 03:15:17.606682	2023-06-17 03:15:17.606684
33435687	3	24	240	8500	316285	7856	2012	0	224 тыс. км	224	1	2	4	2	\N	1	t	/auto_ford_focus_33435687.html	1FAHP3H2хCLхххх00	24	24	2023-06-17 03:15:17.677916	2023-06-17 03:15:17.677918
33435368	5	32	314	13900	517219	12847	2015	0	135 тыс. км	135	4	2.4	2	2	\N	1	t	/auto_jeep_cherokee_33435368.html	1C4PJLABхFWхххх29	11	76	2023-06-17 03:15:17.725446	2023-06-17 03:15:17.725449
33643096	8	14	122	5700	212097	5268	2006	0	280 тыс. км	280	2	2.8	2	2	\N	1	f	/auto_chrysler_voyager_33643096.html	1A8GYB6537Y502088	25	25	2023-06-17 03:15:18.184978	2023-06-17 03:15:18.184982
32736439	8	56	1524	6899	256712	6376	2008	0	216 тыс. км	216	2	1.7	1	2	\N	1	f	/auto_opel_zafira_32736439.html	W0L0AHM7х9Gхххх80	5	303	2023-06-17 03:15:18.20542	2023-06-17 03:15:18.205423
32935612	5	9	1866	23700	881877	21905	2017	0	115 тыс. км	115	1	2	2	3	\N	1	t	/auto_bmw_x3_32935612.html	5UXWZ7C34H0V93516	10	210	2023-06-17 03:15:18.252676	2023-06-17 03:15:18.252679
33273662	3	18	166	2200	81862	2033	1998	0	47 тыс. км	47	1	1.6	1	2	\N	1	f	/auto_daewoo_nubira_33273662.html	KLAJF696EWK172937	12	12	2023-06-17 03:15:18.320786	2023-06-17 03:15:18.320788
33512556	449	58	37765	10000	372100	9242	2011	0	211 тыс. км	211	2	1.6	1	2	\N	1	t	/auto_peugeot_5008_33512556.html	VF30E9HR8BS112987	1	42	2023-06-17 03:15:18.353827	2023-06-17 03:15:18.353829
33273643	4	55	36565	12500	465000	11411	2016	0	150 тыс. км	150	6	0	2	2	\N	1	t	/auto_nissan_leaf_33273643.html	1N4BZ0CPxGCxxxx70	10	10	2023-06-17 03:15:18.605332	2023-06-17 03:15:18.605344
32858468	6	71	28290	4799	178571	4435	2010	0	130 тыс. км	130	1	1	4	\N	\N	1	f	/auto_smart_fortwo_32858468.html	WME45133х1Kхххх07	20	605	2023-06-17 03:15:18.93108	2023-06-17 03:15:18.931087
32580098	4	55	36565	10500	390705	9705	2014	0	74 тыс. км	74	6	0	2	2	\N	1	f	/auto_nissan_leaf_32580098.html	AхE0хххх21	12	12	2023-06-17 03:15:18.965398	2023-06-17 03:15:18.9654
34683175	3	13	3588	7900	293959	7302	2014	8	168 тыс. км	168	1	1.8	2	2	\N	1	f	/auto_chevrolet_cruze_34683175.html	Y6DJA695хEKхххх86	1	45	2023-06-19 18:18:33.927168	2023-06-19 18:18:33.927169
34688512	3	15	40442	8100	301401	7486	2013	0	95 тыс. км	95	2	1.6	1	2	\N	1	f	/auto_citroen_c_elysee_34688512.html	VF7DD9HJCDJ658857	7	7	2023-06-20 15:37:55.007782	2023-06-20 15:37:55.007784
34662134	4	84	789	3450	128512	3161	2003	0	163 тыс. км	163	1	0	1	2	\N	1	f	/auto_volkswagen_polo_34662134.html	WVWZZZ9Nx3Yxxxx27	15	15	2023-06-15 21:34:11.308891	2023-06-15 21:34:11.308892
34662133	4	24	240	8450	314762	7743	2011	0	214 тыс. км	214	2	1.6	1	2	\N	1	f	/auto_ford_focus_34662133.html	WF0KXXGCxKBxxxx88	5	306	2023-06-15 21:34:11.329837	2023-06-15 21:34:11.329844
34680815	3	88	856	2750	102327	2508	2006	0	191 тыс. км	191	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2110_34680815.html	XTA21104x71xxxx96	6	557	2023-06-19 12:12:02.490179	2023-06-19 12:12:02.490182
34682996	2	70	652	5699	212060	5267	2003	8	162 тыс. км	162	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34682996.html	TMBHX21U232803445	1	49	2023-06-19 18:18:33.927703	2023-06-19 18:18:33.927704
34688504	3	47	393	20500	762805	18947	2018	0	80 тыс. км	80	1	2.5	2	2	\N	1	t	/auto_mazda_6_34688504.html	JM1GL1VM7J1315395	5	5	2023-06-20 15:37:55.007857	2023-06-20 15:37:55.007858
34662144	3	9	3219	3899	145237	3572	1999	0	350 тыс. км	350	2	2	1	3	\N	1	f	/auto_bmw_3_series_34662144.html	WBAAL710x0Cxxxx30	15	200	2023-06-15 21:34:11.310204	2023-06-15 21:34:11.310206
34662121	8	62	580	7200	268200	6597	2008	0	249 тыс. км	249	4	2	1	2	\N	1	f	/auto_renault_espace_34662121.html	VF1JK0ABx39xxxx92	10	10	2023-06-15 21:34:11.330399	2023-06-15 21:34:11.3304
34320748	5	38	1895	33900	1261419	30917	2011	0	78 тыс. км	78	1	4.6	2	1	\N	1	f	/auto_lexus_gx_34320748.html	JTJJM7FXx05xxxx91	12	12	2023-06-19 12:12:02.551196	2023-06-19 12:12:02.551199
34680832	5	48	3048	40555	1509051	36986	2011	0	136 тыс. км	136	1	5.5	2	1	\N	1	f	/auto_mercedes_benz_g_class_34680832.html	WDCYC7BFxAXxxxx31	10	10	2023-06-19 12:12:02.557306	2023-06-19 12:12:02.557307
34683186	4	55	504	550	20466	508	1988	8	300 тыс. км	300	2	1.7	1	2	\N	1	f	/auto_nissan_sunny_34683186.html	JN10FSN13U0005575	6	6	2023-06-19 18:18:33.928263	2023-06-19 18:18:33.928264
34683157	3	88	843	2500	93025	2311	2008	13	135 тыс. км	135	1	0	1	2	\N	1	f	/auto_vaz_lada_1118_kalina_34683157.html	XTA11183080180402	5	301	2023-06-19 18:18:34.487157	2023-06-19 18:18:34.487159
34683152	3	48	431	13700	509777	12662	2008	13	235 тыс. км	235	2	3	2	3	\N	1	f	/auto_mercedes_benz_s_class_34683152.html		10	10	2023-06-19 18:18:34.496042	2023-06-19 18:18:34.496043
34683167	5	52	2685	26900	1000949	24862	2017	13	137 тыс. км	137	2	2.4	2	1	\N	1	f	/auto_mitsubishi_pajero_sport_34683167.html	MMCGUKS10HHZ05207	10	10	2023-06-19 18:18:34.547074	2023-06-19 18:18:34.547076
34683176	3	56	1523	2350	87444	2172	1995	0	267 тыс. км	267	1	2	1	2	\N	1	f	/auto_opel_vectra_34683176.html	W0L000087S1158194	3	3	2023-06-19 18:18:34.669699	2023-06-19 18:18:34.669701
34169170	3	55	498	2500	93025	2311	1997	0	300 тыс. км	300	2	2	1	2	\N	1	f	/auto_nissan_primera_34169170.html	SJNBDAP11U0124786	12	333	2023-06-19 18:18:35.21948	2023-06-19 18:18:35.21949
34683148	3	48	428	2999	111712	2738	1998	0	400 тыс. км	400	2	3	2	\N	\N	1	f	/auto_mercedes_benz_e_class_34683148.html	WDB21002x1Axxxx28	4	497	2023-06-19 18:18:35.427307	2023-06-19 18:18:35.427309
34683134	5	38	1895	43000	1601750	39258	2016	0	138 тыс. км	138	4	4.6	3	1	\N	1	f	/auto_lexus_gx_34683134.html	JTJBM7FXxG5xxxx83	11	11	2023-06-19 18:18:35.465345	2023-06-19 18:18:35.465348
34683168	198	48	35249	21500	800015	19871	2011	8	410 тыс. км	410	0	2.2	1	3	\N	6	f	/auto_mercedes_benz_sprinter_34683168.html	WDB9061551N445702	18	55	2023-06-19 18:18:35.68473	2023-06-19 18:18:35.684734
34683154	3	18	165	3300	122793	3050	2011	13	150 тыс. км	150	4	1.5	1	2	\N	1	f	/auto_daewoo_nexia_34683154.html	XWB3L32EDBA223767	6	6	2023-06-19 18:18:35.705227	2023-06-19 18:18:35.705228
34681577	2	13	1052	5350	199074	4945	2009	0	225 тыс. км	225	4	1.8	1	2	\N	1	f	/auto_chevrolet_lacetti_34681577.html		10	214	2023-06-19 18:18:35.733498	2023-06-19 18:18:35.7335
33718779	198	48	35249	13900	517219	12847	2014	0	265 тыс. км	265	2	2.1	2	3	\N	6	f	/auto_mercedes_benz_sprinter_33718779.html	WDB90613х2Nхххх37	10	10	2023-06-19 18:18:35.903928	2023-06-19 18:18:35.903936
34683158	8	15	3486	7750	288378	7163	2012	8	235 тыс. км	235	2	1.6	1	2	\N	1	f	/auto_citroen_grand_c4_picasso_34683158.html	VF7UA9HR8CJ671595	9	9	2023-06-19 18:18:36.408371	2023-06-19 18:18:36.408376
34681957	3	6	47	7500	279075	6932	2007	0	175 тыс. км	175	1	1.8	1	2	\N	1	f	/auto_audi_a4_34681957.html	WAUZZZ8EX7A261168	11	11	2023-06-19 18:18:37.591335	2023-06-19 18:18:37.591343
34688496	307	70	652	7700	286517	7117	2007	13	135 тыс. км	135	1	1.6	1	2	\N	1	f	/auto_skoda_octavia_34688496.html	TMBDX21U488848633	1	1	2023-06-20 15:37:55.011133	2023-06-20 15:37:55.011134
34658282	3	84	39690	2200	81862	2033	1991	8	356 тыс. км	356	0	1.8	1	2	\N	1	f	/auto_volkswagen_passat_34658282.html	WVWZZZ31ZMB008311	1	1	2023-06-15 11:45:21.879879	2023-06-15 11:45:21.87988
34658291	5	84	63711	36500	1358165	33735	2022	0	1 тыс. км	1	6	0	2	3	\N	1	f	/auto_volkswagen_id_4_crozz_34658291.html	LFVVB9E62N5045199	25	25	2023-06-15 11:45:21.890439	2023-06-15 11:45:21.89044
34649136	4	62	42148	12300	457683	11368	2017	0	134 тыс. км	134	6	0	2	2	\N	1	f	/auto_renault_zoe_34649136.html	VF1AGVYF056917314	18	50	2023-06-15 11:45:21.935753	2023-06-15 11:45:21.935754
1808736	3	88	855	5200	193492	4806	2006	1	10 тыс. км	10	1	1.5	1	\N	\N	0	f	/auto_vaz_lada_21099_1808736.html		10	220	2023-06-15 11:45:22.003329	2023-06-15 11:45:22.00333
34658237	4	79	702	650	24187	601	1996	13	250 тыс. км	250	4	0	1	\N	\N	1	t	/auto_toyota_corolla_34658237.html	JT154EEA100291401	7	7	2023-06-15 11:45:23.342881	2023-06-15 11:45:23.342887
34658261	219	84	35399	5300	197213	4898	2005	0	630 тыс. км	630	2	0	1	3	\N	7	f	/auto_volkswagen_lt_34658261.html	WV1ZZZ2DZ6H006470	5	5	2023-06-15 11:45:23.35841	2023-06-15 11:45:23.358414
1908553	3	88	31636	1494	55590	1381	2009	1	1 тыс. км	1	0	0	1	\N	\N	1	f	/auto_vaz_lada_2170_priora_1908553.html		7	7	2023-06-15 11:45:23.454567	2023-06-15 11:45:23.454573
34658241	9	55	2472	6600	245586	6100	2003	8	300 тыс. км	300	2	0	1	1	\N	1	f	/auto_nissan_navara_34658241.html		20	20	2023-06-15 11:45:23.507213	2023-06-15 11:45:23.507219
34658233	196	97	1790	6200	230702	5730	1987	8	1000 тыс. км	1000	2	0	1	\N	\N	6	f	/auto_kamaz_5511_34658233.html		12	342	2023-06-15 11:45:23.663484	2023-06-15 11:45:23.663489
34658250	5	84	793	18900	703269	17468	2013	8	179 тыс. км	179	5	3	2	1	\N	1	f	/auto_volkswagen_touareg_34658250.html	WVGEG9BP9DD001819	22	22	2023-06-15 11:45:24.655702	2023-06-15 11:45:24.655707
34420156	2	9	2319	15900	591639	14695	2011	0	229 тыс. км	229	2	2	3	3	\N	1	f	/auto_bmw_5_series_34420156.html	WBAMX11040C883677	11	11	2023-06-15 11:45:24.813114	2023-06-15 11:45:24.813118
34688498	3	18	1642	1850	68839	1710	2003	13	270 тыс. км	270	4	1.3	1	\N	\N	1	f	/auto_daewoo_sens_34688498.html	Y6DT1311030171939	2	2	2023-06-20 15:37:57.201258	2023-06-20 15:37:57.20126
1905971	70	162	1795	3225	120000	2981	1994	1	1 тыс. км	1	2	0	2	\N	\N	10	f	/auto_kombajn_fortschritt_1905971.html		14	182	2023-06-20 15:37:57.211859	2023-06-20 15:37:57.211861
34688493	5	32	2630	10500	390705	9705	2016	13	160 тыс. км	160	4	2.4	2	1	\N	1	t	/auto_jeep_patriot_34688493.html	1C4NJRBB5GD782689	10	10	2023-06-20 15:37:57.219338	2023-06-20 15:37:57.21934
32589901	197	177	35926	8700	323727	8041	1998	0	500 тыс. км	500	2	4.6	1	3	\N	6	f	/auto_man_8_163_32589901.html	WMAL2008х7Gхххх71	14	14	2023-06-20 15:37:57.280971	2023-06-20 15:37:57.280973
\.


--
-- Data for Name: bodystyles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bodystyles (id, category_id, name, added_by_sync, created_at) FROM stdin;
3	1	sedan	f	2023-06-07 21:53:20.12103
4	1	khetchbek	f	2023-06-07 21:53:20.36589
167	5	tentovannyj-bort-shtora-polupricep	f	2023-06-07 21:53:20.425135
5	1	vnedorozhnik-krossover	f	2023-06-08 12:06:24.827196
2	1	universal	f	2023-06-08 12:06:25.0242
307	1	liftbek	f	2023-06-08 12:06:25.369921
1	0		f	2023-06-08 12:16:11.475491
116	4	minipogruzchik	f	2023-06-08 12:26:45.334529
212	6	tyagach	f	2023-06-08 12:26:52.147384
310	10	kombajn-zernouborochnyj	f	2023-06-08 16:10:49.258113
150	5	bort	f	2023-06-08 17:55:29.3651
197	6	gruzovoj-furgon	f	2023-06-08 17:55:29.366481
8	1	miniven	f	2023-06-08 17:55:29.396732
53	3	gidroczikl-sportivnyj	f	2023-06-08 18:07:48.290303
14	2	motoczikl-klassik	f	2023-06-08 19:11:55.439862
198	6	refrizherator	f	2023-06-08 19:11:55.44656
254	6	gruzopassazhirskij-furgon	f	2023-06-08 19:11:55.448917
385	6	zernovoz	f	2023-06-08 19:11:55.866116
41	2	kvadroczikl-utilitarnyj	f	2023-06-08 19:12:13.665901
299	4	kran-manipulyator	f	2023-06-08 19:12:13.687955
227	7	turisticheskij-mezhdugorodnij-avtobus	f	2023-06-08 19:12:14.025017
6	1	kupe	f	2023-06-08 19:12:14.268438
7	1	kabriolet	f	2023-06-08 19:12:14.279117
195	6	tentovanyj	f	2023-06-08 19:12:14.351966
173	5	refrizherator-polupricep	f	2023-06-08 19:12:15.074769
12	2	maksi-skuter	f	2023-06-08 19:12:15.324587
201	6	czisterna	f	2023-06-09 10:05:46.499038
194	6	bort	f	2023-06-09 10:05:46.691204
11	2	skuter-motoroller	f	2023-06-09 10:05:47.485549
39	2	kvadroczikl-sportivnyj	f	2023-06-09 10:08:00.156616
18	2	sportbajk	f	2023-06-09 23:04:58.694235
449	1	mikroven	f	2023-06-09 23:04:58.814794
347	10	seyalka-sploshnogo-vyseva-mekhanicheskaya	f	2023-06-09 23:04:58.818743
178	5	avtovoz	f	2023-06-09 23:04:59.140146
257	8	dom-na-kolesakh	f	2023-06-09 23:04:59.299036
9	1	pikap	f	2023-06-09 23:04:59.467247
55	3	gidroczikl-turisticheskij	f	2023-06-09 23:05:02.103911
171	5	czisterna-polupricep	f	2023-06-09 23:05:02.141647
15	2	motoczikl-bez-obtekatelej-naked-bike	f	2023-06-09 23:05:02.66645
338	10	kombajn-pricepnoj	f	2023-06-09 23:19:29.263367
66	10	traktor-selskokhozyajstvennyj	f	2023-06-09 23:19:29.538688
169	5	kontejnerovoz-polupricep	f	2023-06-10 11:33:39.999537
17	2	motoczikl-sport-turizm	f	2023-06-10 11:33:40.058424
87	4	avtokran	f	2023-06-10 11:33:40.059723
168	5	samosval-polupricep	f	2023-06-10 11:33:40.299155
251	5	drugoe	f	2023-06-10 11:33:40.632529
219	7	mikroavtobus	f	2023-06-10 11:33:40.892063
333	10	zernova-zhatka	f	2023-06-10 11:33:41.38102
170	5	furgon-polupricep	f	2023-06-10 11:33:41.542473
165	5	bortovoj-polupricep	f	2023-06-10 11:33:41.659986
42	2	motovezdekhod	f	2023-06-10 22:46:40.45747
24	2	motoczikl-kruizer	f	2023-06-10 22:46:41.554642
221	7	gorodskoj-avtobus	f	2023-06-10 22:46:42.965385
124	4	avtovyshka	f	2023-06-10 22:46:44.18057
421	2	bobber	f	2023-06-11 18:25:48.083918
157	5	refrizherator	f	2023-06-11 18:25:48.863376
140	4	drugaya-spectekhnika	f	2023-06-11 18:25:50.407687
19	2	motoczikl-kross	f	2023-06-11 19:51:46.570589
192	6	shassi	f	2023-06-11 19:51:47.865007
33	2	pitbajk	f	2023-06-12 01:52:04.378033
423	2	kafe-rejser	f	2023-06-12 01:52:04.400221
154	5	kontejnerovoz	f	2023-06-12 01:52:05.391799
25	2	motoczikl-mnogoczelevoj-all-round	f	2023-06-12 01:52:06.361352
59	3	lodka	f	2023-06-12 01:52:06.387396
145	4	betonomeshalka-mikser	f	2023-06-12 11:45:17.442606
303	5	izotermicheskaya-budka	f	2023-06-12 11:45:18.745296
331	4	kolesnyj-ekskavator	f	2023-06-12 18:41:06.291968
115	4	frontalnyj-pogruzchik	f	2023-06-12 18:41:07.435407
21	2	motoczikl-vnedorozhnyj-enduro	f	2023-06-12 18:41:08.965676
68	10	minitraktor	f	2023-06-12 20:35:34.948778
196	6	samosval	f	2023-06-12 20:35:35.099806
207	6	avtovoz	f	2023-06-12 20:35:35.104934
16	2	motoczikl-turizm	f	2023-06-12 20:35:35.105959
200	6	kontejnerovoz	f	2023-06-12 20:35:35.422419
193	6	platforma	f	2023-06-12 20:35:36.021295
351	10	razbrasyvatel-mineralnykh-udobrenij	f	2023-06-12 23:20:53.06305
60	3	lodochnyj-motor	f	2023-06-12 23:20:53.60181
315	1	rodster	f	2023-06-13 18:33:35.957681
336	4	vilochnyj-pogruzchik	f	2023-06-13 18:33:35.99554
61	3	kater	f	2023-06-13 18:33:36.450193
95	4	betononasos	f	2023-06-13 18:33:37.803009
86	4	buldozer	f	2023-06-13 18:33:39.108949
23	2	motoczikl-chopper	f	2023-06-13 21:42:03.040833
118	4	teleskopicheskij-pogruzchik	f	2023-06-13 21:42:03.223795
401	4	podemnik-teleskopicheskij	f	2023-06-13 21:42:05.827548
159	5	dlya-perevozki-zhivotnykh-pricep	f	2023-06-13 23:53:24.708221
298	4	evakuator	f	2023-06-14 09:54:10.188125
10	0		f	2023-06-14 09:54:12.255976
179	5	legkovoj-pricep	f	2023-06-14 09:54:12.338132
44	0	golf-kar	f	2023-06-14 11:19:09.966737
429	2	gruzovye-motorollery-motoczikly-skutery-mopedy	f	2023-06-14 17:04:38.601221
359	10	zernometatel-zernopogruzchik	f	2023-06-14 22:12:38.002009
311	10	opryskivateli-samokhodnye	f	2023-06-14 22:12:39.390093
70	10	kombajn	f	2023-06-14 22:29:27.923503
29	2	motoczikl-s-kolyaskoj	f	2023-06-15 00:16:56.898605
255	8	pricep-dacha	f	2023-06-15 00:16:58.852378
357	10	kartofelekopalka	f	2023-06-15 01:16:03.047084
386	5	zernovoz-pricep	f	2023-06-15 01:16:03.679947
224	7	prigorodnyj-avtobus	f	2023-06-15 01:16:06.055132
13	1		f	2023-06-15 13:21:38.561658
229	7	drugoe	f	2023-06-17 03:15:18.298952
258	8	mobilnyj-dom	f	2023-06-19 12:12:03.629071
175	5	lesovoz-sortimentovoz-polupricep	f	2023-06-19 18:18:34.622512
427	2	mokik	f	2023-06-20 11:39:48.080256
152	5	samosval-pricep	f	2023-06-20 11:39:53.274415
151	5	tentovannyj-bort-shtora-pricep	f	2023-06-20 11:39:53.884245
88	4	bashennyj-kran	f	2023-06-29 11:19:02.125154
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, added_by_sync, created_at) FROM stdin;
2	Мото	t	2023-06-04 23:40:39.380375
1	Легкові	t	2023-06-04 23:40:39.380188
6	Вантажівки	t	2023-06-04 23:40:39.382545
7	Автобуси	t	2023-06-04 23:40:39.387624
5	spectehnika	f	2023-06-07 21:53:20.423178
0	legkovie	f	2023-06-08 12:16:11.471689
4	spectehnika	f	2023-06-08 12:26:45.330286
10	moto	f	2023-06-08 16:10:49.255244
3	moto	f	2023-06-08 18:07:48.286236
8	autohouse	f	2023-06-09 23:04:59.130175
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, name, state_id, added_by_sync, created_at) FROM stdin;
76	Днепр (Днепропетровск)	11	f	2023-06-07 21:53:20.156411
140	Житомир	2	f	2023-06-07 21:53:20.367367
396	Ровно	9	f	2023-06-07 21:53:20.425656
10	Киев	10	f	2023-06-08 12:06:24.885659
4	Хмельницкий	4	f	2023-06-08 12:06:25.026319
5	Львов	5	f	2023-06-08 12:06:25.372329
471	Херсон	23	f	2023-06-08 12:17:51.36992
11	Днепр (Днепропетровск)	11	f	2023-06-08 12:26:52.177863
19	Николаев	19	f	2023-06-08 12:26:52.327753
1	Винница	1	f	2023-06-08 13:41:54.749911
12	Одесса	12	f	2023-06-08 13:41:54.755304
9	Ровно	9	f	2023-06-08 16:10:49.150468
18	Луцк	18	f	2023-06-08 17:55:29.307537
210	Киев	10	f	2023-06-08 17:55:29.331845
7	Харьков	7	f	2023-06-08 17:55:29.364731
2	Житомир	2	f	2023-06-08 17:55:29.36434
3	Тернополь	3	f	2023-06-08 17:55:29.369682
499	Хмельницкий	4	f	2023-06-08 17:55:29.395635
80	Днепр (Днепропетровск)	11	f	2023-06-08 17:55:29.430859
8	Сумы	8	f	2023-06-08 17:55:29.445454
15	Ивано-Франковск	15	f	2023-06-08 17:55:29.447746
55	Луцк	18	f	2023-06-08 17:55:29.64289
200	Ивано-Франковск	15	f	2023-06-08 17:55:29.704613
612	Киев	10	f	2023-06-08 19:11:55.426181
355	Одесса	12	f	2023-06-08 19:11:55.447771
504	Хмельницкий	4	f	2023-06-08 19:11:55.449552
161	Ужгород	22	f	2023-06-08 19:11:55.454846
16	Кропивницкий (Кировоград)	16	f	2023-06-08 19:11:55.866654
24	Черкассы	24	f	2023-06-08 19:11:55.952428
112	Донецкая обл.	13	f	2023-06-08 19:12:13.669542
85	Днепр (Днепропетровск)	11	f	2023-06-08 19:12:13.688348
610	Киев	10	f	2023-06-08 19:12:13.706165
25	Черновцы	25	f	2023-06-08 19:12:13.70724
168	Ужгород	22	f	2023-06-08 19:12:13.742228
14	Запорожье	14	f	2023-06-08 19:12:13.797376
436	Тернополь	3	f	2023-06-08 19:12:14.267632
519	Черкассы	24	f	2023-06-08 19:12:14.273584
216	Киев	10	f	2023-06-08 19:12:14.279907
385	Полтава	20	f	2023-06-08 19:12:14.280228
605	Полтава	20	f	2023-06-08 19:12:14.279466
369	Полтава	20	f	2023-06-08 19:12:14.369977
42	Винница	1	f	2023-06-08 19:12:14.957336
307	Львов	5	f	2023-06-08 19:12:14.966431
6	Чернигов	6	f	2023-06-08 19:12:15.073751
317	Николаев	19	f	2023-06-08 19:12:15.101771
409	Сумы	8	f	2023-06-08 19:12:15.123808
597	Винница	1	f	2023-06-08 19:12:15.231653
416	Сумы	8	f	2023-06-08 19:12:15.305859
346	Одесса	12	f	2023-06-08 19:12:15.321517
557	Чернигов	6	f	2023-06-09 10:05:46.395489
201	Ивано-Франковск	15	f	2023-06-09 10:05:46.690135
217	Киев	10	f	2023-06-09 10:05:46.689644
338	Одесса	12	f	2023-06-09 10:05:46.760119
20	Полтава	20	f	2023-06-09 10:05:46.760433
407	Сумы	8	f	2023-06-09 10:05:46.764696
602	Винница	1	f	2023-06-09 10:05:46.889996
392	Ровно	9	f	2023-06-09 10:05:46.974837
23	Херсон	23	f	2023-06-09 10:05:47.267714
306	Львов	5	f	2023-06-09 10:05:47.421334
202	Ивано-Франковск	15	f	2023-06-09 10:05:47.42387
204	Ивано-Франковск	15	f	2023-06-09 10:07:59.272328
197	Ивано-Франковск	15	f	2023-06-09 10:07:59.461916
460	Харьков	7	f	2023-06-09 10:07:59.578905
14949	Львов	5	f	2023-06-09 10:07:59.614879
214	Киев	10	f	2023-06-09 10:07:59.642438
220	Киев	10	f	2023-06-09 10:07:59.669391
114		13	f	2023-06-09 10:07:59.740331
511	Хмельницкий	4	f	2023-06-09 10:08:00.584144
342	Одесса	12	f	2023-06-09 10:08:01.3698
308	Львов	5	f	2023-06-09 23:04:58.69497
462	Харьков	7	f	2023-06-09 23:04:58.763852
599	Винница	1	f	2023-06-09 23:04:58.76448
527	Черкассы	24	f	2023-06-09 23:04:58.872809
498	Хмельницкий	4	f	2023-06-09 23:04:58.873042
238	Кропивницкий (Кировоград)	16	f	2023-06-09 23:04:58.873733
543	Черновцы	25	f	2023-06-09 23:04:58.894779
113	Донецкая обл.	13	f	2023-06-09 23:04:59.132223
426	Тернополь	3	f	2023-06-09 23:04:59.181727
199	Ивано-Франковск	15	f	2023-06-09 23:04:59.294491
59	Луцк	18	f	2023-06-09 23:04:59.29578
418	Сумы	8	f	2023-06-09 23:04:59.2986
356	Одесса	12	f	2023-06-09 23:04:59.299218
33	Винница	1	f	2023-06-09 23:04:59.465496
404	Ровно	9	f	2023-06-09 23:04:59.467566
427	Тернополь	3	f	2023-06-09 23:04:59.534986
302	Львов	5	f	2023-06-09 23:04:59.541613
215	Киев	10	f	2023-06-09 23:04:59.882158
417	Сумы	8	f	2023-06-09 23:04:59.883491
292	Львов	5	f	2023-06-09 23:04:59.887803
163	Ужгород	22	f	2023-06-09 23:04:59.920031
554	Чернигов	6	f	2023-06-09 23:04:59.919774
257	Кропивницкий (Кировоград)	16	f	2023-06-09 23:05:00.012972
405	Ровно	9	f	2023-06-09 23:05:00.280881
141	Житомир	2	f	2023-06-09 23:05:00.513824
192	Ивано-Франковск	15	f	2023-06-09 23:05:01.234423
316	Николаев	19	f	2023-06-09 23:05:02.100592
560	Чернигов	6	f	2023-06-09 23:05:02.141942
225	Киев	10	f	2023-06-09 23:19:29.232966
540	Черновцы	25	f	2023-06-09 23:19:29.326716
211	Киев	10	f	2023-06-09 23:19:29.484368
621	Ивано-Франковск	15	f	2023-06-09 23:19:29.524298
438	Тернополь	3	f	2023-06-09 23:19:29.538947
22	Ужгород	22	f	2023-06-09 23:19:29.640233
133	Житомир	2	f	2023-06-10 11:33:39.784577
291	Львов	5	f	2023-06-10 11:33:39.839039
40	Винница	1	f	2023-06-10 11:33:39.943917
131	Житомир	2	f	2023-06-10 11:33:39.999051
252	Кропивницкий (Кировоград)	16	f	2023-06-10 11:33:40.065501
154	Житомир	2	f	2023-06-10 11:33:40.366374
505	Хмельницкий	4	f	2023-06-10 11:33:40.56983
287	Львов	5	f	2023-06-10 11:33:40.61119
643	Одесса	12	f	2023-06-10 11:33:40.624499
72	Днепр (Днепропетровск)	11	f	2023-06-10 11:33:41.358494
537	Черновцы	25	f	2023-06-10 11:33:41.473379
337	Одесса	12	f	2023-06-10 11:33:41.475721
526	Черкассы	24	f	2023-06-10 11:33:41.480373
17		17	f	2023-06-10 11:33:42.215427
397	Ровно	9	f	2023-06-10 11:33:42.737271
559	Чернигов	6	f	2023-06-10 22:46:40.582584
288	Львов	5	f	2023-06-10 22:46:40.583165
608	Ивано-Франковск	15	f	2023-06-10 22:46:41.295876
546	Чернигов	6	f	2023-06-10 22:46:41.321845
617	Львов	5	f	2023-06-10 22:46:41.533216
412	Сумы	8	f	2023-06-10 22:46:41.554981
609	Винница	1	f	2023-06-10 22:46:41.567989
327	Николаев	19	f	2023-06-10 22:46:41.575464
331	Николаев	19	f	2023-06-10 22:46:41.592003
423	Сумы	8	f	2023-06-10 22:46:41.60186
393	Ровно	9	f	2023-06-10 22:46:42.936522
528	Черкассы	24	f	2023-06-10 22:46:42.961955
544	Черновцы	25	f	2023-06-10 22:46:43.073152
50	Луцк	18	f	2023-06-10 22:46:43.232781
501	Хмельницкий	4	f	2023-06-10 22:46:43.276702
650	Киев	10	f	2023-06-10 22:46:43.442141
299	Львов	5	f	2023-06-10 22:46:43.44916
410	Сумы	8	f	2023-06-10 22:46:43.625088
47	Винница	1	f	2023-06-10 22:46:43.840092
334	Одесса	12	f	2023-06-11 18:25:47.778428
146	Житомир	2	f	2023-06-11 18:25:47.999922
454	Харьков	7	f	2023-06-11 18:25:48.011035
208	Ивано-Франковск	15	f	2023-06-11 18:25:48.047895
422	Сумы	8	f	2023-06-11 18:25:48.169593
14946	Харьков	7	f	2023-06-11 18:25:48.279854
550	Чернигов	6	f	2023-06-11 18:25:48.791173
144	Житомир	2	f	2023-06-11 18:25:48.801979
60	Луцк	18	f	2023-06-11 18:25:48.803259
43	Винница	1	f	2023-06-11 18:25:48.809632
367	Полтава	20	f	2023-06-11 18:25:48.845173
165	Ужгород	22	f	2023-06-11 18:25:48.872064
341	Одесса	12	f	2023-06-11 18:25:49.002642
514	Черкассы	24	f	2023-06-11 18:25:49.467002
632	Львов	5	f	2023-06-11 18:25:49.525129
157	Ужгород	22	f	2023-06-11 18:25:49.610342
411	Сумы	8	f	2023-06-11 18:25:49.877323
44	Винница	1	f	2023-06-11 18:25:50.370712
329	Николаев	19	f	2023-06-11 19:51:45.046294
62	Луцк	18	f	2023-06-11 19:51:45.047759
64	Луцк	18	f	2023-06-11 19:51:45.092139
525	Черкассы	24	f	2023-06-11 19:51:45.317141
248	Кропивницкий (Кировоград)	16	f	2023-06-11 19:51:45.552804
655	Киев	10	f	2023-06-11 19:51:45.707949
502	Хмельницкий	4	f	2023-06-11 19:51:45.80297
301	Львов	5	f	2023-06-11 19:51:46.033886
398	Ровно	9	f	2023-06-11 19:51:46.3317
496	Хмельницкий	4	f	2023-06-11 19:51:46.46995
433	Тернополь	3	f	2023-06-11 19:51:46.57117
512	Хмельницкий	4	f	2023-06-11 19:51:47.110949
441	Тернополь	3	f	2023-06-11 19:51:48.338058
644	Винница	1	f	2023-06-12 01:52:04.023945
45	Винница	1	f	2023-06-12 01:52:04.170525
347	Одесса	12	f	2023-06-12 01:52:04.252168
359	Одесса	12	f	2023-06-12 01:52:04.378486
649	Львов	5	f	2023-06-12 01:52:05.199883
123		13	f	2023-06-12 01:52:05.33923
293	Львов	5	f	2023-06-12 01:52:05.347461
34	Винница	1	f	2023-06-12 01:52:05.361343
310	Львов	5	f	2023-06-12 01:52:06.037876
539	Черновцы	25	f	2023-06-12 01:52:06.184847
83	Днепр (Днепропетровск)	11	f	2023-06-12 01:52:06.361911
54	Луцк	18	f	2023-06-12 01:52:06.872824
461	Харьков	7	f	2023-06-12 01:52:06.964649
203	Ивано-Франковск	15	f	2023-06-12 11:45:17.443092
205	Ивано-Франковск	15	f	2023-06-12 11:45:17.450533
14948	Чернигов	6	f	2023-06-12 11:45:17.702129
171	Запорожье	14	f	2023-06-12 11:45:17.777097
27	Винница	1	f	2023-06-12 11:45:17.961854
235	Киев	10	f	2023-06-12 11:45:18.172228
193	Ивано-Франковск	15	f	2023-06-12 11:45:18.192951
593		21	f	2023-06-12 11:45:18.529442
494	Хмельницкий	4	f	2023-06-12 11:45:18.95332
400	Ровно	9	f	2023-06-12 11:45:19.234758
122		13	f	2023-06-12 11:45:19.281573
212	Киев	10	f	2023-06-12 18:41:06.077939
226	Киев	10	f	2023-06-12 18:41:06.192636
374	Полтава	20	f	2023-06-12 18:41:06.213166
463	Харьков	7	f	2023-06-12 18:41:06.250358
148	Житомир	2	f	2023-06-12 18:41:06.311025
456	Харьков	7	f	2023-06-12 18:41:07.27921
637	Киев	10	f	2023-06-12 18:41:07.31958
223	Киев	10	f	2023-06-12 18:41:08.291867
311	Николаев	19	f	2023-06-12 18:41:08.377528
353	Одесса	12	f	2023-06-12 18:41:08.404223
515	Черкассы	24	f	2023-06-12 18:41:08.942011
294	Львов	5	f	2023-06-12 18:41:09.231674
366	Полтава	20	f	2023-06-12 19:10:52.549667
614	Львов	5	f	2023-06-12 19:10:53.176934
556	Чернигов	6	f	2023-06-12 20:35:34.461219
503	Хмельницкий	4	f	2023-06-12 20:35:34.494853
376	Полтава	20	f	2023-06-12 20:35:35.099577
430	Тернополь	3	f	2023-06-12 20:35:35.152046
290	Львов	5	f	2023-06-12 20:35:35.404219
75	Днепр (Днепропетровск)	11	f	2023-06-12 20:35:35.723912
30	Винница	1	f	2023-06-12 20:35:35.972936
242	Кропивницкий (Кировоград)	16	f	2023-06-12 20:35:36.554924
297	Львов	5	f	2023-06-12 23:20:51.411006
361	Полтава	20	f	2023-06-12 23:20:51.603012
251	Кропивницкий (Кировоград)	16	f	2023-06-12 23:20:52.253753
428	Тернополь	3	f	2023-06-12 23:20:52.683911
36	Винница	1	f	2023-06-12 23:20:52.689309
478	Херсон	23	f	2023-06-12 23:20:52.75597
164	Ужгород	22	f	2023-06-12 23:20:52.94527
336	Одесса	12	f	2023-06-12 23:20:52.964031
413	Сумы	8	f	2023-06-12 23:20:53.063592
534	Черновцы	25	f	2023-06-12 23:20:53.588552
429	Тернополь	3	f	2023-06-13 14:26:21.644283
195	Ивано-Франковск	15	f	2023-06-13 14:26:21.713936
482	Херсон	23	f	2023-06-13 14:28:19.844174
84	Днепр (Днепропетровск)	11	f	2023-06-13 14:28:21.669818
63	Луцк	18	f	2023-06-13 14:28:22.263427
196	Ивано-Франковск	15	f	2023-06-13 18:33:35.99384
233	Киев	10	f	2023-06-13 18:33:36.180033
96	Днепр (Днепропетровск)	11	f	2023-06-13 18:33:36.18064
323	Николаев	19	f	2023-06-13 18:33:36.182144
604	Винница	1	f	2023-06-13 18:33:37.203227
415	Сумы	8	f	2023-06-13 18:33:37.330989
305	Львов	5	f	2023-06-13 18:33:38.035679
309	Львов	5	f	2023-06-13 18:33:38.068835
435	Тернополь	3	f	2023-06-13 18:33:38.076514
295	Львов	5	f	2023-06-13 18:33:38.106163
477	Херсон	23	f	2023-06-13 18:33:38.215047
184	Запорожье	14	f	2023-06-13 18:33:39.109286
156	Ужгород	22	f	2023-06-13 20:40:42.105631
14953	Львов	5	f	2023-06-13 20:40:42.763736
28	Запорожье	14	f	2023-06-13 20:40:42.766234
35	Винница	1	f	2023-06-13 20:40:43.342285
516	Черкассы	24	f	2023-06-13 20:40:43.548901
255	Кропивницкий (Кировоград)	16	f	2023-06-13 20:40:43.570202
169	Ужгород	22	f	2023-06-13 20:40:43.647875
234	Киев	10	f	2023-06-13 20:40:44.761571
390	Ровно	9	f	2023-06-13 20:57:08.083055
549	Чернигов	6	f	2023-06-13 21:42:03.051455
246	Кропивницкий (Кировоград)	16	f	2023-06-13 21:42:03.261449
459	Харьков	7	f	2023-06-13 21:42:04.545563
469	Харьков	7	f	2023-06-13 21:42:05.789284
145	Житомир	2	f	2023-06-13 21:42:05.94675
457	Харьков	7	f	2023-06-13 21:42:07.41094
458	Харьков	7	f	2023-06-13 23:27:37.905232
521	Черкассы	24	f	2023-06-13 23:27:38.003441
432	Тернополь	3	f	2023-06-13 23:27:38.8255
239	Кропивницкий (Кировоград)	16	f	2023-06-13 23:27:38.866003
464	Харьков	7	f	2023-06-13 23:27:39.533563
94	Днепр (Днепропетровск)	11	f	2023-06-13 23:27:39.778885
551	Чернигов	6	f	2023-06-13 23:27:40.259718
289	Львов	5	f	2023-06-13 23:27:40.59126
314	Николаев	19	f	2023-06-13 23:53:24.709913
162	Ужгород	22	f	2023-06-13 23:53:24.72053
147	Житомир	2	f	2023-06-14 09:54:12.216106
489	Херсон	23	f	2023-06-14 09:54:12.254049
448	Харьков	7	f	2023-06-14 09:54:13.508393
21		21	f	2023-06-14 09:54:13.893282
284		17	f	2023-06-14 09:54:17.543817
379	Полтава	20	f	2023-06-14 11:19:09.140024
104		13	f	2023-06-14 11:19:14.987278
119		13	f	2023-06-14 11:19:17.226257
213	Киев	10	f	2023-06-14 11:19:17.431703
647	Черновцы	25	f	2023-06-14 17:04:37.145801
388	Ровно	9	f	2023-06-14 17:04:37.482121
332	Одесса	12	f	2023-06-14 17:04:38.601802
253	Кропивницкий (Кировоград)	16	f	2023-06-14 17:04:38.783406
357	Одесса	12	f	2023-06-14 17:04:39.067758
645	Черкассы	24	f	2023-06-14 17:04:40.722999
318	Николаев	19	f	2023-06-14 17:04:40.952987
651	Львов	5	f	2023-06-14 22:12:40.187221
493	Хмельницкий	4	f	2023-06-14 22:12:41.505646
256	Кропивницкий (Кировоград)	16	f	2023-06-14 22:12:41.673458
518	Черкассы	24	f	2023-06-14 22:12:42.153635
160	Ужгород	22	f	2023-06-14 22:29:27.871679
507	Хмельницкий	4	f	2023-06-15 00:16:56.833397
49	Винница	1	f	2023-06-15 00:16:56.857579
87	Днепр (Днепропетровск)	11	f	2023-06-15 00:16:57.436994
150	Житомир	2	f	2023-06-15 00:16:58.797629
153	Житомир	2	f	2023-06-15 01:13:12.443854
48	Винница	1	f	2023-06-15 01:13:12.462062
603	Винница	1	f	2023-06-15 01:16:02.881944
135	Житомир	2	f	2023-06-15 01:16:02.882679
563	Чернигов	6	f	2023-06-15 01:16:03.04774
194	Ивано-Франковск	15	f	2023-06-15 01:16:03.673557
51	Луцк	18	f	2023-06-15 01:16:03.725557
137	Житомир	2	f	2023-06-15 01:16:06.043398
116		13	f	2023-06-15 11:45:20.831991
109	Донецкая обл.	13	f	2023-06-15 11:45:21.631252
13		13	f	2023-06-15 11:45:22.387403
348	Одесса	12	f	2023-06-15 11:45:23.3363
82	Днепр (Днепропетровск)	11	f	2023-06-15 11:45:23.62857
646	Львов	5	f	2023-06-15 13:21:37.988133
41	Винница	1	f	2023-06-15 13:21:38.072403
134	Житомир	2	f	2023-06-15 13:21:38.073006
229	Киев	10	f	2023-06-15 13:21:42.136907
510	Хмельницкий	4	f	2023-06-15 13:21:42.149021
53	Луцк	18	f	2023-06-15 13:21:42.152835
78	Днепр (Днепропетровск)	11	f	2023-06-15 21:34:11.303087
298	Львов	5	f	2023-06-15 21:34:11.308622
384	Полтава	20	f	2023-06-15 21:34:12.101527
552	Чернигов	6	f	2023-06-15 21:34:12.785791
352	Одесса	12	f	2023-06-15 21:34:13.119346
241	Кропивницкий (Кировоград)	16	f	2023-06-15 21:34:13.761154
419	Сумы	8	f	2023-06-17 03:15:16.833333
333	Одесса	12	f	2023-06-17 03:15:17.129462
155	Ужгород	22	f	2023-06-17 03:15:17.67701
344	Одесса	12	f	2023-06-17 03:15:17.934106
303	Львов	5	f	2023-06-17 03:15:18.201149
304	Львов	5	f	2023-06-17 03:15:18.244697
228	Киев	10	f	2023-06-17 03:15:20.174913
399	Ровно	9	f	2023-06-19 12:12:03.621407
159	Ужгород	22	f	2023-06-19 12:12:03.874594
335	Одесса	12	f	2023-06-19 12:12:06.837855
61	Луцк	18	f	2023-06-19 18:18:34.623346
497	Хмельницкий	4	f	2023-06-19 18:18:35.42195
452	Харьков	7	f	2023-06-20 11:39:48.152299
360	Полтава	20	f	2023-06-20 11:39:48.408765
267		17	f	2023-06-20 11:39:49.690438
558	Чернигов	6	f	2023-06-20 15:37:53.873658
533	Черкассы	24	f	2023-06-20 15:37:53.875194
425	Тернополь	3	f	2023-06-20 15:37:54.117947
182	Запорожье	14	f	2023-06-20 15:37:57.206174
170	Запорожье	14	f	2023-06-20 15:37:57.258978
373	Полтава	20	f	2023-06-29 11:19:00.938924
542	Черновцы	25	f	2023-06-29 11:19:02.012679
443	Харьков	7	f	2023-06-29 11:19:05.445341
453	Харьков	7	f	2023-06-29 11:19:08.56213
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (id, name, added_by_sync, created_at) FROM stdin;
826	Англія	t	2023-06-06 20:32:01.045879
\.


--
-- Data for Name: fuel_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fuel_types (id, name, added_by_sync, created_at) FROM stdin;
1	Бензин	t	2023-06-04 23:40:39.247415
2	Дизель	t	2023-06-04 23:40:39.385987
9	Газ пропан-бутан	t	2023-06-04 23:40:39.386356
4	Газ / Бензин	t	2023-06-04 23:40:39.386412
0		f	2023-06-07 21:53:20.421583
6	elektro	f	2023-06-08 13:41:54.752608
5	gibrid	f	2023-06-09 23:04:59.470018
3	gaz	f	2023-06-10 22:46:42.946218
\.


--
-- Data for Name: gearboxes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gearboxes (id, name, category_id, added_by_sync, created_at) FROM stdin;
2	Автомат	1	f	2023-06-07 21:53:20.157573
1	Ручная / Механика	1	f	2023-06-07 21:53:20.366844
3	Не указано	5	f	2023-06-08 17:57:00.571054
4	Не указано	5	f	2023-06-08 17:57:26.030729
5	Не указано	5	f	2023-06-08 18:05:24.126154
6	Не указано	3	f	2023-06-08 18:07:48.334564
7	Не указано	1	f	2023-06-08 19:11:55.446855
8	Не указано	6	f	2023-06-08 19:11:55.449324
9	Не указано	1	f	2023-06-08 19:11:55.453273
10	Не указано	6	f	2023-06-08 19:11:55.866419
11	Не указано	1	f	2023-06-08 19:12:13.577591
12	Не указано	1	f	2023-06-08 19:12:13.582071
13	Не указано	6	f	2023-06-09 10:05:46.537109
14	Не указано	1	f	2023-06-09 10:07:59.273129
15	Не указано	1	f	2023-06-09 10:07:59.273801
16	Не указано	1	f	2023-06-09 10:11:03.959087
17	Не указано	1	f	2023-06-09 10:11:03.96511
18	Не указано	1	f	2023-06-09 23:04:58.815331
19	Не указано	10	f	2023-06-09 23:04:58.877378
20	Не указано	10	f	2023-06-09 23:19:29.327408
21	Не указано	1	f	2023-06-10 11:33:39.941823
22	Не указано	5	f	2023-06-10 11:33:39.999803
23	Не указано	2	f	2023-06-10 11:33:40.042885
24	Не указано	4	f	2023-06-10 11:33:40.0578
25	Не указано	1	f	2023-06-10 11:34:14.535773
26	Не указано	1	f	2023-06-10 22:46:40.43776
27	Не указано	1	f	2023-06-10 22:46:48.450768
28	Не указано	1	f	2023-06-10 22:46:48.452072
29	Не указано	3	f	2023-06-11 18:25:48.091033
30	Не указано	5	f	2023-06-11 18:25:48.162425
31	Не указано	2	f	2023-06-11 18:25:48.169525
32	Не указано	1	f	2023-06-11 18:25:48.169454
33	Не указано	2	f	2023-06-11 18:25:48.280391
34	Не указано	1	f	2023-06-11 18:25:48.280486
35	Не указано	5	f	2023-06-11 18:25:55.622871
36	Не указано	1	f	2023-06-11 19:51:44.915182
37	Не указано	1	f	2023-06-11 19:51:51.570955
38	Не указано	1	f	2023-06-12 01:52:04.202481
39	Не указано	2	f	2023-06-12 11:45:17.584219
40	Не указано	6	f	2023-06-12 18:41:06.093146
41	Не указано	1	f	2023-06-12 19:10:52.994921
42	Не указано	1	f	2023-06-12 19:10:53.160112
43	Не указано	4	f	2023-06-12 20:35:34.951583
44	Не указано	2	f	2023-06-12 20:35:35.104596
45	Не указано	1	f	2023-06-12 23:20:51.381117
46	Не указано	1	f	2023-06-13 14:26:21.671838
47	Не указано	0	f	2023-06-13 14:28:19.730693
48	Не указано	6	f	2023-06-13 18:33:36.182944
49	Не указано	5	f	2023-06-13 20:40:42.557706
50	Не указано	1	f	2023-06-13 20:57:08.092175
51	Не указано	4	f	2023-06-13 21:42:03.224801
52	Не указано	1	f	2023-06-13 23:27:37.740072
53	Не указано	1	f	2023-06-13 23:27:37.742628
54	Не указано	5	f	2023-06-13 23:53:24.708962
55	Не указано	1	f	2023-06-14 09:54:10.183375
56	Не указано	0	f	2023-06-14 11:19:09.407191
57	Не указано	10	f	2023-06-14 17:04:37.07797
58	Не указано	5	f	2023-06-14 17:04:37.456196
59	Не указано	1	f	2023-06-14 22:12:37.870408
60	Не указано	5	f	2023-06-14 22:29:27.895024
61	Не указано	1	f	2023-06-15 00:16:56.090903
62	Не указано	2	f	2023-06-15 01:13:12.541397
63	Не указано	10	f	2023-06-15 01:16:03.047536
64	Не указано	2	f	2023-06-15 01:16:03.050961
65	Не указано	1	f	2023-06-15 11:45:20.362068
66	Не указано	6	f	2023-06-15 13:21:37.988589
67	Не указано	5	f	2023-06-15 13:21:37.991496
68	Не указано	1	f	2023-06-15 21:34:11.299515
69	Не указано	1	f	2023-06-17 03:15:16.793579
70	Не указано	3	f	2023-06-19 12:12:02.751838
71	Не указано	1	f	2023-06-19 18:18:33.478168
72	Не указано	7	f	2023-06-20 11:39:47.947478
73	Не указано	2	f	2023-06-20 11:39:48.078851
74	Не указано	5	f	2023-06-20 15:37:33.761878
75	Не указано	1	f	2023-06-20 15:37:53.592651
76	Не указано	1	f	2023-06-20 15:37:53.874525
77	Не указано	10	f	2023-06-20 15:37:53.874359
78	Не указано	4	f	2023-06-29 11:19:00.813808
\.


--
-- Data for Name: marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.marks (id, category_id, name, added_by_sync, created_at) FROM stdin;
9	1	BMW	f	2023-06-07 21:35:42.847658
6	1	Audi	f	2023-06-07 21:35:42.84966
62	1	Renault	f	2023-06-07 21:51:39.680115
1873	5	Krone	f	2023-06-07 21:53:20.426314
76	1	Suzuki	f	2023-06-08 12:06:24.887014
85	1	Volvo	f	2023-06-08 12:06:25.026725
24	0	Ford	f	2023-06-08 12:16:11.503333
48	0	Mercedes-Benz	f	2023-06-08 12:17:51.365701
89	0	ЗАЗ	f	2023-06-08 12:17:51.370522
1689	4	Gehl	f	2023-06-08 12:26:45.362668
75	1	Subaru	f	2023-06-08 12:26:52.329045
55	1	Nissan	f	2023-06-08 13:41:54.756613
33	1	Kia	f	2023-06-08 13:41:54.756903
18	1	Daewoo	f	2023-06-08 16:10:48.858833
70	1	Skoda	f	2023-06-08 16:10:49.18648
1696	10	New Holland	f	2023-06-08 16:10:49.258879
84	6	Volkswagen	f	2023-06-08 17:55:29.368156
79	1	Toyota	f	2023-06-08 17:55:29.368897
23	1	Fiat	f	2023-06-08 17:55:29.412478
2233	1	Tesla	f	2023-06-08 17:55:29.424951
3160	5	Eduard	f	2023-06-08 17:55:29.425046
28	1	Honda	f	2023-06-08 17:55:29.70513
13	1	Chevrolet	f	2023-06-08 17:55:29.71186
1471	3	BRP	f	2023-06-08 18:07:48.336858
49	1	MG	f	2023-06-08 19:11:55.446187
88	1	ВАЗ / Lada	f	2023-06-08 19:11:55.448119
52	1	Mitsubishi	f	2023-06-08 19:11:55.448737
67	1	SEAT	f	2023-06-08 19:11:55.674081
47	1	Mazda	f	2023-06-08 19:11:55.684282
59	1	Porsche	f	2023-06-08 19:11:55.754454
97	6	КамАЗ	f	2023-06-08 19:11:55.867059
15	1	Citroen	f	2023-06-08 19:11:55.908001
190	1	Chery	f	2023-06-08 19:12:13.708446
58	1	Peugeot	f	2023-06-08 19:12:13.742881
177	4	MAN	f	2023-06-08 19:12:13.797604
56	1	Opel	f	2023-06-08 19:12:14.265954
37	1	Land Rover	f	2023-06-08 19:12:14.413461
32	1	Jeep	f	2023-06-08 19:12:14.696262
128	1	Infiniti	f	2023-06-08 19:12:14.955257
14	1	Chrysler	f	2023-06-08 19:12:14.998267
73	1	SsangYong	f	2023-06-08 19:12:15.104683
55075	5	Schmitz	f	2023-06-08 19:12:15.12878
2077	6	Avia	f	2023-06-08 19:12:15.159049
2126	5	ГКБ	f	2023-06-08 19:12:15.306366
55102	2	Yokomoto	f	2023-06-08 19:12:15.325356
1231	2	Polaris	f	2023-06-08 19:12:15.326075
91	6	ГАЗ	f	2023-06-09 10:05:46.539605
179	2	Yamaha	f	2023-06-09 10:05:47.486186
135	1	Lincoln	f	2023-06-09 10:08:01.124991
29	1	Hyundai	f	2023-06-09 10:08:01.233581
2026	2	Loncin	f	2023-06-09 23:04:58.696118
31	1	Jaguar	f	2023-06-09 23:04:58.76941
2024	10	Vaderstad	f	2023-06-09 23:04:58.822135
38	1	Lexus	f	2023-06-09 23:04:58.873977
55131	2	Voge	f	2023-06-09 23:04:58.8955
115	6	DAF	f	2023-06-09 23:04:58.899938
185	1	Geely	f	2023-06-09 23:04:59.126761
1618	4	Bobcat	f	2023-06-09 23:04:59.127024
17	1	Dacia	f	2023-06-09 23:04:59.127994
147	1	MINI	f	2023-06-09 23:04:59.184961
2159	8	Caravelair	f	2023-06-09 23:04:59.184811
2046	5	Al-ko	f	2023-06-09 23:04:59.298546
159	6	МАЗ	f	2023-06-09 23:05:02.087302
2127	5	СЗАП	f	2023-06-09 23:05:02.101016
1903	5	Magyar	f	2023-06-09 23:05:02.142174
1976	2	Geon	f	2023-06-09 23:05:02.667378
1845	10	Херсонец	f	2023-06-09 23:19:29.327095
65	1	Saab	f	2023-06-09 23:19:29.483413
1584	10	МТЗ	f	2023-06-09 23:19:29.539204
118	1	Dodge	f	2023-06-10 11:33:39.84383
189	1	ЛуАЗ	f	2023-06-10 11:33:40.042989
2018	5	GOFA	f	2023-06-10 11:33:40.043281
30	1	Isuzu	f	2023-06-10 11:33:40.645835
2404	5	Hendricks	f	2023-06-10 11:33:40.655096
2714	5	ПТС	f	2023-06-10 11:33:41.47502
1583	10	John Deere	f	2023-06-10 11:33:41.481012
2720	5	Spier	f	2023-06-10 11:33:41.542879
2719	5	Menci	f	2023-06-10 11:33:41.641456
1886	5	Bodex	f	2023-06-10 11:33:41.751282
1565	2	Musstang	f	2023-06-10 22:46:42.942233
203	6	Scania	f	2023-06-10 22:46:42.960476
408	7	РУТА	f	2023-06-10 22:46:42.967636
1201	2	Viper	f	2023-06-11 18:25:48.086159
1932	5	ЧМЗАП	f	2023-06-11 18:25:48.280548
4192	5	PRIM BALL	f	2023-06-11 18:25:48.863897
98	1	Acura	f	2023-06-11 18:25:48.915528
2367	5	Zorzi	f	2023-06-11 18:25:49.553017
175	4	Iveco	f	2023-06-11 19:51:44.668695
1554	2	Spark	f	2023-06-11 19:51:44.985085
1105	2	Kymco	f	2023-06-11 19:51:46.409182
334	2	Lifan	f	2023-06-11 19:51:46.571975
317	1	JAC	f	2023-06-11 19:51:47.087676
4681	1	Ravon	f	2023-06-12 01:52:04.161571
1872	5	Kogel	f	2023-06-12 01:52:05.39224
1588	4	Case IH	f	2023-06-12 01:52:05.473938
1660	3	Buster	f	2023-06-12 01:52:06.38814
1060	2	Ducati	f	2023-06-12 11:45:17.584949
1698	10	Т1	f	2023-06-12 11:45:17.694023
93	0	УАЗ	f	2023-06-12 11:45:17.962437
3662	2	Bajaj	f	2023-06-12 11:45:18.212298
1855	5	Ackermann-Fruehauf	f	2023-06-12 11:45:18.745957
11	1	Cadillac	f	2023-06-12 11:45:18.999339
314	0	Freightliner	f	2023-06-12 11:45:19.339063
1587	4	Atlas	f	2023-06-12 18:41:06.292946
3520	4	Messersi	f	2023-06-12 18:41:06.313444
1941	2	Futong	f	2023-06-12 18:41:06.441588
1487	2	Jawa (ЯВА)	f	2023-06-12 18:41:07.282242
1921	5	Wielton	f	2023-06-12 18:41:07.285036
19	1	Daihatsu	f	2023-06-12 18:41:07.318753
1458	4	Carmix	f	2023-06-12 18:41:07.333265
1592	4	Hitachi	f	2023-06-12 18:41:07.436278
71	1	Smart	f	2023-06-12 18:41:08.0165
55208	1	FAW Bestune	f	2023-06-12 18:41:08.27271
94	1	Москвич/АЗЛК	f	2023-06-12 18:41:08.27662
3164	2	Forte	f	2023-06-12 18:41:08.292174
5939	2	Kovi	f	2023-06-12 18:41:08.966479
2108	2	Alpha	f	2023-06-12 20:35:34.492661
92	1	ИЖ	f	2023-06-12 20:35:34.494197
1586	10	Jinma	f	2023-06-12 20:35:35.104496
1582	4	Liebherr	f	2023-06-12 20:35:35.104661
168	6	ЗИЛ	f	2023-06-12 20:35:35.153007
2474	2	Victory	f	2023-06-12 20:35:37.921619
3020	4	Dieci	f	2023-06-12 23:20:51.589875
1104	2	KTM	f	2023-06-12 23:20:52.696737
2993	5	ПГ	f	2023-06-12 23:20:52.697696
1877	5	Schmitz Cargobull	f	2023-06-12 23:20:52.98957
4721	10	Ореховсельмаш	f	2023-06-12 23:20:53.064159
176	2	Kawasaki	f	2023-06-12 23:20:54.868972
3	1	Alfa Romeo	f	2023-06-13 14:26:21.694115
326	7	БАЗ	f	2023-06-13 14:26:21.698547
154	0	Прицеп	f	2023-06-13 14:28:19.758291
1572	2	Shineray	f	2023-06-13 14:28:20.881641
151	2	Eurotank	f	2023-06-13 14:28:22.049769
1826	4	Balkancar	f	2023-06-13 18:33:35.997819
379	6	Howo	f	2023-06-13 18:33:36.067813
1983	3	Finval	f	2023-06-13 18:33:36.451268
2873	5	Fluid	f	2023-06-13 18:33:38.676377
3770	4	ЧМЗ	f	2023-06-13 18:33:39.109652
1982	5	Panav	f	2023-06-13 20:40:42.766829
1870	5	Kassbohrer	f	2023-06-13 20:40:43.587518
1764	10	Hinomoto	f	2023-06-13 20:40:45.764492
1778	4	Manitou	f	2023-06-13 21:42:05.781106
1898	5	Kempf	f	2023-06-13 21:42:05.819522
2940	10	Кировец	f	2023-06-13 21:42:07.411592
1680	3	Tohatsu	f	2023-06-13 21:42:07.529852
55053	2	BSE	f	2023-06-13 23:27:37.747625
6108	5	ПГМФ	f	2023-06-13 23:53:24.710967
8	1	Bentley	f	2023-06-13 23:53:25.044841
1882	5	Сантей	f	2023-06-14 09:54:12.339116
121	1	FAW	f	2023-06-14 11:19:09.860652
180	1	Bunge	f	2023-06-14 11:19:10.630071
0	0		f	2023-06-14 11:19:13.182762
386	0	BYD	f	2023-06-14 11:19:14.744707
155	0	НИВА (Ростсельмаш*)	f	2023-06-14 11:19:18.463496
1893	5	Fliegl	f	2023-06-14 17:04:37.457294
3980	4	Kennis	f	2023-06-14 22:12:37.976154
2378	10	ЗМ	f	2023-06-14 22:12:38.003026
3246	10	ПС	f	2023-06-14 22:12:39.390647
313	2	Piaggio	f	2023-06-14 22:12:40.131848
188	1	Богдан	f	2023-06-14 22:29:27.880888
1901	5	Lamberet	f	2023-06-14 22:29:27.896377
1014	2	Aprilia	f	2023-06-15 00:16:56.1348
171	2	Днепр (КМЗ)	f	2023-06-15 00:16:56.899007
167	7	Ikarus	f	2023-06-15 00:16:57.849965
3268	1	Scion	f	2023-06-15 00:16:58.787183
2161	8	Adria	f	2023-06-15 00:16:58.853109
4713	10	КСТ	f	2023-06-15 01:16:03.049074
1590	4	JCB	f	2023-06-15 01:16:03.113372
2059	5	Feldbinder	f	2023-06-15 01:16:03.160109
160	7	ЛАЗ	f	2023-06-15 01:16:06.05582
1100	2	Kanuni	f	2023-06-15 01:16:06.42602
2130	5	STAS	f	2023-06-15 11:45:20.37173
4514	7	Solaris	f	2023-06-15 11:45:21.960946
187	6	Foton	f	2023-06-15 11:45:24.405443
1614	10	Massey Ferguson	f	2023-06-15 13:21:42.153668
127	1	Hummer	f	2023-06-15 21:34:11.534199
378	7	Neoplan	f	2023-06-15 21:34:12.352518
1904	5	MEGA	f	2023-06-15 21:34:12.40863
1078	2	Harley-Davidson	f	2023-06-15 21:34:12.642943
3389	3	Azura	f	2023-06-17 03:15:17.560668
6216	5	EXO	f	2023-06-17 03:15:18.2815
1865	5	Fruehauf	f	2023-06-19 12:12:03.066634
2162	8	Burstner	f	2023-06-19 12:12:03.660968
1950	5	Zaslaw	f	2023-06-19 18:18:34.239906
1735	4	ВгТЗ	f	2023-06-19 18:18:34.268065
2218	2	Рига	f	2023-06-20 11:39:48.089575
165	0	Другое	f	2023-06-20 11:39:48.568986
1552	3	Navigator	f	2023-06-20 11:39:53.14687
1925	5	ВАРЗ	f	2023-06-20 11:39:53.151908
1920	5	Viberti	f	2023-06-20 11:39:53.27511
2063	6	Astra	f	2023-06-20 15:37:33.768397
124	1	Great Wall	f	2023-06-20 15:37:54.87819
162	10	Комбайн	f	2023-06-20 15:37:57.206595
4707	4	PPM	f	2023-06-29 11:19:00.691406
\.


--
-- Data for Name: models; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.models (id, name, category_id, mark_id, added_by_sync, created_at) FROM stdin;
92	5240	4	1689	f	2023-06-08 14:17:07.118013
161	lanos	1	18	f	2023-06-08 16:10:48.863099
652	octavia	1	70	f	2023-06-08 16:10:49.18951
60810	tx-66	10	1696	f	2023-06-08 16:10:49.261211
3197	v50	1	85	f	2023-06-08 17:55:29.328177
96	x5	1	9	f	2023-06-08 17:55:29.394846
49	a6	1	6	f	2023-06-08 17:55:29.411767
702	corolla	1	79	f	2023-06-08 17:55:29.427295
42148	zoe	1	62	f	2023-06-08 17:55:29.429033
34528	talento-pass	1	23	f	2023-06-08 17:55:29.429612
47858	model-3	1	2233	f	2023-06-08 17:55:29.429968
35252	vito	1	48	f	2023-06-08 17:55:29.430963
239	fiesta	1	24	f	2023-06-08 17:55:29.43517
327	sportage	1	33	f	2023-06-08 17:55:29.436782
64461	transporter	6	84	f	2023-06-08 17:55:29.426592
38653	pl	5	3160	f	2023-06-08 17:55:29.440227
44183	sq5	1	6	f	2023-06-08 17:55:29.462214
586	megane	1	62	f	2023-06-08 17:55:29.466423
588	scenic	1	62	f	2023-06-08 17:55:29.464354
60014	trafic	1	62	f	2023-06-08 17:55:29.646012
35449	golf	1	84	f	2023-06-08 17:55:29.647519
240	focus	1	24	f	2023-06-08 17:55:29.65143
423	a-class	1	48	f	2023-06-08 17:55:29.665402
269	cr-v	1	28	f	2023-06-08 17:55:29.70749
1038	aveo	1	13	f	2023-06-08 17:55:29.713665
1049	equinox	1	13	f	2023-06-08 17:55:29.719903
39690	passat	1	84	f	2023-06-08 17:55:29.730072
27363	rxp	3	1471	f	2023-06-08 18:07:48.339842
265	civic	1	28	f	2023-06-08 19:11:55.435887
27504	gsx	2	76	f	2023-06-08 19:11:55.447373
35649	sandero-stepway	1	62	f	2023-06-08 19:11:55.453224
38066	6	1	49	f	2023-06-08 19:11:55.454791
48342	ln-series	6	48	f	2023-06-08 19:11:55.454892
457	lancer	1	52	f	2023-06-08 19:11:55.455653
65085	1500-sl	1	88	f	2023-06-08 19:11:55.455531
849	2104	1	88	f	2023-06-08 19:11:55.468821
35396	transit	6	24	f	2023-06-08 19:11:55.673529
2053	altea	1	67	f	2023-06-08 19:11:55.678446
1692	3	1	47	f	2023-06-08 19:11:55.688664
1311	cerato	1	33	f	2023-06-08 19:11:55.756674
546	cayenne	1	59	f	2023-06-08 19:11:55.757834
649	fabia	1	70	f	2023-06-08 19:11:55.758564
35249	sprinter	6	48	f	2023-06-08 19:11:55.764832
498	primera	1	55	f	2023-06-08 19:11:55.770663
59400	sq8	1	6	f	2023-06-08 19:11:55.844787
50240	proace	6	79	f	2023-06-08 19:11:55.856779
17988	55111	6	97	f	2023-06-08 19:11:55.868762
3451	c-crosser	1	15	f	2023-06-08 19:11:55.909907
24932	juke	1	55	f	2023-06-08 19:11:55.953812
25418	renegade	2	1471	f	2023-06-08 19:12:13.675697
855	21099	1	88	f	2023-06-08 19:12:13.685622
1875	premium	4	62	f	2023-06-08 19:12:13.703633
2319	5-series	1	9	f	2023-06-08 19:12:13.726238
1902	tiggo	1	190	f	2023-06-08 19:12:13.728129
59956	expert	1	58	f	2023-06-08 19:12:13.747733
31670	tgs	4	177	f	2023-06-08 19:12:13.799021
793	touareg	1	84	f	2023-06-08 19:12:14.004266
1052	lacetti	1	13	f	2023-06-08 19:12:14.006686
2622	b-class	1	48	f	2023-06-08 19:12:14.012181
1524	zafira	1	56	f	2023-06-08 19:12:14.270595
1509	calibra	1	56	f	2023-06-08 19:12:14.274308
2544	captiva	1	13	f	2023-06-08 19:12:14.290011
326	sorento	1	33	f	2023-06-08 19:12:14.289697
494	micra	1	55	f	2023-06-08 19:12:14.291052
46833	master	6	62	f	2023-06-08 19:12:14.368738
34907	doblo-pass	1	23	f	2023-06-08 19:12:14.368289
323	rio	1	33	f	2023-06-08 19:12:14.413254
393	6	1	47	f	2023-06-08 19:12:14.415126
351	range-rover	1	37	f	2023-06-08 19:12:14.419945
854	2109	1	88	f	2023-06-08 19:12:14.419333
35004	land-cruiser-prado	1	79	f	2023-06-08 19:12:14.419671
35399	lt	1	84	f	2023-06-08 19:12:14.472419
434	v-class	1	48	f	2023-06-08 19:12:14.685959
2842	compass	1	32	f	2023-06-08 19:12:14.698197
2087	amulet	1	190	f	2023-06-08 19:12:14.959198
3006	cc-passat-cc	1	84	f	2023-06-08 19:12:14.960513
2970	sierra	1	24	f	2023-06-08 19:12:14.965762
46829	fx-35	1	128	f	2023-06-08 19:12:14.967996
1508	astra	1	56	f	2023-06-08 19:12:14.997355
425	c-class	1	48	f	2023-06-08 19:12:14.998631
44297	300-s	1	14	f	2023-06-08 19:12:15.073514
246	mondeo	1	24	f	2023-06-08 19:12:15.103176
526	307	1	58	f	2023-06-08 19:12:15.103427
3187	kyron	1	73	f	2023-06-08 19:12:15.126986
62436	sko-24	5	55075	f	2023-06-08 19:12:15.132223
31184	d120	6	2077	f	2023-06-08 19:12:15.160629
32609	8160	5	2126	f	2023-06-08 19:12:15.308637
3185	grand-scenic	1	62	f	2023-06-08 19:12:15.323335
27108	500	2	1231	f	2023-06-08 19:12:15.329327
62872	ht-150t-30	2	55102	f	2023-06-08 19:12:15.329634
30775	1140	1	89	f	2023-06-09 10:05:46.403541
1772	53-gruz	6	91	f	2023-06-09 10:05:46.545118
3460	a6-allroad	1	6	f	2023-06-09 10:05:46.699035
861	2115-samara	1	88	f	2023-06-09 10:05:46.699607
428	e-class	1	48	f	2023-06-09 10:05:46.765374
852	2107	1	88	f	2023-06-09 10:05:46.765735
59443	jumpy	1	15	f	2023-06-09 10:05:46.765109
929	3302-gazel	6	91	f	2023-06-09 10:05:46.796214
1176	tourneo-connect	1	24	f	2023-06-09 10:05:46.814869
44838	i3	1	9	f	2023-06-09 10:05:46.815832
128	c3	1	15	f	2023-06-09 10:05:46.893358
237	escort	0	24	f	2023-06-09 10:05:47.270849
635	ibiza	1	67	f	2023-06-09 10:05:47.385853
35257	1102-tavriya	1	89	f	2023-06-09 10:05:47.421631
58908	jog-sa36j	2	179	f	2023-06-09 10:05:47.490939
1307	avella	1	33	f	2023-06-09 10:07:59.277252
2197	qashqai	1	55	f	2023-06-09 10:07:59.401829
2874	kuga	1	24	f	2023-06-09 10:07:59.426455
37381	cx-5	1	47	f	2023-06-09 10:07:59.446312
846	2101	1	88	f	2023-06-09 10:07:59.463811
2170	actros	6	48	f	2023-06-09 10:07:59.471543
1177	transit-gruz	0	24	f	2023-06-09 10:07:59.504509
1523	vectra	1	56	f	2023-06-09 10:07:59.516027
698	camry	1	79	f	2023-06-09 10:07:59.616918
32931	c3-picasso	1	15	f	2023-06-09 10:07:59.645058
43047	2008	1	58	f	2023-06-09 10:07:59.672032
1866	x3	1	9	f	2023-06-09 10:07:59.74367
28035	yfm	2	179	f	2023-06-09 10:08:00.15963
785	jetta	1	84	f	2023-06-09 10:08:00.302055
1554	logan	1	62	f	2023-06-09 10:08:00.588585
64668	forza-125	2	28	f	2023-06-09 10:08:00.803466
2040	auris	1	79	f	2023-06-09 10:08:01.069032
3798	antara	1	56	f	2023-06-09 10:08:01.074309
32103	multivan	1	84	f	2023-06-09 10:08:01.082399
857	2111	1	88	f	2023-06-09 10:08:01.095253
1946	mkz	1	135	f	2023-06-09 10:08:01.127956
2145	epica	1	13	f	2023-06-09 10:08:01.203251
293	santa-fe	1	29	f	2023-06-09 10:08:01.236652
1556	modus	1	62	f	2023-06-09 10:08:01.3009
3569	lanos	1	89	f	2023-06-09 10:08:01.372475
1559	symbol	1	62	f	2023-06-09 23:04:58.6571
18490	7-series	1	9	f	2023-06-09 23:04:58.725603
872	1103-slavuta	1	89	f	2023-06-09 23:04:58.727893
1975	note	1	55	f	2023-06-09 23:04:58.814357
35025	sl	5	2719	f	2023-06-10 11:33:41.643028
61716	kis-3w-a	5	1886	f	2023-06-10 11:33:41.753472
37865	18-440	6	177	f	2023-06-11 19:51:44.712437
31595	daily-gruz	6	175	f	2023-06-11 19:51:44.901193
45165	s3	1	317	f	2023-06-11 19:51:47.091312
55534	xtz-750-super-tenere	2	179	f	2023-06-12 23:20:52.740553
3490	manager	6	62	f	2023-06-12 23:20:52.762681
64884	nc-750x	2	28	f	2023-06-13 23:27:38.59868
398	mx-3	1	47	f	2023-06-13 23:27:38.848105
2534	mk	1	185	f	2023-06-13 23:27:39.525237
55289	z-1000	2	176	f	2023-06-13 23:27:39.801175
31040	ffb	5	2059	f	2023-06-15 01:16:03.16149
55340	sx-250f	2	1104	f	2023-06-15 01:16:06.045787
35122	8118	5	2126	f	2023-06-15 01:16:06.375281
40107	sport	2	1100	f	2023-06-15 01:16:06.427415
127	bx	0	15	f	2023-06-20 11:39:48.154365
262	accord	1	28	f	2023-06-09 23:04:58.761117
62695	300rr	2	55131	f	2023-06-09 23:04:58.89873
35772	emgrand-7-ec7	1	185	f	2023-06-09 23:04:59.142841
1757	21	1	91	f	2023-06-11 19:51:44.712955
165	nexia	1	18	f	2023-06-11 19:51:44.882638
3570	sens	1	89	f	2023-06-11 19:51:44.921686
295	sonata	1	29	f	2023-06-11 19:51:44.930123
58252	sp-110c-2c	2	1554	f	2023-06-11 19:51:44.987429
3117	range-rover-sport	1	37	f	2023-06-11 19:51:45.807521
2533	ck	1	185	f	2023-06-11 19:51:46.296623
672	grand-vitara	1	76	f	2023-06-11 19:51:47.112894
40486	208	1	58	f	2023-06-12 23:20:52.934853
3108	challenger	1	118	f	2023-06-12 23:20:52.946944
35717	balius	2	176	f	2023-06-12 23:20:54.871631
35701	gladius	2	76	f	2023-06-13 23:53:24.534921
3898	fluence	1	62	f	2023-06-13 23:53:24.717524
40743	azw	5	1873	f	2023-06-15 01:16:03.688998
1669	supernova	1	17	f	2023-06-15 01:16:07.282108
1617	drugaya	0	165	f	2023-06-20 11:39:48.575409
932	2705-gazel	6	91	f	2023-06-20 11:39:49.919987
40567	22r10	5	1920	f	2023-06-20 11:39:53.277004
36632	bpw	5	1873	f	2023-06-20 11:39:53.887107
663	forester	1	75	f	2023-06-09 23:04:58.766047
35999	g37	1	128	f	2023-06-09 23:04:58.878056
30591	rapid	10	2024	f	2023-06-09 23:04:58.896827
45132	qx60	1	128	f	2023-06-11 19:51:46.378211
781	bora	1	84	f	2023-06-11 19:51:47.056825
35223	getz	1	29	f	2023-06-11 19:51:47.136059
2119	stralis	4	175	f	2023-06-11 19:51:47.773516
2161	1-series	1	9	f	2023-06-13 14:26:21.535929
2284	a-079-etalon	7	326	f	2023-06-13 14:26:21.715069
61627	8304	5	6108	f	2023-06-13 23:53:24.714351
62408	jx35	1	128	f	2023-06-13 23:53:24.828516
83	continental	1	8	f	2023-06-13 23:53:25.050967
714	prius	1	79	f	2023-06-15 01:16:06.41714
2034	teana	1	55	f	2023-06-15 01:16:06.42926
1575	rapid	1	70	f	2023-06-15 01:16:06.580967
1959	159	1	3	f	2023-06-15 01:16:07.281224
17929	fh	0	85	f	2023-06-20 11:39:49.477681
2264	xf	1	31	f	2023-06-09 23:04:58.803997
26614	mxu	2	1105	f	2023-06-11 19:51:46.411161
30551	tgx	6	177	f	2023-06-11 19:51:46.781216
58455	venue	1	29	f	2023-06-11 19:51:48.077432
3671	nlr	6	30	f	2023-06-13 14:26:21.541373
55492	gear-4t	2	179	f	2023-06-13 14:26:21.714715
43029	3-series-gt	1	9	f	2023-06-13 14:26:21.777716
45321	renegade	1	32	f	2023-06-14 09:54:10.18902
1526	407	0	58	f	2023-06-14 09:54:10.404202
40442	c-elysee	1	15	f	2023-06-14 09:54:13.511165
1350	navigator	1	135	f	2023-06-15 11:45:20.148922
34265	alum	5	2130	f	2023-06-15 11:45:20.380453
49169	x7	1	9	f	2023-06-15 11:45:20.467218
3050	3-hatchback	0	47	f	2023-06-15 11:45:23.480604
39386	bj	6	187	f	2023-06-15 11:45:24.407838
406	xedos	1	47	f	2023-06-20 11:39:49.693143
64469	golf-gte	1	84	f	2023-06-20 11:39:53.104885
47959	500	3	1552	f	2023-06-20 11:39:53.149126
31036	nps	5	1925	f	2023-06-20 11:39:53.156468
1193	taurus	1	24	f	2023-06-09 23:04:58.805884
860	2114-samara	1	88	f	2023-06-12 01:52:04.022058
48736	r2	1	4681	f	2023-06-12 01:52:04.163767
2908	xc60	1	85	f	2023-06-12 01:52:04.199007
46	a3	1	6	f	2023-06-12 01:52:04.413092
2692	tiguan	1	84	f	2023-06-12 01:52:04.71627
696	avensis	1	79	f	2023-06-12 01:52:05.222801
46505	altea-xl	1	67	f	2023-06-12 01:52:05.459224
44727	5-series-gt	1	9	f	2023-06-12 01:52:05.534345
2834	genesis	1	29	f	2023-06-13 14:26:21.550534
1054	malibu	1	13	f	2023-06-13 14:26:21.676676
49962	stelvio	1	3	f	2023-06-13 14:26:21.699863
290	matrix	1	29	f	2023-06-14 09:54:10.22929
897	2141-svyatogor	0	94	f	2023-06-14 09:54:10.456286
55769	h-200	1	29	f	2023-06-14 09:54:11.928093
28216	jl	1	185	f	2023-06-14 09:54:14.00658
35365	ducato	1	23	f	2023-06-14 09:54:17.516386
3208	doblo-panorama	1	23	f	2023-06-15 11:45:20.366461
35715	tricker	2	179	f	2023-06-15 11:45:21.886831
47583	urbino	7	4514	f	2023-06-15 11:45:21.962766
60548	movano	6	56	f	2023-06-15 11:45:22.647806
41978	sa	5	2719	f	2023-06-15 11:45:24.395292
51759	karoq	1	70	f	2023-06-20 15:37:33.786745
31546	scudo-pass	1	23	f	2023-06-09 23:04:58.823466
358	rx	1	38	f	2023-06-09 23:04:58.878844
61149	2-series-gran-tourer	1	9	f	2023-06-12 01:52:04.194752
509	kadett	1	56	f	2023-06-12 01:52:04.222721
3248	venza	1	79	f	2023-06-12 01:52:04.265169
1428	t1	6	48	f	2023-06-13 14:26:21.647301
43023	2-series	1	9	f	2023-06-13 14:26:21.694371
504	sunny	1	55	f	2023-06-13 14:26:21.7237
17073	cargo	6	24	f	2023-06-14 09:54:10.382015
62145	express	1	13	f	2023-06-14 09:54:11.993269
407	190	0	48	f	2023-06-14 09:54:12.271272
1832	avalon	0	79	f	2023-06-14 09:54:14.109936
0		0	9	f	2023-06-14 09:54:17.531921
31169	lt-gruz	6	84	f	2023-06-15 11:45:21.13414
37692	jx	1	128	f	2023-06-15 11:45:22.005479
34702	ca	6	121	f	2023-06-15 11:45:23.592856
1910	fj-cruiser	0	79	f	2023-06-15 11:45:23.64504
3222	q5	1	6	f	2023-06-09 23:04:58.825098
59440	berlingo	6	15	f	2023-06-12 01:52:04.266472
44043	x-ride	2	1976	f	2023-06-12 01:52:04.380647
62839	zs-200a	2	1201	f	2023-06-12 01:52:04.947148
36922	v60	1	85	f	2023-06-13 14:28:19.574774
824	xc90	1	85	f	2023-06-13 14:28:19.677742
53478	c3-aircross	1	15	f	2023-06-13 14:28:20.786082
62940	xy-250gy-6c	2	1572	f	2023-06-13 14:28:20.886283
34521	exeo	1	67	f	2023-06-14 09:54:12.218468
1734	968	0	89	f	2023-06-14 09:54:12.335522
31023	750-111	5	1882	f	2023-06-14 09:54:12.342152
31181	vito-pass	1	48	f	2023-06-14 09:54:17.619847
930	3221-gazel	0	91	f	2023-06-15 11:45:22.725832
278	prelude	0	28	f	2023-06-15 11:45:23.407713
36512	aero-city	1	29	f	2023-06-15 11:45:23.630644
57410	telluride	1	33	f	2023-06-20 15:37:53.873286
37765	5008	1	58	f	2023-06-09 23:04:58.831021
792	sharan	1	84	f	2023-06-09 23:04:59.292972
63592	explorer-sport-trac	1	24	f	2023-06-09 23:04:59.471227
651	felicia	1	70	f	2023-06-09 23:04:59.590566
29496	21213-niva	1	88	f	2023-06-09 23:04:59.917772
843	1118-kalina	1	88	f	2023-06-09 23:05:00.022864
58910	cb-1	2	28	f	2023-06-12 01:52:04.402458
1606	pricep	0	154	f	2023-06-13 14:28:19.760721
49303	pc	5	1886	f	2023-06-13 14:28:21.395102
62906	m-nv	1	28	f	2023-06-13 14:28:21.684763
62143	astro	1	13	f	2023-06-14 09:54:12.257996
31495	t4-transporter-gruz	0	84	f	2023-06-14 09:54:13.921379
60435	qubo	1	23	f	2023-06-14 09:54:14.119802
2996	vectra-c	0	56	f	2023-06-14 09:54:17.550052
60451	sd-27	5	1873	f	2023-06-15 11:45:23.340993
62955	song-plus	1	386	f	2023-06-20 15:37:53.874089
431	s-class	1	48	f	2023-06-09 23:04:58.879707
1642	sens	1	18	f	2023-06-09 23:04:59.184879
59444	nemo	1	15	f	2023-06-09 23:04:59.293251
51905	b	8	2159	f	2023-06-09 23:04:59.30849
1840	optima	1	33	f	2023-06-09 23:04:59.472898
3121	insignia	1	56	f	2023-06-09 23:04:59.88311
241	fusion	1	24	f	2023-06-09 23:05:01.270577
57035	sr34es	5	1903	f	2023-06-09 23:05:02.144238
40995	issen	2	1976	f	2023-06-09 23:05:02.670643
31943	an	5	1872	f	2023-06-12 01:52:05.394326
1895	gx	1	38	f	2023-06-12 01:52:05.741011
887	3110	1	91	f	2023-06-12 01:52:06.015428
3487	c4-picasso	1	15	f	2023-06-12 01:52:06.026064
452	colt	1	52	f	2023-06-12 01:52:06.191795
57812	aqua	1	79	f	2023-06-13 14:28:21.686737
47974	fh-13	6	85	f	2023-06-13 14:28:21.761645
38480	1221-2-belarus	10	1584	f	2023-06-13 14:28:22.269049
31180	vito-gruz	1	48	f	2023-06-14 11:19:09.383994
2706	11055	1	89	f	2023-06-14 11:19:09.398765
1475	grandis	0	52	f	2023-06-14 11:19:09.998525
2370	pikap	1	180	f	2023-06-14 11:19:10.6355
35447	boxer	0	58	f	2023-06-14 11:19:12.711384
100	z8	0	9	f	2023-06-14 11:19:12.942295
1607	sk5	0	155	f	2023-06-14 11:19:18.470207
2635	grande-punto	1	23	f	2023-06-15 13:21:38.038286
42507	panigale	2	1060	f	2023-06-15 13:21:42.279963
937	31105	1	91	f	2023-06-20 15:37:53.878455
568	19	1	62	f	2023-06-20 15:37:53.885842
32987	45	6	115	f	2023-06-09 23:04:58.902
28998	460	4	1588	f	2023-06-12 01:52:05.476154
58254	sp-200r-25i	2	1554	f	2023-06-12 01:52:06.364219
32123	xxl	3	1660	f	2023-06-12 01:52:06.391131
3042	grand-vitara-5d	0	76	f	2023-06-13 14:28:21.688947
62633	fabia-scout	1	70	f	2023-06-13 14:28:21.697094
2312	electric-drive	2	151	f	2023-06-13 14:28:22.053393
502	skyline	0	55	f	2023-06-14 11:19:09.458661
882	24	0	91	f	2023-06-14 11:19:09.475191
3401	1061	1	121	f	2023-06-14 11:19:09.867698
2772	i30	1	29	f	2023-06-14 11:19:10.189854
55190	sh-300i	2	28	f	2023-06-14 11:19:12.397155
2450	14	1	91	f	2023-06-14 11:19:12.770453
394	626	0	47	f	2023-06-14 11:19:13.259597
2377	new-beetle	0	84	f	2023-06-14 11:19:14.581417
250	scorpio	0	24	f	2023-06-14 11:19:15.76039
28746	892-belarus	10	1584	f	2023-06-15 13:21:38.026943
28605	350	10	1583	f	2023-06-20 15:37:53.884996
33643	s175	4	1618	f	2023-06-09 23:04:59.142604
1460	cooper	1	147	f	2023-06-09 23:04:59.296594
1944	caliber	1	118	f	2023-06-12 01:52:06.020315
3086	elantra	1	29	f	2023-06-12 01:52:06.866726
51933	kona	1	29	f	2023-06-13 18:33:35.957175
29330	dv	4	1826	f	2023-06-13 18:33:36.17928
44712	t-130	4	3770	f	2023-06-13 18:33:39.118841
713	previa	0	79	f	2023-06-14 11:19:14.57809
2890	f3	0	386	f	2023-06-14 11:19:14.74863
810	850	0	85	f	2023-06-14 11:19:14.791478
1715	glc-400	0	48	f	2023-06-14 11:19:15.253307
35002	land-cruiser-200	0	79	f	2023-06-14 11:19:15.763669
55968	sr34e	5	1903	f	2023-06-15 13:21:38.024272
60020	hd9	6	2063	f	2023-06-20 15:37:53.981313
1869	hover	1	124	f	2023-06-20 15:37:54.926995
1890	logan	1	17	f	2023-06-09 23:04:59.298417
856	2110	1	88	f	2023-06-09 23:04:59.882639
1059	niva	1	13	f	2023-06-09 23:04:59.889858
43718	spaceback	1	70	f	2023-06-12 01:52:07.00633
432	sl-class	1	48	f	2023-06-13 18:33:35.960982
46103	s-690	10	1583	f	2023-06-14 17:04:37.104853
1637	tavriya	0	180	f	2023-06-15 13:21:38.069779
3327	rx-usa	1	38	f	2023-06-20 15:37:54.05485
44589	sdk	5	1873	f	2023-06-20 15:37:55.076205
853	2108	1	88	f	2023-06-09 23:04:59.298481
2093	touran	1	84	f	2023-06-12 11:45:17.422529
55094	streetfighter-848	2	1060	f	2023-06-12 11:45:17.5868
3588	cruze	1	13	f	2023-06-12 11:45:17.627878
45537	maybach	1	48	f	2023-06-12 11:45:17.682431
28963	16	10	1698	f	2023-06-12 11:45:17.696213
2010	cx-9	1	47	f	2023-06-12 11:45:17.70337
18381	xf-95	1	115	f	2023-06-12 11:45:18.444832
31365	fruehauf	5	1855	f	2023-06-12 11:45:18.748559
40104	ats	1	11	f	2023-06-12 11:45:19.001802
30503	duster	1	62	f	2023-06-12 11:45:19.369238
43670	zz5707	6	379	f	2023-06-13 18:33:36.194891
349	freelander	1	37	f	2023-06-14 17:04:37.13791
1886	969-volyn	1	189	f	2023-06-15 13:21:38.603052
60038	legkovoj	5	6108	f	2023-06-20 15:37:54.859486
2035	sx4	1	76	f	2023-06-09 23:04:59.298972
55447	sv-650	2	76	f	2023-06-12 11:45:17.432206
58260	k5	1	33	f	2023-06-12 11:45:17.745111
3803	20	7	408	f	2023-06-12 11:45:18.209558
2222	columbia	0	314	f	2023-06-12 11:45:19.341694
1478	l-200	1	52	f	2023-06-12 11:45:19.377874
44760	475	3	1983	f	2023-06-13 18:33:36.454792
2032	a5	1	6	f	2023-06-13 18:33:37.295411
59894	combo	1	56	f	2023-06-13 18:33:38.152514
52658	csp	5	2873	f	2023-06-13 18:33:38.683022
38372	xv	1	75	f	2023-06-14 17:04:37.144011
31575	amarok	1	84	f	2023-06-14 17:04:37.483378
31282	2141	1	94	f	2023-06-14 17:04:38.675626
3462	65115	6	97	f	2023-06-14 17:04:39.752399
2771	i20	1	29	f	2023-06-14 17:04:40.313762
30851	316	1	9	f	2023-06-15 13:21:38.696608
28798	186	10	1614	f	2023-06-15 13:21:42.155902
37675	diavel	2	1060	f	2023-06-20 15:37:54.991966
1485	outlander	1	52	f	2023-06-09 23:04:59.299297
2685	pajero-sport	1	52	f	2023-06-12 11:45:17.439393
31636	2170-priora	1	88	f	2023-06-13 18:33:37.205965
3166	sandero	1	17	f	2023-06-13 18:33:37.226045
29015	8230	10	1583	f	2023-06-13 18:33:37.290398
28530	npr	4	30	f	2023-06-13 18:33:37.807057
60099	cayenne-coupe	1	59	f	2023-06-13 18:33:38.064575
2175	403	1	94	f	2023-06-13 18:33:38.116987
36739	saf	5	1873	f	2023-06-13 18:33:38.38694
55307	zzr-600	2	176	f	2023-06-13 18:33:38.964619
56316	sds-350	5	1893	f	2023-06-14 17:04:37.459504
1912	5	1	47	f	2023-06-14 17:04:38.360638
2017	t2-609-pass	0	48	f	2023-06-15 13:21:42.1279
1785	5410	1	97	f	2023-06-15 13:21:42.199688
356	ls	0	38	f	2023-06-15 13:21:42.439439
40154	countryman	1	147	f	2023-06-20 15:37:55.00735
60206	lafet	5	2046	f	2023-06-09 23:04:59.30366
2659	tga	4	177	f	2023-06-12 11:45:17.45351
49491	forte	1	33	f	2023-06-12 11:45:17.789641
122	voyager	1	14	f	2023-06-12 11:45:18.461016
2109	308	1	58	f	2023-06-12 11:45:18.945946
919	3303	6	93	f	2023-06-12 11:45:20.13391
28290	fortwo	1	71	f	2023-06-13 18:33:37.223689
60426	crafter	6	84	f	2023-06-13 18:33:37.29071
3817	45142	6	97	f	2023-06-14 17:04:37.468143
53173	ascent	1	75	f	2023-06-14 17:04:38.964795
47087	zz-inch-up-sport	2	76	f	2023-06-14 17:04:40.726059
1426	mb-class	0	48	f	2023-06-15 13:21:42.132199
1514	frontera	0	56	f	2023-06-15 13:21:42.334296
81	azure	0	8	f	2023-06-20 15:37:56.636527
1795	fortschritt	10	162	f	2023-06-20 15:37:57.20838
44037	4-series-gran-coupe	1	9	f	2023-06-09 23:04:59.535655
62310	a5-sportback	1	6	f	2023-06-09 23:04:59.543319
1268	tucson	1	29	f	2023-06-09 23:04:59.659942
1310	carnival	1	33	f	2023-06-12 11:45:17.579136
1247	pilot	0	28	f	2023-06-12 11:45:17.697468
650	favorit	1	70	f	2023-06-12 11:45:17.712892
1939	rdx	1	98	f	2023-06-12 11:45:17.927154
28189	grand-prix	2	1201	f	2023-06-12 11:45:18.195359
492	maxima	0	55	f	2023-06-12 11:45:18.619616
3009	octavia-scout	1	70	f	2023-06-12 11:45:18.94758
3597	x1	1	9	f	2023-06-12 11:45:19.232523
3156	t5-transporter-gruz	0	84	f	2023-06-13 18:33:37.578705
1710	cl-class	1	48	f	2023-06-14 17:04:37.478812
42241	rlx	1	98	f	2023-06-14 17:04:38.097492
58579	tact-af-51	2	28	f	2023-06-14 17:04:38.606875
3340	jog	2	179	f	2023-06-15 21:34:11.300097
56705	xl-1200x	2	1078	f	2023-06-15 21:34:13.349221
38347	brz	1	75	f	2023-06-15 21:34:13.399541
529	405	1	58	f	2023-06-20 15:37:57.181252
53490	21214-4x4	1	88	f	2023-06-09 23:04:59.890103
53103	logan-mcv	1	17	f	2023-06-09 23:04:59.942791
32251	525	1	9	f	2023-06-12 11:45:17.590548
915	31512	0	93	f	2023-06-12 11:45:17.965752
42221	avenger	2	3662	f	2023-06-12 11:45:18.216794
3660	cerato-koup	1	33	f	2023-06-12 11:45:18.564842
51	a8	1	6	f	2023-06-12 11:45:18.96998
41418	largus	1	88	f	2023-06-13 18:33:38.042555
63603	spring	1	17	f	2023-06-13 18:33:38.196064
116	grand-voyager	1	14	f	2023-06-13 18:33:38.959022
55187	pcx-125	2	28	f	2023-06-14 22:12:37.861606
49289	16000	4	3980	f	2023-06-14 22:12:37.999097
32372	60	10	2378	f	2023-06-14 22:12:38.010225
2045	h3	1	127	f	2023-06-15 21:34:11.537334
56805	sko-24	5	1877	f	2023-06-15 21:34:14.721804
1898	tiida-hatchback-5d	0	55	f	2023-06-20 15:37:57.187029
892	412-2125	0	92	f	2023-06-20 15:37:57.215447
45465	26-360	6	177	f	2023-06-20 15:37:59.272031
2770	i10	1	29	f	2023-06-09 23:04:59.942957
666	legacy	1	75	f	2023-06-12 18:41:06.08865
1945	edge	1	24	f	2023-06-13 18:33:39.015515
46827	fx-30	1	128	f	2023-06-14 22:12:37.875445
58321	dio-af-35	2	28	f	2023-06-14 22:12:37.903844
43940	h-1	1	29	f	2023-06-14 22:12:40.132134
35948	150	2	1201	f	2023-06-14 22:12:40.192457
682	vitara	1	76	f	2023-06-14 22:12:40.70878
3457	a4-allroad	1	6	f	2023-06-14 22:12:42.213734
3404	n-316	7	378	f	2023-06-15 21:34:12.355488
30112	heritage-softail	2	1078	f	2023-06-15 21:34:12.645628
15721	32213-gazel	7	91	f	2023-06-15 21:34:13.400367
2320	cefiro	1	55	f	2023-06-09 23:05:00.015542
35448	caddy	1	84	f	2023-06-09 23:05:01.732968
57514	cf-85	6	115	f	2023-06-12 18:41:06.096333
34395	pantera	2	1976	f	2023-06-12 18:41:06.597454
26270	350	2	1487	f	2023-06-12 18:41:07.290892
3811	3-5tt	4	1458	f	2023-06-12 18:41:07.336155
55486	fz8	2	179	f	2023-06-12 18:41:08.301903
1671	95	6	115	f	2023-06-12 18:41:08.955006
844	1119-kalina	1	88	f	2023-06-13 20:40:42.656483
32378	a7-sportback	1	6	f	2023-06-14 22:12:38.003627
56926	ft-200	2	3164	f	2023-06-14 22:12:39.383066
38616	10	10	3246	f	2023-06-14 22:12:39.408547
55364	nrg-50	2	313	f	2023-06-14 22:12:40.140167
38660	mnw	5	1904	f	2023-06-15 21:34:12.40999
60035	outlander-sport	1	52	f	2023-06-15 21:34:14.736721
56205	vanette	1	55	f	2023-06-09 23:05:00.015888
3219	3-series	1	9	f	2023-06-09 23:05:01.519774
30808	54322	6	159	f	2023-06-09 23:05:02.088619
30939	8355	5	2127	f	2023-06-09 23:05:02.106956
35398	scudo	1	23	f	2023-06-12 18:41:06.190832
28630	1304	4	1587	f	2023-06-12 18:41:06.294952
33391	cruise	2	1941	f	2023-06-12 18:41:06.444278
35853	nw	5	1921	f	2023-06-12 18:41:07.292787
28678	zw	4	1592	f	2023-06-12 18:41:07.438858
681	swift	1	76	f	2023-06-12 18:41:07.990415
2950	glk-class	1	48	f	2023-06-12 18:41:08.004178
58744	250-lite-4t	2	5939	f	2023-06-12 18:41:08.967916
33840	forza	1	89	f	2023-06-13 20:40:42.767769
56291	megane-scenic	1	62	f	2023-06-13 20:40:42.774079
49375	v150a	2	1201	f	2023-06-14 22:12:38.11902
29020	2850	10	1583	f	2023-06-14 22:12:39.41434
3213	m5	1	9	f	2023-06-15 21:34:12.631095
62157	lead-nh-50	2	28	f	2023-06-09 23:05:02.074588
29430	rxt-x	3	1471	f	2023-06-09 23:05:02.108315
391	2	1	47	f	2023-06-12 18:41:06.193101
38293	ilx	1	98	f	2023-06-12 18:41:06.20088
2789	jaggi	1	190	f	2023-06-12 18:41:06.517806
180	terios	1	19	f	2023-06-12 18:41:07.322921
2813	golf-gti	1	84	f	2023-06-12 18:41:08.001111
39590	pk	5	1982	f	2023-06-13 20:40:42.775639
3188	actyon	1	73	f	2023-06-14 22:12:40.383206
640	toledo	1	67	f	2023-06-15 21:34:13.688554
44191	nx	1	38	f	2023-06-09 23:19:29.259571
38901	kkp-3	10	1845	f	2023-06-09 23:19:29.330477
780	beetle	1	84	f	2023-06-09 23:19:29.50879
1835	pathfinder	1	55	f	2023-06-10 22:46:40.439203
39939	p4-f4	4	3520	f	2023-06-12 18:41:06.315539
57384	dokker-pass	1	17	f	2023-06-12 18:41:07.999115
63254	t77	1	55208	f	2023-06-12 18:41:08.277893
1707	magnum	6	62	f	2023-06-12 18:41:08.379409
45133	qx70	1	128	f	2023-06-13 20:40:42.981252
12	147	1	3	f	2023-06-13 20:40:43.563758
540	924	1	59	f	2023-06-13 20:40:44.633836
34614	n189	10	1764	f	2023-06-13 20:40:45.771317
35706	lvfs	5	1901	f	2023-06-14 22:29:27.901706
158	espero	1	18	f	2023-06-17 03:15:16.546957
39501	33029	1	91	f	2023-06-17 03:15:17.615937
62764	99983	5	6216	f	2023-06-17 03:15:18.284984
60071	20-09	4	4707	f	2023-06-29 11:19:00.694785
30188	sdp	5	1873	f	2023-06-29 11:19:01.090757
30187	sn	5	1872	f	2023-06-29 11:19:05.44727
30151	sds	5	1893	f	2023-06-29 11:19:08.521458
45128	q50	1	128	f	2023-06-09 23:19:29.328523
55367	rzr-xp-1000-eps	2	1231	f	2023-06-10 22:46:40.463827
392	323	1	47	f	2023-06-10 22:46:40.583802
3167	superb	1	70	f	2023-06-10 22:46:40.678701
1519	signum	1	56	f	2023-06-10 22:46:41.287775
40472	301	1	58	f	2023-06-10 22:46:41.534909
720	yaris	1	79	f	2023-06-12 18:41:07.786423
48458	eq-fortwo	1	71	f	2023-06-12 18:41:08.060368
430	m-class	1	48	f	2023-06-12 18:41:08.276234
896	2140	1	94	f	2023-06-12 18:41:08.279956
54133	hunter	2	3164	f	2023-06-12 18:41:08.293753
62532	emgrand-ev300	1	185	f	2023-06-12 18:41:08.936495
2472	navara	1	55	f	2023-06-12 18:41:08.948307
55036	k-100	2	9	f	2023-06-13 20:40:43.557461
39693	lb	5	1870	f	2023-06-13 20:40:43.588919
35250	vario	6	48	f	2023-06-13 20:40:43.664262
36194	2111	1	188	f	2023-06-14 22:29:27.889393
43735	x4	1	9	f	2023-06-17 03:15:16.567621
534	605	1	58	f	2023-06-17 03:15:16.691292
27518	lets	2	76	f	2023-06-17 03:15:16.911008
64886	nc-750s	2	28	f	2023-06-17 03:15:17.446782
318	clarus	1	33	f	2023-06-17 03:15:17.523287
1073	town-country	1	14	f	2023-06-17 03:15:17.944909
49899	mlt-731-lsu	4	1778	f	2023-06-29 11:19:00.82008
674	jimny	1	76	f	2023-06-29 11:19:01.811306
1737	vanette-pass	1	55	f	2023-06-29 11:19:01.91524
31112	sprinter-gruz	1	48	f	2023-06-29 11:19:02.015187
1899	qq	1	190	f	2023-06-09 23:19:29.486136
636	leon	1	67	f	2023-06-09 23:19:29.504775
47	a4	1	6	f	2023-06-09 23:19:29.524899
1864	ck1	1	185	f	2023-06-09 23:19:29.812412
314	cherokee	1	32	f	2023-06-10 22:46:40.572964
2033	ceed	1	33	f	2023-06-10 22:46:40.579349
2630	patriot	1	32	f	2023-06-10 22:46:40.584041
1769	66	6	91	f	2023-06-10 22:46:41.537111
2637	kimo	1	190	f	2023-06-10 22:46:42.950517
3630	25	7	408	f	2023-06-10 22:46:43.070001
2547	2172-priora	1	88	f	2023-06-10 22:46:43.216576
64984	trx-420fe1	2	28	f	2023-06-10 22:46:43.233926
28289	forfour	1	71	f	2023-06-12 19:10:52.54198
37293	508	1	58	f	2023-06-13 20:40:44.636699
788	phaeton	1	84	f	2023-06-13 20:40:45.788851
44857	m4	1	9	f	2023-06-14 22:29:27.891636
579	clio	1	62	f	2023-06-17 03:15:16.691075
39864	lc	1	185	f	2023-06-17 03:15:17.382302
39295	520	3	3389	f	2023-06-17 03:15:17.563854
45131	qx50	1	128	f	2023-06-17 03:15:17.942599
463	space-runner	1	52	f	2023-06-17 03:15:18.400141
64096	ens1	1	28	f	2023-06-29 11:19:00.838898
405	xedos-9	0	47	f	2023-06-29 11:19:01.952554
31454	vivaro-gruz	0	56	f	2023-06-29 11:19:02.044997
2963	45143	0	97	f	2023-06-29 11:19:02.083446
36810	35k	4	1582	f	2023-06-29 11:19:02.127565
63765	bz4x	1	79	f	2023-06-29 11:19:05.440949
622	9-3	1	65	f	2023-06-09 23:19:29.486754
585	laguna	1	62	f	2023-06-09 23:19:29.526401
45152	e-golf	1	84	f	2023-06-09 23:19:29.560736
2108	207	1	58	f	2023-06-10 22:46:40.578805
3048	g-class	1	48	f	2023-06-10 22:46:40.794204
851	2106	1	88	f	2023-06-10 22:46:41.507845
53118	tiguan-allspace	1	84	f	2023-06-10 22:46:41.540872
55514	v-star-650	2	179	f	2023-06-10 22:46:41.557763
44322	yzf-r	2	179	f	2023-06-10 22:46:41.570606
789	polo	1	84	f	2023-06-10 22:46:42.948543
43170	gla-class	1	48	f	2023-06-10 22:46:44.195177
60532	cb-600f-hornet	2	28	f	2023-06-12 20:35:34.438327
1775	965	1	89	f	2023-06-12 20:35:35.130603
63711	id-4-crozz	1	84	f	2023-06-13 20:40:44.7619
45955	discovery-sport	1	37	f	2023-06-14 22:29:27.918498
2047	mustang	1	24	f	2023-06-17 03:15:16.768806
49450	mlt-735-120-lsu	4	1778	f	2023-06-29 11:19:07.289838
1758	21412	1	94	f	2023-06-29 11:19:08.646699
38477	82-1-belarus	10	1584	f	2023-06-09 23:19:29.540902
3488	soul	1	33	f	2023-06-09 23:19:29.642241
3438	ck-2	1	185	f	2023-06-10 22:46:40.590218
33041	m11	1	190	f	2023-06-10 22:46:41.323424
42605	up	1	84	f	2023-06-10 22:46:41.528965
847	2102	1	88	f	2023-06-10 22:46:41.55523
49206	sq7	1	6	f	2023-06-10 22:46:42.7257
130	c8	1	15	f	2023-06-10 22:46:42.940776
36589	r-420	6	203	f	2023-06-10 22:46:43.080016
2118	cf	6	115	f	2023-06-10 22:46:43.236447
2098	atego	6	48	f	2023-06-10 22:46:43.600854
2910	27175	1	92	f	2023-06-12 20:35:34.498032
822	v90	1	85	f	2023-06-13 20:40:44.819851
29153	1188	10	1583	f	2023-06-14 22:29:27.928738
60258	ns34kt	5	1921	f	2023-06-17 03:15:16.835568
55493	grizzly-700-fi	2	179	f	2023-06-17 03:15:18.942486
31567	model-s	1	2233	f	2023-06-10 11:33:39.618495
36565	leaf	1	55	f	2023-06-10 11:33:39.826239
3235	journey	1	118	f	2023-06-10 11:33:39.846367
163	matiz	1	18	f	2023-06-10 11:33:39.849027
39748	x	5	2018	f	2023-06-10 11:33:40.072884
1584	rexton	1	73	f	2023-06-10 11:33:40.565765
2331	elf	1	30	f	2023-06-10 11:33:40.647476
1495	altima	1	55	f	2023-06-10 11:33:40.697658
507	x-trail	0	55	f	2023-06-10 11:33:41.565062
43158	macan	1	59	f	2023-06-10 22:46:40.635771
43159	sabur	2	2108	f	2023-06-12 20:35:34.516882
28487	verso	1	79	f	2023-06-12 20:35:34.950593
30874	citan	6	48	f	2023-06-12 20:35:35.105324
129	c5	1	15	f	2023-06-12 20:35:35.157905
2599	c1	1	15	f	2023-06-12 20:35:35.409678
219	doblo	1	23	f	2023-06-12 20:35:35.981498
34879	vision-tour	2	2474	f	2023-06-12 20:35:37.924797
53051	hd-35	6	29	f	2023-06-13 20:40:45.226604
64195	mk-series	6	48	f	2023-06-13 20:40:45.825107
230	tipo	1	23	f	2023-06-14 22:29:27.93162
49222	ateca	1	67	f	2023-06-14 22:29:28.410236
55170	dio-af-62	2	28	f	2023-06-19 12:12:02.743324
858	2112	1	88	f	2023-06-10 11:33:39.998214
45217	gle-class	1	48	f	2023-06-10 11:33:40.043456
2775	tiida	1	55	f	2023-06-10 22:46:40.671528
63875	partner	1	58	f	2023-06-10 22:46:41.549694
29010	8400	10	1583	f	2023-06-10 22:46:41.57666
61894	a-900	4	1582	f	2023-06-12 20:35:35.135779
38658	sd	5	1873	f	2023-06-13 20:57:08.285234
45630	c4-cactus	1	15	f	2023-06-13 20:57:08.30528
506	terrano-ii	1	55	f	2023-06-13 20:57:08.312986
45316	1144	10	1583	f	2023-06-13 20:57:08.350896
1561	twingo	1	62	f	2023-06-15 00:16:55.942893
27357	gti	3	1471	f	2023-06-19 12:12:02.754705
28942	clio-symbol	1	62	f	2023-06-19 12:12:03.885478
62601	q4-sportback	1	6	f	2023-06-19 12:12:04.865694
31570	f-2000	1	177	f	2023-06-19 12:12:05.304645
3028	107-hatchback-5d	0	58	f	2023-06-19 12:12:05.320079
61100	s3	5	1877	f	2023-06-19 12:12:06.758059
2036	c-max	1	24	f	2023-06-10 11:33:39.998134
166	nubira	1	18	f	2023-06-10 11:33:40.043376
58728	mt-200-8	2	1565	f	2023-06-10 22:46:43.073776
45969	3244	10	1586	f	2023-06-12 20:35:35.136688
2811	golf-plus	1	84	f	2023-06-13 20:57:08.307836
35926	8-163	6	177	f	2023-06-15 00:16:56.12336
55293	z-750s	2	176	f	2023-06-19 12:12:02.819513
32336	amara	8	2162	f	2023-06-19 12:12:03.668026
319	magentis	1	33	f	2023-06-19 12:12:05.238259
55421	gsx-600f	2	76	f	2023-06-19 12:12:05.278552
1258	accent	1	29	f	2023-06-10 11:33:40.042389
31687	m-2000-l	1	177	f	2023-06-10 11:33:40.062867
49223	kodiaq	1	70	f	2023-06-10 22:46:43.334904
823	xc70	1	85	f	2023-06-10 22:46:43.45656
25419	spyder	2	1471	f	2023-06-12 20:35:35.152864
49474	vt-750c	2	28	f	2023-06-13 21:42:03.045458
55414	gsf-650-bandit	2	76	f	2023-06-13 21:42:03.277259
1484	mirage	1	52	f	2023-06-13 21:42:03.310993
162	leganza	1	18	f	2023-06-13 21:42:04.556523
1183	escape	1	24	f	2023-06-13 21:42:04.561682
56113	skd-34-3	5	1898	f	2023-06-13 21:42:05.829117
37962	2190-granta	1	88	f	2023-06-13 21:42:05.948797
25069	sr	2	1014	f	2023-06-15 00:16:56.205254
291	pony	1	29	f	2023-06-15 00:16:56.598811
146	xsara-picasso	1	15	f	2023-06-15 00:16:56.841295
53741	scrambler	2	1976	f	2023-06-15 00:16:56.869351
900	412	1	94	f	2023-06-15 00:16:57.764018
2625	256	7	167	f	2023-06-15 00:16:57.85295
36555	benalu	5	1865	f	2023-06-19 12:12:03.070269
1270	fx	0	128	f	2023-06-19 12:12:05.37819
62524	s-01	5	55075	f	2023-06-19 12:12:05.60993
49259	creta	1	29	f	2023-06-10 11:33:40.057984
55479	fjr-1300	2	179	f	2023-06-10 11:33:40.066225
62868	scb	5	55075	f	2023-06-10 11:33:40.301908
2684	outlander-xl	1	52	f	2023-06-10 11:33:40.334875
56590	500e	1	23	f	2023-06-10 11:33:40.579857
1306	picanto	1	33	f	2023-06-10 11:33:40.612564
1897	sienna	1	79	f	2023-06-10 11:33:40.631017
2686	pajero-wagon	1	52	f	2023-06-10 11:33:41.098102
41881	r-440	6	203	f	2023-06-11 18:25:48.076911
348	discovery	1	37	f	2023-06-11 18:25:48.081718
1512	corsa	1	56	f	2023-06-11 18:25:48.161993
56984	storm-80	2	1201	f	2023-06-11 18:25:48.278891
1777	131	6	168	f	2023-06-12 20:35:35.158399
2018	sedici	1	23	f	2023-06-12 20:35:36.530448
817	s80	1	85	f	2023-06-12 20:35:36.536304
35000	land-cruiser	1	79	f	2023-06-12 20:35:36.771955
63406	ev6	1	33	f	2023-06-12 20:35:36.907217
43237	3400	4	1583	f	2023-06-13 21:42:03.229228
56328	e-tron	1	6	f	2023-06-13 21:42:04.48133
61202	bipper	1	58	f	2023-06-13 21:42:04.517827
55526	xjr-1300	2	179	f	2023-06-13 21:42:04.559913
891	2715	1	92	f	2023-06-13 21:42:05.951421
700	carina-e	1	79	f	2023-06-15 00:16:56.250409
31933	hiace	1	79	f	2023-06-19 12:12:04.038969
1679	courier	0	24	f	2023-06-19 12:12:05.30835
46025	969m	1	189	f	2023-06-10 11:33:40.061865
487	almera	1	55	f	2023-06-11 18:25:48.281115
520	206	1	58	f	2023-06-11 18:25:48.905767
57062	xf-106	6	115	f	2023-06-11 18:25:49.011918
39	100	1	6	f	2023-06-11 18:25:49.585072
41614	maverick	2	1471	f	2023-06-11 18:25:50.624636
1343	es	1	38	f	2023-06-12 20:35:35.397901
786	lupo	1	84	f	2023-06-12 20:35:35.692003
2090	highlander	1	79	f	2023-06-12 20:35:35.770196
859	2113-samara	1	88	f	2023-06-12 20:35:36.514068
842	1117-kalina	1	88	f	2023-06-12 20:35:36.528009
1790	5511	6	97	f	2023-06-12 20:35:36.543185
1082	c4	1	15	f	2023-06-12 20:35:37.889341
2104	sequoia	1	79	f	2023-06-12 20:35:37.965742
352	gs	1	38	f	2023-06-13 21:42:03.271256
55423	gsx-750	2	76	f	2023-06-13 21:42:03.28377
55145	cbf-600n	2	28	f	2023-06-13 21:42:03.81929
2865	millenia	1	47	f	2023-06-13 21:42:04.498622
60475	focus-c-max	1	24	f	2023-06-13 21:42:05.773599
37427	mk-cross	1	185	f	2023-06-15 00:16:56.59311
54621	kicks	1	55	f	2023-06-15 00:16:57.431271
53598	tiggo-2	1	190	f	2023-06-15 00:16:57.707638
38368	tc	1	3268	f	2023-06-15 00:16:58.788933
51968	stonic	1	33	f	2023-06-19 18:18:33.477649
49775	nmax	2	179	f	2023-06-19 18:18:34.244603
630	alhambra	1	67	f	2023-06-19 18:18:34.486429
886	31029	1	91	f	2023-06-19 18:18:35.705632
59442	jumper	7	15	f	2023-06-19 18:18:37.373388
3558	53213	4	97	f	2023-06-10 11:33:40.06827
1674	xf	6	115	f	2023-06-10 11:33:40.318887
580	espace	1	62	f	2023-06-10 11:33:40.626318
63142	scs-24	5	55075	f	2023-06-10 11:33:40.634892
1943	q7	1	6	f	2023-06-10 11:33:41.090758
2228	rogue	1	55	f	2023-06-10 11:33:41.379486
32556	3008	1	58	f	2023-06-10 11:33:41.474846
58465	2pts-4	5	2714	f	2023-06-10 11:33:41.481629
60744	630f	10	1583	f	2023-06-10 11:33:41.526271
60773	v-250cr	2	1201	f	2023-06-11 18:25:48.287093
56023	kamiq	1	70	f	2023-06-12 20:35:35.702078
449	carisma	1	52	f	2023-06-12 20:35:35.986915
1515	meriva	1	56	f	2023-06-12 20:35:36.026712
784	golf-i	0	84	f	2023-06-12 20:35:36.295274
62	s4	1	6	f	2023-06-12 20:35:36.530807
37443	1007	1	58	f	2023-06-12 20:35:36.781571
3287	tgl	6	177	f	2023-06-12 20:35:36.868499
62797	sdr-27	5	1873	f	2023-06-13 21:42:04.586312
55413	gsf-600-bandit-s	2	76	f	2023-06-13 21:42:04.944591
1060	nubira	1	13	f	2023-06-13 21:42:05.786543
695	4runner	1	79	f	2023-06-13 21:42:05.818112
51629	mlt-731t	4	1778	f	2023-06-13 21:42:05.948368
35576	k-700	10	2940	f	2023-06-13 21:42:07.414315
58361	mfs-5c	3	1680	f	2023-06-13 21:42:07.533328
1505	agila	1	56	f	2023-06-15 00:16:56.597047
52144	6-series-gt	1	9	f	2023-06-15 00:16:56.850644
48095	fm-9	6	85	f	2023-06-19 18:18:33.833069
48288	gsx-s	2	76	f	2023-06-19 18:18:34.481652
31174	super-sherpa	2	176	f	2023-06-19 18:18:35.4739
1653	caravelle	1	84	f	2023-06-19 18:18:35.784586
64672	ftr-250	2	28	f	2023-06-19 18:18:36.867997
45343	golf-sportsvan	1	84	f	2023-06-19 18:18:37.418845
3442	x6-m	1	9	f	2023-06-10 11:33:40.104853
2009	cx-7	1	47	f	2023-06-10 11:33:40.573645
715	rav4	1	79	f	2023-06-10 11:33:40.607781
32518	goch	5	2404	f	2023-06-10 11:33:40.657215
848	2103	1	88	f	2023-06-10 11:33:41.482192
31010	9985	5	1932	f	2023-06-11 18:25:48.28852
41503	tourneo-custom	1	24	f	2023-06-12 20:35:37.608186
1344	lx	1	38	f	2023-06-13 23:27:37.742368
49115	kadjar	1	62	f	2023-06-15 00:16:56.850916
1623	dnepr	2	171	f	2023-06-15 00:16:56.900647
51091	bolt-ev	1	13	f	2023-06-15 00:16:57.921447
2386	avante	1	29	f	2023-06-15 00:16:58.215468
1070	pacifica	1	14	f	2023-06-15 00:16:58.314429
31785	adria	8	2161	f	2023-06-15 00:16:58.855414
699	carina	1	79	f	2023-06-19 18:18:33.835158
37711	model-x	1	2233	f	2023-06-19 18:18:34.242706
58443	d-653	5	1950	f	2023-06-19 18:18:34.247574
1122	durango	1	118	f	2023-06-19 18:18:34.590978
55798	snco-24	5	1872	f	2023-06-19 18:18:34.626558
51295	k-series	6	62	f	2023-06-19 18:18:35.718196
18379	xf-105	6	115	f	2023-06-10 11:33:40.807034
3721	yeti	1	70	f	2023-06-10 11:33:42.763318
59145	kangoo	1	62	f	2023-06-10 11:33:42.876235
46661	ion	1	58	f	2023-06-11 18:25:48.501357
46901	9770-sts	10	1583	f	2023-06-11 18:25:49.004793
1518	omega	1	56	f	2023-06-11 18:25:49.510131
48089	36s	5	2367	f	2023-06-11 18:25:49.554585
1720	outback	1	75	f	2023-06-11 18:25:50.345069
39400	s650	4	1618	f	2023-06-11 18:25:50.410108
1628	zeta	6	175	f	2023-06-12 23:20:50.950604
675	liana	1	76	f	2023-06-12 23:20:51.311889
2153	x6	1	9	f	2023-06-12 23:20:51.393181
39377	lets-4	2	76	f	2023-06-12 23:20:51.528224
43	80	1	6	f	2023-06-12 23:20:53.088616
1663	tacuma	1	13	f	2023-06-12 23:20:53.311597
59587	pregio	1	33	f	2023-06-12 23:20:53.577462
1870	fuso-canter	4	52	f	2023-06-12 23:20:53.639136
61777	j3d	2	55053	f	2023-06-13 23:27:37.780519
56435	r-450	6	203	f	2023-06-15 00:16:57.218111
63620	h-100	1	29	f	2023-06-15 00:16:57.716966
30805	asx	1	52	f	2023-06-19 18:18:34.246069
3355	inazuma	2	76	f	2023-06-19 18:18:34.473789
55222	xr-150l	2	28	f	2023-06-19 18:18:37.07272
2774	qashqai-2	1	55	f	2023-06-10 11:33:41.48093
815	s60	1	85	f	2023-06-11 18:25:48.764141
883	2410	1	91	f	2023-06-11 18:25:49.671124
664	impreza	1	75	f	2023-06-11 18:25:50.553783
55174	gl-1800-gold-wing	2	28	f	2023-06-12 23:20:50.959031
39046	8-185	6	177	f	2023-06-12 23:20:51.375743
40735	le-8-180	6	177	f	2023-06-12 23:20:51.386011
60250	ft-200-23	2	3164	f	2023-06-13 23:27:37.90995
25415	outlander	2	1471	f	2023-06-13 23:27:38.621683
40988	s7-sportback	1	6	f	2023-06-13 23:27:38.920237
46268	glc-class	1	48	f	2023-06-13 23:27:39.534512
42029	x2	1	9	f	2023-06-13 23:27:40.62904
37700	grand-caravan	1	118	f	2023-06-15 01:13:12.41089
3773	gemma	2	76	f	2023-06-15 01:13:12.544639
32278	dt-75	4	1735	f	2023-06-19 18:18:34.270466
3111	flex	1	24	f	2023-06-19 18:18:34.48535
2186	grandeur	1	29	f	2023-06-19 18:18:34.537871
3486	grand-c4-picasso	1	15	f	2023-06-19 18:18:36.402662
1427	r-class	0	48	f	2023-06-10 11:33:41.527221
850	2105	1	88	f	2023-06-11 18:25:48.806134
52171	s3e261	5	4192	f	2023-06-11 18:25:48.865464
955	mdx	1	98	f	2023-06-11 18:25:48.916787
35857	range-rover-evoque	1	37	f	2023-06-11 18:25:49.536777
1974	gl-class	1	48	f	2023-06-11 18:25:49.775255
60290	model-y	1	2233	f	2023-06-12 23:20:51.552367
57396	dp	4	3020	f	2023-06-12 23:20:51.591256
31162	cargobull	5	1877	f	2023-06-12 23:20:52.991269
863	2121-niva	1	88	f	2023-06-12 23:20:53.313061
814	s40	1	85	f	2023-06-13 23:27:37.996772
31163	saf	5	1877	f	2023-06-13 23:27:38.593221
35248	orlando	1	13	f	2023-06-13 23:27:38.852648
26023	aquatrax	3	28	f	2023-06-13 23:27:40.806806
40585	4830	10	1583	f	2023-06-15 01:13:12.453128
1884	a-092	7	188	f	2023-06-20 11:39:47.964346
3152	caddy-gruz	0	84	f	2023-06-10 11:33:41.52883
244	ka	1	24	f	2023-06-11 18:25:48.841729
495	patrol	1	55	f	2023-06-11 18:25:48.873404
2103	f-150	1	24	f	2023-06-11 18:25:49.670564
29156	1085	10	1583	f	2023-06-11 18:25:49.769493
42495	4-series	1	9	f	2023-06-11 18:25:50.346283
112	corvette	1	13	f	2023-06-12 23:20:51.581387
61825	02-i	5	2993	f	2023-06-12 23:20:52.738602
44156	tlx	1	98	f	2023-06-12 23:20:53.297412
3901	ix35	1	29	f	2023-06-12 23:20:53.307199
54422	soul-ev	1	33	f	2023-06-13 23:27:38.005106
1486	pajero	1	52	f	2023-06-13 23:27:39.316436
41843	50	2	2108	f	2023-06-15 01:16:02.885626
47653	535-95	4	1590	f	2023-06-15 01:16:03.11549
31914	a1	1	6	f	2023-06-15 01:16:03.460274
2641	695	7	160	f	2023-06-15 01:16:06.057321
63346	touareg-r	1	84	f	2023-06-15 01:16:06.433875
28211	rzr	2	1231	f	2023-06-20 11:39:48.091461
34319	sgl	5	2720	f	2023-06-10 11:33:41.544208
1646	hiace-pass	0	79	f	2023-06-10 11:33:43.444754
1095	solenza	1	17	f	2023-06-11 19:51:44.655371
3300	eurocargo	4	175	f	2023-06-11 19:51:44.670597
456	galant	1	52	f	2023-06-11 19:51:44.694397
1730	murano	1	55	f	2023-06-11 19:51:45.711849
224	punto	1	23	f	2023-06-11 19:51:46.308873
315	grand-cherokee	1	32	f	2023-06-11 19:51:46.477396
59384	cityr-200	2	334	f	2023-06-11 19:51:46.574412
59772	vivaro	1	56	f	2023-06-11 19:51:47.137807
3566	sandero	1	62	f	2023-06-11 19:51:47.267302
58476	35s1701-gruz	6	175	f	2023-06-11 19:51:48.562633
2658	4007	1	58	f	2023-06-12 23:20:52.697071
26556	640	2	1104	f	2023-06-12 23:20:52.737917
48995	rmd-1000	10	4721	f	2023-06-12 23:20:53.066143
464	space-star	1	52	f	2023-06-12 23:20:53.313886
58870	d-30	3	76	f	2023-06-12 23:20:53.604744
33783	volt	1	13	f	2023-06-13 23:27:38.58606
1673	85	6	115	f	2023-06-13 23:27:38.865659
51234	1-4	10	4713	f	2023-06-15 01:16:03.051962
52423	delta	2	2218	f	2023-06-20 11:39:48.154104
1640	t2-814-pas	1	48	f	2023-06-20 11:39:49.56338
60525	jl-200-68a	2	2026	f	2023-06-09 23:04:58.725982
43386	300-c	1	14	f	2023-06-09 23:04:58.811613
\.


--
-- Data for Name: scrapper_info; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scrapper_info (id, last_page, last_scrapper_date) FROM stdin;
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.states (id, name, added_by_sync, created_at) FROM stdin;
10	Київська	t	2023-06-06 20:31:19.917542
19	Миколаївська	t	2023-06-06 20:31:19.974698
12	Одеська	t	2023-06-06 20:31:20.066263
20	Полтавська	t	2023-06-06 20:31:20.11808
9	Рівненська	t	2023-06-06 20:31:20.118253
16	Кіровоградська	t	2023-06-06 20:31:20.120146
8	Сумська	t	2023-06-06 20:31:20.121109
3	Тернопільська	t	2023-06-06 20:31:20.124944
13	Донецька	t	2023-06-06 20:31:20.120646
15	Івано-Франківська	t	2023-06-06 20:31:20.120707
18	Волинська	t	2023-06-06 20:31:20.120812
14	Запорізька	t	2023-06-06 20:31:20.120857
7	Харківська	t	2023-06-06 20:31:20.125538
11	Дніпропетровська	t	2023-06-06 20:31:20.124677
17	Луганська	t	2023-06-06 20:31:20.124755
5	Львівська	t	2023-06-06 20:31:20.124816
2	Житомирська	t	2023-06-06 20:31:20.124994
1	Вінницька	t	2023-06-06 20:32:00.919187
4	Хмельницкая	f	2023-06-08 12:06:25.018416
23	Херсонская	f	2023-06-08 12:17:51.368102
22	Закарпатская	f	2023-06-08 19:11:55.445893
24	Черкасская	f	2023-06-08 19:11:55.950608
25	Черновицкая	f	2023-06-08 19:12:13.69765
6	Черниговская	f	2023-06-08 19:12:14.996944
21		f	2023-06-12 11:45:18.526422
\.


--
-- Name: auto_data_auto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auto_data_auto_id_seq', 1, false);


--
-- Name: bodystyles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bodystyles_id_seq', 17, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 1, false);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, false);


--
-- Name: fuel_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fuel_types_id_seq', 1, false);


--
-- Name: gearboxes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gearboxes_id_seq', 78, true);


--
-- Name: marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marks_id_seq', 1, false);


--
-- Name: models_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.models_id_seq', 1, false);


--
-- Name: scrapper_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scrapper_info_id_seq', 1, false);


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- Name: auto_data auto_data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_pkey PRIMARY KEY (auto_id);


--
-- Name: bodystyles bodystyles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bodystyles
    ADD CONSTRAINT bodystyles_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- Name: fuel_types fuel_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fuel_types
    ADD CONSTRAINT fuel_types_pkey PRIMARY KEY (id);


--
-- Name: gearboxes gearboxes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gearboxes
    ADD CONSTRAINT gearboxes_pkey PRIMARY KEY (id);


--
-- Name: marks marks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT marks_pkey PRIMARY KEY (id);


--
-- Name: models models_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);


--
-- Name: scrapper_info scrapper_info_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.scrapper_info
    ADD CONSTRAINT scrapper_info_pkey PRIMARY KEY (id);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- Name: old_marks_price_year _RETURN; Type: RULE; Schema: public; Owner: postgres
--

CREATE OR REPLACE VIEW public.old_marks_price_year AS
 SELECT count(auto_data.auto_id) AS count,
    marks.name AS mark_name,
    (avg(auto_data."USD"))::integer AS avg_price,
    (avg(auto_data.year))::integer AS avg_year
   FROM (public.auto_data
     LEFT JOIN public.marks ON ((auto_data.mark_id = marks.id)))
  GROUP BY marks.id
  ORDER BY ((avg(auto_data."USD"))::integer) DESC;


--
-- Name: main_market_data_view _RETURN; Type: RULE; Schema: public; Owner: postgres
--

CREATE OR REPLACE VIEW public.main_market_data_view AS
 SELECT auto_data.auto_id,
    auto_data.year,
    marks.name AS mark_name,
    auto_data.mark_id,
    models.name AS model_name,
    auto_data.model_id,
    auto_data."USD" AS price,
    bodystyles.name AS bodystyle,
    auto_data.body_id
   FROM (((public.auto_data
     LEFT JOIN public.models ON ((models.id = auto_data.model_id)))
     LEFT JOIN public.marks ON ((marks.id = auto_data.mark_id)))
     LEFT JOIN public.bodystyles ON ((bodystyles.id = auto_data.body_id)))
  GROUP BY auto_data.auto_id, marks.name, models.name, bodystyles.name;


--
-- Name: auto_data auto_data_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_body_id_fkey FOREIGN KEY (body_id) REFERENCES public.bodystyles(id);


--
-- Name: auto_data auto_data_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: auto_data auto_data_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- Name: auto_data auto_data_fuel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_fuel_id_fkey FOREIGN KEY (fuel_id) REFERENCES public.fuel_types(id);


--
-- Name: auto_data auto_data_gearbox_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_gearbox_id_fkey FOREIGN KEY (gearbox_id) REFERENCES public.gearboxes(id);


--
-- Name: auto_data auto_data_mark_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_mark_id_fkey FOREIGN KEY (mark_id) REFERENCES public.marks(id);


--
-- Name: auto_data auto_data_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.models(id);


--
-- Name: auto_data auto_data_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_data
    ADD CONSTRAINT auto_data_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.states(id);


--
-- Name: bodystyles bodystyles_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bodystyles
    ADD CONSTRAINT bodystyles_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: cities cities_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.states(id);


--
-- Name: gearboxes gearboxes_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gearboxes
    ADD CONSTRAINT gearboxes_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: marks marks_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT marks_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: models models_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- Name: models models_mark_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_mark_id_fkey FOREIGN KEY (mark_id) REFERENCES public.marks(id);


--
-- PostgreSQL database dump complete
--

