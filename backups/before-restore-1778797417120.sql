--
-- PostgreSQL database dump
--

\restrict aufMZstc3RVZ0GFos0p6qwmkpzKyJ1ahfqBfvWF0Drp0BKiqZKUKJfiidUR1GM5

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

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

ALTER TABLE IF EXISTS ONLY public."UserDevice" DROP CONSTRAINT IF EXISTS "UserDevice_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."Offer" DROP CONSTRAINT IF EXISTS "Offer_userId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfferItem" DROP CONSTRAINT IF EXISTS "OfferItem_offerId_fkey";
ALTER TABLE IF EXISTS ONLY public."OfferExtraItem" DROP CONSTRAINT IF EXISTS "OfferExtraItem_offerId_fkey";
DROP INDEX IF EXISTS public."User_username_key";
DROP INDEX IF EXISTS public."UserDevice_userId_fingerprint_key";
DROP INDEX IF EXISTS public."Setting_userId_key_key";
DROP INDEX IF EXISTS public."ProfileTehnicki_userId_profil_element_key";
DROP INDEX IF EXISTS public."FormulaDefinition_vrstaStolarije_vrstaProzora_idx";
ALTER TABLE IF EXISTS ONLY public._prisma_migrations DROP CONSTRAINT IF EXISTS _prisma_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public."Valuta" DROP CONSTRAINT IF EXISTS "Valuta_pkey";
ALTER TABLE IF EXISTS ONLY public."User" DROP CONSTRAINT IF EXISTS "User_pkey";
ALTER TABLE IF EXISTS ONLY public."UserDevice" DROP CONSTRAINT IF EXISTS "UserDevice_pkey";
ALTER TABLE IF EXISTS ONLY public."Setting" DROP CONSTRAINT IF EXISTS "Setting_pkey";
ALTER TABLE IF EXISTS ONLY public."Profile" DROP CONSTRAINT IF EXISTS "Profile_pkey";
ALTER TABLE IF EXISTS ONLY public."ProfileTehnicki" DROP CONSTRAINT IF EXISTS "ProfileTehnicki_pkey";
ALTER TABLE IF EXISTS ONLY public."ProfilePrice" DROP CONSTRAINT IF EXISTS "ProfilePrice_pkey";
ALTER TABLE IF EXISTS ONLY public."ProfileParam" DROP CONSTRAINT IF EXISTS "ProfileParam_pkey";
ALTER TABLE IF EXISTS ONLY public."Profil" DROP CONSTRAINT IF EXISTS "Profil_pkey";
ALTER TABLE IF EXISTS ONLY public."Params" DROP CONSTRAINT IF EXISTS "Params_pkey";
ALTER TABLE IF EXISTS ONLY public."Param" DROP CONSTRAINT IF EXISTS "Param_pkey";
ALTER TABLE IF EXISTS ONLY public."Okov" DROP CONSTRAINT IF EXISTS "Okov_pkey";
ALTER TABLE IF EXISTS ONLY public."Offer" DROP CONSTRAINT IF EXISTS "Offer_pkey";
ALTER TABLE IF EXISTS ONLY public."OfferItem" DROP CONSTRAINT IF EXISTS "OfferItem_pkey";
ALTER TABLE IF EXISTS ONLY public."OfferExtraItem" DROP CONSTRAINT IF EXISTS "OfferExtraItem_pkey";
ALTER TABLE IF EXISTS ONLY public."Ispuna" DROP CONSTRAINT IF EXISTS "Ispuna_pkey";
ALTER TABLE IF EXISTS ONLY public."FormulaDefinition" DROP CONSTRAINT IF EXISTS "FormulaDefinition_pkey";
ALTER TABLE IF EXISTS ONLY public."AuditLog" DROP CONSTRAINT IF EXISTS "AuditLog_pkey";
ALTER TABLE IF EXISTS public."Valuta" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."UserDevice" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."User" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Setting" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProfileTehnicki" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProfilePrice" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProfileParam" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Profile" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Profil" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Params" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Param" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Okov" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OfferItem" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OfferExtraItem" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Offer" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Ispuna" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FormulaDefinition" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AuditLog" ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public._prisma_migrations;
DROP SEQUENCE IF EXISTS public."Valuta_id_seq";
DROP TABLE IF EXISTS public."Valuta";
DROP SEQUENCE IF EXISTS public."User_id_seq";
DROP SEQUENCE IF EXISTS public."UserDevice_id_seq";
DROP TABLE IF EXISTS public."UserDevice";
DROP TABLE IF EXISTS public."User";
DROP SEQUENCE IF EXISTS public."Setting_id_seq";
DROP TABLE IF EXISTS public."Setting";
DROP SEQUENCE IF EXISTS public."Profile_id_seq";
DROP SEQUENCE IF EXISTS public."ProfileTehnicki_id_seq";
DROP TABLE IF EXISTS public."ProfileTehnicki";
DROP SEQUENCE IF EXISTS public."ProfilePrice_id_seq";
DROP TABLE IF EXISTS public."ProfilePrice";
DROP SEQUENCE IF EXISTS public."ProfileParam_id_seq";
DROP TABLE IF EXISTS public."ProfileParam";
DROP TABLE IF EXISTS public."Profile";
DROP SEQUENCE IF EXISTS public."Profil_id_seq";
DROP TABLE IF EXISTS public."Profil";
DROP SEQUENCE IF EXISTS public."Params_id_seq";
DROP TABLE IF EXISTS public."Params";
DROP SEQUENCE IF EXISTS public."Param_id_seq";
DROP TABLE IF EXISTS public."Param";
DROP SEQUENCE IF EXISTS public."Okov_id_seq";
DROP TABLE IF EXISTS public."Okov";
DROP SEQUENCE IF EXISTS public."Offer_id_seq";
DROP SEQUENCE IF EXISTS public."OfferItem_id_seq";
DROP TABLE IF EXISTS public."OfferItem";
DROP SEQUENCE IF EXISTS public."OfferExtraItem_id_seq";
DROP TABLE IF EXISTS public."OfferExtraItem";
DROP TABLE IF EXISTS public."Offer";
DROP SEQUENCE IF EXISTS public."Ispuna_id_seq";
DROP TABLE IF EXISTS public."Ispuna";
DROP SEQUENCE IF EXISTS public."FormulaDefinition_id_seq";
DROP TABLE IF EXISTS public."FormulaDefinition";
DROP SEQUENCE IF EXISTS public."AuditLog_id_seq";
DROP TABLE IF EXISTS public."AuditLog";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: AuditLog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AuditLog" (
    id integer NOT NULL,
    "userId" integer,
    username text NOT NULL,
    action text NOT NULL,
    details text,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."AuditLog" OWNER TO postgres;

--
-- Name: AuditLog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AuditLog_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."AuditLog_id_seq" OWNER TO postgres;

--
-- Name: AuditLog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AuditLog_id_seq" OWNED BY public."AuditLog".id;


--
-- Name: FormulaDefinition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FormulaDefinition" (
    id integer NOT NULL,
    "vrstaStolarije" text,
    "vrstaProzora" text,
    element text NOT NULL,
    s text,
    v text,
    kom integer,
    cena text,
    redosled integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."FormulaDefinition" OWNER TO postgres;

--
-- Name: FormulaDefinition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FormulaDefinition_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."FormulaDefinition_id_seq" OWNER TO postgres;

--
-- Name: FormulaDefinition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FormulaDefinition_id_seq" OWNED BY public."FormulaDefinition".id;


--
-- Name: Ispuna; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ispuna" (
    id integer NOT NULL,
    "userId" integer,
    naziv text NOT NULL,
    cena double precision NOT NULL
);


ALTER TABLE public."Ispuna" OWNER TO postgres;

--
-- Name: Ispuna_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ispuna_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Ispuna_id_seq" OWNER TO postgres;

--
-- Name: Ispuna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ispuna_id_seq" OWNED BY public."Ispuna".id;


--
-- Name: Offer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Offer" (
    id integer NOT NULL,
    "userId" integer,
    "brojPonude" text,
    "godinaPonude" integer,
    "redniBrojGodina" integer,
    naziv text,
    adresa text,
    telefon text,
    pib text,
    maticni text,
    datum text,
    vrsta_ponude text,
    valuta text,
    popust text,
    napomena text
);


ALTER TABLE public."Offer" OWNER TO postgres;

--
-- Name: OfferExtraItem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OfferExtraItem" (
    id integer NOT NULL,
    "offerId" integer NOT NULL,
    naziv text,
    kolicina integer DEFAULT 1 NOT NULL,
    cena double precision DEFAULT 0 NOT NULL
);


ALTER TABLE public."OfferExtraItem" OWNER TO postgres;

--
-- Name: OfferExtraItem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OfferExtraItem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OfferExtraItem_id_seq" OWNER TO postgres;

--
-- Name: OfferExtraItem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OfferExtraItem_id_seq" OWNED BY public."OfferExtraItem".id;


--
-- Name: OfferItem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OfferItem" (
    id integer NOT NULL,
    "offerId" integer NOT NULL,
    vrsta_stolarije text,
    vrsta_prozora text,
    a integer,
    b integer,
    c integer,
    d integer,
    profil text,
    ispuna text,
    okov text,
    otvaranje text,
    roletna text,
    komarnik text,
    kolicina integer
);


ALTER TABLE public."OfferItem" OWNER TO postgres;

--
-- Name: OfferItem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OfferItem_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."OfferItem_id_seq" OWNER TO postgres;

--
-- Name: OfferItem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OfferItem_id_seq" OWNED BY public."OfferItem".id;


--
-- Name: Offer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Offer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Offer_id_seq" OWNER TO postgres;

--
-- Name: Offer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Offer_id_seq" OWNED BY public."Offer".id;


--
-- Name: Okov; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Okov" (
    id integer NOT NULL,
    "userId" integer,
    naziv text NOT NULL,
    cena double precision NOT NULL
);


ALTER TABLE public."Okov" OWNER TO postgres;

--
-- Name: Okov_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Okov_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Okov_id_seq" OWNER TO postgres;

--
-- Name: Okov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Okov_id_seq" OWNED BY public."Okov".id;


--
-- Name: Param; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Param" (
    id integer NOT NULL,
    grupa text NOT NULL,
    naziv text NOT NULL,
    cena double precision
);


ALTER TABLE public."Param" OWNER TO postgres;

--
-- Name: Param_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Param_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Param_id_seq" OWNER TO postgres;

--
-- Name: Param_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Param_id_seq" OWNED BY public."Param".id;


--
-- Name: Params; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Params" (
    id integer NOT NULL,
    grupa text NOT NULL,
    naziv text NOT NULL
);


ALTER TABLE public."Params" OWNER TO postgres;

--
-- Name: Params_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Params_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Params_id_seq" OWNER TO postgres;

--
-- Name: Params_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Params_id_seq" OWNED BY public."Params".id;


--
-- Name: Profil; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Profil" (
    id integer NOT NULL,
    "userId" integer,
    naziv text NOT NULL
);


ALTER TABLE public."Profil" OWNER TO postgres;

--
-- Name: Profil_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Profil_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Profil_id_seq" OWNER TO postgres;

--
-- Name: Profil_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Profil_id_seq" OWNED BY public."Profil".id;


--
-- Name: Profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Profile" (
    id integer NOT NULL,
    naziv text NOT NULL
);


ALTER TABLE public."Profile" OWNER TO postgres;

--
-- Name: ProfileParam; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProfileParam" (
    id integer NOT NULL,
    profil text NOT NULL,
    parametar text NOT NULL,
    vrednost double precision NOT NULL
);


ALTER TABLE public."ProfileParam" OWNER TO postgres;

--
-- Name: ProfileParam_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProfileParam_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProfileParam_id_seq" OWNER TO postgres;

--
-- Name: ProfileParam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProfileParam_id_seq" OWNED BY public."ProfileParam".id;


--
-- Name: ProfilePrice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProfilePrice" (
    id integer NOT NULL,
    "userId" integer,
    profil text NOT NULL,
    element text NOT NULL,
    cena double precision NOT NULL
);


ALTER TABLE public."ProfilePrice" OWNER TO postgres;

