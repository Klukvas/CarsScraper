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
-- Name: count_marks; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.count_marks AS
SELECT
    NULL::bigint AS count,
    NULL::character varying AS mark_name,
    NULL::integer AS avg_price,
    NULL::integer AS avg_year;


ALTER TABLE public.count_marks OWNER TO postgres;

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
-- Name: dsapkfkasdmkf; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.dsapkfkasdmkf AS
 SELECT marks.id,
    marks.category_id,
    marks.name,
    marks.added_by_sync,
    marks.created_at
   FROM public.marks
  WHERE (marks.category_id = 1);


ALTER TABLE public.dsapkfkasdmkf OWNER TO postgres;

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
34621576	2	84	39690	9400	349774	8688	2011	13	302 тыс. км	302	2	2	1	2	\N	1	f	/auto_volkswagen_passat_34621576.html	WVWZZZ3CZBE344192	18	55	2023-06-08 19:11:55.765316	2023-06-08 19:11:55.765318
34275901	4	70	649	4500	167445	4159	2008	0	196 тыс. км	196	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34275901.html	TMBBC25J783211901	5	5	2023-06-08 19:12:15.073297	2023-06-08 19:12:15.073298
34446294	4	58	526	4300	160003	3974	2006	0	160 тыс. км	160	4	2	1	2	\N	1	f	/auto_peugeot_307_34446294.html	VF33CRFJC84728094	5	307	2023-06-08 19:12:15.124467	2023-06-08 19:12:15.124468
34446253	5	73	3187	8000	297680	7394	2011	0	227 тыс. км	227	2	2	1	1	\N	1	f	/auto_ssangyong_kyron_34446253.html	Y7WDJEM00B0010910	10	210	2023-06-08 19:12:15.129956	2023-06-08 19:12:15.129957
34454134	5	88	53490	5100	189618	4706	2008	0	130 тыс. км	130	1	1.7	1	1	\N	1	f	/auto_vaz_lada_21214_4x4_34454134.html	XTA21214x81xxxx68	8	417	2023-06-09 23:05:00.016003	2023-06-09 23:05:00.016004
34282499	3	88	852	1800	66978	1664	2008	0	183 тыс. км	183	4	0	1	3	\N	1	f	/auto_vaz_lada_2107_34282499.html	XTA21070082834647	10	214	2023-06-09 23:05:00.476019	2023-06-09 23:05:00.476021
34454192	3	9	18490	2700	100467	2495	1991	0	300 тыс. км	300	4	3	2	3	\N	1	f	/auto_bmw_7_series_34454192.html	WBAGA810х0Dхххх40	19	19	2023-06-09 23:05:00.545747	2023-06-09 23:05:00.545749
34282467	4	13	1038	3300	122793	3050	2007	0	183 тыс. км	183	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34282467.html	KL1SF48YE7B763834	16	16	2023-06-09 23:05:01.269767	2023-06-09 23:05:01.269769
34282473	2	9	3219	6900	256749	6377	2006	0	325 тыс. км	325	2	2	1	3	\N	1	f	/auto_bmw_3_series_34282473.html	WBAVU310X0KY40198	7	7	2023-06-09 23:05:01.523002	2023-06-09 23:05:01.523006
34282650	212	159	30808	6000	223260	5545	2007	0	320 тыс. км	320	2	14.86	1	\N	\N	6	f	/auto_maz_54322_34282650.html		14	14	2023-06-09 23:05:02.090025	2023-06-09 23:05:02.090027
34621597	2	84	39690	13800	513498	12755	2012	13	272 тыс. км	272	2	2	2	1	\N	1	f	/auto_volkswagen_passat_34621597.html		11	11	2023-06-08 19:11:55.765671	2023-06-08 19:11:55.765672
34598664	3	79	702	7300	271633	6747	2008	0	220 тыс. км	220	1	1.6	4	2	\N	1	f	/auto_toyota_corolla_34598664.html	JTNBV56E603518599	10	10	2023-06-08 19:11:55.778808	2023-06-08 19:11:55.77881
34460250	197	79	50240	16200	602802	14973	2019	0	126 тыс. км	126	2	0	1	2	\N	6	f	/auto_toyota_proace_34460250.html		18	18	2023-06-08 19:11:55.858542	2023-06-08 19:11:55.858543
34446405	5	128	46829	11000	409310	10167	2008	0	435 тыс. км	435	4	3.5	2	1	\N	1	f	/auto_infiniti_fx_35_34446405.html	JN8AS05YX8X016257	5	5	2023-06-08 19:12:15.103375	2023-06-08 19:12:15.103375
34454136	3	62	1559	2999	111502	2767	2007	0	250 тыс. км	250	4	1.4	1	2	\N	1	f	/auto_renault_symbol_34454136.html	VF1LB17Cx38xxxx30	22	161	2023-06-09 23:04:58.700336	2023-06-09 23:04:58.70034
34454354	2	48	428	10990	408938	10157	2011	0	475 тыс. км	475	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34454354.html	WDD21220х1Aхххх91	10	10	2023-06-09 23:04:58.770782	2023-06-09 23:04:58.770784
34271441	3	55	498	3150	117117	2906	2002	0	235 тыс. км	235	1	1.8	1	\N	\N	1	f	/auto_nissan_primera_34271441.html	SJNBBAP1xU0xxxx66	12	12	2023-06-09 23:05:00.021575	2023-06-09 23:05:00.021576
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
34621555	2	62	586	5600	208376	5176	2008	13	194 тыс. км	194	1	0	1	2	\N	1	f	/auto_renault_megane_34621555.html	VF1KM2K0х40хххх81	2	2	2023-06-08 19:12:15.108093	2023-06-08 19:12:15.108094
34454213	18	2026	60525	1150	42757	1061	2019	0	5 тыс. км	5	1	200	1	6	\N	2	f	/auto_loncin_jl_200_68a_34454213.html		5	308	2023-06-09 23:04:58.767105	2023-06-09 23:04:58.767107
34628311	2	84	35449	4700	174887	4344	2001	8	191 тыс. км	191	1	0	1	2	\N	1	f	/auto_volkswagen_golf_34628311.html	WVWZZZ1JZ1W642578	20	20	2023-06-09 23:04:58.775676	2023-06-09 23:04:58.775677
34454217	4	55	1975	6000	223080	5536	2010	0	190 тыс. км	190	4	1.4	1	2	\N	1	f	/auto_nissan_note_34454217.html	SJNFAAE1xU2xxxx17	8	8	2023-06-09 23:04:58.830112	2023-06-09 23:04:58.830113
34628312	4	70	649	4600	171166	4252	2012	8	167 тыс. км	167	4	1.2	1	2	\N	1	f	/auto_skoda_fabia_34628312.html	TMBEH15JхDBхххх00	9	405	2023-06-09 23:05:00.283477	2023-06-09 23:05:00.28348
34454176	4	84	35449	10250	381403	9473	2013	0	267 тыс. км	267	2	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34454176.html	WVWZZZAUZDW110441	10	215	2023-06-09 23:05:01.190643	2023-06-09 23:05:01.190648
34282687	15	1976	40995	1300	48373	1202	2014	0	24 тыс. км	24	0	0.25	1	\N	\N	2	f	/auto_geon_issen_34282687.html		12	12	2023-06-09 23:05:02.672686	2023-06-09 23:05:02.672688
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
34606564	4	33	323	5500	204655	5083	2007	0	156 тыс. км	156	4	1.4	2	2	\N	1	f	/auto_kia_rio_34606564.html		10	10	2023-06-09 10:05:46.766937	2023-06-09 10:05:46.766938
34454382	3	13	1052	4500	167445	4159	2005	0	185 тыс. км	185	4	1.6	1	2	\N	1	f	/auto_chevrolet_lacetti_34454382.html	Y6DNF196E6K275123	7	462	2023-06-09 23:04:58.773899	2023-06-09 23:04:58.7739
33824723	3	128	45128	26000	966680	23993	2020	0	17 тыс. км	17	1	3	2	1	\N	1	t	/auto_infiniti_q50_33824723.html	JN1EV7BRxMMxxxx59	5	5	2023-06-09 23:19:29.331802	2023-06-09 23:19:29.331804
34628362	4	67	636	7500	279075	6932	2006	0	210 тыс. км	210	2	2	1	2	\N	1	f	/auto_seat_leon_34628362.html	VSSZZZ1PZ7R051463	10	10	2023-06-09 23:19:29.505989	2023-06-09 23:19:29.50599
34468853	449	58	37765	12499	465088	11552	2014	0	94 тыс. км	94	2	2	2	2	\N	1	f	/auto_peugeot_5008_34468853.html	VF30ERHHAES254223	5	306	2023-06-09 23:19:29.664096	2023-06-09 23:19:29.664098
33496950	299	177	31670	130000	4837300	120152	2012	0	520 тыс. км	520	2	4.7	2	3	\N	4	f	/auto_man_tgs_33496950.html		14	14	2023-06-08 19:12:13.801054	2023-06-08 19:12:13.801055
34621604	4	13	1052	4500	167535	4161	2006	0	205 тыс. км	205	4	1.8	2	2	\N	1	f	/auto_chevrolet_lacetti_34621604.html	KL1NA483x6Kxxxx80	7	7	2023-06-08 19:12:14.009589	2023-06-08 19:12:14.00959
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
33612423	299	62	1875	25000	930749	23118	2000	0	100 тыс. км	100	2	12	1	3	\N	4	f	/auto_renault_premium_33612423.html		11	85	2023-06-08 19:12:13.711104	2023-06-08 19:12:13.711106
34109464	8	15	59443	4700	174887	4344	2005	0	260 тыс. км	260	2	2	1	2	\N	1	f	/auto_citroen_jumpy_34109464.html	VF7BZRHXB86185397	15	15	2023-06-09 10:05:46.796764	2023-06-09 10:05:46.796766
34628318	307	70	652	11500	427915	10629	2012	8	228 тыс. км	228	2	2.01	2	2	\N	1	f	/auto_skoda_octavia_34628318.html		18	18	2023-06-09 23:04:58.789116	2023-06-09 23:04:58.789117
34454321	3	31	2264	22990	854768	21215	2015	0	128 тыс. км	128	1	3	2	1	\N	1	t	/auto_jaguar_xf_34454321.html	SAJBK4BVxGCxxxx28	10	10	2023-06-09 23:04:58.824069	2023-06-09 23:04:58.824071
34454222	8	23	31546	4000	148720	3691	2003	0	312 тыс. км	312	2	2	1	2	\N	1	f	/auto_fiat_scudo_pass_34454222.html	ZFA22000x12xxxx97	4	4	2023-06-09 23:04:58.872232	2023-06-09 23:04:58.872233
34628319	5	38	358	14500	539545	13402	2008	13	110 тыс. км	110	4	3.5	2	1	\N	1	f	/auto_lexus_rx_34628319.html	JTJHK31Uх82хххх74	4	498	2023-06-09 23:04:58.895361	2023-06-09 23:04:58.895363
34628300	2	65	622	5900	219539	5453	2006	8	204 тыс. км	204	1	1.8	2	2	\N	1	f	/auto_saab_9_3_34628300.html		10	10	2023-06-09 23:19:29.489148	2023-06-09 23:19:29.489149
34628357	4	84	780	13000	483730	12015	2015	13	108 тыс. км	108	1	1.4	2	2	\N	1	f	/auto_volkswagen_beetle_34628357.html	WVWZZZ16ZFM640091	20	20	2023-06-09 23:19:29.510067	2023-06-09 23:19:29.51007
34073888	2	62	585	6700	249307	6192	2010	0	270 тыс. км	270	2	1.5	1	2	\N	1	f	/auto_renault_laguna_34073888.html	VF1KT1A0643037462	15	621	2023-06-09 23:19:29.527931	2023-06-09 23:19:29.527932
34621588	3	9	2319	5300	197213	4898	1997	13	330 тыс. км	330	4	2.8	2	3	\N	1	f	/auto_bmw_5_series_34621588.html	WBADD61020BR35805	10	610	2023-06-08 19:12:13.728814	2023-06-08 19:12:13.728816
34333715	4	24	239	2950	109828	2727	2007	0	290 тыс. км	290	1	1.2	1	2	\N	1	f	/auto_ford_fiesta_34333715.html	WF0HXXWPxH7xxxx43	10	10	2023-06-08 19:12:14.014976	2023-06-08 19:12:14.014977
34621549	227	48	35249	27034	1006500	25000	2013	0	90 тыс. км	90	2	0	1	\N	\N	7	f	/auto_mercedes_benz_sprinter_34621549.html		5	5	2023-06-08 19:12:14.027946	2023-06-08 19:12:14.027947
34621582	5	13	2544	9800	364658	9058	2010	8	250 тыс. км	250	2	2	1	2	\N	1	f	/auto_chevrolet_captiva_34621582.html		20	385	2023-06-08 19:12:14.350472	2023-06-08 19:12:14.350474
34400600	8	48	434	67700	2520471	62604	2020	0	145 тыс. км	145	2	2.1	2	1	\N	1	f	/auto_mercedes_benz_v_class_34400600.html	W1V44781x13xxxx35	10	10	2023-06-08 19:12:14.692219	2023-06-08 19:12:14.692221
34446060	3	13	1038	5400	200934	4991	2008	0	144 тыс. км	144	4	1.5	1	2	\N	1	f	/auto_chevrolet_aveo_34446060.html	Y6DSF69YE8W002122	19	317	2023-06-08 19:12:15.106209	2023-06-08 19:12:15.106209
33792976	194	91	929	2500	93025	2311	2008	0	250 тыс. км	250	4	0	1	\N	\N	6	f	/auto_gaz_3302_gazel_33792976.html		8	407	2023-06-09 10:05:46.811895	2023-06-09 10:05:46.811896
34628317	3	14	43386	9000	334890	8318	2006	13	219 тыс. км	219	1	2.7	2	3	\N	1	f	/auto_chrysler_300_c_34628317.html	1C3H8B3RX6Y158149	12	12	2023-06-09 23:04:58.827537	2023-06-09 23:04:58.827538
34627755	4	84	45152	20000	744200	18485	2020	13	16 тыс. км	16	6	0	2	2	\N	1	f	/auto_volkswagen_e_golf_34627755.html		5	5	2023-06-09 23:19:29.562427	2023-06-09 23:19:29.562429
34276147	3	88	861	2900	107909	2680	2007	0	260 тыс. км	260	4	1.6	1	2	\N	1	f	/auto_vaz_lada_2115_samara_34276147.html	XTA21154х74хххх99	10	217	2023-06-09 10:05:46.814282	2023-06-09 10:05:46.814283
34454408	3	28	262	13800	513084	12734	2016	0	61 тыс. км	61	1	2.4	2	2	\N	1	t	/auto_honda_accord_34454408.html	1HGCR2F3xHAxxxx32	15	15	2023-06-09 23:04:58.829547	2023-06-09 23:04:58.829549
34454255	5	33	327	21000	781410	19409	2019	0	45 тыс. км	45	1	1.6	1	2	\N	1	f	/auto_kia_sportage_34454255.html	U5YPG814ALL807887	10	10	2023-06-09 23:04:58.876361	2023-06-09 23:04:58.876361
34454200	3	185	35772	3450	128271	3183	2012	0	225 тыс. км	225	4	1.8	1	2	\N	1	f	/auto_geely_emgrand_7_ec7_34454200.html	L6T7844SxDNxxxx28	11	76	2023-06-09 23:04:59.186275	2023-06-09 23:04:59.186277
34454038	2	56	1508	4500	167310	4152	2007	0	250 тыс. км	250	2	1.7	1	2	\N	1	f	/auto_opel_astra_34454038.html	W0L0AHL3x82xxxx91	15	199	2023-06-09 23:04:59.301704	2023-06-09 23:04:59.301705
34621605	41	1471	25418	9800	364853	9062	2013	0	2 тыс. км	2	1	1000	5	4	\N	2	f	/auto_brp_renegade_34621605.html		10	10	2023-06-08 19:12:13.695497	2023-06-08 19:12:13.695499
34621529	4	48	2622	5600	208487	5178	2008	0	260 тыс. км	260	1	2	2	2	\N	1	f	/auto_mercedes_benz_b_class_34621529.html	WDD24523x1Jxxxx31	12	12	2023-06-08 19:12:14.014375	2023-06-08 19:12:14.014377
34621557	3	18	161	2200	81862	2033	2007	13	300 тыс. км	300	4	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34621557.html		3	436	2023-06-08 19:12:14.272078	2023-06-08 19:12:14.27208
34446373	5	79	35004	19300	718153	17838	2008	0	130 тыс. км	130	4	4	2	1	\N	1	f	/auto_toyota_land_cruiser_prado_34446373.html	JTEBU29J605148494	10	10	2023-06-08 19:12:14.434044	2023-06-08 19:12:14.434045
34242735	5	32	2842	17700	658971	16367	2017	0	87 тыс. км	87	1	2.4	2	1	\N	1	t	/auto_jeep_compass_34242735.html	3C4NJDDBxJTxxxx89	10	10	2023-06-08 19:12:14.699785	2023-06-08 19:12:14.699788
34446318	3	24	2970	1900	70699	1756	1989	0	72 тыс. км	72	1	2	1	3	\N	1	f	/auto_ford_sierra_34446318.html	WF0FXXGBBFKP37116	1	42	2023-06-08 19:12:14.997689	2023-06-08 19:12:14.99769
34446224	2	24	246	7200	267912	6655	2011	0	290 тыс. км	290	2	1.6	1	2	\N	1	f	/auto_ford_mondeo_34446224.html	WF0GXXGBхGBхххх71	9	9	2023-06-08 19:12:15.124206	2023-06-08 19:12:15.124207
34439510	8	15	59443	2900	107909	2680	1999	0	375 тыс. км	375	2	1.9	1	2	\N	1	f	/auto_citroen_jumpy_34439510.html	VF7BZWJZA12474463	15	202	2023-06-09 10:05:47.426575	2023-06-09 10:05:47.426576
33976752	2	70	652	14500	539545	13402	2018	0	236 тыс. км	236	2	1.6	1	2	\N	1	f	/auto_skoda_octavia_33976752.html	TMBJG7NEхJ0хххх92	1	1	2023-06-09 10:05:47.514681	2023-06-09 10:05:47.514683
34454398	2	70	652	7199	267875	6654	2010	0	260 тыс. км	260	1	1.8	1	1	\N	1	f	/auto_skoda_octavia_34454398.html	TMBKK61ZхB2хххх95	10	10	2023-06-09 23:04:58.877605	2023-06-09 23:04:58.877605
34621608	3	88	855	2400	89351	2219	2006	0	197 тыс. км	197	4	1.5	1	2	\N	1	f	/auto_vaz_lada_21099_34621608.html	Y6D21099x70xxxx29	13	112	2023-06-08 19:12:13.700622	2023-06-08 19:12:13.700623
34621586	8	58	59956	2700	100467	2495	1999	13	263 тыс. км	263	2	1.9	1	2	\N	1	f	/auto_peugeot_expert_34621586.html	VF3222DB212404201	22	168	2023-06-08 19:12:13.749959	2023-06-08 19:12:13.74996
34607028	4	84	35449	4500	167445	4159	1999	0	61 тыс. км	61	1	1.6	1	2	\N	1	f	/auto_volkswagen_golf_34607028.html	WVWZZZ1JZYB055573	25	25	2023-06-08 19:12:14.288115	2023-06-08 19:12:14.288116
34621568	7	55	494	5100	189771	4714	2006	13	203 тыс. км	203	1	1.4	1	2	\N	1	f	/auto_nissan_micra_34621568.html	SJN2CAK12U6015633	20	605	2023-06-08 19:12:14.351637	2023-06-08 19:12:14.351638
34410786	2	23	34907	6000	223260	5545	2011	0	140 тыс. км	140	4	1.4	1	2	\N	1	f	/auto_fiat_doblo_pass_34410786.html	ZFA26300009114740	10	10	2023-06-08 19:12:14.41378	2023-06-08 19:12:14.413781
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
34621606	2	190	1902	3600	134028	3329	2007	0	163 тыс. км	163	1	2	1	1	\N	1	f	/auto_chery_tiggo_34621606.html	Y6DDB14Bx8Dxxxx08	25	25	2023-06-08 19:12:13.729789	2023-06-08 19:12:13.72979
34449028	5	47	37381	22000	818620	20333	2018	0	97 тыс. км	97	1	2.5	2	1	\N	1	t	/auto_mazda_cx_5_34449028.html	JM3KFBCM7K1546297	10	10	2023-06-09 10:07:59.448948	2023-06-09 10:07:59.448949
34449143	2	56	1523	4800	178608	4436	2005	0	354 тыс. км	354	2	1.9	1	2	\N	1	f	/auto_opel_vectra_34449143.html	W0L0ZCF3551140886	4	4	2023-06-09 10:07:59.51771	2023-06-09 10:07:59.517712
34623887	3	79	698	7900	293959	7302	2007	13	230 тыс. км	230	1	2.4	2	2	\N	1	f	/auto_toyota_camry_34623887.html		5	14949	2023-06-09 10:07:59.618334	2023-06-09 10:07:59.618336
34449126	5	55	24932	9300	346053	8595	2011	0	219 тыс. км	219	2	1.5	1	2	\N	1	f	/auto_nissan_juke_34449126.html	SJNFCAF15U6122848	2	2	2023-06-09 10:08:00.112406	2023-06-09 10:08:00.112409
34280360	3	84	785	9800	364658	9058	2016	0	92 тыс. км	92	1	1.8	2	2	\N	1	t	/auto_volkswagen_jetta_34280360.html	3VWL17AJ2HM296980	10	10	2023-06-09 10:08:00.305691	2023-06-09 10:08:00.305703
34623891	2	62	586	14900	554429	13771	2017	8	102 тыс. км	102	2	1.5	1	2	\N	1	f	/auto_renault_megane_34623891.html	VF1RFB00257166048	10	10	2023-06-09 10:08:01.114285	2023-06-09 10:08:01.114287
34442452	3	13	2145	5500	204655	5083	2008	0	180 тыс. км	180	4	2	1	2	\N	1	f	/auto_chevrolet_epica_34442452.html	Y6DLF69Kх8Bхххх29	14	14	2023-06-09 10:08:01.206159	2023-06-09 10:08:01.206161
34454322	5	6	3222	21500	799370	19840	2015	0	111 тыс. км	111	1	2	2	1	\N	1	t	/auto_audi_q5_34454322.html	WA1L2AFPxGAxxxx46	9	9	2023-06-09 23:04:58.898836	2023-06-09 23:04:58.898837
34472842	5	84	793	18500	688755	17107	2011	0	240 тыс. км	240	2	3	2	1	\N	1	f	/auto_volkswagen_touareg_34472842.html	WVGFK9BPxBDxxxx49	11	76	2023-06-08 19:12:14.008178	2023-06-08 19:12:14.00818
34621591	4	70	649	3800	141398	3512	2002	13	352 тыс. км	352	2	0	1	2	\N	1	f	/auto_skoda_fabia_34621591.html	TMBMS46Y713182490	14	14	2023-06-08 19:12:14.253965	2023-06-08 19:12:14.253971
34621584	8	56	1524	7700	286517	7117	2011	13	187 тыс. км	187	2	1.7	1	2	\N	1	f	/auto_opel_zafira_34621584.html	W0L0AHM75B2132521	18	55	2023-06-08 19:12:14.275467	2023-06-08 19:12:14.275469
34621596	6	56	1509	2400	89304	2218	1994	0	400 тыс. км	400	1	2.5	1	2	\N	1	f	/auto_opel_calibra_34621596.html	W0L000085R1073303	5	5	2023-06-08 19:12:14.281903	2023-06-08 19:12:14.281905
34621581	4	13	1052	3900	145119	3605	2006	13	304 тыс. км	304	4	1.4	1	2	\N	1	f	/auto_chevrolet_lacetti_34621581.html	KL1NF487J6K467625	14	14	2023-06-08 19:12:14.290405	2023-06-08 19:12:14.290407
34446426	5	33	326	8200	305122	7579	2006	0	226 тыс. км	226	2	2.5	2	1	\N	1	f	/auto_kia_sorento_34446426.html	KNEJC521865583004	10	216	2023-06-08 19:12:14.350911	2023-06-08 19:12:14.350912
34446372	4	88	854	1500	55815	1386	2000	0	228 тыс. км	228	4	1.4	1	2	\N	1	f	/auto_vaz_lada_2109_34446372.html	XTA210930Y2716761	3	3	2023-06-08 19:12:14.425497	2023-06-08 19:12:14.425498
34452406	3	84	39690	1150	42814	1062	1988	0	666 тыс. км	666	4	1.8	1	\N	\N	1	f	/auto_volkswagen_passat_34452406.html	WVWZZZ31xJExxxx24	15	204	2023-06-09 10:07:59.275384	2023-06-09 10:07:59.275385
34623880	5	55	2197	17900	666059	16544	2017	13	105 тыс. км	105	2	0	5	2	\N	1	f	/auto_nissan_qashqai_34623880.html		7	7	2023-06-09 10:07:59.40469	2023-06-09 10:07:59.404692
34449044	8	15	32931	6700	249307	6192	2011	0	187 тыс. км	187	2	1.6	1	2	\N	1	f	/auto_citroen_c3_picasso_34449044.html	VF7SH9HP0BT548618	10	214	2023-06-09 10:07:59.647076	2023-06-09 10:07:59.647078
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
34621570	6	62	586	7000	260470	6470	2010	13	257 тыс. км	257	2	1.5	1	2	\N	1	f	/auto_renault_megane_34621570.html	VF1DZ1G0644462458	11	11	2023-06-08 19:12:14.367902	2023-06-08 19:12:14.367903
34621593	3	47	393	4900	182329	4529	2007	13	198 тыс. км	198	4	2	1	2	\N	1	f	/auto_mazda_6_34621593.html	JMZGG12F671690312	20	369	2023-06-08 19:12:14.420968	2023-06-08 19:12:14.420969
34621569	4	190	2087	1990	74048	1839	2007	13	107 тыс. км	107	1	1.6	1	\N	\N	1	f	/auto_chery_amulet_34621569.html	Y6DDA11A57D007014	1	1	2023-06-08 19:12:14.967061	2023-06-08 19:12:14.967063
34446369	2	48	425	9499	353458	8779	2008	0	250 тыс. км	250	2	2.1	1	3	\N	1	f	/auto_mercedes_benz_c_class_34446369.html	WDD2042071F176051	1	1	2023-06-08 19:12:15.073131	2023-06-08 19:12:15.073132
34446246	3	47	1692	7000	260470	6470	2008	0	212 тыс. км	212	4	2	1	2	\N	1	f	/auto_mazda_3_34446246.html	JMZBK12Fх01хххх17	6	6	2023-06-08 19:12:15.103026	2023-06-08 19:12:15.103027
34623890	5	24	2874	13500	502335	12477	2013	8	138 тыс. км	138	2	2	1	2	\N	1	f	/auto_ford_kuga_34623890.html	WF0AXXWPMADG20725	11	11	2023-06-09 10:07:59.428449	2023-06-09 10:07:59.428451
34448952	5	32	2842	17900	666059	16544	2019	0	86 тыс. км	86	1	2.4	2	1	\N	1	t	/auto_jeep_compass_34448952.html	3C4NJDDBXKT795893	7	460	2023-06-09 10:07:59.581238	2023-06-09 10:07:59.58124
34068039	2	58	43047	13200	491172	12200	2018	0	136 тыс. км	136	2	1.5	1	2	\N	1	f	/auto_peugeot_2008_34068039.html	VF3CUYHYSJY190372	10	220	2023-06-09 10:07:59.673636	2023-06-09 10:07:59.673637
33365305	197	48	35249	10000	372100	9242	2004	0	304 тыс. км	304	2	2.2	1	3	\N	6	f	/auto_mercedes_benz_sprinter_33365305.html	WDB90366х1Rхххх98	19	19	2023-06-09 10:07:59.809927	2023-06-09 10:07:59.80993
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
34621574	3	18	161	3200	119072	2958	2008	13	60 тыс. км	60	1	1.5	1	2	\N	1	f	/auto_daewoo_lanos_34621574.html	Y6DTF69YP80177608	24	519	2023-06-08 19:12:14.367988	2023-06-08 19:12:14.367989
34449093	5	9	1866	14000	520940	12939	2011	0	255 тыс. км	255	1	3	2	1	\N	1	f	/auto_bmw_x3_34449093.html	5UXWX7C50BL734451	13	114	2023-06-09 10:07:59.745889	2023-06-09 10:07:59.74589
33084049	12	28	64668	2300	85629	2124	2008	0	51 тыс. км	51	1	250	5	5	\N	2	f	/auto_honda_forza_125_33084049.html	MFx01xxxx87	10	210	2023-06-09 10:08:00.806857	2023-06-09 10:08:00.80686
34448981	4	79	2040	10900	405589	10074	2013	0	77 тыс. км	77	1	1.33	1	2	\N	1	f	/auto_toyota_auris_34448981.html	SB1KT4JE50E004375	10	10	2023-06-09 10:08:01.075926	2023-06-09 10:08:01.07593
34449097	2	62	586	6500	241865	6008	2009	0	197 тыс. км	197	1	1.6	1	2	\N	1	f	/auto_renault_megane_34449097.html	VF1KM1R0H41120167	20	20	2023-06-09 10:08:01.206705	2023-06-09 10:08:01.206707
34454234	4	88	854	1400	52052	1291	2001	0	130 тыс. км	130	1	1.5	1	1	\N	1	f	/auto_vaz_lada_2109_34454234.html	XTA21093x12xxxx79	12	356	2023-06-09 23:04:59.305341	2023-06-09 23:04:59.305341
34454292	9	24	63592	6500	241865	6008	2007	0	440 тыс. км	440	2	2.2	1	2	\N	1	f	/auto_ford_explorer_sport_trac_34454292.html	WF0XXXBDFX7U46083	9	404	2023-06-09 23:04:59.473283	2023-06-09 23:04:59.473284
34454116	3	56	3121	7800	290004	7197	2009	0	230 тыс. км	230	1	1.6	1	2	\N	1	f	/auto_opel_insignia_34454116.html	W0LGM57Ax91xxxx34	1	599	2023-06-09 23:04:59.888912	2023-06-09 23:04:59.888913
34282633	2	56	1508	9500	353210	8766	2013	0	260 тыс. км	260	2	2	2	2	\N	1	f	/auto_opel_astra_34282633.html	W0LPD8ENxD8xxxx93	2	2	2023-06-09 23:04:59.918564	2023-06-09 23:04:59.918566
34282627	3	84	39690	5400	200772	4983	2008	0	259 тыс. км	259	1	0	1	\N	\N	1	f	/auto_volkswagen_passat_34282627.html	WVWZZZ3Cx8Pxxxx20	22	163	2023-06-09 23:04:59.94247	2023-06-09 23:04:59.942471
34282631	8	55	56205	2700	100386	2491	1986	0	401 тыс. км	401	2	2	2	3	\N	1	f	/auto_nissan_vanette_34282631.html	00000KECx20xxxx97	12	12	2023-06-09 23:05:00.02468	2023-06-09 23:05:00.024681
34424630	4	84	35449	7100	264333	6565	2007	0	214 тыс. км	214	1	1.4	1	2	\N	1	f	/auto_volkswagen_golf_34424630.html	WVWZZZ1Kx8Wxxxx84	22	161	2023-06-08 19:12:14.686572	2023-06-08 19:12:14.686574
34446214	41	1231	27108	5300	197213	4898	2013	0	без пробега	0	0	0.5	2	4	\N	2	f	/auto_polaris_500_34446214.html		6	6	2023-06-08 19:12:15.330896	2023-06-08 19:12:15.330898
34364540	3	84	785	10499	390352	9688	2015	0	98 тыс. км	98	4	2	2	2	\N	1	t	/auto_volkswagen_jetta_34364540.html	3VW2K7AJxFMxxxx81	8	418	2023-06-09 23:04:59.307677	2023-06-09 23:04:59.307678
34454270	3	48	428	8800	327448	8133	2011	0	565 тыс. км	565	2	2.1	2	3	\N	1	f	/auto_mercedes_benz_e_class_34454270.html	WDD2120051A499486	1	1	2023-06-09 23:04:59.498817	2023-06-09 23:04:59.498818
34454150	6	9	44037	20800	773968	19224	2015	0	186 тыс. км	186	1	2	2	1	\N	1	t	/auto_bmw_4_series_gran_coupe_34454150.html	WBA4C9C52GG137122	1	1	2023-06-09 23:04:59.538816	2023-06-09 23:04:59.538817
34282680	8	84	64461	5500	204655	5083	1999	0	349 тыс. км	349	2	1.9	1	2	\N	1	f	/auto_volkswagen_transporter_34282680.html	WV1ZZZ70ZXH109097	1	1	2023-06-09 23:04:59.590239	2023-06-09 23:04:59.59024
34282812	4	29	2770	4950	184041	4567	2008	0	130 тыс. км	130	1	1.1	1	2	\N	1	f	/auto_hyundai_i10_34282812.html	MALAM51Bx8Mxxxx94	4	4	2023-06-09 23:05:00.011856	2023-06-09 23:05:00.011857
34469460	4	33	323	6400	238144	5915	2014	0	124 тыс. км	124	2	1.1	1	2	\N	1	f	/auto_kia_rio_34469460.html	KNADM515AE6935409	3	3	2023-06-08 19:12:14.423947	2023-06-08 19:12:14.423948
34454048	4	88	853	1200	44616	1107	1992	0	50 тыс. км	50	1	0	1	\N	\N	1	f	/auto_vaz_lada_2108_34454048.html	XTA21080xN1xxxx90	12	12	2023-06-09 23:04:59.308053	2023-06-09 23:04:59.308054
34446384	3	84	35399	5800	215818	5361	1999	0	329 тыс. км	329	2	2.5	1	3	\N	1	f	/auto_volkswagen_lt_34446384.html	WV1ZZZ2DZXH017808	12	12	2023-06-08 19:12:14.474037	2023-06-08 19:12:14.474038
34446339	3	9	2319	2500	93025	2311	1995	0	250 тыс. км	250	2	2.5	2	3	\N	1	f	/auto_bmw_5_series_34446339.html	WBAHA91030GK74056	10	612	2023-06-08 19:12:14.958311	2023-06-08 19:12:14.958314
34446245	2	70	652	5299	197176	4898	2003	0	201 тыс. км	201	1	2	1	2	\N	1	f	/auto_skoda_octavia_34446245.html	TMBHE21U938703653	18	18	2023-06-08 19:12:14.967697	2023-06-08 19:12:14.967699
32619148	3	56	1508	4300	160003	3974	2007	0	175 тыс. км	175	1	1.4	1	2	\N	1	f	/auto_opel_astra_32619148.html	Y6D0TGF6х7Xхххх07	15	15	2023-06-08 19:12:15.072843	2023-06-08 19:12:15.072844
34446248	3	33	1311	4400	163724	4067	2007	0	300 тыс. км	300	4	1.6	1	3	\N	1	f	/auto_kia_cerato_34446248.html	Y6LFE227х7Lхххх34	4	4	2023-06-08 19:12:15.124997	2023-06-08 19:12:15.124998
34446289	5	33	327	12300	457683	11368	2014	0	185 тыс. км	185	4	2.4	2	1	\N	1	t	/auto_kia_sportage_34446289.html	KNDPBCAC0F7710518	1	597	2023-06-08 19:12:15.233711	2023-06-08 19:12:15.233713
34446209	8	62	3185	5200	193492	4806	2005	0	290 тыс. км	290	2	1.9	1	2	\N	1	f	/auto_renault_grand_scenic_34446209.html	VF1JMG4D634351442	12	346	2023-06-08 19:12:15.327027	2023-06-08 19:12:15.327029
34448961	2	70	652	8500	316285	7856	2010	0	239 тыс. км	239	2	1.6	1	\N	\N	1	f	/auto_skoda_octavia_34448961.html	TMBKT61Z7B2008491	10	10	2023-06-09 10:11:06.07941	2023-06-09 10:11:06.079416
34282808	5	33	326	8600	319748	7936	2008	0	310 тыс. км	310	2	2.5	1	1	\N	1	f	/auto_kia_sorento_34282808.html	KNAJC524x95xxxx92	5	292	2023-06-09 23:05:00.01539	2023-06-09 23:05:00.015392
34447624	4	70	649	5200	193492	4806	2012	0	277 тыс. км	277	1	1.4	1	2	\N	1	f	/auto_skoda_fabia_34447624.html	TMBEC45J3CB503505	2	2	2023-06-08 19:11:55.760296	2023-06-08 19:11:55.760298
34542568	5	6	59400	130500	4855905	120614	2021	0	35 тыс. км	35	2	4	3	1	\N	1	f	/auto_audi_sq8_34542568.html	WAUZZZF1хMDхххх67	10	10	2023-06-08 19:11:55.846944	2023-06-08 19:11:55.846946
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
262	accord	1	28	f	2023-06-09 23:04:58.761117
62695	300rr	2	55131	f	2023-06-09 23:04:58.89873
35772	emgrand-7-ec7	1	185	f	2023-06-09 23:04:59.142841
663	forester	1	75	f	2023-06-09 23:04:58.766047
35999	g37	1	128	f	2023-06-09 23:04:58.878056
30591	rapid	10	2024	f	2023-06-09 23:04:58.896827
2264	xf	1	31	f	2023-06-09 23:04:58.803997
1193	taurus	1	24	f	2023-06-09 23:04:58.805884
31546	scudo-pass	1	23	f	2023-06-09 23:04:58.823466
358	rx	1	38	f	2023-06-09 23:04:58.878844
3222	q5	1	6	f	2023-06-09 23:04:58.825098
37765	5008	1	58	f	2023-06-09 23:04:58.831021
792	sharan	1	84	f	2023-06-09 23:04:59.292972
63592	explorer-sport-trac	1	24	f	2023-06-09 23:04:59.471227
651	felicia	1	70	f	2023-06-09 23:04:59.590566
29496	21213-niva	1	88	f	2023-06-09 23:04:59.917772
843	1118-kalina	1	88	f	2023-06-09 23:05:00.022864
431	s-class	1	48	f	2023-06-09 23:04:58.879707
1642	sens	1	18	f	2023-06-09 23:04:59.184879
59444	nemo	1	15	f	2023-06-09 23:04:59.293251
51905	b	8	2159	f	2023-06-09 23:04:59.30849
1840	optima	1	33	f	2023-06-09 23:04:59.472898
3121	insignia	1	56	f	2023-06-09 23:04:59.88311
241	fusion	1	24	f	2023-06-09 23:05:01.270577
57035	sr34es	5	1903	f	2023-06-09 23:05:02.144238
40995	issen	2	1976	f	2023-06-09 23:05:02.670643
32987	45	6	115	f	2023-06-09 23:04:58.902
33643	s175	4	1618	f	2023-06-09 23:04:59.142604
1460	cooper	1	147	f	2023-06-09 23:04:59.296594
1890	logan	1	17	f	2023-06-09 23:04:59.298417
856	2110	1	88	f	2023-06-09 23:04:59.882639
1059	niva	1	13	f	2023-06-09 23:04:59.889858
853	2108	1	88	f	2023-06-09 23:04:59.298481
2035	sx4	1	76	f	2023-06-09 23:04:59.298972
1485	outlander	1	52	f	2023-06-09 23:04:59.299297
60206	lafet	5	2046	f	2023-06-09 23:04:59.30366
44037	4-series-gran-coupe	1	9	f	2023-06-09 23:04:59.535655
62310	a5-sportback	1	6	f	2023-06-09 23:04:59.543319
1268	tucson	1	29	f	2023-06-09 23:04:59.659942
53490	21214-4x4	1	88	f	2023-06-09 23:04:59.890103
53103	logan-mcv	1	17	f	2023-06-09 23:04:59.942791
2770	i10	1	29	f	2023-06-09 23:04:59.942957
2320	cefiro	1	55	f	2023-06-09 23:05:00.015542
35448	caddy	1	84	f	2023-06-09 23:05:01.732968
56205	vanette	1	55	f	2023-06-09 23:05:00.015888
3219	3-series	1	9	f	2023-06-09 23:05:01.519774
30808	54322	6	159	f	2023-06-09 23:05:02.088619
30939	8355	5	2127	f	2023-06-09 23:05:02.106956
62157	lead-nh-50	2	28	f	2023-06-09 23:05:02.074588
29430	rxt-x	3	1471	f	2023-06-09 23:05:02.108315
44191	nx	1	38	f	2023-06-09 23:19:29.259571
38901	kkp-3	10	1845	f	2023-06-09 23:19:29.330477
780	beetle	1	84	f	2023-06-09 23:19:29.50879
45128	q50	1	128	f	2023-06-09 23:19:29.328523
1899	qq	1	190	f	2023-06-09 23:19:29.486136
636	leon	1	67	f	2023-06-09 23:19:29.504775
47	a4	1	6	f	2023-06-09 23:19:29.524899
1864	ck1	1	185	f	2023-06-09 23:19:29.812412
622	9-3	1	65	f	2023-06-09 23:19:29.486754
585	laguna	1	62	f	2023-06-09 23:19:29.526401
45152	e-golf	1	84	f	2023-06-09 23:19:29.560736
38477	82-1-belarus	10	1584	f	2023-06-09 23:19:29.540902
3488	soul	1	33	f	2023-06-09 23:19:29.642241
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
\.


--
-- Name: auto_data_auto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auto_data_auto_id_seq', 1, false);


--
-- Name: bodystyles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bodystyles_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.gearboxes_id_seq', 20, true);


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
-- Name: count_marks _RETURN; Type: RULE; Schema: public; Owner: postgres
--

CREATE OR REPLACE VIEW public.count_marks AS
 SELECT count(auto_data.auto_id) AS count,
    marks.name AS mark_name,
    (avg(auto_data."USD"))::integer AS avg_price,
    (avg(auto_data.year))::integer AS avg_year
   FROM (public.auto_data
     LEFT JOIN public.marks ON ((auto_data.mark_id = marks.id)))
  GROUP BY marks.id
  ORDER BY ((avg(auto_data."USD"))::integer) DESC;


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