--
-- Name: ProfilePrice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProfilePrice_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProfilePrice_id_seq" OWNER TO postgres;

--
-- Name: ProfilePrice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProfilePrice_id_seq" OWNED BY public."ProfilePrice".id;


--
-- Name: ProfileTehnicki; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProfileTehnicki" (
    id integer NOT NULL,
    "userId" integer,
    profil text NOT NULL,
    element text NOT NULL,
    vrednost double precision NOT NULL
);


ALTER TABLE public."ProfileTehnicki" OWNER TO postgres;

--
-- Name: ProfileTehnicki_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProfileTehnicki_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ProfileTehnicki_id_seq" OWNER TO postgres;

--
-- Name: ProfileTehnicki_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProfileTehnicki_id_seq" OWNED BY public."ProfileTehnicki".id;


--
-- Name: Profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Profile_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Profile_id_seq" OWNER TO postgres;

--
-- Name: Profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Profile_id_seq" OWNED BY public."Profile".id;


--
-- Name: Setting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Setting" (
    id integer NOT NULL,
    "userId" integer,
    key text NOT NULL,
    value text NOT NULL
);


ALTER TABLE public."Setting" OWNER TO postgres;

--
-- Name: Setting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Setting_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Setting_id_seq" OWNER TO postgres;

--
-- Name: Setting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Setting_id_seq" OWNED BY public."Setting".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    role text DEFAULT 'USER'::text NOT NULL,
    "isActive" boolean DEFAULT true NOT NULL,
    "licenseStart" timestamp(3) without time zone,
    "licenseEnd" timestamp(3) without time zone,
    "maxDevices" integer DEFAULT 1 NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE public."User" OWNER TO postgres;

--
-- Name: UserDevice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserDevice" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    fingerprint text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."UserDevice" OWNER TO postgres;

--
-- Name: UserDevice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserDevice_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."UserDevice_id_seq" OWNER TO postgres;

--
-- Name: UserDevice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserDevice_id_seq" OWNED BY public."UserDevice".id;


--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."User_id_seq" OWNER TO postgres;

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: Valuta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Valuta" (
    id integer NOT NULL,
    "userId" integer,
    naziv text NOT NULL
);


ALTER TABLE public."Valuta" OWNER TO postgres;

--
-- Name: Valuta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Valuta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Valuta_id_seq" OWNER TO postgres;

--
-- Name: Valuta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Valuta_id_seq" OWNED BY public."Valuta".id;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Name: AuditLog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AuditLog" ALTER COLUMN id SET DEFAULT nextval('public."AuditLog_id_seq"'::regclass);


--
-- Name: FormulaDefinition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FormulaDefinition" ALTER COLUMN id SET DEFAULT nextval('public."FormulaDefinition_id_seq"'::regclass);


--
-- Name: Ispuna id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ispuna" ALTER COLUMN id SET DEFAULT nextval('public."Ispuna_id_seq"'::regclass);


--
-- Name: Offer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Offer" ALTER COLUMN id SET DEFAULT nextval('public."Offer_id_seq"'::regclass);


--
-- Name: OfferExtraItem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OfferExtraItem" ALTER COLUMN id SET DEFAULT nextval('public."OfferExtraItem_id_seq"'::regclass);


--
-- Name: OfferItem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OfferItem" ALTER COLUMN id SET DEFAULT nextval('public."OfferItem_id_seq"'::regclass);


--
-- Name: Okov id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Okov" ALTER COLUMN id SET DEFAULT nextval('public."Okov_id_seq"'::regclass);


--
-- Name: Param id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Param" ALTER COLUMN id SET DEFAULT nextval('public."Param_id_seq"'::regclass);


--
-- Name: Params id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Params" ALTER COLUMN id SET DEFAULT nextval('public."Params_id_seq"'::regclass);


--
-- Name: Profil id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil" ALTER COLUMN id SET DEFAULT nextval('public."Profil_id_seq"'::regclass);


--
-- Name: Profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profile" ALTER COLUMN id SET DEFAULT nextval('public."Profile_id_seq"'::regclass);


--
-- Name: ProfileParam id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfileParam" ALTER COLUMN id SET DEFAULT nextval('public."ProfileParam_id_seq"'::regclass);


--
-- Name: ProfilePrice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfilePrice" ALTER COLUMN id SET DEFAULT nextval('public."ProfilePrice_id_seq"'::regclass);


--
-- Name: ProfileTehnicki id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfileTehnicki" ALTER COLUMN id SET DEFAULT nextval('public."ProfileTehnicki_id_seq"'::regclass);


--
-- Name: Setting id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Setting" ALTER COLUMN id SET DEFAULT nextval('public."Setting_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Name: UserDevice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDevice" ALTER COLUMN id SET DEFAULT nextval('public."UserDevice_id_seq"'::regclass);


--
-- Name: Valuta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Valuta" ALTER COLUMN id SET DEFAULT nextval('public."Valuta_id_seq"'::regclass);


--
-- Data for Name: AuditLog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AuditLog" (id, "userId", username, action, details, "createdAt") FROM stdin;
1	1	SYSTEM	CREATE_FIRST_ADMIN	Kreiran admin: admin	2026-05-13 02:26:20.138
2	1	admin	LOGIN	Uspešna prijava	2026-05-13 02:27:59.833
3	2	ADMIN	CREATE_USER	Kreiran korisnik: rade	2026-05-13 02:29:08.19
4	3	ADMIN	CREATE_USER	Kreiran korisnik: boki	2026-05-13 02:29:24.291
5	\N	ADMIN	BACKUP_RESTORE	Restore iz: backup-2026-05-13-01-17.db, sigurnosni backup: before-restore-1778666522773.db	2026-05-13 10:02:02.824
6	\N	ADMIN	BACKUP_RESTORE	Restore iz: backup-2026-05-12-23-03.db, sigurnosni backup: before-restore-1778666632510.db	2026-05-13 10:03:52.537
7	2	rade	LOGIN	Uspešna prijava	2026-05-13 10:06:39.282
8	3	boki	LOGIN	Uspešna prijava	2026-05-13 10:06:56.619
9	1	admin	LOGIN	Uspešna prijava	2026-05-13 10:07:29.561
10	\N	ADMIN	BACKUP_RESTORE	Restore iz: backup-2026-05-11-11-04.db, sigurnosni backup: before-restore-1778666942520.db	2026-05-13 10:09:02.546
11	2	rade	LOGIN	Uspešna prijava	2026-05-14 20:13:55.978
12	2	rade	CREATE_OFFER	P-1/26 - Deki doo	2026-05-14 20:22:12.661
13	2	rade	CREATE_OFFER	R-1/26 - Sale doo	2026-05-14 20:27:01.794
14	2	rade	CREATE_OFFER	R-2/26 - Deki doo	2026-05-14 20:27:15.729
15	1	admin	LOGIN	Uspešna prijava	2026-05-14 20:28:49.795
16	4	ADMIN	CREATE_USER	Kreiran korisnik: sale	2026-05-14 20:32:31.767
17	4	sale	LOGIN	Uspešna prijava	2026-05-14 20:32:56.563
18	1	admin	LOGIN	Uspešna prijava	2026-05-14 20:33:45.665
19	\N	ADMIN	BACKUP_CREATE	backup-2026-05-14_23-48.sql	2026-05-14 21:48:46.792
20	5	ADMIN	CREATE_USER	Kreiran korisnik: dada	2026-05-14 21:54:23.971
21	\N	ADMIN	BACKUP_RESTORE	backup-2026-05-14_23-48.sql	2026-05-14 22:01:12.92
22	\N	ADMIN	BACKUP_RESTORE	backup-2026-05-14_23-48.sql	2026-05-14 22:01:43.684
\.


--
-- Data for Name: FormulaDefinition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."FormulaDefinition" (id, "vrstaStolarije", "vrstaProzora", element, s, v, kom, cena, redosled) FROM stdin;
1			Štok	A + 2 * Var profila	B + 2 * Var profila	2	kom * (S + V) / 1000 * Štok Cena	0
2			Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	kom * (S + V) / 1000 * Čelik Cena	0
3			Krilo 1	(A - 2 * Širina profila Štok) / 2 + 2 * Var profila + 2 * Preklop kod krila	D - Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	2	kom * (S + V) / 1000 * Krilo Cena	0
4	PVC	Fiksni prozor	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
5	PVC	Fiksni prozor	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
6	PVC	Fiksni prozor	Lajsna za štok	A - 2 * Širina profila Štok	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
7	PVC	Fiksni prozor	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
8	PVC	Fiksni prozor	Krilo 1			1		5
9	PVC	Fiksni prozor	Čelik za krilo 1			1		6
10	PVC	Fiksni prozor	Lajsna za krilo 1			1		7
11	PVC	Fiksni prozor	Ispuna za krilo 1			1		8
12	PVC	Fiksni prozor	Krilo 2			1		9
13	PVC	Fiksni prozor	Čelik za krilo 2			1		10
14	PVC	Fiksni prozor	Lajsna za krilo 2			1		11
15	PVC	Fiksni prozor	Ispuna za krilo 2			1		12
16	PVC	Fiksni prozor	T-prečka 1			1		13
17	PVC	Fiksni prozor	Čelik za T-prečku 1			1		14
18	PVC	Fiksni prozor	T-prečka 2			1		15
19	PVC	Fiksni prozor	Čelik za T-prečku 2			1		16
20	PVC	Fiksni prozor	Lajsna za nadsvetlo			1		17
21	PVC	Fiksni prozor	Ispuna za nadsvetlo			1		18
22	PVC	Fiksni prozor	Šloga			1		19
23	PVC	Fiksni prozor	ALU Spojnice 1 (kom)			1		20
24	PVC	Fiksni prozor	ALU Spojnice 2 (kom)			1		21
25	PVC	Fiksni prozor	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
26	PVC	Fiksni prozor	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
27	PVC	Fiksni prozor	Cena			1		24
28	PVC	Jednokrilni prozor	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
29	PVC	Jednokrilni prozor	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
30	PVC	Jednokrilni prozor	Lajsna za štok			1		3
31	PVC	Jednokrilni prozor	Ispuna za štok			1		4
32	PVC	Jednokrilni prozor	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
33	PVC	Jednokrilni prozor	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
34	PVC	Jednokrilni prozor	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
35	PVC	Jednokrilni prozor	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
36	PVC	Jednokrilni prozor	Krilo 2			1		9
37	PVC	Jednokrilni prozor	Čelik za krilo 2			1		10
38	PVC	Jednokrilni prozor	Lajsna za krilo 2			1		11
39	PVC	Jednokrilni prozor	Ispuna za krilo 2			1		12
40	PVC	Jednokrilni prozor	T-prečka 1			1		13
41	PVC	Jednokrilni prozor	Čelik za T-prečku 1			1		14
42	PVC	Jednokrilni prozor	T-prečka 2			1		15
43	PVC	Jednokrilni prozor	Čelik za T-prečku 2			1		16
44	PVC	Jednokrilni prozor	Lajsna za nadsvetlo			1		17
45	PVC	Jednokrilni prozor	Ispuna za nadsvetlo			1		18
46	PVC	Jednokrilni prozor	Šloga			1		19
47	PVC	Jednokrilni prozor	ALU Spojnice 1 (kom)			1		20
48	PVC	Jednokrilni prozor	ALU Spojnice 2 (kom)			1		21
49	PVC	Jednokrilni prozor	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
50	PVC	Jednokrilni prozor	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
51	PVC	Trokrilni prozor (2 fiksa)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
52	PVC	Trokrilni prozor (2 fiksa)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
53	PVC	Trokrilni prozor (2 fiksa)	Lajsna za štok	A / 2 - C / 2 - Širina profila Štok	B - 2 * Širina profila Štok	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
54	PVC	Trokrilni prozor (2 fiksa)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	2	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
55	PVC	Trokrilni prozor (2 fiksa)	Krilo 1	C - 2 * Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
56	PVC	Trokrilni prozor (2 fiksa)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
57	PVC	Trokrilni prozor (2 fiksa)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
58	PVC	Trokrilni prozor (2 fiksa)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
59	PVC	Trokrilni prozor (2 fiksa)	Krilo 2			1		9
60	PVC	Trokrilni prozor (2 fiksa)	Čelik za krilo 2			1		10
61	PVC	Trokrilni prozor (2 fiksa)	Lajsna za krilo 2			1		11
62	PVC	Trokrilni prozor (2 fiksa)	Ispuna za krilo 2			1		12
63	PVC	Trokrilni prozor (2 fiksa)	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
64	PVC	Trokrilni prozor (2 fiksa)	Čelik za T-prečku 1		T-prečka 1 (V)	2	Kom. *  V / 1000 * Čelik Cena	14
65	PVC	Trokrilni prozor (2 fiksa)	T-prečka 2			1		15
66	PVC	Trokrilni prozor (2 fiksa)	Čelik za T-prečku 2			1		16
67	PVC	Trokrilni prozor (2 fiksa)	Lajsna za nadsvetlo			1		17
68	PVC	Trokrilni prozor (2 fiksa)	Ispuna za nadsvetlo			1		18
69	PVC	Trokrilni prozor (2 fiksa)	Šloga			1		19
70	PVC	Trokrilni prozor (2 fiksa)	ALU Spojnice 1 (kom)			1		20
71	PVC	Trokrilni prozor (2 fiksa)	ALU Spojnice 2 (kom)			1		21
72	PVC	Trokrilni prozor (2 fiksa)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	(Roletna (Š) / 1000) ( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100* (Roletna (V) / 1000) * Roletna Cena * (1 + (Roletna %) / 100)	22
73	PVC	Trokrilni prozor (2 fiksa)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
74	PVC	Trokrilni prozor (fiks + T-prečka) A	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
75	PVC	Trokrilni prozor (fiks + T-prečka) A	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
76	PVC	Trokrilni prozor (fiks + T-prečka) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3	B - 2 *  Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
77	PVC	Trokrilni prozor (fiks + T-prečka) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
78	PVC	Trokrilni prozor (fiks + T-prečka) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok - 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
79	PVC	Trokrilni prozor (fiks + T-prečka) A	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
80	PVC	Trokrilni prozor (fiks + T-prečka) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
81	PVC	Trokrilni prozor (fiks + T-prečka) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
82	PVC	Trokrilni prozor (fiks + T-prečka) A	Krilo 2			1		9
83	PVC	Trokrilni prozor (fiks + T-prečka) A	Čelik za krilo 2			1		10
84	PVC	Trokrilni prozor (fiks + T-prečka) A	Lajsna za krilo 2			1		11
85	PVC	Trokrilni prozor (fiks + T-prečka) A	Ispuna za krilo 2			1		12
86	PVC	Trokrilni prozor (fiks + T-prečka) A	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
87	PVC	Trokrilni prozor (fiks + T-prečka) A	Čelik za T-prečku 1		T-prečka 1 (V)	2	Kom. *  V / 1000 * Čelik Cena	14
88	PVC	Trokrilni prozor (fiks + T-prečka) A	T-prečka 2			1		15
89	PVC	Trokrilni prozor (fiks + T-prečka) A	Čelik za T-prečku 2			1		16
90	PVC	Trokrilni prozor (fiks + T-prečka) A	Lajsna za nadsvetlo			1		17
91	PVC	Trokrilni prozor (fiks + T-prečka) A	Ispuna za nadsvetlo			1		18
92	PVC	Trokrilni prozor (fiks + T-prečka) A	Šloga			1		19
93	PVC	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnice 1 (kom)			1		20
94	PVC	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnice 2 (kom)			1		21
95	PVC	Trokrilni prozor (fiks + T-prečka) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
96	PVC	Trokrilni prozor (fiks + T-prečka) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
97	PVC	Trokrilni prozor (2 fiksa) A	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
98	PVC	Trokrilni prozor (2 fiksa) A	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
99	PVC	Trokrilni prozor (2 fiksa) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3	B - 2 * Širina profila Štok	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
100	PVC	Trokrilni prozor (2 fiksa) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	2	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
101	PVC	Trokrilni prozor (2 fiksa) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok - 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
102	PVC	Trokrilni prozor (2 fiksa) A	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
103	PVC	Trokrilni prozor (2 fiksa) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
104	PVC	Trokrilni prozor (2 fiksa) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
105	PVC	Trokrilni prozor (2 fiksa) A	Krilo 2			1		9
106	PVC	Trokrilni prozor (2 fiksa) A	Čelik za krilo 2			1		10
107	PVC	Trokrilni prozor (2 fiksa) A	Lajsna za krilo 2			1		11
108	PVC	Trokrilni prozor (2 fiksa) A	Ispuna za krilo 2			1		12
109	PVC	Trokrilni prozor (2 fiksa) A	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
110	PVC	Trokrilni prozor (2 fiksa) A	Čelik za T-prečku 1		T-prečka 1 (V)	2	Kom. *  V / 1000 * Čelik Cena	14
111	PVC	Trokrilni prozor (2 fiksa) A	T-prečka 2			1		15
112	PVC	Trokrilni prozor (2 fiksa) A	Čelik za T-prečku 2			1		16
113	PVC	Trokrilni prozor (2 fiksa) A	Lajsna za nadsvetlo			1		17
114	PVC	Trokrilni prozor (2 fiksa) A	Ispuna za nadsvetlo			1		18
115	PVC	Trokrilni prozor (2 fiksa) A	Šloga			1		19
116	PVC	Trokrilni prozor (2 fiksa) A	ALU Spojnice 1 (kom)			1		20
117	PVC	Trokrilni prozor (2 fiksa) A	ALU Spojnice 2 (kom)			1		21
118	PVC	Trokrilni prozor (2 fiksa) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
119	PVC	Trokrilni prozor (2 fiksa) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
120	PVC	Trokrilni prozor (T-prečka)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
121	PVC	Trokrilni prozor (T-prečka)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
122	PVC	Trokrilni prozor (T-prečka)	Lajsna za štok			1		3
123	PVC	Trokrilni prozor (T-prečka)	Ispuna za štok			1		4
124	PVC	Trokrilni prozor (T-prečka)	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok +  2 * Preklop kod krila	6	Kom. * ( S + V ) / 1000 * Krilo Cena	5
125	PVC	Trokrilni prozor (T-prečka)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	6	Kom. * ( S + V ) / 1000 * Čelik Cena	6
126	PVC	Trokrilni prozor (T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	6	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
127	PVC	Trokrilni prozor (T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	3	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
128	PVC	Trokrilni prozor (T-prečka)	Krilo 2			1		9
129	PVC	Trokrilni prozor (T-prečka)	Čelik za krilo 2			1		10
130	PVC	Trokrilni prozor (T-prečka)	Lajsna za krilo 2			1		11
131	PVC	Trokrilni prozor (T-prečka)	Ispuna za krilo 2			1		12
132	PVC	Trokrilni prozor (T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
133	PVC	Trokrilni prozor (T-prečka)	Čelik za T-prečku 1		T-prečka 1 (V)	2	Kom. *  V / 1000 * Čelik Cena	14
134	PVC	Trokrilni prozor (T-prečka)	T-prečka 2			1		15
135	PVC	Trokrilni prozor (T-prečka)	Čelik za T-prečku 2			1		16
136	PVC	Trokrilni prozor (T-prečka)	Lajsna za nadsvetlo			1		17
137	PVC	Trokrilni prozor (T-prečka)	Ispuna za nadsvetlo			1		18
138	PVC	Trokrilni prozor (T-prečka)	Šloga			1		19
139	PVC	Trokrilni prozor (T-prečka)	ALU Spojnice 1 (kom)			1		20
140	PVC	Trokrilni prozor (T-prečka)	ALU Spojnice 2 (kom)			1		21
141	PVC	Trokrilni prozor (T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
142	PVC	Trokrilni prozor (T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
143	PVC	Trokrilni prozor (šloga)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
144	PVC	Trokrilni prozor (šloga)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
145	PVC	Trokrilni prozor (šloga)	Lajsna za štok			1		3
146	PVC	Trokrilni prozor (šloga)	Ispuna za štok			1		4
147	PVC	Trokrilni prozor (šloga)	Krilo 1	A / 3 - (2 * Širina profila Štok) / 3 - Širina profila T prečka - Preklop kod šloge / 3 + 2 * Var profila + (4 * Preklop kod krila) / 3	Štok (V) - 2 * Širina profila Štok +  2 * Preklop kod krila	6	Kom. * ( S + V ) / 1000 * Krilo Cena	5
148	PVC	Trokrilni prozor (šloga)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	6	Kom. * ( S + V ) / 1000 * Čelik Cena	6
149	PVC	Trokrilni prozor (šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	6	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
150	PVC	Trokrilni prozor (šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	3	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
151	PVC	Trokrilni prozor (šloga)	Krilo 2			1		9
152	PVC	Trokrilni prozor (šloga)	Čelik za krilo 2			1		10
153	PVC	Trokrilni prozor (šloga)	Lajsna za krilo 2			1		11
154	PVC	Trokrilni prozor (šloga)	Ispuna za krilo 2			1		12
155	PVC	Trokrilni prozor (šloga)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
156	PVC	Trokrilni prozor (šloga)	Čelik za T-prečku 1		T-prečka 1 (V)	1	Kom. *  V / 1000 * Čelik Cena	14
157	PVC	Trokrilni prozor (šloga)	T-prečka 2			1		15
158	PVC	Trokrilni prozor (šloga)	Čelik za T-prečku 2			1		16
159	PVC	Trokrilni prozor (šloga)	Lajsna za nadsvetlo			1		17
160	PVC	Trokrilni prozor (šloga)	Ispuna za nadsvetlo			1		18
161	PVC	Trokrilni prozor (šloga)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
162	PVC	Trokrilni prozor (šloga)	ALU Spojnice 1 (kom)			1		20
163	PVC	Trokrilni prozor (šloga)	ALU Spojnice 2 (kom)			1		21
164	PVC	Trokrilni prozor (šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
165	PVC	Trokrilni prozor (šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
269	PVC	Trokrilni prozor (fiks + T-prečka)	Ispuna za krilo 2			1		12
166	PVC	Trokrilni prozor (fiks + šloga) A	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
167	PVC	Trokrilni prozor (fiks + šloga) A	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
168	PVC	Trokrilni prozor (fiks + šloga) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - Preklop kod šloge / 3	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
169	PVC	Trokrilni prozor (fiks + šloga) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
170	PVC	Trokrilni prozor (fiks + šloga) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - Širina profila T prečka - Preklop kod šloge / 3 + 2 * Var profila + Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
171	PVC	Trokrilni prozor (fiks + šloga) A	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
172	PVC	Trokrilni prozor (fiks + šloga) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
173	PVC	Trokrilni prozor (fiks + šloga) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
174	PVC	Trokrilni prozor (fiks + šloga) A	Krilo 2			1		9
175	PVC	Trokrilni prozor (fiks + šloga) A	Čelik za krilo 2			1		10
176	PVC	Trokrilni prozor (fiks + šloga) A	Lajsna za krilo 2			1		11
177	PVC	Trokrilni prozor (fiks + šloga) A	Ispuna za krilo 2			1		12
178	PVC	Trokrilni prozor (fiks + šloga) A	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
179	PVC	Trokrilni prozor (fiks + šloga) A	Čelik za T-prečku 1		T-prečka 1 (V)	1	Kom. *  V / 1000 * Čelik Cena	14
180	PVC	Trokrilni prozor (fiks + šloga) A	T-prečka 2			1		15
181	PVC	Trokrilni prozor (fiks + šloga) A	Čelik za T-prečku 2			1		16
182	PVC	Trokrilni prozor (fiks + šloga) A	Lajsna za nadsvetlo			1		17
183	PVC	Trokrilni prozor (fiks + šloga) A	Ispuna za nadsvetlo			1		18
184	PVC	Trokrilni prozor (fiks + šloga) A	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
185	PVC	Trokrilni prozor (fiks + šloga) A	ALU Spojnice 1 (kom)			1		20
186	PVC	Trokrilni prozor (fiks + šloga) A	ALU Spojnice 2 (kom)			1		21
187	PVC	Trokrilni prozor (fiks + šloga) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
188	PVC	Trokrilni prozor (fiks + šloga) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
189	PVC	Dvokrilni prozor (šloga)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
190	PVC	Dvokrilni prozor (šloga)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
191	PVC	Dvokrilni prozor (šloga)	Lajsna za štok			1		3
192	PVC	Dvokrilni prozor (šloga)	Ispuna za štok			1		4
193	PVC	Dvokrilni prozor (šloga)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
194	PVC	Dvokrilni prozor (šloga)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
195	PVC	Dvokrilni prozor (šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
196	PVC	Dvokrilni prozor (šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
197	PVC	Dvokrilni prozor (šloga)	Krilo 2			1		9
198	PVC	Dvokrilni prozor (šloga)	Čelik za krilo 2			1		10
199	PVC	Dvokrilni prozor (šloga)	Lajsna za krilo 2			1		11
200	PVC	Dvokrilni prozor (šloga)	Ispuna za krilo 2			1		12
201	PVC	Dvokrilni prozor (šloga)	T-prečka 1			1		13
202	PVC	Dvokrilni prozor (šloga)	Čelik za T-prečku 1			1		14
203	PVC	Dvokrilni prozor (šloga)	T-prečka 2			1		15
204	PVC	Dvokrilni prozor (šloga)	Čelik za T-prečku 2			1		16
205	PVC	Dvokrilni prozor (šloga)	Lajsna za nadsvetlo			1		17
206	PVC	Dvokrilni prozor (šloga)	Ispuna za nadsvetlo			1		18
207	PVC	Dvokrilni prozor (šloga)	Šloga		Krilo 1 (V) - Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
208	PVC	Dvokrilni prozor (šloga)	ALU Spojnice 1 (kom)			1		20
209	PVC	Dvokrilni prozor (šloga)	ALU Spojnice 2 (kom)			1		21
210	PVC	Dvokrilni prozor (šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
211	PVC	Dvokrilni prozor (šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
212	PVC	Dvokrilni prozor (T-prečka)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
213	PVC	Dvokrilni prozor (T-prečka)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
214	PVC	Dvokrilni prozor (T-prečka)	Lajsna za štok			1		3
215	PVC	Dvokrilni prozor (T-prečka)	Ispuna za štok			1		4
216	PVC	Dvokrilni prozor (T-prečka)	Krilo 1	(Štok (Š) - 2 * Širina profila Štok - Širina profila T prečka + (2 * Var profila) * 2 + (2 * Preklop kod krila) * 2) / 2	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
217	PVC	Dvokrilni prozor (T-prečka)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
218	PVC	Dvokrilni prozor (T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
219	PVC	Dvokrilni prozor (T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
220	PVC	Dvokrilni prozor (T-prečka)	Krilo 2			1		9
221	PVC	Dvokrilni prozor (T-prečka)	Čelik za krilo 2			1		10
222	PVC	Dvokrilni prozor (T-prečka)	Lajsna za krilo 2			1		11
223	PVC	Dvokrilni prozor (T-prečka)	Ispuna za krilo 2			1		12
224	PVC	Dvokrilni prozor (T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
225	PVC	Dvokrilni prozor (T-prečka)	Čelik za T-prečku 1		T-prečka 1 (V)	1	Kom. *  V / 1000 * Čelik Cena	14
226	PVC	Dvokrilni prozor (T-prečka)	T-prečka 2			1		15
227	PVC	Dvokrilni prozor (T-prečka)	Čelik za T-prečku 2			1		16
228	PVC	Dvokrilni prozor (T-prečka)	Lajsna za nadsvetlo			1		17
229	PVC	Dvokrilni prozor (T-prečka)	Ispuna za nadsvetlo			1		18
230	PVC	Dvokrilni prozor (T-prečka)	Šloga			1		19
231	PVC	Dvokrilni prozor (T-prečka)	ALU Spojnice 1 (kom)			1		20
232	PVC	Dvokrilni prozor (T-prečka)	ALU Spojnice 2 (kom)			1		21
233	PVC	Dvokrilni prozor (T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
234	PVC	Dvokrilni prozor (T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
235	PVC	Prozor + fiks	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
236	PVC	Prozor + fiks	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
237	PVC	Prozor + fiks	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	B - 2 * Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
238	PVC	Prozor + fiks	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
239	PVC	Prozor + fiks	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
240	PVC	Prozor + fiks	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
241	PVC	Prozor + fiks	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
242	PVC	Prozor + fiks	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
243	PVC	Prozor + fiks	Krilo 2			1		9
244	PVC	Prozor + fiks	Čelik za krilo 2			1		10
245	PVC	Prozor + fiks	Lajsna za krilo 2			1		11
246	PVC	Prozor + fiks	Ispuna za krilo 2			1		12
247	PVC	Prozor + fiks	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
248	PVC	Prozor + fiks	Čelik za T-prečku 1		T-prečka 1 (V)	1	Kom. *  V / 1000 * Čelik Cena	14
249	PVC	Prozor + fiks	T-prečka 2			1		15
250	PVC	Prozor + fiks	Čelik za T-prečku 2			1		16
251	PVC	Prozor + fiks	Lajsna za nadsvetlo			1		17
252	PVC	Prozor + fiks	Ispuna za nadsvetlo			1		18
253	PVC	Prozor + fiks	Šloga			1		19
254	PVC	Prozor + fiks	ALU Spojnice 1 (kom)			1		20
255	PVC	Prozor + fiks	ALU Spojnice 2 (kom)			1		21
256	PVC	Prozor + fiks	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
257	PVC	Prozor + fiks	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
258	PVC	Trokrilni prozor (fiks + T-prečka)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
259	PVC	Trokrilni prozor (fiks + T-prečka)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
260	PVC	Trokrilni prozor (fiks + T-prečka)	Lajsna za štok	A - (Krilo 1 (Š) - 2 * Var profila - 2 * Preklop kod krila) * 2 - 2 * Širina profila Štok - 2 * Širina profila T prečka	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
261	PVC	Trokrilni prozor (fiks + T-prečka)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
262	PVC	Trokrilni prozor (fiks + T-prečka)	Krilo 1	C - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
263	PVC	Trokrilni prozor (fiks + T-prečka)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
264	PVC	Trokrilni prozor (fiks + T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
265	PVC	Trokrilni prozor (fiks + T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
266	PVC	Trokrilni prozor (fiks + T-prečka)	Krilo 2			1		9
267	PVC	Trokrilni prozor (fiks + T-prečka)	Čelik za krilo 2			1		10
268	PVC	Trokrilni prozor (fiks + T-prečka)	Lajsna za krilo 2			1		11
270	PVC	Trokrilni prozor (fiks + T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	2	T-prečka 1 (V) / 1000 * T prečkKom. *  V / 1000 * T prečka Cenaa Cena	13
271	PVC	Trokrilni prozor (fiks + T-prečka)	Čelik za T-prečku 1		T-prečka 1 (V)	2	Kom. *  V / 1000 * Čelik Cena	14
272	PVC	Trokrilni prozor (fiks + T-prečka)	T-prečka 2			1		15
273	PVC	Trokrilni prozor (fiks + T-prečka)	Čelik za T-prečku 2			1		16
274	PVC	Trokrilni prozor (fiks + T-prečka)	Lajsna za nadsvetlo			1		17
275	PVC	Trokrilni prozor (fiks + T-prečka)	Ispuna za nadsvetlo			1		18
276	PVC	Trokrilni prozor (fiks + T-prečka)	Šloga			1		19
277	PVC	Trokrilni prozor (fiks + T-prečka)	ALU Spojnice 1 (kom)			1		20
278	PVC	Trokrilni prozor (fiks + T-prečka)	ALU Spojnice 2 (kom)			1		21
279	PVC	Trokrilni prozor (fiks + T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
280	PVC	Trokrilni prozor (fiks + T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
281	PVC	Trokrilni prozor (fiks + šloga)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
282	PVC	Trokrilni prozor (fiks + šloga)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
283	PVC	Trokrilni prozor (fiks + šloga)	Lajsna za štok	A - C - Širina profila Štok	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
284	PVC	Trokrilni prozor (fiks + šloga)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
285	PVC	Trokrilni prozor (fiks + šloga)	Krilo 1	(C - Širina profila Štok - Širina profila T prečka - Preklop kod šloge) / 2 + 2 * Var profila + Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
286	PVC	Trokrilni prozor (fiks + šloga)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
287	PVC	Trokrilni prozor (fiks + šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
288	PVC	Trokrilni prozor (fiks + šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
289	PVC	Trokrilni prozor (fiks + šloga)	Krilo 2			1		9
290	PVC	Trokrilni prozor (fiks + šloga)	Čelik za krilo 2			1		10
291	PVC	Trokrilni prozor (fiks + šloga)	Lajsna za krilo 2			1		11
292	PVC	Trokrilni prozor (fiks + šloga)	Ispuna za krilo 2			1		12
293	PVC	Trokrilni prozor (fiks + šloga)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
294	PVC	Trokrilni prozor (fiks + šloga)	Čelik za T-prečku 1		T-prečka 1 (V)	1	Kom. *  V / 1000 * Čelik Cena	14
295	PVC	Trokrilni prozor (fiks + šloga)	T-prečka 2			1		15
296	PVC	Trokrilni prozor (fiks + šloga)	Čelik za T-prečku 2			1		16
297	PVC	Trokrilni prozor (fiks + šloga)	Lajsna za nadsvetlo			1		17
298	PVC	Trokrilni prozor (fiks + šloga)	Ispuna za nadsvetlo			1		18
299	PVC	Trokrilni prozor (fiks + šloga)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
300	PVC	Trokrilni prozor (fiks + šloga)	ALU Spojnice 1 (kom)			1		20
301	PVC	Trokrilni prozor (fiks + šloga)	ALU Spojnice 2 (kom)			1		21
302	PVC	Trokrilni prozor (fiks + šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
303	PVC	Trokrilni prozor (fiks + šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
304	PVC	Jednokrilni prozor (nadsvetlo)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
305	PVC	Jednokrilni prozor (nadsvetlo)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
306	PVC	Jednokrilni prozor (nadsvetlo)	Lajsna za štok			1		3
307	PVC	Jednokrilni prozor (nadsvetlo)	Ispuna za štok			1		4
308	PVC	Jednokrilni prozor (nadsvetlo)	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
309	PVC	Jednokrilni prozor (nadsvetlo)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
310	PVC	Jednokrilni prozor (nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
311	PVC	Jednokrilni prozor (nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
312	PVC	Jednokrilni prozor (nadsvetlo)	Krilo 2			1		9
313	PVC	Jednokrilni prozor (nadsvetlo)	Čelik za krilo 2			1		10
314	PVC	Jednokrilni prozor (nadsvetlo)	Lajsna za krilo 2			1		11
315	PVC	Jednokrilni prozor (nadsvetlo)	Ispuna za krilo 2			1		12
316	PVC	Jednokrilni prozor (nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
317	PVC	Jednokrilni prozor (nadsvetlo)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
318	PVC	Jednokrilni prozor (nadsvetlo)	T-prečka 2			1		15
319	PVC	Jednokrilni prozor (nadsvetlo)	Čelik za T-prečku 2			1		16
320	PVC	Jednokrilni prozor (nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
571	ALU	Dvokrilni prozor (T-prečka)	T-prečka 2			1		15
321	PVC	Jednokrilni prozor (nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
322	PVC	Jednokrilni prozor (nadsvetlo)	Šloga			1		19
323	PVC	Jednokrilni prozor (nadsvetlo)	ALU Spojnice 1 (kom)			1		20
324	PVC	Jednokrilni prozor (nadsvetlo)	ALU Spojnice 2 (kom)			1		21
325	PVC	Jednokrilni prozor (nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
326	PVC	Jednokrilni prozor (nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
327	PVC	Prozor + fiks (nadsvetlo)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
328	PVC	Prozor + fiks (nadsvetlo)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
329	PVC	Prozor + fiks (nadsvetlo)	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	D - Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
330	PVC	Prozor + fiks (nadsvetlo)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
331	PVC	Prozor + fiks (nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Var profila + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
332	PVC	Prozor + fiks (nadsvetlo)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
333	PVC	Prozor + fiks (nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
334	PVC	Prozor + fiks (nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
335	PVC	Prozor + fiks (nadsvetlo)	Krilo 2			1		9
336	PVC	Prozor + fiks (nadsvetlo)	Čelik za krilo 2			1		10
337	PVC	Prozor + fiks (nadsvetlo)	Lajsna za krilo 2			1		11
338	PVC	Prozor + fiks (nadsvetlo)	Ispuna za krilo 2			1		12
339	PVC	Prozor + fiks (nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
340	PVC	Prozor + fiks (nadsvetlo)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
341	PVC	Prozor + fiks (nadsvetlo)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
342	PVC	Prozor + fiks (nadsvetlo)	Čelik za T-prečku 2		T-prečka 2 (V)	1	Kom. *  V / 1000 * Čelik Cena	16
343	PVC	Prozor + fiks (nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
344	PVC	Prozor + fiks (nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
345	PVC	Prozor + fiks (nadsvetlo)	Šloga			1		19
346	PVC	Prozor + fiks (nadsvetlo)	ALU Spojnice 1 (kom)			1		20
347	PVC	Prozor + fiks (nadsvetlo)	ALU Spojnice 2 (kom)			1		21
348	PVC	Prozor + fiks (nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
349	PVC	Prozor + fiks (nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
350	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
351	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
352	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za štok			1		3
353	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za štok			1		4
354	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + 2 * Var profila + Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
355	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
356	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
357	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
358	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Krilo 2			1		9
359	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za krilo 2			1		10
360	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za krilo 2			1		11
361	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za krilo 2			1		12
362	PVC	Dvokrilni prozor (šloga, nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	T-prečka 1 (Š) / 1000 * T Kom. *  S / 1000 * T prečka Cenaprečka Cena	13
363	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
364	PVC	Dvokrilni prozor (šloga, nadsvetlo)	T-prečka 2			1		15
365	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za T-prečku 2			1		16
366	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
367	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
368	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
369	PVC	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnice 1 (kom)			1		20
370	PVC	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnice 2 (kom)			1		21
371	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
372	PVC	Dvokrilni prozor (šloga, nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
373	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
374	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
375	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za štok			1		3
376	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za štok			1		4
377	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Var profila + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
378	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
379	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
380	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
381	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Krilo 2			1		9
382	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za krilo 2			1		10
383	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za krilo 2			1		11
384	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za krilo 2			1		12
385	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
386	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
387	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
388	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za T-prečku 2		T-prečka 2 (V)	1	Kom. *  V / 1000 * Čelik Cena	16
389	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
390	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
391	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Šloga			1		19
392	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnice 1 (kom)			1		20
393	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnice 2 (kom)			1		21
394	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
395	PVC	Dvokrilni prozor (T-prečka, nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
396	PVC	Jednokrilni prozor (nadsvetlo-kip)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
397	PVC	Jednokrilni prozor (nadsvetlo-kip)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
398	PVC	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za štok			1		3
399	PVC	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za štok			1		4
400	PVC	Jednokrilni prozor (nadsvetlo-kip)	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
401	PVC	Jednokrilni prozor (nadsvetlo-kip)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
402	PVC	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
403	PVC	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
404	PVC	Jednokrilni prozor (nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
405	PVC	Jednokrilni prozor (nadsvetlo-kip)	Čelik za krilo 2	Krilo 2 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 2 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	10
406	PVC	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 2 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
407	PVC	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
408	PVC	Jednokrilni prozor (nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
409	PVC	Jednokrilni prozor (nadsvetlo-kip)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
410	PVC	Jednokrilni prozor (nadsvetlo-kip)	T-prečka 2			1		15
411	PVC	Jednokrilni prozor (nadsvetlo-kip)	Čelik za T-prečku 2			1		16
412	PVC	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
413	PVC	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
414	PVC	Jednokrilni prozor (nadsvetlo-kip)	Šloga			1		19
415	PVC	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnice 1 (kom)			1		20
416	PVC	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnice 2 (kom)			1		21
417	PVC	Jednokrilni prozor (nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
418	PVC	Jednokrilni prozor (nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
419	PVC	Prozor + fiks (nadsvetlo-kip)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
420	PVC	Prozor + fiks (nadsvetlo-kip)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
421	PVC	Prozor + fiks (nadsvetlo-kip)	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	D - Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
422	PVC	Prozor + fiks (nadsvetlo-kip)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
423	PVC	Prozor + fiks (nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Var profila + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
424	PVC	Prozor + fiks (nadsvetlo-kip)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	6
425	PVC	Prozor + fiks (nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
426	PVC	Prozor + fiks (nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
427	PVC	Prozor + fiks (nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
428	PVC	Prozor + fiks (nadsvetlo-kip)	Čelik za krilo 2	Krilo 2 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 2 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	10
429	PVC	Prozor + fiks (nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 2 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
430	PVC	Prozor + fiks (nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
431	PVC	Prozor + fiks (nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
432	PVC	Prozor + fiks (nadsvetlo-kip)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
433	PVC	Prozor + fiks (nadsvetlo-kip)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
434	PVC	Prozor + fiks (nadsvetlo-kip)	Čelik za T-prečku 2		T-prečka 2 (V)	1	Kom. *  V / 1000 * Čelik Cena	16
435	PVC	Prozor + fiks (nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
436	PVC	Prozor + fiks (nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
437	PVC	Prozor + fiks (nadsvetlo-kip)	Šloga			1		19
438	PVC	Prozor + fiks (nadsvetlo-kip)	ALU Spojnice 1 (kom)			1		20
439	PVC	Prozor + fiks (nadsvetlo-kip)	ALU Spojnice 2 (kom)			1		21
440	PVC	Prozor + fiks (nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
441	PVC	Prozor + fiks (nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
442	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
443	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
444	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za štok			1		3
445	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za štok			1		4
446	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + 2 * Var profila + Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
447	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
448	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
449	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
450	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
451	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za krilo 2	Krilo 2 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 2 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	10
452	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 2 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
453	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
454	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
455	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
456	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	T-prečka 2			1		15
457	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za T-prečku 2			1		16
458	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
459	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
460	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
461	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnice 1 (kom)			1		20
462	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnice 2 (kom)			1		21
463	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
464	PVC	Dvokrilni prozor (šloga, nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
465	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Štok	A + 2 * Var profila	B + 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
466	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za štok	A - Skraćenje čelika za štok	B - Skraćenje čelika za štok	2	Kom. * ( S + V ) / 1000 * Čelik Cena	2
467	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za štok			1		3
468	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za štok			1		4
469	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Var profila + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Var profila + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
470	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za krilo 1	Krilo 1 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 1 (V) - 2 * Var profila - Skraćenje čelika za krilo	4	Kom. * ( S + V ) / 1000 * Čelik Cena	6
471	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 1 (V) - 2 * Širina profila krilo - 2 * Var profila	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
472	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
473	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Var profila + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
474	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za krilo 2	Krilo 2 (Š) - 2 * Var profila - Skraćenje čelika za krilo	Krilo 2 (V) - 2 * Var profila - Skraćenje čelika za krilo	2	Kom. * ( S + V ) / 1000 * Čelik Cena	10
475	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo - 2 * Var profila	Krilo 2 (V) - 2 * Širina profila krilo - 2 * Var profila	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
476	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
477	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
478	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za T-prečku 1	T-prečka 1 (Š)		1	Kom. *  S / 1000 * Čelik Cena	14
479	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
480	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za T-prečku 2		T-prečka 2 (V)	1	Kom. *  V / 1000 * Čelik Cena	16
481	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
482	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
483	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Šloga			1		19
484	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnice 1 (kom)			1		20
485	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnice 2 (kom)			1		21
486	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
487	PVC	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
488	ALU	Fiksni prozor	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
489	ALU	Fiksni prozor	Čelik za štok			1		2
490	ALU	Fiksni prozor	Lajsna za štok	A - 2 * Širina profila Štok	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
491	ALU	Fiksni prozor	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
492	ALU	Fiksni prozor	Krilo 1			1		5
493	ALU	Fiksni prozor	Čelik za krilo 1			1		6
494	ALU	Fiksni prozor	Lajsna za krilo 1			1		7
495	ALU	Fiksni prozor	Ispuna za krilo 1			1		8
496	ALU	Fiksni prozor	Krilo 2			1		9
497	ALU	Fiksni prozor	Čelik za krilo 2			1		10
498	ALU	Fiksni prozor	Lajsna za krilo 2			1		11
499	ALU	Fiksni prozor	Ispuna za krilo 2			1		12
500	ALU	Fiksni prozor	T-prečka 1			1		13
501	ALU	Fiksni prozor	Čelik za T-prečku 1			1		14
502	ALU	Fiksni prozor	T-prečka 2			1		15
503	ALU	Fiksni prozor	Čelik za T-prečku 2			1		16
504	ALU	Fiksni prozor	Lajsna za nadsvetlo			1		17
505	ALU	Fiksni prozor	Ispuna za nadsvetlo			1		18
506	ALU	Fiksni prozor	Šloga			1		19
507	ALU	Fiksni prozor	ALU Spojnice 1 (kom)			4	Kom. * Spojnica 1 Cena	20
508	ALU	Fiksni prozor	ALU Spojnice 2 (kom)			4	Kom. * Spojnica 2 Cena	21
509	ALU	Fiksni prozor	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
510	ALU	Fiksni prozor	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
511	ALU	Jednokrilni prozor	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
512	ALU	Jednokrilni prozor	Čelik za štok			1		2
513	ALU	Jednokrilni prozor	Lajsna za štok			1		3
514	ALU	Jednokrilni prozor	Ispuna za štok			1		4
515	ALU	Jednokrilni prozor	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
516	ALU	Jednokrilni prozor	Čelik za krilo 1			1		6
517	ALU	Jednokrilni prozor	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
518	ALU	Jednokrilni prozor	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
519	ALU	Jednokrilni prozor	Krilo 2			1		9
520	ALU	Jednokrilni prozor	Čelik za krilo 2			1		10
521	ALU	Jednokrilni prozor	Lajsna za krilo 2			1		11
522	ALU	Jednokrilni prozor	Ispuna za krilo 2			1		12
523	ALU	Jednokrilni prozor	T-prečka 1			1		13
524	ALU	Jednokrilni prozor	Čelik za T-prečku 1			1		14
525	ALU	Jednokrilni prozor	T-prečka 2			1		15
526	ALU	Jednokrilni prozor	Čelik za T-prečku 2			1		16
527	ALU	Jednokrilni prozor	Lajsna za nadsvetlo			1		17
528	ALU	Jednokrilni prozor	Ispuna za nadsvetlo			1		18
529	ALU	Jednokrilni prozor	Šloga			1		19
530	ALU	Jednokrilni prozor	ALU Spojnice 1 (kom)			8	Kom. * Spojnica 1 Cena	20
531	ALU	Jednokrilni prozor	ALU Spojnice 2 (kom)			8	Kom. * Spojnica 2 Cena	21
532	ALU	Jednokrilni prozor	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
533	ALU	Jednokrilni prozor	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
534	ALU	Dvokrilni prozor (šloga)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
535	ALU	Dvokrilni prozor (šloga)	Čelik za štok			1		2
536	ALU	Dvokrilni prozor (šloga)	Lajsna za štok			1		3
537	ALU	Dvokrilni prozor (šloga)	Ispuna za štok			1		4
538	ALU	Dvokrilni prozor (šloga)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
539	ALU	Dvokrilni prozor (šloga)	Čelik za krilo 1			1		6
540	ALU	Dvokrilni prozor (šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
541	ALU	Dvokrilni prozor (šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
542	ALU	Dvokrilni prozor (šloga)	Krilo 2			1		9
543	ALU	Dvokrilni prozor (šloga)	Čelik za krilo 2			1		10
544	ALU	Dvokrilni prozor (šloga)	Lajsna za krilo 2			1		11
545	ALU	Dvokrilni prozor (šloga)	Ispuna za krilo 2			1		12
546	ALU	Dvokrilni prozor (šloga)	T-prečka 1			1		13
547	ALU	Dvokrilni prozor (šloga)	Čelik za T-prečku 1			1		14
548	ALU	Dvokrilni prozor (šloga)	T-prečka 2			1		15
549	ALU	Dvokrilni prozor (šloga)	Čelik za T-prečku 2			1		16
550	ALU	Dvokrilni prozor (šloga)	Lajsna za nadsvetlo			1		17
551	ALU	Dvokrilni prozor (šloga)	Ispuna za nadsvetlo			1		18
552	ALU	Dvokrilni prozor (šloga)	Šloga		Krilo 1 (V) - Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
553	ALU	Dvokrilni prozor (šloga)	ALU Spojnice 1 (kom)			12	Kom. * Spojnica 1 Cena	20
554	ALU	Dvokrilni prozor (šloga)	ALU Spojnice 2 (kom)			12	Kom. * Spojnica 2 Cena	21
555	ALU	Dvokrilni prozor (šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
556	ALU	Dvokrilni prozor (šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
557	ALU	Dvokrilni prozor (T-prečka)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
558	ALU	Dvokrilni prozor (T-prečka)	Čelik za štok			1		2
559	ALU	Dvokrilni prozor (T-prečka)	Lajsna za štok			1		3
560	ALU	Dvokrilni prozor (T-prečka)	Ispuna za štok			1		4
561	ALU	Dvokrilni prozor (T-prečka)	Krilo 1	(Štok (Š) - 2 * Širina profila Štok - Širina profila T prečka + (2 * Preklop kod krila) * 2) / 2	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
562	ALU	Dvokrilni prozor (T-prečka)	Čelik za krilo 1			1		6
563	ALU	Dvokrilni prozor (T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
564	ALU	Dvokrilni prozor (T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
565	ALU	Dvokrilni prozor (T-prečka)	Krilo 2			1		9
566	ALU	Dvokrilni prozor (T-prečka)	Čelik za krilo 2			1		10
567	ALU	Dvokrilni prozor (T-prečka)	Lajsna za krilo 2			1		11
568	ALU	Dvokrilni prozor (T-prečka)	Ispuna za krilo 2			1		12
569	ALU	Dvokrilni prozor (T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
570	ALU	Dvokrilni prozor (T-prečka)	Čelik za T-prečku 1			1		14
572	ALU	Dvokrilni prozor (T-prečka)	Čelik za T-prečku 2			1		16
573	ALU	Dvokrilni prozor (T-prečka)	Lajsna za nadsvetlo			1		17
574	ALU	Dvokrilni prozor (T-prečka)	Ispuna za nadsvetlo			1		18
575	ALU	Dvokrilni prozor (T-prečka)	Šloga			1		19
576	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnice 1 (kom)			14	Kom. * Spojnica 1 Cena	20
577	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnice 2 (kom)			14	Kom. * Spojnica 2 Cena	21
578	ALU	Dvokrilni prozor (T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
579	ALU	Dvokrilni prozor (T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
580	ALU	Prozor + fiks	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
581	ALU	Prozor + fiks	Čelik za štok			1		2
582	ALU	Prozor + fiks	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	B - 2 * Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
583	ALU	Prozor + fiks	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
584	ALU	Prozor + fiks	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
585	ALU	Prozor + fiks	Čelik za krilo 1			1		6
586	ALU	Prozor + fiks	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
587	ALU	Prozor + fiks	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
588	ALU	Prozor + fiks	Krilo 2			1		9
589	ALU	Prozor + fiks	Čelik za krilo 2			1		10
590	ALU	Prozor + fiks	Lajsna za krilo 2			1		11
591	ALU	Prozor + fiks	Ispuna za krilo 2			1		12
592	ALU	Prozor + fiks	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
593	ALU	Prozor + fiks	Čelik za T-prečku 1			1		14
594	ALU	Prozor + fiks	T-prečka 2			1		15
595	ALU	Prozor + fiks	Čelik za T-prečku 2			1		16
596	ALU	Prozor + fiks	Lajsna za nadsvetlo			1		17
597	ALU	Prozor + fiks	Ispuna za nadsvetlo			1		18
598	ALU	Prozor + fiks	Šloga			1		19
599	ALU	Prozor + fiks	ALU Spojnice 1 (kom)			10	Kom. * Spojnica 1 Cena	20
600	ALU	Prozor + fiks	ALU Spojnice 2 (kom)			10	Kom. * Spojnica 2 Cena	21
601	ALU	Prozor + fiks	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
602	ALU	Prozor + fiks	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
603	ALU	Trokrilni prozor (šloga)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
604	ALU	Trokrilni prozor (šloga)	Čelik za štok			1		2
605	ALU	Trokrilni prozor (šloga)	Lajsna za štok			1		3
606	ALU	Trokrilni prozor (šloga)	Ispuna za štok			1		4
607	ALU	Trokrilni prozor (šloga)	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - Širina profila T prečka / 3 - Preklop kod šloge / 3 + 4 * Preklop kod krila / 3	Štok (V) - 2 * Širina profila Štok +  2 * Preklop kod krila	6	Kom. * ( S + V ) / 1000 * Krilo Cena	5
608	ALU	Trokrilni prozor (šloga)	Čelik za krilo 1			1		6
609	ALU	Trokrilni prozor (šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	6	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
610	ALU	Trokrilni prozor (šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	3	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
611	ALU	Trokrilni prozor (šloga)	Krilo 2			1		9
612	ALU	Trokrilni prozor (šloga)	Čelik za krilo 2			1		10
613	ALU	Trokrilni prozor (šloga)	Lajsna za krilo 2			1		11
614	ALU	Trokrilni prozor (šloga)	Ispuna za krilo 2			1		12
615	ALU	Trokrilni prozor (šloga)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
616	ALU	Trokrilni prozor (šloga)	Čelik za T-prečku 1			1		14
617	ALU	Trokrilni prozor (šloga)	T-prečka 2			1		15
618	ALU	Trokrilni prozor (šloga)	Čelik za T-prečku 2			1		16
619	ALU	Trokrilni prozor (šloga)	Lajsna za nadsvetlo			1		17
620	ALU	Trokrilni prozor (šloga)	Ispuna za nadsvetlo			1		18
621	ALU	Trokrilni prozor (šloga)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
622	ALU	Trokrilni prozor (šloga)	ALU Spojnice 1 (kom)			18	Kom. * Spojnica 1 Cena	20
623	ALU	Trokrilni prozor (šloga)	ALU Spojnice 2 (kom)			18	Kom. * Spojnica 2 Cena	21
624	ALU	Trokrilni prozor (šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
625	ALU	Trokrilni prozor (šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
626	ALU	Trokrilni prozor (T-prečka)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
627	ALU	Trokrilni prozor (T-prečka)	Čelik za štok			1		2
628	ALU	Trokrilni prozor (T-prečka)	Lajsna za štok			1		3
629	ALU	Trokrilni prozor (T-prečka)	Ispuna za štok			1		4
630	ALU	Trokrilni prozor (T-prečka)	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok +  2 * Preklop kod krila	6	Kom. * ( S + V ) / 1000 * Krilo Cena	5
631	ALU	Trokrilni prozor (T-prečka)	Čelik za krilo 1			1		6
688	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za nadsvetlo			1		17
632	ALU	Trokrilni prozor (T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	6	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
633	ALU	Trokrilni prozor (T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	3	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
634	ALU	Trokrilni prozor (T-prečka)	Krilo 2			1		9
635	ALU	Trokrilni prozor (T-prečka)	Čelik za krilo 2			1		10
636	ALU	Trokrilni prozor (T-prečka)	Lajsna za krilo 2			1		11
637	ALU	Trokrilni prozor (T-prečka)	Ispuna za krilo 2			1		12
638	ALU	Trokrilni prozor (T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
639	ALU	Trokrilni prozor (T-prečka)	Čelik za T-prečku 1			1		14
640	ALU	Trokrilni prozor (T-prečka)	T-prečka 2			1		15
641	ALU	Trokrilni prozor (T-prečka)	Čelik za T-prečku 2			1		16
642	ALU	Trokrilni prozor (T-prečka)	Lajsna za nadsvetlo			1		17
643	ALU	Trokrilni prozor (T-prečka)	Ispuna za nadsvetlo			1		18
644	ALU	Trokrilni prozor (T-prečka)	Šloga			1		19
645	ALU	Trokrilni prozor (T-prečka)	ALU Spojnice 1 (kom)			20	Kom. * Spojnica 1 Cena	20
646	ALU	Trokrilni prozor (T-prečka)	ALU Spojnice 2 (kom)			20	Kom. * Spojnica 2 Cena	21
647	ALU	Trokrilni prozor (T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
648	ALU	Trokrilni prozor (T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
649	ALU	Trokrilni prozor (2 fiksa) A	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
650	ALU	Trokrilni prozor (2 fiksa) A	Čelik za štok			1		2
651	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3	B - 2 * Širina profila Štok	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
652	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	2	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
653	ALU	Trokrilni prozor (2 fiksa) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok - 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
654	ALU	Trokrilni prozor (2 fiksa) A	Čelik za krilo 1			1		6
655	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
656	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna CenaKom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
657	ALU	Trokrilni prozor (2 fiksa) A	Krilo 2			1		9
658	ALU	Trokrilni prozor (2 fiksa) A	Čelik za krilo 2			1		10
659	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za krilo 2			1		11
660	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za krilo 2			1		12
661	ALU	Trokrilni prozor (2 fiksa) A	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
662	ALU	Trokrilni prozor (2 fiksa) A	Čelik za T-prečku 1			1		14
663	ALU	Trokrilni prozor (2 fiksa) A	T-prečka 2			1		15
664	ALU	Trokrilni prozor (2 fiksa) A	Čelik za T-prečku 2			1		16
665	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za nadsvetlo			1		17
666	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za nadsvetlo			1		18
667	ALU	Trokrilni prozor (2 fiksa) A	Šloga			1		19
668	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnice 1 (kom)			12	Kom. * Spojnica 1 Cena	20
669	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnice 2 (kom)			12	Kom. * Spojnica 2 Cena	21
670	ALU	Trokrilni prozor (2 fiksa) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
671	ALU	Trokrilni prozor (2 fiksa) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
672	ALU	Trokrilni prozor (fiks + T-prečka) A	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
673	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za štok			1		2
674	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3	B - 2 *  Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
675	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
676	ALU	Trokrilni prozor (fiks + T-prečka) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok - 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
677	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za krilo 1			1		6
678	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
679	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
680	ALU	Trokrilni prozor (fiks + T-prečka) A	Krilo 2			1		9
681	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za krilo 2			1		10
682	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za krilo 2			1		11
683	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za krilo 2			1		12
684	ALU	Trokrilni prozor (fiks + T-prečka) A	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
685	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za T-prečku 1			1		14
686	ALU	Trokrilni prozor (fiks + T-prečka) A	T-prečka 2			1		15
687	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za T-prečku 2			1		16
689	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za nadsvetlo			1		18
690	ALU	Trokrilni prozor (fiks + T-prečka) A	Šloga			1		19
691	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnice 1 (kom)			16	Kom. * Spojnica 1 Cena	20
692	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnice 2 (kom)			16	Kom. * Spojnica 2 Cena	21
693	ALU	Trokrilni prozor (fiks + T-prečka) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
694	ALU	Trokrilni prozor (fiks + T-prečka) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
695	ALU	Trokrilni prozor (fiks + šloga) A	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
696	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za štok			1		2
697	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - Preklop kod šloge / 3	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
698	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
699	ALU	Trokrilni prozor (fiks + šloga) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - Širina profila T prečka / 3 - Preklop kod šloge / 3 + Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
700	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za krilo 1			1		6
701	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
702	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
703	ALU	Trokrilni prozor (fiks + šloga) A	Krilo 2			1		9
704	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za krilo 2			1		10
705	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za krilo 2			1		11
706	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za krilo 2			1		12
707	ALU	Trokrilni prozor (fiks + šloga) A	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
708	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za T-prečku 1			1		14
709	ALU	Trokrilni prozor (fiks + šloga) A	T-prečka 2			1		15
710	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za T-prečku 2			1		16
711	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za nadsvetlo			1		17
712	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za nadsvetlo			1		18
713	ALU	Trokrilni prozor (fiks + šloga) A	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
714	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnice 1 (kom)			14	Kom. * Spojnica 1 Cena	20
715	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnice 2 (kom)			14	Kom. * Spojnica 2 Cena	21
716	ALU	Trokrilni prozor (fiks + šloga) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
717	ALU	Trokrilni prozor (fiks + šloga) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
718	ALU	Trokrilni prozor (2 fiksa)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
719	ALU	Trokrilni prozor (2 fiksa)	Čelik za štok			1		2
720	ALU	Trokrilni prozor (2 fiksa)	Lajsna za štok	A / 2 - C / 2 - Širina profila Štok	B - 2 * Širina profila Štok	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
721	ALU	Trokrilni prozor (2 fiksa)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	2	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
722	ALU	Trokrilni prozor (2 fiksa)	Krilo 1	C - 2 * Širina profila T prečka + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
723	ALU	Trokrilni prozor (2 fiksa)	Čelik za krilo 1			1		6
724	ALU	Trokrilni prozor (2 fiksa)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
725	ALU	Trokrilni prozor (2 fiksa)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
726	ALU	Trokrilni prozor (2 fiksa)	Krilo 2			1		9
727	ALU	Trokrilni prozor (2 fiksa)	Čelik za krilo 2			1		10
728	ALU	Trokrilni prozor (2 fiksa)	Lajsna za krilo 2			1		11
729	ALU	Trokrilni prozor (2 fiksa)	Ispuna za krilo 2			1		12
730	ALU	Trokrilni prozor (2 fiksa)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
731	ALU	Trokrilni prozor (2 fiksa)	Čelik za T-prečku 1			1		14
732	ALU	Trokrilni prozor (2 fiksa)	T-prečka 2			1		15
733	ALU	Trokrilni prozor (2 fiksa)	Čelik za T-prečku 2			1		16
734	ALU	Trokrilni prozor (2 fiksa)	Lajsna za nadsvetlo			1		17
735	ALU	Trokrilni prozor (2 fiksa)	Ispuna za nadsvetlo			1		18
736	ALU	Trokrilni prozor (2 fiksa)	Šloga			1		19
737	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnice 1 (kom)			12	Kom. * Spojnica 1 Cena	20
738	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnice 2 (kom)			12	Kom. * Spojnica 2 Cena	21
739	ALU	Trokrilni prozor (2 fiksa)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
740	ALU	Trokrilni prozor (2 fiksa)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
741	ALU	Trokrilni prozor (fiks + T-prečka)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
742	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za štok			1		2
797	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za krilo 2			1		11
798	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za krilo 2			1		12
743	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za štok	A - (Krilo 1 (Š) - 2 * Preklop kod krila) * 2 - 2 * Širina profila Štok - 2 * Širina profila T prečka	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
744	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
745	ALU	Trokrilni prozor (fiks + T-prečka)	Krilo 1	C - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
746	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za krilo 1			1		6
747	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
748	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
749	ALU	Trokrilni prozor (fiks + T-prečka)	Krilo 2			1		9
750	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za krilo 2			1		10
751	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za krilo 2			1		11
752	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za krilo 2			1		12
753	ALU	Trokrilni prozor (fiks + T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
754	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za T-prečku 1			1		14
755	ALU	Trokrilni prozor (fiks + T-prečka)	T-prečka 2			1		15
756	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za T-prečku 2			1		16
757	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za nadsvetlo			1		17
758	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za nadsvetlo			1		18
759	ALU	Trokrilni prozor (fiks + T-prečka)	Šloga			1		19
760	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnice 1 (kom)			16	Kom. * Spojnica 1 Cena	20
761	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnice 2 (kom)			16	Kom. * Spojnica 2 Cena	21
762	ALU	Trokrilni prozor (fiks + T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
763	ALU	Trokrilni prozor (fiks + T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
764	ALU	Trokrilni prozor (fiks + šloga)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
765	ALU	Trokrilni prozor (fiks + šloga)	Čelik za štok			1		2
766	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za štok	A - C - Širina profila Štok	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
767	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
768	ALU	Trokrilni prozor (fiks + šloga)	Krilo 1	(C - Širina profila Štok - Širina profila T prečka - Preklop kod šloge) / 2 + Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
769	ALU	Trokrilni prozor (fiks + šloga)	Čelik za krilo 1			1		6
770	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
771	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
772	ALU	Trokrilni prozor (fiks + šloga)	Krilo 2			1		9
773	ALU	Trokrilni prozor (fiks + šloga)	Čelik za krilo 2			1		10
774	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za krilo 2			1		11
775	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za krilo 2			1		12
776	ALU	Trokrilni prozor (fiks + šloga)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
777	ALU	Trokrilni prozor (fiks + šloga)	Čelik za T-prečku 1			1		14
778	ALU	Trokrilni prozor (fiks + šloga)	T-prečka 2			1		15
779	ALU	Trokrilni prozor (fiks + šloga)	Čelik za T-prečku 2			1		16
780	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za nadsvetlo			1		17
781	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za nadsvetlo			1		18
782	ALU	Trokrilni prozor (fiks + šloga)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
783	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnice 1 (kom)			14	Kom. * Spojnica 1 Cena	20
784	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnice 2 (kom)			14	Kom. * Spojnica 2 Cena	21
785	ALU	Trokrilni prozor (fiks + šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
786	ALU	Trokrilni prozor (fiks + šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
787	ALU	Jednokrilni prozor (nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
788	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za štok			1		2
789	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za štok			1		3
790	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za štok			1		4
791	ALU	Jednokrilni prozor (nadsvetlo)	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
792	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za krilo 1			1		6
793	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
794	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
795	ALU	Jednokrilni prozor (nadsvetlo)	Krilo 2			1		9
796	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za krilo 2			1		10
799	ALU	Jednokrilni prozor (nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
800	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za T-prečku 1			1		14
801	ALU	Jednokrilni prozor (nadsvetlo)	T-prečka 2			1		15
802	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za T-prečku 2			1		16
803	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
804	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
805	ALU	Jednokrilni prozor (nadsvetlo)	Šloga			1		19
806	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnice 1 (kom)			10	Kom. * Spojnica 1 Cena	20
807	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnice 2 (kom)			10	Kom. * Spojnica 2 Cena	21
808	ALU	Jednokrilni prozor (nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
809	ALU	Jednokrilni prozor (nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
810	ALU	Prozor + fiks (nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
811	ALU	Prozor + fiks (nadsvetlo)	Čelik za štok			1		2
812	ALU	Prozor + fiks (nadsvetlo)	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	D - Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
813	ALU	Prozor + fiks (nadsvetlo)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
814	ALU	Prozor + fiks (nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
815	ALU	Prozor + fiks (nadsvetlo)	Čelik za krilo 1			1		6
816	ALU	Prozor + fiks (nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
817	ALU	Prozor + fiks (nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
818	ALU	Prozor + fiks (nadsvetlo)	Krilo 2			1		9
819	ALU	Prozor + fiks (nadsvetlo)	Čelik za krilo 2			1		10
820	ALU	Prozor + fiks (nadsvetlo)	Lajsna za krilo 2			1		11
821	ALU	Prozor + fiks (nadsvetlo)	Ispuna za krilo 2			1		12
822	ALU	Prozor + fiks (nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
823	ALU	Prozor + fiks (nadsvetlo)	Čelik za T-prečku 1			1		14
824	ALU	Prozor + fiks (nadsvetlo)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
825	ALU	Prozor + fiks (nadsvetlo)	Čelik za T-prečku 2			1		16
826	ALU	Prozor + fiks (nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
827	ALU	Prozor + fiks (nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
828	ALU	Prozor + fiks (nadsvetlo)	Šloga			1		19
829	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnice 1 (kom)			12	Kom. * Spojnica 1 Cena	20
830	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnice 2 (kom)			12	Kom. * Spojnica 2 Cena	21
831	ALU	Prozor + fiks (nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
832	ALU	Prozor + fiks (nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
833	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
834	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za štok			1		2
835	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za štok			1		3
836	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za štok			1		4
837	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
838	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za krilo 1			1		6
839	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
840	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
841	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Krilo 2			1		9
842	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za krilo 2			1		10
843	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za krilo 2			1		11
844	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za krilo 2			1		12
845	ALU	Dvokrilni prozor (šloga, nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
846	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za T-prečku 1			1		14
847	ALU	Dvokrilni prozor (šloga, nadsvetlo)	T-prečka 2			1		15
848	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za T-prečku 2			1		16
849	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
850	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
851	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
852	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnice 1 (kom)			14	Kom. * Spojnica 1 Cena	20
853	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnice 2 (kom)			14	Kom. * Spojnica 2 Cena	21
854	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
855	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
856	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
857	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za štok			1		2
858	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za štok			1		3
859	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za štok			1		4
860	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
861	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za krilo 1			1		6
862	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
863	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
864	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Krilo 2			1		9
865	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za krilo 2			1		10
866	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za krilo 2			1		11
867	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za krilo 2			1		12
868	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
869	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za T-prečku 1			1		14
870	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
871	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za T-prečku 2			1		16
872	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
873	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
874	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Šloga			1		19
875	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnice 1 (kom)			16	Kom. * Spojnica 1 Cena	20
876	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnice 2 (kom)			16	Kom. * Spojnica 2 Cena	21
877	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
878	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
879	ALU	Jednokrilni prozor (nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
880	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za štok			1		2
881	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za štok			1		3
882	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za štok			1		4
883	ALU	Jednokrilni prozor (nadsvetlo-kip)	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
884	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za krilo 1			1		6
885	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
886	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
887	ALU	Jednokrilni prozor (nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
888	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za krilo 2			1		10
889	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
890	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
891	ALU	Jednokrilni prozor (nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
892	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za T-prečku 1			1		14
893	ALU	Jednokrilni prozor (nadsvetlo-kip)	T-prečka 2			1		15
894	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za T-prečku 2			1		16
895	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
896	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
897	ALU	Jednokrilni prozor (nadsvetlo-kip)	Šloga			1		19
898	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnice 1 (kom)			14	Kom. * Spojnica 1 Cena	20
899	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnice 2 (kom)			14	Kom. * Spojnica 2 Cena	21
900	ALU	Jednokrilni prozor (nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
901	ALU	Jednokrilni prozor (nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
902	ALU	Prozor + fiks (nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
903	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za štok			1		2
904	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	D - Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
905	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
906	ALU	Prozor + fiks (nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
907	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za krilo 1			1		6
908	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
909	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
910	ALU	Prozor + fiks (nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
911	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za krilo 2			1		10
912	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
913	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
914	ALU	Prozor + fiks (nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
915	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za T-prečku 1			1		14
916	ALU	Prozor + fiks (nadsvetlo-kip)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
917	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za T-prečku 2			1		16
918	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
919	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
920	ALU	Prozor + fiks (nadsvetlo-kip)	Šloga			1		19
921	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnice 1 (kom)			16	Kom. * Spojnica 1 Cena	20
922	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnice 2 (kom)			16	Kom. * Spojnica 2 Cena	21
923	ALU	Prozor + fiks (nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
924	ALU	Prozor + fiks (nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
925	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
926	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za štok			1		2
927	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za štok			1		3
928	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za štok			1		4
929	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
930	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za krilo 1			1		6
931	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	1	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
932	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
933	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
934	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za krilo 2			1		10
935	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
936	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
937	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
938	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za T-prečku 1			1		14
939	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	T-prečka 2			1		15
940	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za T-prečku 2			1		16
941	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
942	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
943	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
944	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnice 1 (kom)			18	Kom. * Spojnica 1 Cena	20
945	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnice 2 (kom)			18	Kom. * Spojnica 2 Cena	21
946	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
947	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
948	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
949	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za štok			1		2
950	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za štok			1		3
951	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za štok			1		4
952	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
953	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za krilo 1			1		6
954	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
955	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
956	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
957	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za krilo 2			1		10
958	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
959	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
960	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
961	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za T-prečku 1			1		14
962	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
963	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za T-prečku 2			1		16
964	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
965	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
966	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Šloga			1		19
967	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnice 1 (kom)			20	Kom. * Spojnica 1 Cena	20
968	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnice 2 (kom)			20	Kom. * Spojnica 2 Cena	21
969	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
970	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
\.


--
-- Data for Name: Ispuna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ispuna" (id, "userId", naziv, cena) FROM stdin;
1	2	Ispuna 1	20
\.


--
-- Data for Name: Offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Offer" (id, "userId", "brojPonude", "godinaPonude", "redniBrojGodina", naziv, adresa, telefon, pib, maticni, datum, vrsta_ponude, valuta, popust, napomena) FROM stdin;
1	2	P-1/26	2026	1	Deki doo	Dekijeva bb	1324354657	1122333	7654321	2026-05-14	PREDRAČUN	1		Da li radi
2	2	R-1/26	2026	1	Sale doo	Saletova bb	388374627	1122334	4234234234	2026-05-14	RAČUN	1		Da da da
3	2	R-2/26	2026	2	Deki doo	Dekijeva bb	1324354657	1122333	7654321	2026-05-14	RAČUN	1		Da li radi
\.


--
-- Data for Name: OfferExtraItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OfferExtraItem" (id, "offerId", naziv, kolicina, cena) FROM stdin;
\.


--
-- Data for Name: OfferItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OfferItem" (id, "offerId", vrsta_stolarije, vrsta_prozora, a, b, c, d, profil, ispuna, okov, otvaranje, roletna, komarnik, kolicina) FROM stdin;
1	1	PVC	Jednokrilni prozor	900	1500	0	0	1	1	1	LEVO	NADPROZORSKA	DA	1
2	2	ALU	Dvokrilni prozor (šloga)	1900	1500	0	0	1	1	1	LEVO	SPOLJNA	DA	1
3	3	PVC	Jednokrilni prozor	900	1500	0	0	1	1	1	LEVO	NADPROZORSKA	DA	1
\.


--
-- Data for Name: Okov; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Okov" (id, "userId", naziv, cena) FROM stdin;
1	2	Okov 1	30
\.


--
-- Data for Name: Param; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Param" (id, grupa, naziv, cena) FROM stdin;
\.


--
-- Data for Name: Params; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Params" (id, grupa, naziv) FROM stdin;
\.


--
-- Data for Name: Profil; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Profil" (id, "userId", naziv) FROM stdin;
\.


--
-- Data for Name: Profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Profile" (id, naziv) FROM stdin;
\.


--
-- Data for Name: ProfileParam; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProfileParam" (id, profil, parametar, vrednost) FROM stdin;
\.


--
-- Data for Name: ProfilePrice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProfilePrice" (id, "userId", profil, element, cena) FROM stdin;
1	2	1	ŠTOK	1
2	2	1	KRILO	2
3	2	1	T prečka	3
4	2	1	ŠLOGA	4
5	2	1	ČELIK	5
6	2	1	LAJSNA	6
7	2	1	PLASTIKA	7
8	2	1	ROLETNA	8
9	2	1	KOMARNIK	9
10	2	1	Spojnica 1	1
11	2	1	Spojnica 2	2
\.


--
-- Data for Name: ProfileTehnicki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProfileTehnicki" (id, "userId", profil, element, vrednost) FROM stdin;
1	2	1	Var profila	1
2	2	1	Širina profila Štok	2
3	2	1	Širina profila krilo	3
4	2	1	Širina profila T prečka	4
5	2	1	Zazor za staklo	5
6	2	1	Preklop kod krila	6
7	2	1	Preklop kod šloge	7
8	2	1	Čepovi šloge	8
9	2	1	Visina kutije nadprozorske roletne	9
\.


--
-- Data for Name: Setting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Setting" (id, "userId", key, value) FROM stdin;
1	2	naziv	Rade doo
2	2	adresa	Radetova bb
3	2	pib	1234567
4	2	maticni	76543211
5	2	telefon	1324354657
6	2	email	rade@rade.com
7	2	tr	12-21332-21
8	2	zarada	50
9	2	otpad	10
10	2	roletna	45
11	2	komarnik	45
12	2	logo	data:image/jpeg;base64,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
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, username, password, role, "isActive", "licenseStart", "licenseEnd", "maxDevices", "createdAt", "updatedAt") FROM stdin;
1	admin	$2b$10$qauoSVFVlSjMUtBwFQxde.gAGTMe4HOAlf0InIpix.lEZjrMpFEAK	ADMIN	t	\N	\N	5	2026-05-13 02:26:20.119	2026-05-13 02:26:20.119
2	rade	$2b$10$NO3P3enH76fXrC9UoYiELOH5FjMA9aUTLOkxt/aIDDnVfRgyA4IUa	USER	t	\N	2026-05-27 00:00:00	1	2026-05-13 02:29:08.188	2026-05-13 02:29:08.188
3	boki	$2b$10$eCznyHpyNohzOD.PgeqGnedi7kaP31G8tpiyE3ZBU8skOz5BI/Uty	USER	t	\N	2026-05-28 00:00:00	1	2026-05-13 02:29:24.289	2026-05-13 02:29:24.289
4	sale	$2b$10$MK2XYiQh/or/cyb8VMLxvOeM/S7Y1DRSl0uCidDmfmNmNwoaqu9/C	USER	t	\N	2026-05-19 00:00:00	1	2026-05-14 20:32:31.762	2026-05-14 20:32:31.762
5	dada	$2b$10$4QySyC8.QTBVWMyAlOm6xemwKcQMOeNUrt2Oiq/XhHOHZAestz6x.	USER	t	\N	2026-05-21 00:00:00	1	2026-05-14 21:54:23.967	2026-05-14 21:54:23.967
\.


--
-- Data for Name: UserDevice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserDevice" (id, "userId", fingerprint, "createdAt") FROM stdin;
1	1	TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE0OC4wLjAuMCBTYWZhcmkvNTM3LjM2fGVuLVVTfDEzNjZ8NzY4fEV1cm9wZS9CZWxncmFkZQ==	2026-05-13 02:27:59.819
2	2	TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE0OC4wLjAuMCBTYWZhcmkvNTM3LjM2fGVuLVVTfDEzNjZ8NzY4fEV1cm9wZS9CZWxncmFkZQ==	2026-05-13 10:06:39.267
3	3	TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE0OC4wLjAuMCBTYWZhcmkvNTM3LjM2fGVuLVVTfDEzNjZ8NzY4fEV1cm9wZS9CZWxncmFkZQ==	2026-05-13 10:06:56.617
4	4	TW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzE0OC4wLjAuMCBTYWZhcmkvNTM3LjM2fGVuLVVTfDEzNjZ8NzY4fEV1cm9wZS9CZWxncmFkZQ==	2026-05-14 20:32:56.56
\.


--
-- Data for Name: Valuta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Valuta" (id, "userId", naziv) FROM stdin;
2	2	USD
3	2	EUR
4	2	RSD
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
88c7f392-b9ea-4c94-8df8-38634053a867	7e51ee0c1e2a770029585607ab05bff1e640123476d5cf0eafc5486ed09bc990	2026-05-13 04:08:00.475096+02	20260513020800_init_postgres	\N	\N	2026-05-13 04:08:00.177514+02	1
\.


--
-- Name: AuditLog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AuditLog_id_seq"', 22, true);


--
-- Name: FormulaDefinition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FormulaDefinition_id_seq"', 970, true);


--
-- Name: Ispuna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ispuna_id_seq"', 1, true);


--
-- Name: OfferExtraItem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OfferExtraItem_id_seq"', 1, false);


--
-- Name: OfferItem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OfferItem_id_seq"', 3, true);


--
-- Name: Offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Offer_id_seq"', 3, true);


--
-- Name: Okov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Okov_id_seq"', 1, true);


--
-- Name: Param_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Param_id_seq"', 1, false);


--
-- Name: Params_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Params_id_seq"', 1, false);


--
-- Name: Profil_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Profil_id_seq"', 1, false);


--
-- Name: ProfileParam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfileParam_id_seq"', 1, false);


--
-- Name: ProfilePrice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfilePrice_id_seq"', 11, true);


--
-- Name: ProfileTehnicki_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfileTehnicki_id_seq"', 18, true);


--
-- Name: Profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Profile_id_seq"', 1, false);


--
-- Name: Setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Setting_id_seq"', 24, true);


--
-- Name: UserDevice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserDevice_id_seq"', 4, true);


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."User_id_seq"', 4, true);


--
-- Name: Valuta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Valuta_id_seq"', 4, true);


--
-- Name: AuditLog AuditLog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AuditLog"
    ADD CONSTRAINT "AuditLog_pkey" PRIMARY KEY (id);


--
-- Name: FormulaDefinition FormulaDefinition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FormulaDefinition"
    ADD CONSTRAINT "FormulaDefinition_pkey" PRIMARY KEY (id);


--
-- Name: Ispuna Ispuna_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ispuna"
    ADD CONSTRAINT "Ispuna_pkey" PRIMARY KEY (id);


--
-- Name: OfferExtraItem OfferExtraItem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OfferExtraItem"
    ADD CONSTRAINT "OfferExtraItem_pkey" PRIMARY KEY (id);


--
-- Name: OfferItem OfferItem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OfferItem"
    ADD CONSTRAINT "OfferItem_pkey" PRIMARY KEY (id);


--
-- Name: Offer Offer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Offer"
    ADD CONSTRAINT "Offer_pkey" PRIMARY KEY (id);


--
-- Name: Okov Okov_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Okov"
    ADD CONSTRAINT "Okov_pkey" PRIMARY KEY (id);


--
-- Name: Param Param_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Param"
    ADD CONSTRAINT "Param_pkey" PRIMARY KEY (id);


--
-- Name: Params Params_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Params"
    ADD CONSTRAINT "Params_pkey" PRIMARY KEY (id);


--
-- Name: Profil Profil_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profil"
    ADD CONSTRAINT "Profil_pkey" PRIMARY KEY (id);


--
-- Name: ProfileParam ProfileParam_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfileParam"
    ADD CONSTRAINT "ProfileParam_pkey" PRIMARY KEY (id);


--
-- Name: ProfilePrice ProfilePrice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfilePrice"
    ADD CONSTRAINT "ProfilePrice_pkey" PRIMARY KEY (id);


--
-- Name: ProfileTehnicki ProfileTehnicki_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProfileTehnicki"
    ADD CONSTRAINT "ProfileTehnicki_pkey" PRIMARY KEY (id);


--
-- Name: Profile Profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Profile"
    ADD CONSTRAINT "Profile_pkey" PRIMARY KEY (id);


--
-- Name: Setting Setting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Setting"
    ADD CONSTRAINT "Setting_pkey" PRIMARY KEY (id);


--
-- Name: UserDevice UserDevice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDevice"
    ADD CONSTRAINT "UserDevice_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: Valuta Valuta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Valuta"
    ADD CONSTRAINT "Valuta_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: FormulaDefinition_vrstaStolarije_vrstaProzora_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FormulaDefinition_vrstaStolarije_vrstaProzora_idx" ON public."FormulaDefinition" USING btree ("vrstaStolarije", "vrstaProzora");


--
-- Name: ProfileTehnicki_userId_profil_element_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "ProfileTehnicki_userId_profil_element_key" ON public."ProfileTehnicki" USING btree ("userId", profil, element);


--
-- Name: Setting_userId_key_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Setting_userId_key_key" ON public."Setting" USING btree ("userId", key);


--
-- Name: UserDevice_userId_fingerprint_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "UserDevice_userId_fingerprint_key" ON public."UserDevice" USING btree ("userId", fingerprint);


--
-- Name: User_username_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "User_username_key" ON public."User" USING btree (username);


--
-- Name: OfferExtraItem OfferExtraItem_offerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OfferExtraItem"
    ADD CONSTRAINT "OfferExtraItem_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES public."Offer"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: OfferItem OfferItem_offerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OfferItem"
    ADD CONSTRAINT "OfferItem_offerId_fkey" FOREIGN KEY ("offerId") REFERENCES public."Offer"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Offer Offer_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Offer"
    ADD CONSTRAINT "Offer_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: UserDevice UserDevice_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserDevice"
    ADD CONSTRAINT "UserDevice_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict aufMZstc3RVZ0GFos0p6qwmkpzKyJ1ahfqBfvWF0Drp0BKiqZKUKJfiidUR1GM5

