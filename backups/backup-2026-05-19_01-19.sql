--
-- PostgreSQL database dump
--

\restrict Yx9yUUVddQ1D7rUR9rnMFzuG7BiaHfYwCixlt45UffLUNMsV8IFqrPdbfuMOfHF

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
DROP INDEX IF EXISTS public."ProfilePrice_userId_profil_element_key";
DROP INDEX IF EXISTS public."HelpText_fieldName_key";
DROP INDEX IF EXISTS public."FormulaDefinition_vrstaStolarije_vrstaProzora_idx";
DROP INDEX IF EXISTS public."AdSetting_key_key";
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
ALTER TABLE IF EXISTS ONLY public."HelpText" DROP CONSTRAINT IF EXISTS "HelpText_pkey";
ALTER TABLE IF EXISTS ONLY public."FormulaDefinition" DROP CONSTRAINT IF EXISTS "FormulaDefinition_pkey";
ALTER TABLE IF EXISTS ONLY public."AuditLog" DROP CONSTRAINT IF EXISTS "AuditLog_pkey";
ALTER TABLE IF EXISTS ONLY public."AdSetting" DROP CONSTRAINT IF EXISTS "AdSetting_pkey";
ALTER TABLE IF EXISTS ONLY public."AdClick" DROP CONSTRAINT IF EXISTS "AdClick_pkey";
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
ALTER TABLE IF EXISTS public."HelpText" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FormulaDefinition" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AuditLog" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AdSetting" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AdClick" ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE IF EXISTS public."HelpText_id_seq";
DROP TABLE IF EXISTS public."HelpText";
DROP SEQUENCE IF EXISTS public."FormulaDefinition_id_seq";
DROP TABLE IF EXISTS public."FormulaDefinition";
DROP SEQUENCE IF EXISTS public."AuditLog_id_seq";
DROP TABLE IF EXISTS public."AuditLog";
DROP SEQUENCE IF EXISTS public."AdSetting_id_seq";
DROP TABLE IF EXISTS public."AdSetting";
DROP SEQUENCE IF EXISTS public."AdClick_id_seq";
DROP TABLE IF EXISTS public."AdClick";
-- *not* dropping schema, since initdb creates it
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: AdClick; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AdClick" (
    id integer NOT NULL,
    "adKey" text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."AdClick" OWNER TO postgres;

--
-- Name: AdClick_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AdClick_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."AdClick_id_seq" OWNER TO postgres;

--
-- Name: AdClick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AdClick_id_seq" OWNED BY public."AdClick".id;


--
-- Name: AdSetting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AdSetting" (
    id integer NOT NULL,
    key text NOT NULL,
    value text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."AdSetting" OWNER TO postgres;

--
-- Name: AdSetting_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AdSetting_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."AdSetting_id_seq" OWNER TO postgres;

--
-- Name: AdSetting_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AdSetting_id_seq" OWNED BY public."AdSetting".id;


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
    kom text,
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
-- Name: HelpText; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."HelpText" (
    id integer NOT NULL,
    "fieldName" text NOT NULL,
    text text DEFAULT ''::text NOT NULL
);


ALTER TABLE public."HelpText" OWNER TO postgres;

--
-- Name: HelpText_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."HelpText_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."HelpText_id_seq" OWNER TO postgres;

--
-- Name: HelpText_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."HelpText_id_seq" OWNED BY public."HelpText".id;


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
    napomena text,
    deleted boolean DEFAULT false NOT NULL
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
    "updatedAt" timestamp(3) without time zone NOT NULL,
    deleted boolean DEFAULT false NOT NULL
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
-- Name: AdClick id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdClick" ALTER COLUMN id SET DEFAULT nextval('public."AdClick_id_seq"'::regclass);


--
-- Name: AdSetting id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdSetting" ALTER COLUMN id SET DEFAULT nextval('public."AdSetting_id_seq"'::regclass);


--
-- Name: AuditLog id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AuditLog" ALTER COLUMN id SET DEFAULT nextval('public."AuditLog_id_seq"'::regclass);


--
-- Name: FormulaDefinition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FormulaDefinition" ALTER COLUMN id SET DEFAULT nextval('public."FormulaDefinition_id_seq"'::regclass);


--
-- Name: HelpText id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HelpText" ALTER COLUMN id SET DEFAULT nextval('public."HelpText_id_seq"'::regclass);


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
-- Data for Name: AdClick; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AdClick" (id, "adKey", "createdAt") FROM stdin;
\.


--
-- Data for Name: AdSetting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AdSetting" (id, key, value) FROM stdin;
1	leftBanner	
28	leftBannerImage	/uploads/ads/1779088387489.jpg
3	mobileBanner	
34	mobileBannerImage	/uploads/ads/1779090456867.png
2	rightBanner	
33	rightBannerImage	/uploads/ads/1779090439067.png
41	leftBannerLink	https://www.google.com/
42	rightBannerLink	https://www.google.com/
43	mobileBannerLink	https://www.google.com/
\.


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
19	\N	ADMIN	BACKUP_RESTORE	Restore iz: backup-2026-05-14_23-48.sql, sigurnosni backup: before-restore-1778797417120.sql	2026-05-14 22:23:38.751
20	4	ADMIN	SOFT_DELETE_USER	Arhiviran korisnik: sale	2026-05-14 22:59:26.143
21	4	ADMIN	RESTORE_USER	Vraćen korisnik: sale	2026-05-14 22:59:41.862
22	2	rade	LOGIN	Uspešna prijava	2026-05-15 00:17:01.499
23	2	rade	UPDATE_OFFER	R-2/26 - Deki doo	2026-05-15 00:17:21.042
24	1	admin	LOGIN	Uspešna prijava	2026-05-15 00:22:27.77
25	2	rade	LOGIN	Uspešna prijava	2026-05-15 00:26:02.685
26	1	admin	LOGIN	Uspešna prijava	2026-05-15 00:28:28.536
27	2	rade	LOGIN	Uspešna prijava	2026-05-15 01:13:13.298
28	1	admin	LOGIN	Uspešna prijava	2026-05-15 08:25:29.09
29	2	rade	LOGIN	Uspešna prijava	2026-05-15 11:24:27.288
30	1	admin	LOGIN	Uspešna prijava	2026-05-15 12:10:33.848
31	2	rade	LOGIN	Uspešna prijava	2026-05-15 13:16:58.183
32	4	sale	LOGIN	Uspešna prijava	2026-05-15 13:18:18.955
33	1	admin	LOGIN	Uspešna prijava	2026-05-15 13:19:29.422
34	2	rade	LOGIN	Uspešna prijava	2026-05-15 18:57:43.035
35	2	rade	UPDATE_OFFER	R-2/26 - Deki doo	2026-05-15 18:58:09.643
36	1	admin	LOGIN	Uspešna prijava	2026-05-15 18:58:56.565
37	1	admin	LOGIN	Uspešna prijava	2026-05-15 19:52:05.843
38	4	ADMIN	UPDATE_USER	Izmenjen korisnik: sale	2026-05-15 19:52:28.431
39	4	sale	LOGIN	Uspešna prijava	2026-05-15 19:52:43.255
40	4	sale	LOGIN	Uspešna prijava	2026-05-15 20:02:09.511
41	4	sale	CREATE_OFFER	P-1/26 - dragan doo	2026-05-15 20:22:52.471
42	4	sale	UPDATE_OFFER	P-1/26 - dragan doo	2026-05-15 20:23:14.987
43	4	sale	UPDATE_OFFER	P-1/26 - dragan doo	2026-05-15 20:23:54.169
44	4	sale	CREATE_OFFER	R-1/26 - dragan doo	2026-05-15 20:26:33.24
45	4	sale	CREATE_OFFER	R-2/26 - micko	2026-05-15 20:29:53.372
46	1	admin	LOGIN	Uspešna prijava	2026-05-15 23:08:21
47	4	sale	LOGIN	Uspešna prijava	2026-05-16 09:15:54.901
48	4	sale	LOGIN	Uspešna prijava	2026-05-16 14:49:05.502
49	4	sale	UPDATE_OFFER	R-1/26 - dragan doo	2026-05-16 14:59:00.547
50	4	sale	CREATE_OFFER	P-2/26 - rade	2026-05-16 15:05:43.902
51	4	sale	UPDATE_OFFER	P-2/26 - rade	2026-05-16 15:06:17.668
52	4	sale	CREATE_OFFER	P-3/26 - mki	2026-05-16 15:33:37.683
53	4	sale	UPDATE_OFFER	P-3/26 - mki	2026-05-16 15:36:17.025
54	4	sale	UPDATE_OFFER	P-3/26 - mki	2026-05-16 15:39:52.566
55	4	sale	LOGIN	Uspešna prijava	2026-05-16 19:33:31.077
56	4	sale	LOGIN	Uspešna prijava	2026-05-16 22:27:51.891
57	2	rade	LOGIN	Uspešna prijava	2026-05-16 23:38:33.504
58	4	sale	LOGIN	Uspešna prijava	2026-05-16 23:40:21.369
59	2	rade	LOGIN	Uspešna prijava	2026-05-16 23:44:47.485
60	4	sale	LOGIN	Uspešna prijava	2026-05-17 08:14:29.789
61	2	rade	LOGIN	Uspešna prijava	2026-05-17 08:39:42.724
62	4	sale	LOGIN	Uspešna prijava	2026-05-17 08:40:27.224
63	1	admin	LOGIN	Uspešna prijava	2026-05-17 17:56:55.542
64	2	rade	LOGIN	Uspešna prijava	2026-05-17 17:57:10.321
65	4	sale	LOGIN	Uspešna prijava	2026-05-17 17:57:23.464
66	2	rade	LOGIN	Uspešna prijava	2026-05-17 18:52:50.361
67	4	sale	LOGIN	Uspešna prijava	2026-05-17 19:17:16.423
68	1	admin	LOGIN	Uspešna prijava	2026-05-17 23:03:20.386
69	4	sale	LOGIN	Uspešna prijava	2026-05-17 23:08:04.969
70	1	admin	LOGIN	Uspešna prijava	2026-05-17 23:09:29.583
71	4	sale	LOGIN	Uspešna prijava	2026-05-17 23:11:23.679
72	1	admin	LOGIN	Uspešna prijava	2026-05-17 23:17:19.577
73	4	sale	LOGIN	Uspešna prijava	2026-05-18 15:10:14.991
74	1	admin	LOGIN	Uspešna prijava	2026-05-18 23:19:12.774
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
2066	ALU	Trokrilni prozor (fiks + T-prečka) A	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
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
2067	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za štok			1		2
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
2474	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
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
2475	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za štok			1		2
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
2476	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za štok			1		3
2477	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za štok			1		4
2478	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2479	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za krilo 1			1		6
2480	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2481	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2482	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
2483	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za krilo 2			1		10
2484	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
2485	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
2486	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2487	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za T-prečku 1			1		14
2488	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
2489	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Čelik za T-prečku 2			1		16
2490	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
2491	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
2492	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Šloga			1		19
2493	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnice 1 (kom)			0		20
2494	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnice 2 (kom)			0		21
2495	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2496	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2497	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2498	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2499	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2500	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2501	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2502	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2503	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2504	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Krilo 1			12 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2505	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Krilo 2			12 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2506	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Krilo 3			12 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2507	ALU	Dvokrilni prozor (T-prečka, nadsvetlo-kip)	ALU Spojnica Krilo 4			12 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2068	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3	B - 2 *  Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2069	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2070	ALU	Trokrilni prozor (fiks + T-prečka) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok - 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2071	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za krilo 1			1		6
2072	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2073	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2074	ALU	Trokrilni prozor (fiks + T-prečka) A	Krilo 2			1		9
2075	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za krilo 2			1		10
2076	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za krilo 2			1		11
2077	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za krilo 2			1		12
2078	ALU	Trokrilni prozor (fiks + T-prečka) A	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
2079	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za T-prečku 1			1		14
2080	ALU	Trokrilni prozor (fiks + T-prečka) A	T-prečka 2			1		15
2081	ALU	Trokrilni prozor (fiks + T-prečka) A	Čelik za T-prečku 2			1		16
2082	ALU	Trokrilni prozor (fiks + T-prečka) A	Lajsna za nadsvetlo			1		17
2083	ALU	Trokrilni prozor (fiks + T-prečka) A	Ispuna za nadsvetlo			1		18
2084	ALU	Trokrilni prozor (fiks + T-prečka) A	Šloga			1		19
2085	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnice 1 (kom)			0		20
2086	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnice 2 (kom)			0		21
2087	ALU	Trokrilni prozor (fiks + T-prečka) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2088	ALU	Trokrilni prozor (fiks + T-prečka) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2089	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2090	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2091	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2092	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2093	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2094	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2095	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2096	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2097	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2098	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2099	ALU	Trokrilni prozor (fiks + T-prečka) A	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2100	ALU	Trokrilni prozor (fiks + šloga) A	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2101	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za štok			1		2
2102	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - Preklop kod šloge / 3	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2103	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2104	ALU	Trokrilni prozor (fiks + šloga) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - Širina profila T prečka / 3 - Preklop kod šloge / 3 + Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2105	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za krilo 1			1		6
2106	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2107	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2108	ALU	Trokrilni prozor (fiks + šloga) A	Krilo 2			1		9
2109	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za krilo 2			1		10
2110	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za krilo 2			1		11
2111	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za krilo 2			1		12
2112	ALU	Trokrilni prozor (fiks + šloga) A	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
2113	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za T-prečku 1			1		14
2114	ALU	Trokrilni prozor (fiks + šloga) A	T-prečka 2			1		15
2115	ALU	Trokrilni prozor (fiks + šloga) A	Čelik za T-prečku 2			1		16
2116	ALU	Trokrilni prozor (fiks + šloga) A	Lajsna za nadsvetlo			1		17
2117	ALU	Trokrilni prozor (fiks + šloga) A	Ispuna za nadsvetlo			1		18
2118	ALU	Trokrilni prozor (fiks + šloga) A	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
2119	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnice 1 (kom)			0		20
2120	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnice 2 (kom)			0		21
2121	ALU	Trokrilni prozor (fiks + šloga) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2122	ALU	Trokrilni prozor (fiks + šloga) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2123	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2124	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2125	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2126	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2127	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2128	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2129	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2130	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2131	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2132	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2133	ALU	Trokrilni prozor (fiks + šloga) A	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2134	ALU	Trokrilni prozor (2 fiksa)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2135	ALU	Trokrilni prozor (2 fiksa)	Čelik za štok			1		2
2136	ALU	Trokrilni prozor (2 fiksa)	Lajsna za štok	A / 2 - C / 2 - Širina profila Štok	B - 2 * Širina profila Štok	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2137	ALU	Trokrilni prozor (2 fiksa)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	2	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2138	ALU	Trokrilni prozor (2 fiksa)	Krilo 1	C - 2 * Širina profila T prečka + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2139	ALU	Trokrilni prozor (2 fiksa)	Čelik za krilo 1			1		6
2140	ALU	Trokrilni prozor (2 fiksa)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2141	ALU	Trokrilni prozor (2 fiksa)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2142	ALU	Trokrilni prozor (2 fiksa)	Krilo 2			1		9
2143	ALU	Trokrilni prozor (2 fiksa)	Čelik za krilo 2			1		10
2144	ALU	Trokrilni prozor (2 fiksa)	Lajsna za krilo 2			1		11
2145	ALU	Trokrilni prozor (2 fiksa)	Ispuna za krilo 2			1		12
2146	ALU	Trokrilni prozor (2 fiksa)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
2147	ALU	Trokrilni prozor (2 fiksa)	Čelik za T-prečku 1			1		14
2148	ALU	Trokrilni prozor (2 fiksa)	T-prečka 2			1		15
2149	ALU	Trokrilni prozor (2 fiksa)	Čelik za T-prečku 2			1		16
2150	ALU	Trokrilni prozor (2 fiksa)	Lajsna za nadsvetlo			1		17
2151	ALU	Trokrilni prozor (2 fiksa)	Ispuna za nadsvetlo			1		18
2152	ALU	Trokrilni prozor (2 fiksa)	Šloga			1		19
2153	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnice 1 (kom)			0		20
2154	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnice 2 (kom)			0		21
2155	ALU	Trokrilni prozor (2 fiksa)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2156	ALU	Trokrilni prozor (2 fiksa)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2157	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2158	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2159	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2160	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2161	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2162	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2163	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2164	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Krilo 1			4 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2165	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Krilo 2			4 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2166	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Krilo 3			4 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2167	ALU	Trokrilni prozor (2 fiksa)	ALU Spojnica Krilo 4			4 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2168	ALU	Trokrilni prozor (fiks + T-prečka)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2169	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za štok			1		2
2170	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za štok	A - (Krilo 1 (Š) - 2 * Preklop kod krila) * 2 - 2 * Širina profila Štok - 2 * Širina profila T prečka	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2171	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2172	ALU	Trokrilni prozor (fiks + T-prečka)	Krilo 1	C - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2173	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za krilo 1			1		6
2174	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2175	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2176	ALU	Trokrilni prozor (fiks + T-prečka)	Krilo 2			1		9
2177	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za krilo 2			1		10
2178	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za krilo 2			1		11
2179	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za krilo 2			1		12
2180	ALU	Trokrilni prozor (fiks + T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
2181	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za T-prečku 1			1		14
2182	ALU	Trokrilni prozor (fiks + T-prečka)	T-prečka 2			1		15
2183	ALU	Trokrilni prozor (fiks + T-prečka)	Čelik za T-prečku 2			1		16
2184	ALU	Trokrilni prozor (fiks + T-prečka)	Lajsna za nadsvetlo			1		17
2185	ALU	Trokrilni prozor (fiks + T-prečka)	Ispuna za nadsvetlo			1		18
2186	ALU	Trokrilni prozor (fiks + T-prečka)	Šloga			1		19
2187	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnice 1 (kom)			0		20
2188	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnice 2 (kom)			0		21
2189	ALU	Trokrilni prozor (fiks + T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2190	ALU	Trokrilni prozor (fiks + T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2191	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2192	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2193	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2194	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2195	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2196	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2197	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2198	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2199	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2200	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2201	ALU	Trokrilni prozor (fiks + T-prečka)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
1794	ALU	Jednokrilni prozor	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1795	ALU	Jednokrilni prozor	Čelik za štok			1		2
1796	ALU	Jednokrilni prozor	Lajsna za štok			1		3
1797	ALU	Jednokrilni prozor	Ispuna za štok			1		4
1798	ALU	Jednokrilni prozor	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
1799	ALU	Jednokrilni prozor	Čelik za krilo 1			1		6
1800	ALU	Jednokrilni prozor	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
1801	ALU	Jednokrilni prozor	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
1802	ALU	Jednokrilni prozor	Krilo 2			1		9
1803	ALU	Jednokrilni prozor	Čelik za krilo 2			1		10
1804	ALU	Jednokrilni prozor	Lajsna za krilo 2			1		11
1805	ALU	Jednokrilni prozor	Ispuna za krilo 2			1		12
1806	ALU	Jednokrilni prozor	T-prečka 1			1		13
1807	ALU	Jednokrilni prozor	Čelik za T-prečku 1			1		14
1808	ALU	Jednokrilni prozor	T-prečka 2			1		15
1809	ALU	Jednokrilni prozor	Čelik za T-prečku 2			1		16
1810	ALU	Jednokrilni prozor	Lajsna za nadsvetlo			1		17
1811	ALU	Jednokrilni prozor	Ispuna za nadsvetlo			1		18
1812	ALU	Jednokrilni prozor	Šloga			1		19
1813	ALU	Jednokrilni prozor	ALU Spojnice 1 (kom)			0		20
1814	ALU	Jednokrilni prozor	ALU Spojnice 2 (kom)			0		21
1815	ALU	Jednokrilni prozor	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1816	ALU	Jednokrilni prozor	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1817	ALU	Jednokrilni prozor	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
1818	ALU	Jednokrilni prozor	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
1819	ALU	Jednokrilni prozor	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
1820	ALU	Jednokrilni prozor	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
1821	ALU	Jednokrilni prozor	ALU Spojnica T 1			1		28
1822	ALU	Jednokrilni prozor	ALU Spojnica T 2			1		29
1823	ALU	Jednokrilni prozor	ALU Spojnica T 3			1		30
1824	ALU	Jednokrilni prozor	ALU Spojnica Krilo 1			4 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
1825	ALU	Jednokrilni prozor	ALU Spojnica Krilo 2			4 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
1826	ALU	Jednokrilni prozor	ALU Spojnica Krilo 3			4 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
1827	ALU	Jednokrilni prozor	ALU Spojnica Krilo 4			4 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
1828	ALU	Dvokrilni prozor (šloga)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1829	ALU	Dvokrilni prozor (šloga)	Čelik za štok			1		2
1830	ALU	Dvokrilni prozor (šloga)	Lajsna za štok			1		3
1831	ALU	Dvokrilni prozor (šloga)	Ispuna za štok			1		4
1832	ALU	Dvokrilni prozor (šloga)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
1833	ALU	Dvokrilni prozor (šloga)	Čelik za krilo 1			1		6
1834	ALU	Dvokrilni prozor (šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
1835	ALU	Dvokrilni prozor (šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
1836	ALU	Dvokrilni prozor (šloga)	Krilo 2			1		9
1837	ALU	Dvokrilni prozor (šloga)	Čelik za krilo 2			1		10
1838	ALU	Dvokrilni prozor (šloga)	Lajsna za krilo 2			1		11
1839	ALU	Dvokrilni prozor (šloga)	Ispuna za krilo 2			1		12
1840	ALU	Dvokrilni prozor (šloga)	T-prečka 1			1		13
1841	ALU	Dvokrilni prozor (šloga)	Čelik za T-prečku 1			1		14
1842	ALU	Dvokrilni prozor (šloga)	T-prečka 2			1		15
1843	ALU	Dvokrilni prozor (šloga)	Čelik za T-prečku 2			1		16
1844	ALU	Dvokrilni prozor (šloga)	Lajsna za nadsvetlo			1		17
1845	ALU	Dvokrilni prozor (šloga)	Ispuna za nadsvetlo			1		18
1846	ALU	Dvokrilni prozor (šloga)	Šloga		Krilo 1 (V) - Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
1847	ALU	Dvokrilni prozor (šloga)	ALU Spojnice 1 (kom)			0		20
1848	ALU	Dvokrilni prozor (šloga)	ALU Spojnice 2 (kom)			0		21
1849	ALU	Dvokrilni prozor (šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1850	ALU	Dvokrilni prozor (šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1851	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
1852	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
1853	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
1854	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
1855	ALU	Dvokrilni prozor (šloga)	ALU Spojnica T 1			1		28
1856	ALU	Dvokrilni prozor (šloga)	ALU Spojnica T 2			1		29
1857	ALU	Dvokrilni prozor (šloga)	ALU Spojnica T 3			1		30
1858	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
1859	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
1860	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
1861	ALU	Dvokrilni prozor (šloga)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2202	ALU	Trokrilni prozor (fiks + šloga)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2203	ALU	Trokrilni prozor (fiks + šloga)	Čelik za štok			1		2
2204	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za štok	A - C - Širina profila Štok	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2205	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2206	ALU	Trokrilni prozor (fiks + šloga)	Krilo 1	(C - Širina profila Štok - Širina profila T prečka - Preklop kod šloge) / 2 + Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2207	ALU	Trokrilni prozor (fiks + šloga)	Čelik za krilo 1			1		6
2208	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2209	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2210	ALU	Trokrilni prozor (fiks + šloga)	Krilo 2			1		9
2211	ALU	Trokrilni prozor (fiks + šloga)	Čelik za krilo 2			1		10
2212	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za krilo 2			1		11
2213	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za krilo 2			1		12
2214	ALU	Trokrilni prozor (fiks + šloga)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
2215	ALU	Trokrilni prozor (fiks + šloga)	Čelik za T-prečku 1			1		14
2216	ALU	Trokrilni prozor (fiks + šloga)	T-prečka 2			1		15
2217	ALU	Trokrilni prozor (fiks + šloga)	Čelik za T-prečku 2			1		16
2218	ALU	Trokrilni prozor (fiks + šloga)	Lajsna za nadsvetlo			1		17
2219	ALU	Trokrilni prozor (fiks + šloga)	Ispuna za nadsvetlo			1		18
2220	ALU	Trokrilni prozor (fiks + šloga)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
2221	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnice 1 (kom)			0		20
2222	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnice 2 (kom)			0		21
2223	ALU	Trokrilni prozor (fiks + šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2224	ALU	Trokrilni prozor (fiks + šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2225	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2226	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2227	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2228	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2229	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2230	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2231	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2232	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2233	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2234	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2235	ALU	Trokrilni prozor (fiks + šloga)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2236	ALU	Jednokrilni prozor (nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2237	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za štok			1		2
2238	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za štok			1		3
2239	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za štok			1		4
2240	ALU	Jednokrilni prozor (nadsvetlo)	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2241	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za krilo 1			1		6
2242	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2243	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2244	ALU	Jednokrilni prozor (nadsvetlo)	Krilo 2			1		9
2245	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za krilo 2			1		10
2246	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za krilo 2			1		11
2247	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za krilo 2			1		12
2248	ALU	Jednokrilni prozor (nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2249	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za T-prečku 1			1		14
2250	ALU	Jednokrilni prozor (nadsvetlo)	T-prečka 2			1		15
2251	ALU	Jednokrilni prozor (nadsvetlo)	Čelik za T-prečku 2			1		16
2252	ALU	Jednokrilni prozor (nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
2253	ALU	Jednokrilni prozor (nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
2254	ALU	Jednokrilni prozor (nadsvetlo)	Šloga			1		19
2255	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnice 1 (kom)			0		20
2256	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnice 2 (kom)			0		21
2257	ALU	Jednokrilni prozor (nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1862	ALU	Dvokrilni prozor (T-prečka)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1863	ALU	Dvokrilni prozor (T-prečka)	Čelik za štok			1		2
1864	ALU	Dvokrilni prozor (T-prečka)	Lajsna za štok			1		3
1865	ALU	Dvokrilni prozor (T-prečka)	Ispuna za štok			1		4
1866	ALU	Dvokrilni prozor (T-prečka)	Krilo 1	(Štok (Š) - 2 * Širina profila Štok - Širina profila T prečka + (2 * Preklop kod krila) * 2) / 2	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
1867	ALU	Dvokrilni prozor (T-prečka)	Čelik za krilo 1			1		6
1868	ALU	Dvokrilni prozor (T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
1869	ALU	Dvokrilni prozor (T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
1870	ALU	Dvokrilni prozor (T-prečka)	Krilo 2			1		9
1871	ALU	Dvokrilni prozor (T-prečka)	Čelik za krilo 2			1		10
1872	ALU	Dvokrilni prozor (T-prečka)	Lajsna za krilo 2			1		11
1873	ALU	Dvokrilni prozor (T-prečka)	Ispuna za krilo 2			1		12
1874	ALU	Dvokrilni prozor (T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
1875	ALU	Dvokrilni prozor (T-prečka)	Čelik za T-prečku 1			1		14
1876	ALU	Dvokrilni prozor (T-prečka)	T-prečka 2			1		15
1877	ALU	Dvokrilni prozor (T-prečka)	Čelik za T-prečku 2			1		16
1878	ALU	Dvokrilni prozor (T-prečka)	Lajsna za nadsvetlo			1		17
1879	ALU	Dvokrilni prozor (T-prečka)	Ispuna za nadsvetlo			1		18
1880	ALU	Dvokrilni prozor (T-prečka)	Šloga			1		19
1881	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnice 1 (kom)			0		20
1882	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnice 2 (kom)			0		21
1883	ALU	Dvokrilni prozor (T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1884	ALU	Dvokrilni prozor (T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1885	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
1886	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
1887	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
1888	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
1889	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
1890	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
1891	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
1892	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
1893	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
1894	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
1895	ALU	Dvokrilni prozor (T-prečka)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2258	ALU	Jednokrilni prozor (nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2259	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2260	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2261	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2262	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2263	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2264	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2265	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2266	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Krilo 1			4 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2267	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Krilo 2			4 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2268	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Krilo 3			4 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2269	ALU	Jednokrilni prozor (nadsvetlo)	ALU Spojnica Krilo 4			4 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
1896	ALU	Trokrilni prozor (T-prečka)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1897	ALU	Trokrilni prozor (T-prečka)	Čelik za štok			1		2
1898	ALU	Trokrilni prozor (T-prečka)	Lajsna za štok			1		3
1899	ALU	Trokrilni prozor (T-prečka)	Ispuna za štok			1		4
1900	ALU	Trokrilni prozor (T-prečka)	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok +  2 * Preklop kod krila	6	Kom. * ( S + V ) / 1000 * Krilo Cena	5
1901	ALU	Trokrilni prozor (T-prečka)	Čelik za krilo 1			1		6
1902	ALU	Trokrilni prozor (T-prečka)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	6	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
1903	ALU	Trokrilni prozor (T-prečka)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	3	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
1904	ALU	Trokrilni prozor (T-prečka)	Krilo 2			1		9
1905	ALU	Trokrilni prozor (T-prečka)	Čelik za krilo 2			1		10
1906	ALU	Trokrilni prozor (T-prečka)	Lajsna za krilo 2			1		11
1907	ALU	Trokrilni prozor (T-prečka)	Ispuna za krilo 2			1		12
1908	ALU	Trokrilni prozor (T-prečka)	T-prečka 1		B - 2 * Širina profila Štok	2	Kom. *  V / 1000 * T prečka Cena	13
1909	ALU	Trokrilni prozor (T-prečka)	Čelik za T-prečku 1			1		14
1910	ALU	Trokrilni prozor (T-prečka)	T-prečka 2			1		15
1911	ALU	Trokrilni prozor (T-prečka)	Čelik za T-prečku 2			1		16
1912	ALU	Trokrilni prozor (T-prečka)	Lajsna za nadsvetlo			1		17
1913	ALU	Trokrilni prozor (T-prečka)	Ispuna za nadsvetlo			1		18
1914	ALU	Trokrilni prozor (T-prečka)	Šloga			1		19
1915	ALU	Trokrilni prozor (T-prečka)	ALU Spojnice 1 (kom)			0		20
1916	ALU	Trokrilni prozor (T-prečka)	ALU Spojnice 2 (kom)			0		21
1917	ALU	Trokrilni prozor (T-prečka)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1918	ALU	Trokrilni prozor (T-prečka)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1919	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
1920	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
1921	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
1922	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
1923	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
1924	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
1925	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
1926	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Krilo 1			12 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
1927	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Krilo 2			12 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
1928	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Krilo 3			12 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
1929	ALU	Trokrilni prozor (T-prečka)	ALU Spojnica Krilo 4			12 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2270	ALU	Prozor + fiks (nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2271	ALU	Prozor + fiks (nadsvetlo)	Čelik za štok			1		2
2272	ALU	Prozor + fiks (nadsvetlo)	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	D - Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2273	ALU	Prozor + fiks (nadsvetlo)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2274	ALU	Prozor + fiks (nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2275	ALU	Prozor + fiks (nadsvetlo)	Čelik za krilo 1			1		6
2276	ALU	Prozor + fiks (nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2277	ALU	Prozor + fiks (nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2278	ALU	Prozor + fiks (nadsvetlo)	Krilo 2			1		9
2279	ALU	Prozor + fiks (nadsvetlo)	Čelik za krilo 2			1		10
2280	ALU	Prozor + fiks (nadsvetlo)	Lajsna za krilo 2			1		11
2281	ALU	Prozor + fiks (nadsvetlo)	Ispuna za krilo 2			1		12
2282	ALU	Prozor + fiks (nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2283	ALU	Prozor + fiks (nadsvetlo)	Čelik za T-prečku 1			1		14
2284	ALU	Prozor + fiks (nadsvetlo)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
2285	ALU	Prozor + fiks (nadsvetlo)	Čelik za T-prečku 2			1		16
2286	ALU	Prozor + fiks (nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
2287	ALU	Prozor + fiks (nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
2288	ALU	Prozor + fiks (nadsvetlo)	Šloga			1		19
2289	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnice 1 (kom)			0		20
2290	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnice 2 (kom)			0		21
2291	ALU	Prozor + fiks (nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2292	ALU	Prozor + fiks (nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1930	ALU	Prozor + fiks	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1931	ALU	Prozor + fiks	Čelik za štok			1		2
1932	ALU	Prozor + fiks	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	B - 2 * Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
1933	ALU	Prozor + fiks	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
1934	ALU	Prozor + fiks	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
1935	ALU	Prozor + fiks	Čelik za krilo 1			1		6
1936	ALU	Prozor + fiks	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
1937	ALU	Prozor + fiks	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
1938	ALU	Prozor + fiks	Krilo 2			1		9
1939	ALU	Prozor + fiks	Čelik za krilo 2			1		10
1940	ALU	Prozor + fiks	Lajsna za krilo 2			1		11
1941	ALU	Prozor + fiks	Ispuna za krilo 2			1		12
1942	ALU	Prozor + fiks	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
1943	ALU	Prozor + fiks	Čelik za T-prečku 1			1		14
1944	ALU	Prozor + fiks	T-prečka 2			1		15
1945	ALU	Prozor + fiks	Čelik za T-prečku 2			1		16
1946	ALU	Prozor + fiks	Lajsna za nadsvetlo			1		17
1947	ALU	Prozor + fiks	Ispuna za nadsvetlo			1		18
1948	ALU	Prozor + fiks	Šloga			1		19
1949	ALU	Prozor + fiks	ALU Spojnice 1 (kom)			0		20
1950	ALU	Prozor + fiks	ALU Spojnice 2 (kom)			0		21
1951	ALU	Prozor + fiks	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1952	ALU	Prozor + fiks	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1953	ALU	Prozor + fiks	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
1954	ALU	Prozor + fiks	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
1955	ALU	Prozor + fiks	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
1956	ALU	Prozor + fiks	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
1957	ALU	Prozor + fiks	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
1958	ALU	Prozor + fiks	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
1959	ALU	Prozor + fiks	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
1960	ALU	Prozor + fiks	ALU Spojnica Krilo 1			4 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
1961	ALU	Prozor + fiks	ALU Spojnica Krilo 2			4 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
1962	ALU	Prozor + fiks	ALU Spojnica Krilo 3			4 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
1963	ALU	Prozor + fiks	ALU Spojnica Krilo 4			4 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2293	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2294	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2295	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2296	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2297	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2298	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2299	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2300	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Krilo 1			4 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2301	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Krilo 2			4 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2302	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Krilo 3			4 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2303	ALU	Prozor + fiks (nadsvetlo)	ALU Spojnica Krilo 4			4 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2304	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2305	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za štok			1		2
2306	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za štok			1		3
2307	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za štok			1		4
2308	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2309	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za krilo 1			1		6
2310	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2311	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2312	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Krilo 2			1		9
2313	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za krilo 2			1		10
2314	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za krilo 2			1		11
2315	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za krilo 2			1		12
2316	ALU	Dvokrilni prozor (šloga, nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2317	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za T-prečku 1			1		14
2318	ALU	Dvokrilni prozor (šloga, nadsvetlo)	T-prečka 2			1		15
2319	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Čelik za T-prečku 2			1		16
2320	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
2321	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
2322	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge - 2 * Var profila	1	Kom. * V / 1000 * Šloga Cena	19
2323	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnice 1 (kom)			0		20
2324	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnice 2 (kom)			0		21
2325	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2326	ALU	Dvokrilni prozor (šloga, nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2327	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2328	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2329	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2330	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2331	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2332	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2333	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
1998	ALU	Trokrilni prozor (šloga)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1999	ALU	Trokrilni prozor (šloga)	Čelik za štok			1		2
2000	ALU	Trokrilni prozor (šloga)	Lajsna za štok			1		3
2001	ALU	Trokrilni prozor (šloga)	Ispuna za štok			1		4
2002	ALU	Trokrilni prozor (šloga)	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - Širina profila T prečka / 3 - Preklop kod šloge / 3 + 4 * Preklop kod krila / 3	Štok (V) - 2 * Širina profila Štok +  2 * Preklop kod krila	6	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2003	ALU	Trokrilni prozor (šloga)	Čelik za krilo 1			1		6
2004	ALU	Trokrilni prozor (šloga)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	6	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2005	ALU	Trokrilni prozor (šloga)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	3	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2006	ALU	Trokrilni prozor (šloga)	Krilo 2			1		9
2007	ALU	Trokrilni prozor (šloga)	Čelik za krilo 2			1		10
2008	ALU	Trokrilni prozor (šloga)	Lajsna za krilo 2			1		11
2009	ALU	Trokrilni prozor (šloga)	Ispuna za krilo 2			1		12
2010	ALU	Trokrilni prozor (šloga)	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
2011	ALU	Trokrilni prozor (šloga)	Čelik za T-prečku 1			1		14
2012	ALU	Trokrilni prozor (šloga)	T-prečka 2			1		15
2013	ALU	Trokrilni prozor (šloga)	Čelik za T-prečku 2			1		16
2014	ALU	Trokrilni prozor (šloga)	Lajsna za nadsvetlo			1		17
2015	ALU	Trokrilni prozor (šloga)	Ispuna za nadsvetlo			1		18
2016	ALU	Trokrilni prozor (šloga)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
2017	ALU	Trokrilni prozor (šloga)	ALU Spojnice 1 (kom)			0		20
2018	ALU	Trokrilni prozor (šloga)	ALU Spojnice 2 (kom)			0		21
2019	ALU	Trokrilni prozor (šloga)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2020	ALU	Trokrilni prozor (šloga)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2021	ALU	Trokrilni prozor (šloga)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2022	ALU	Trokrilni prozor (šloga)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2023	ALU	Trokrilni prozor (šloga)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2024	ALU	Trokrilni prozor (šloga)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2025	ALU	Trokrilni prozor (šloga)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2026	ALU	Trokrilni prozor (šloga)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2027	ALU	Trokrilni prozor (šloga)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2028	ALU	Trokrilni prozor (šloga)	ALU Spojnica Krilo 1			12 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2029	ALU	Trokrilni prozor (šloga)	ALU Spojnica Krilo 2			12 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2030	ALU	Trokrilni prozor (šloga)	ALU Spojnica Krilo 3			12 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2031	ALU	Trokrilni prozor (šloga)	ALU Spojnica Krilo 4			12 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2032	ALU	Trokrilni prozor (2 fiksa) A	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2033	ALU	Trokrilni prozor (2 fiksa) A	Čelik za štok			1		2
2034	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za štok	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3	B - 2 * Širina profila Štok	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2035	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	2	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2036	ALU	Trokrilni prozor (2 fiksa) A	Krilo 1	A / 3 - 2 * Širina profila Štok / 3 - 2 * Širina profila T prečka / 3 + 2 * Preklop kod krila	Štok (V) - 2 * Širina profila Štok - 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2037	ALU	Trokrilni prozor (2 fiksa) A	Čelik za krilo 1			1		6
2038	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2039	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna CenaKom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2040	ALU	Trokrilni prozor (2 fiksa) A	Krilo 2			1		9
2041	ALU	Trokrilni prozor (2 fiksa) A	Čelik za krilo 2			1		10
2042	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za krilo 2			1		11
2043	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za krilo 2			1		12
2044	ALU	Trokrilni prozor (2 fiksa) A	T-prečka 1		B - 2 * Širina profila Štok	1	Kom. *  V / 1000 * T prečka Cena	13
2045	ALU	Trokrilni prozor (2 fiksa) A	Čelik za T-prečku 1			1		14
2046	ALU	Trokrilni prozor (2 fiksa) A	T-prečka 2			1		15
2047	ALU	Trokrilni prozor (2 fiksa) A	Čelik za T-prečku 2			1		16
2048	ALU	Trokrilni prozor (2 fiksa) A	Lajsna za nadsvetlo			1		17
2049	ALU	Trokrilni prozor (2 fiksa) A	Ispuna za nadsvetlo			1		18
2050	ALU	Trokrilni prozor (2 fiksa) A	Šloga			1		19
2051	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnice 1 (kom)			0		20
2052	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnice 2 (kom)			0		21
2053	ALU	Trokrilni prozor (2 fiksa) A	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2054	ALU	Trokrilni prozor (2 fiksa) A	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2055	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2056	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2057	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2058	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2059	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2060	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2061	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2062	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Krilo 1			4 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2063	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Krilo 2			4 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2064	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Krilo 3			4 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2065	ALU	Trokrilni prozor (2 fiksa) A	ALU Spojnica Krilo 4			4 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2334	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2335	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2336	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2337	ALU	Dvokrilni prozor (šloga, nadsvetlo)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2338	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2339	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za štok			1		2
2340	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za štok			1		3
2341	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za štok			1		4
2342	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2343	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za krilo 1			1		6
2344	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	4	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2345	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2346	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Krilo 2			1		9
2347	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za krilo 2			1		10
2348	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za krilo 2			1		11
2349	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za krilo 2			1		12
2350	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2351	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za T-prečku 1			1		14
2352	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
2353	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Čelik za T-prečku 2			1		16
2354	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Lajsna za nadsvetlo	A - 2 * Širina profila Štok	B - D - Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	17
2355	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Ispuna za nadsvetlo	Lajsna za nadsvetlo (Š) - Zazor za staklo	Lajsna za nadsvetlo (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	18
2356	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Šloga			1		19
2357	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnice 1 (kom)			0		20
2358	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnice 2 (kom)			0		21
2359	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2360	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2361	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2362	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2363	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2364	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2365	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2366	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2367	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2368	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2369	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2370	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2371	ALU	Dvokrilni prozor (T-prečka, nadsvetlo)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2372	ALU	Jednokrilni prozor (nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2373	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za štok			1		2
2374	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za štok			1		3
2375	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za štok			1		4
2376	ALU	Jednokrilni prozor (nadsvetlo-kip)	Krilo 1	Štok (Š) - 2 * Širina profila Štok + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2377	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za krilo 1			1		6
2378	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2379	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2380	ALU	Jednokrilni prozor (nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
2381	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za krilo 2			1		10
2382	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
2383	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
2384	ALU	Jednokrilni prozor (nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2385	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za T-prečku 1			1		14
2386	ALU	Jednokrilni prozor (nadsvetlo-kip)	T-prečka 2			1		15
2387	ALU	Jednokrilni prozor (nadsvetlo-kip)	Čelik za T-prečku 2			1		16
2388	ALU	Jednokrilni prozor (nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
2389	ALU	Jednokrilni prozor (nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
2390	ALU	Jednokrilni prozor (nadsvetlo-kip)	Šloga			1		19
2391	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnice 1 (kom)			0		20
2392	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnice 2 (kom)			0		21
2393	ALU	Jednokrilni prozor (nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2394	ALU	Jednokrilni prozor (nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2395	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2396	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2397	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2398	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2399	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2400	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2401	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2402	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2403	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2404	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2405	ALU	Jednokrilni prozor (nadsvetlo-kip)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2406	ALU	Prozor + fiks (nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2407	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za štok			1		2
2408	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za štok	A / 2 - Širina profila Štok - Širina profila T prečka / 2	D - Širina profila Štok - Širina profila T prečka	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
2409	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
2410	ALU	Prozor + fiks (nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Širina profila T prečka / 2 + 2 * Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2411	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za krilo 1			1		6
2412	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2413	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2414	ALU	Prozor + fiks (nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
2415	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za krilo 2			1		10
2416	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
2417	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
2418	ALU	Prozor + fiks (nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2419	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za T-prečku 1			1		14
2420	ALU	Prozor + fiks (nadsvetlo-kip)	T-prečka 2		D - Širina profila Štok - Širina profila T prečka	1	Kom. *  V / 1000 * T prečka Cena	15
2421	ALU	Prozor + fiks (nadsvetlo-kip)	Čelik za T-prečku 2			1		16
2422	ALU	Prozor + fiks (nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
2423	ALU	Prozor + fiks (nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
2424	ALU	Prozor + fiks (nadsvetlo-kip)	Šloga			1		19
2425	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnice 1 (kom)			0		20
2426	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnice 2 (kom)			0		21
2427	ALU	Prozor + fiks (nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2428	ALU	Prozor + fiks (nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2429	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2430	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2431	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2432	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2433	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica T 1			4 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2434	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica T 2			4 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2435	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica T 3			4 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2436	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Krilo 1			8 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2437	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Krilo 2			8 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2438	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Krilo 3			8 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2439	ALU	Prozor + fiks (nadsvetlo-kip)	ALU Spojnica Krilo 4			8 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
2440	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
2441	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za štok			1		2
2442	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za štok			1		3
2443	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za štok			1		4
2444	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Krilo 1	A / 2 - Širina profila Štok - Preklop kod šloge / 2 + Preklop kod krila	D - Širina profila Štok - Širina profila T prečka + Preklop kod krila	4	Kom. * ( S + V ) / 1000 * Krilo Cena	5
2445	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za krilo 1			1		6
2446	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za krilo 1	Krilo 1 (Š) - 2 * Širina profila krilo	Krilo 1 (V) - 2 * Širina profila krilo	1	Kom. * ( S + V ) / 1000 * Lajsna Cena	7
2447	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za krilo 1	Lajsna za krilo 1 (Š) - Zazor za staklo	Lajsna za krilo 1 (V) - Zazor za staklo	2	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	8
2448	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Krilo 2	A - 2 * Širina profila Štok + 2 * Preklop kod krila	B - D - Širina profila Štok + 2 * Preklop kod krila	2	Kom. * ( S + V ) / 1000 * Krilo Cena	9
2449	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za krilo 2			1		10
2450	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za krilo 2	Krilo 2 (Š) - 2 * Širina profila krilo	Krilo 2 (V) - 2 * Širina profila krilo	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	11
2451	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za krilo 2	Lajsna za krilo 2 (Š) - Zazor za staklo	Lajsna za krilo 2 (V) - Zazor za staklo	1	Kom. *  ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	12
2452	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	T-prečka 1	A - 2 * Širina profila Štok		1	Kom. *  S / 1000 * T prečka Cena	13
2453	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za T-prečku 1			1		14
2454	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	T-prečka 2			1		15
2455	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Čelik za T-prečku 2			1		16
2456	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Lajsna za nadsvetlo			1		17
2457	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Ispuna za nadsvetlo			1		18
2458	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Šloga		Krilo 1 (V) - 2 * Čepovi šloge	1	Kom. * V / 1000 * Šloga Cena	19
2459	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnice 1 (kom)			0		20
2460	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnice 2 (kom)			0		21
2461	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
2462	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
2463	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
2464	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
2465	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
2466	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
2467	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica T 1			2 * ALU Spojnica T 1	Kom. * ALU Spojnica T 1 Cena	28
2468	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica T 2			2 * ALU Spojnica T 2	Kom. * ALU Spojnica T 2 Cena	29
2469	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica T 3			2 * ALU Spojnica T 3	Kom. * ALU Spojnica T 3 Cena	30
2470	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Krilo 1			12 * ALU Spojnica Krilo 1	Kom. * ALU Spojnica Krilo 1 Cena	31
2471	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Krilo 2			12 * ALU Spojnica Krilo 2	Kom. * ALU Spojnica Krilo 2 Cena	32
2472	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Krilo 3			12 * ALU Spojnica Krilo 3	Kom. * ALU Spojnica Krilo 3 Cena	33
2473	ALU	Dvokrilni prozor (šloga, nadsvetlo-kip)	ALU Spojnica Krilo 4			12 * ALU Spojnica Krilo 4	Kom. * ALU Spojnica Krilo 4 Cena	34
1692	ALU	Fiksni prozor	Štok	A	B	2	Kom. * ( S + V ) / 1000 * Štok Cena	1
1693	ALU	Fiksni prozor	Čelik za štok			1		2
1694	ALU	Fiksni prozor	Lajsna za štok	A - 2 * Širina profila Štok	B - 2 * Širina profila Štok	2	Kom. * ( S + V ) / 1000 * Lajsna Cena	3
1695	ALU	Fiksni prozor	Ispuna za štok	Lajsna za štok (Š) - Zazor za staklo	Lajsna za štok (V) - Zazor za staklo	1	Kom. * ( S / 1000 ) * ( V / 1000 ) * Ispuna Cena	4
1696	ALU	Fiksni prozor	Krilo 1			1		5
1697	ALU	Fiksni prozor	Čelik za krilo 1			1		6
1698	ALU	Fiksni prozor	Lajsna za krilo 1			1		7
1699	ALU	Fiksni prozor	Ispuna za krilo 1			1		8
1700	ALU	Fiksni prozor	Krilo 2			1		9
1701	ALU	Fiksni prozor	Čelik za krilo 2			1		10
1702	ALU	Fiksni prozor	Lajsna za krilo 2			1		11
1703	ALU	Fiksni prozor	Ispuna za krilo 2			1		12
1704	ALU	Fiksni prozor	T-prečka 1			1		13
1705	ALU	Fiksni prozor	Čelik za T-prečku 1			1		14
1706	ALU	Fiksni prozor	T-prečka 2			1		15
1707	ALU	Fiksni prozor	Čelik za T-prečku 2			1		16
1708	ALU	Fiksni prozor	Lajsna za nadsvetlo			1		17
1709	ALU	Fiksni prozor	Ispuna za nadsvetlo			1		18
1710	ALU	Fiksni prozor	Šloga			1		19
1711	ALU	Fiksni prozor	ALU Spojnice 1 (kom)			0		20
1712	ALU	Fiksni prozor	ALU Spojnice 2 (kom)			0		21
1713	ALU	Fiksni prozor	Roletna	A * ImaRoletnu	ImaRoletnu * B + ImaRoletnu * RoletnaTip * Visina kutije nadprozorske roletne	1	( S / 1000 ) * ( V / 1000 ) * Roletna Cena * ( 100 + RPROC ) / 100	22
1714	ALU	Fiksni prozor	Komarnik	A * ImaKomarnik	B * ImaKomarnik	1	( S / 1000 ) * ( V / 1000 ) * Komarnik Cena * ( 100 + KPROC ) / 100	23
1715	ALU	Fiksni prozor	ALU Spojnica Štok 1			4 * ALU Spojnica Štok 1	Kom. * ALU Spojnica Štok 1 Cena	24
1716	ALU	Fiksni prozor	ALU Spojnica Štok 2			4 * ALU Spojnica Štok 2	Kom. * ALU Spojnica Štok 2 Cena	25
1717	ALU	Fiksni prozor	ALU Spojnica Štok 3			4 * ALU Spojnica Štok 3	Kom. * ALU Spojnica Štok 3 Cena	26
1718	ALU	Fiksni prozor	ALU Spojnica Štok 4			4 * ALU Spojnica Štok 4	Kom. * ALU Spojnica Štok 4 Cena	27
1719	ALU	Fiksni prozor	ALU Spojnica T 1			0		28
1720	ALU	Fiksni prozor	ALU Spojnica T 2			0		29
1721	ALU	Fiksni prozor	ALU Spojnica T 3			0		30
1722	ALU	Fiksni prozor	ALU Spojnica Krilo 1			0		31
1723	ALU	Fiksni prozor	ALU Spojnica Krilo 2			0		32
1724	ALU	Fiksni prozor	ALU Spojnica Krilo 3			0		33
1725	ALU	Fiksni prozor	ALU Spojnica Krilo 4			0		34
\.


--
-- Data for Name: HelpText; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."HelpText" (id, "fieldName", text) FROM stdin;
37	Cene - KRILO	Unosite cenu profila za Krilo po dužnom metru.
38	Cene - T prečka	Unosite cenu profila za T prečku po dužnom metru.
39	Cene - ŠLOGA	Unosite cenu profila za Šlogu po dužnom metru.
40	Cene - ČELIK	Unosite cenu za Čelik po dužnom metru.
41	Cene - LAJSNA	Unosite cenu za Lajsnu po dužnom metru.
42	Cene - PLASTIKA	Unosite cenu za komplet Plastiku.
43	Cene - ROLETNA	Unosite cenu za komplet Roletnu.
44	Cene - KOMARNIK	Unosite cenu za komplet Komarnik.
45	Cene - ALU Spojnica Štok 1	Unosite cenu za komad ALU Spojnice te vrste.
46	Cene - ALU Spojnica Štok 2	Unosite cenu za komad ALU Spojnice te vrste.
47	Cene - ALU Spojnica Štok 3	Unosite cenu za komad ALU Spojnice te vrste.
48	Cene - ALU Spojnica Štok 4	Unosite cenu za komad ALU Spojnice te vrste.
49	Cene - ALU Spojnica T 1	Unosite cenu za komad ALU Spojnice te vrste.
50	Cene - ALU Spojnica T 2	Unosite cenu za komad ALU Spojnice te vrste.
51	Cene - ALU Spojnica T 3	Unosite cenu za komad ALU Spojnice te vrste.
52	Cene - ALU Spojnica Krilo 1	Unosite cenu za komad ALU Spojnice te vrste.
53	Cene - ALU Spojnica Krilo 2	Unosite cenu za komad ALU Spojnice te vrste.
54	Cene - ALU Spojnica Krilo 3	Unosite cenu za komad ALU Spojnice te vrste.
55	Cene - ALU Spojnica Krilo 4	Unosite cenu za komad ALU Spojnice te vrste.
83	Tehnički - Širina profila Štok	Dimenzije širine profila za Štok u mm.
84	Tehnički - Širina profila krilo	Dimenzije širine profila za Krilo u mm.
85	Tehnički - Širina profila T prečka	Dimenzije širine profila za T prečku u mm.
86	Tehnički - Visina kutije nadprozorske roletne	Visina kutije nadprozorske roletne u mm.
87	Tehnički - Skraćenje čelika za krilo	Dimenzija između dužine profila od Krila i dužine Čelika u mm.
4	Preklop kod krila	Dužina u mm preklopa profila od Krila nad profilom od Štoka.
5	Preklop kod šloge	Dužina u mm preklopa profila od Šloge nad profilom od Krila.
8	Širina profila krilo	Širina profila krilo po specifikaciji proizvođača u mm.
9	Širina profila Štok	Širina profila Štok po specifikaciji proizvođača u mm.
7	Širina profila T prečka	Širina profila T prečka po specifikaciji proizvođača u mm.
1	Var profila	Unosi se koliko se pilikom topljenja plastike oduzima od svakog profila.\nNpr. na spoju od svakog profila se oduzima po 3mm, ukupno 6mm. Unesete vrednost 3 u ovo polje.
6	Zazor za staklo	Razmak imeđu ispune i profila u mm.
36	Cene - ŠTOK	Unosite cenu profila za Štok po dužnom metru.
88	Tehnički - Skraćenje čelika za štok	Dimenzija između dužine profila od Štoka i dužine Čelika u mm.
89	Tehnički - Čepovi šloge	Dimenzije Čepa od Šloge u mm.
90	Tehnički - Preklop kod šloge	Dimenzije dela profila od Šloge koji preklapa profil od Krila u mm.
91	Tehnički - Preklop kod krila	Dimenzije dela profila od Krila koji preklapa profil od Štoka u mm.
92	Tehnički - Zazor za staklo	Dimenzije prostora između ispune i profila u mm.
93	Tehnički - Var profila	Deo dužine profila koji se istopi priliku spajanja dva profila po jednom profilu, po jednom varu.
94	Tehnički - ALU Spojnica Štok 1	Broj Spojnica po spoju dva ALU profila.
95	Tehnički - ALU Spojnica Štok 2	Broj Spojnica po spoju dva ALU profila.
96	Tehnički - ALU Spojnica Štok 3	Broj Spojnica po spoju dva ALU profila.
97	Tehnički - ALU Spojnica Štok 4	Broj Spojnica po spoju dva ALU profila.
98	Tehnički - ALU Spojnica T 1	Broj Spojnica po spoju dva ALU profila.
99	Tehnički - ALU Spojnica T 2	Broj Spojnica po spoju dva ALU profila.
100	Tehnički - ALU Spojnica T 3	Broj Spojnica po spoju dva ALU profila.
101	Tehnički - ALU Spojnica Krilo 1	Broj Spojnica po spoju dva ALU profila.
102	Tehnički - ALU Spojnica Krilo 2	Broj Spojnica po spoju dva ALU profila.
103	Tehnički - ALU Spojnica Krilo 3	Broj Spojnica po spoju dva ALU profila.
104	Tehnički - ALU Spojnica Krilo 4	Broj Spojnica po spoju dva ALU profila.
105	Tab - Forma	Unos i izmena podataka o ponudi.\nObavezno polje je Vrsta ponude.\nUkoliko želite novu ponudu da sastavite kliknite na dugme Obriši, zatim unesite podatke za tu ponudu, na kraju kliknite na dugme Sačuvaj ponudu.
106	Tab - Ponude	Kliknite na Ponudu koju želite da sačuvate u pdf formatu ili odštampate, proverite da li je sve u radu i na kraju kliknite na dugme Sačuvaj u pdf.
17	Tab - Firma	Unesite podatke od vaše firme.
26	Tab - Ispuna	Unesite podatke o ispuni koju koristite.\nImate mogućnost da izmenite naziv Ispune i da dodate cenu te ispune. Kada završite sa izmenama kliknite na dugme "Sačuvaj".
107	Tab - Radna lista	Kliknite na Radnu listu koju želite da sačuvate u pdf formatu ili odštampate, proverite da li je sve u radu i na kraju kliknite na dugme Sačuvaj u pdf.
109	Tab - Profil	Unesite naziv profila koji koristite.\nImate mogućnost da izmenite naziv Profila i kada završite sa izmenama kliknite na dugme "Sačuvaj".
111	Tab - Okov	Unesite podatke o Okovu koju koristite.\nImate mogućnost da izmenite naziv Okova i da dodate cenu. Kada završite sa izmenama kliknite na dugme "Sačuvaj".
112	Tab - Valuta	Unesite naziv Valute koju koristite.\nImate mogućnost da izmenite naziv Valute i kada završite sa izmenama kliknite na dugme "Sačuvaj".
113	Tab - Tehnicki	Unesite parametre za elemente koje koristite u izradi stolarije.
114	Tab - Cene	Unesite cene za elemente koje koristite u izradi stolarije.
\.


--
-- Data for Name: Ispuna; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Ispuna" (id, "userId", naziv, cena) FROM stdin;
2	2	Ispuna 11	20
5	4	staklo troslojno	37
6	4	staklo dvoslojno	29
\.


--
-- Data for Name: Offer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Offer" (id, "userId", "brojPonude", "godinaPonude", "redniBrojGodina", naziv, adresa, telefon, pib, maticni, datum, vrsta_ponude, valuta, popust, napomena, deleted) FROM stdin;
1	2	P-1/26	2026	1	Deki doo	Dekijeva bb	1324354657	1122333	7654321	2026-05-14	PREDRAČUN	1		Da li radi	f
2	2	R-1/26	2026	1	Sale doo	Saletova bb	388374627	1122334	4234234234	2026-05-14	RAČUN	1		Da da da	f
3	2	R-2/26	2026	2	Deki doo	Dekijeva bb	1324354657	1122333	7654321	2026-05-14	RAČUN	4		Da li radi	f
4	4	P-1/26	2026	1	dragan doo	draganov	584848	1213223423	5345345	2026-05-15	PREDRAČUN	8	10	cekam da mi javi	f
6	4	R-2/26	2026	2	micko	mklas	5443			2026-05-20	RAČUN	8			f
5	4	R-1/26	2026	1	dragan doo	draganov	584848	1213223423	5345345	2026-05-15	RAČUN	8	10	cekam da mi javi	f
7	4	P-2/26	2026	2	rade	fgh	567			2026-05-16	PREDRAČUN	8	10		f
8	4	P-3/26	2026	3	mki	jhggvahg	xxx			2026-05-16	PREDRAČUN	8			f
\.


--
-- Data for Name: OfferExtraItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OfferExtraItem" (id, "offerId", naziv, kolicina, cena) FROM stdin;
5	4	skidanje	2	20
6	4	ugradnja	2	20
9	5	skidanje	2	20
10	5	ugradnja	2	20
13	7	skidanje	2	20
14	7	ugradnja	2	25
\.


--
-- Data for Name: OfferItem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."OfferItem" (id, "offerId", vrsta_stolarije, vrsta_prozora, a, b, c, d, profil, ispuna, okov, otvaranje, roletna, komarnik, kolicina) FROM stdin;
1	1	PVC	Jednokrilni prozor	900	1500	0	0	1	1	1	LEVO	NADPROZORSKA	DA	1
2	2	ALU	Dvokrilni prozor (šloga)	1900	1500	0	0	1	1	1	LEVO	SPOLJNA	DA	1
5	3	ALU	Fiksni prozor	900	1500	0	0	1	1	1	LEVO	NADPROZORSKA	DA	1
10	4	PVC	Jednokrilni prozor	900	1200	0	0	1	4	2	LEVO	SPOLJNA	DA	1
11	4	ALU	Dvokrilni prozor (šloga)	1400	1200	0	0	2	4	2	DESNO	NADPROZORSKA	DA	1
14	6	PVC	Prozor + fiks	0	0	0	0							1
15	5	ALU	Jednokrilni prozor	900	1200	0	0	1	4	2	LEVO	SPOLJNA	DA	1
16	5	ALU	Dvokrilni prozor (šloga)	1400	1200	0	0	2	4	2	DESNO	NADPROZORSKA	DA	1
19	7	PVC	Dvokrilni prozor (šloga)	1800	1400	0	0	46	6	4	LEVO	SPOLJNA	DA	1
20	7	PVC	Jednokrilni prozor	800	1400	0	0	46	6	3	DESNO	NADPROZORSKA	DA	1
23	8	PVC	Dvokrilni prozor (šloga)	1300	1400	0	0	76	5	4	LEVO		DA	3
\.


--
-- Data for Name: Okov; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Okov" (id, "userId", naziv, cena) FROM stdin;
1	2	Okov 1	30
21	4	Okov jednokrilni	17
22	4	Okov dvokrilni	25
23	4	Okov trokr	35
24	4	Okov 4	0
25	4	Okov 5	0
26	4	Okov 6	0
27	4	Okov 7	0
28	4	Okov 8	0
29	4	Okov 9	0
30	4	Okov 10	0
31	4	Okov 11	0
32	4	Okov 12	0
33	4	Okov 13	0
34	4	Okov 14	0
35	4	Okov 15	0
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
211	4	Pvc1
212	4	Alu
213	4	Profil 3
214	4	Profil 4
215	4	Profil 5
216	4	Profil 6
217	4	Profil 7
218	4	Profil 8
219	4	Profil 9
220	4	Profil 10
221	4	Profil 11
222	4	Profil 12
223	4	Profil 13
224	4	Profil 14
225	4	Profil 15
226	4	Pvc1
227	4	Alu
228	4	Profil 3
229	4	Profil 4
230	4	Profil 5
231	4	Profil 6
232	4	Profil 7
233	4	Profil 8
234	4	Profil 9
235	4	Profil 10
236	4	Profil 11
237	4	Profil 12
238	4	Profil 13
239	4	Profil 14
240	4	Profil 15
31	1	Profil 1
32	1	Profil 2
33	1	Profil 3
34	1	Profil 4
35	1	Profil 5
36	1	Profil 6
37	1	Profil 7
38	1	Profil 8
39	1	Profil 9
40	1	Profil 10
41	1	Profil 11
42	1	Profil 12
43	1	Profil 13
44	1	Profil 14
45	1	Profil 15
249	2	Profil 9
250	2	Profil 10
251	2	Profil 11
252	2	Profil 12
253	2	Profil 13
254	2	Profil 14
255	2	Profil 15
196	4	Pvc
241	2	Profil 11
242	2	Profil 21
243	2	Profil 3
244	2	Profil 4
245	2	Profil 5
246	2	Profil 6
247	2	Profil 7
248	2	Profil 8
197	4	Alu
198	4	Profil 3
199	4	Profil 4
200	4	Profil 5
201	4	Profil 6
202	4	Profil 7
203	4	Profil 8
204	4	Profil 9
205	4	Profil 10
206	4	Profil 11
207	4	Profil 12
208	4	Profil 13
209	4	Profil 14
210	4	Profil 15
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
60	4	137	ŠLOGA	44
16	4	1	ŠLOGA	24
280	4	197	ŠTOK	11
281	4	197	KRILO	22
282	4	197	T prečka	33
11	2	1	Spojnica 2	2
283	4	197	ŠLOGA	44
284	4	197	ČELIK	55
285	4	196	ŠTOK	1
286	4	196	KRILO	2
12	2	1	ALU Spojnica Štok 1	0.5
287	4	196	T prečka	3
288	4	196	ŠLOGA	4
1	2	1	ŠTOK	9
61	4	138	ŠTOK	111
62	4	138	KRILO	222
32	4	2	ALU Spojnica Krilo 3	0.4
33	4	2	ALU Spojnica Krilo 4	0.1
2	2	1	KRILO	8
3	2	1	T prečka	7
4	2	1	ŠLOGA	6
63	4	138	T prečka	333
6	2	1	LAJSNA	4
34	4	46	ŠTOK	4.92
35	4	46	KRILO	4.9
36	4	46	T prečka	4.9
64	4	138	ŠLOGA	444
65	4	136	ČELIK	5
7	2	1	PLASTIKA	3
8	2	1	ROLETNA	2
9	2	1	KOMARNIK	1
289	4	196	ČELIK	5
17	4	1	ČELIK	5
18	4	1	LAJSNA	6
19	4	1	ROLETNA	8
20	4	1	KOMARNIK	9
247	4	1	PLASTIKA	7
37	4	46	ŠLOGA	3
38	4	46	ČELIK	1.5
39	4	46	LAJSNA	1.5
40	4	46	ROLETNA	43
41	4	46	KOMARNIK	22
66	4	136	LAJSNA	6
67	4	136	PLASTIKA	7
68	4	136	ROLETNA	8
69	4	136	KOMARNIK	9
42	4	46	ALU Spojnica Krilo 1	1
13	4	1	ŠTOK	21
70	4	137	ČELIK	55
14	4	1	KRILO	22
15	4	1	T prečka	23
21	4	2	ŠTOK	13.3
22	4	2	KRILO	15
23	4	2	T prečka	15
24	4	2	ŠLOGA	13.3
25	4	2	LAJSNA	2.5
26	4	2	ROLETNA	45
71	4	137	LAJSNA	66
72	4	137	PLASTIKA	77
73	4	137	ROLETNA	88
74	4	137	KOMARNIK	99
75	4	138	ČELIK	555
43	4	46	ALU Spojnica Krilo 2	1
44	4	46	ALU Spojnica Krilo 3	1
45	4	46	ALU Spojnica Krilo 4	1
46	4	46	ALU Spojnica Štok 1	2
47	4	46	ALU Spojnica Štok 2	1
48	4	106	ŠTOK	1
49	4	106	KRILO	2
50	4	106	T prečka	3
51	4	106	ŠLOGA	4
52	4	106	ČELIK	5
53	4	136	ŠTOK	1
54	4	136	KRILO	2
55	4	136	T prečka	3
76	4	138	LAJSNA	666
77	4	138	PLASTIKA	777
78	4	138	ROLETNA	888
79	4	138	KOMARNIK	999
147	4	166	ŠTOK	1
148	4	166	KRILO	2
149	4	166	T prečka	3
150	4	166	ŠLOGA	4
151	4	166	ČELIK	5
152	4	166	LAJSNA	6
27	4	2	KOMARNIK	25
28	4	2	ALU Spojnica Štok 1	1.5
29	4	2	ALU Spojnica T 1	0.1
30	4	2	ALU Spojnica Krilo 1	2.5
153	4	166	PLASTIKA	7
290	2	2	ŠTOK	111
291	2	2	KRILO	222
298	2	242	ŠTOK	444
292	2	2	T prečka	333
293	2	2	ŠLOGA	444
294	2	241	ŠTOK	111
154	4	166	ROLETNA	8
295	2	241	KRILO	222
296	2	241	T prečka	333
5	2	1	ČELIK	5
10	2	1	Spojnica 1	1
31	4	2	ALU Spojnica Krilo 2	0.8
56	4	136	ŠLOGA	4
57	4	137	ŠTOK	11
58	4	137	KRILO	22
59	4	137	T prečka	33
155	4	166	KOMARNIK	9
232	4	167	ŠTOK	11
233	4	167	KRILO	22
234	4	167	T prečka	33
235	4	167	ŠLOGA	44
236	4	167	ČELIK	55
237	4	167	LAJSNA	66
238	4	167	PLASTIKA	77
239	4	167	ROLETNA	88
240	4	167	KOMARNIK	99
297	2	241	ŠLOGA	444
299	2	242	KRILO	333
300	2	242	T prečka	222
301	2	242	ŠLOGA	111
\.


--
-- Data for Name: ProfileTehnicki; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ProfileTehnicki" (id, "userId", profil, element, vrednost) FROM stdin;
127	4	107	Širina profila Štok	2
128	4	107	Širina profila krilo	3
129	4	107	Širina profila T prečka	4
157	4	108	Var profila	5
158	4	108	Širina profila Štok	4
8	2	1	Čepovi šloge	2
9	2	1	Visina kutije nadprozorske roletne	1
51	4	1	Zazor za staklo	5
52	4	1	Preklop kod krila	6
53	4	1	Preklop kod šloge	7
54	4	1	Čepovi šloge	8
56	4	1	Visina kutije nadprozorske roletne	9
626	4	197	Var profila	11
627	4	197	Širina profila Štok	22
44	4	1	Var profila	31
45	4	1	Širina profila Štok	32
47	4	1	Širina profila krilo	33
49	4	1	Širina profila T prečka	34
42	1	1	ALU Spojnica Štok 1	2
43	1	1	ALU Spojnica Štok 2	1
281	4	136	Čepovi šloge	8
376	4	137	Zazor za staklo	55
377	4	137	Preklop kod krila	66
378	4	137	Preklop kod šloge	77
379	4	137	Čepovi šloge	88
431	4	138	Zazor za staklo	555
432	4	138	Preklop kod krila	666
433	4	138	Preklop kod šloge	777
434	4	138	Čepovi šloge	888
494	4	167	Zazor za staklo	55
495	4	167	Preklop kod krila	66
496	4	167	Preklop kod šloge	77
497	4	167	Čepovi šloge	88
159	4	108	Širina profila krilo	3
160	4	108	Širina profila T prečka	2
192	4	138	Var profila	111
193	4	138	Širina profila Štok	222
194	4	138	Širina profila krilo	333
195	4	138	Širina profila T prečka	444
231	4	137	Var profila	11
232	4	137	Širina profila Štok	22
233	4	137	Širina profila krilo	33
234	4	137	Širina profila T prečka	44
274	4	136	Var profila	1
275	4	136	Širina profila Štok	2
498	4	167	Visina kutije nadprozorske roletne	99
563	4	166	Var profila	1
564	4	166	Širina profila Štok	2
628	4	197	Širina profila krilo	33
629	4	197	Širina profila T prečka	44
630	4	197	Zazor za staklo	55
631	2	2	Var profila	111
632	2	2	Širina profila Štok	222
633	2	2	Širina profila krilo	333
634	2	2	Širina profila T prečka	444
635	2	242	Var profila	444
636	2	242	Širina profila Štok	333
565	4	166	Širina profila krilo	3
566	4	166	Širina profila T prečka	4
567	4	166	Zazor za staklo	5
59	4	2	Širina profila Štok	40
61	4	2	Širina profila krilo	40
63	4	2	Širina profila T prečka	40
65	4	2	Zazor za staklo	10
67	4	2	Preklop kod krila	6
68	4	2	Preklop kod šloge	6
69	4	2	Čepovi šloge	32
71	4	2	Visina kutije nadprozorske roletne	200
74	4	2	ALU Spojnica Štok 1	2
75	4	2	ALU Spojnica T 1	2
276	4	136	Širina profila krilo	3
277	4	136	Širina profila T prečka	4
278	4	136	Zazor za staklo	5
279	4	136	Preklop kod krila	6
568	4	166	Preklop kod krila	6
571	4	166	Visina kutije nadprozorske roletne	9
5	2	1	Zazor za staklo	5
19	2	1	ALU Spojnica Štok 1	2
20	2	1	ALU Spojnica Štok 2	0
21	2	1	ALU Spojnica Štok 3	0
76	4	2	ALU Spojnica Krilo 1	1
77	4	2	ALU Spojnica Krilo 2	1
280	4	136	Preklop kod šloge	7
569	4	166	Preklop kod šloge	7
570	4	166	Čepovi šloge	8
78	4	2	ALU Spojnica Krilo 3	1
79	4	2	ALU Spojnica Krilo 4	1
126	4	107	Var profila	1
490	4	167	Var profila	11
491	4	167	Širina profila Štok	22
492	4	167	Širina profila krilo	33
493	4	167	Širina profila T prečka	44
22	2	1	ALU Spojnica Štok 4	0
1	2	1	Var profila	9
2	2	1	Širina profila Štok	8
3	2	1	Širina profila krilo	7
4	2	1	Širina profila T prečka	6
6	2	1	Preklop kod krila	4
7	2	1	Preklop kod šloge	3
621	4	196	Var profila	1
622	4	196	Širina profila Štok	2
623	4	196	Širina profila krilo	3
624	4	196	Širina profila T prečka	4
625	4	196	Zazor za staklo	5
637	2	242	Širina profila krilo	222
638	2	242	Širina profila T prečka	111
639	2	241	Var profila	111
640	2	241	Širina profila Štok	222
641	2	241	Širina profila krilo	333
642	2	241	Širina profila T prečka	444
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
25	4	naziv	sale doo
26	4	adresa	saletova bb
27	4	pib	1234567
28	4	maticni	322423452
29	4	telefon	534354
30	4	email	dgffsdgf
31	4	tr	322323
32	4	zarada	40
33	4	otpad	10
34	4	roletna	40
35	4	komarnik	40
36	4	logo	data:image/jpeg;base64,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
\.


--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."User" (id, username, password, role, "isActive", "licenseStart", "licenseEnd", "maxDevices", "createdAt", "updatedAt", deleted) FROM stdin;
1	admin	$2b$10$qauoSVFVlSjMUtBwFQxde.gAGTMe4HOAlf0InIpix.lEZjrMpFEAK	ADMIN	t	\N	\N	5	2026-05-13 02:26:20.119	2026-05-13 02:26:20.119	f
2	rade	$2b$10$NO3P3enH76fXrC9UoYiELOH5FjMA9aUTLOkxt/aIDDnVfRgyA4IUa	USER	t	\N	2026-05-27 00:00:00	1	2026-05-13 02:29:08.188	2026-05-13 02:29:08.188	f
3	boki	$2b$10$eCznyHpyNohzOD.PgeqGnedi7kaP31G8tpiyE3ZBU8skOz5BI/Uty	USER	t	\N	2026-05-28 00:00:00	1	2026-05-13 02:29:24.289	2026-05-13 02:29:24.289	f
4	sale	$2b$10$MK2XYiQh/or/cyb8VMLxvOeM/S7Y1DRSl0uCidDmfmNmNwoaqu9/C	USER	t	\N	2026-07-10 00:00:00	1	2026-05-14 20:32:31.762	2026-05-15 19:52:28.426	f
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
7	4	din
8	4	eur
9	4	usd
\.


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
88c7f392-b9ea-4c94-8df8-38634053a867	7e51ee0c1e2a770029585607ab05bff1e640123476d5cf0eafc5486ed09bc990	2026-05-13 04:08:00.475096+02	20260513020800_init_postgres	\N	\N	2026-05-13 04:08:00.177514+02	1
82618a9f-0f8e-40e4-8eee-34d237e32731	1653329a1b2762ca9a8af9fc3c63a7f498b46b20e3fd625c63043b333aef9a58	2026-05-15 00:30:41.27287+02	20260514223041_soft_delete	\N	\N	2026-05-15 00:30:41.18042+02	1
15b74432-5e65-4d00-9d08-8a94dadf6e1e	3cf26a2db10e250457830e86ded1d10dcef8122916bba17f33d24d52b2816991	2026-05-15 02:46:29.911541+02	20260515004629_formula_kom_as_text	\N	\N	2026-05-15 02:46:29.79551+02	1
7f1c58ca-5bc3-4e20-9e08-6a34dc04782a	8a30ef6b5e657991cb21286ae8f3a5ed017734f484d0b7767a35c23710839e7c	2026-05-15 09:31:14.73363+02	20260515073114_help_texts	\N	\N	2026-05-15 09:31:14.643359+02	1
b9e10702-31ec-4555-8aa3-56d2255daa4f	79e9f9641684ec0c260b66ec4914bbe8ab3c451bb6d8ae72fca311b0af82835b	2026-05-17 01:08:23.479597+02	20260516230823_unique_profile_prices	\N	\N	2026-05-17 01:08:23.3775+02	1
def781c2-f52f-46dc-97ea-5564a04348b6	95366eed37cd477b6eb00e2eff6691e5fe5836c484f2af04164e421a2e5f6a25	2026-05-18 00:28:08.790123+02	20260517222808_ad_settings	\N	\N	2026-05-18 00:28:08.635762+02	1
1e6da37d-736e-49e2-8601-a76477330019	3c2929437917e014a4192db62b8fffde34cc4f0df1633b94a57439e71381d668	2026-05-18 10:23:30.833679+02	20260518082330_ad_clicks	\N	\N	2026-05-18 10:23:30.79288+02	1
\.


--
-- Name: AdClick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AdClick_id_seq"', 4, true);


--
-- Name: AdSetting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AdSetting_id_seq"', 43, true);


--
-- Name: AuditLog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."AuditLog_id_seq"', 74, true);


--
-- Name: FormulaDefinition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."FormulaDefinition_id_seq"', 2507, true);


--
-- Name: HelpText_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."HelpText_id_seq"', 114, true);


--
-- Name: Ispuna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ispuna_id_seq"', 6, true);


--
-- Name: OfferExtraItem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OfferExtraItem_id_seq"', 14, true);


--
-- Name: OfferItem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."OfferItem_id_seq"', 23, true);


--
-- Name: Offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Offer_id_seq"', 8, true);


--
-- Name: Okov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Okov_id_seq"', 35, true);


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

SELECT pg_catalog.setval('public."Profil_id_seq"', 255, true);


--
-- Name: ProfileParam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfileParam_id_seq"', 1, false);


--
-- Name: ProfilePrice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfilePrice_id_seq"', 301, true);


--
-- Name: ProfileTehnicki_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ProfileTehnicki_id_seq"', 642, true);


--
-- Name: Profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Profile_id_seq"', 1, false);


--
-- Name: Setting_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Setting_id_seq"', 36, true);


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

SELECT pg_catalog.setval('public."Valuta_id_seq"', 9, true);


--
-- Name: AdClick AdClick_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdClick"
    ADD CONSTRAINT "AdClick_pkey" PRIMARY KEY (id);


--
-- Name: AdSetting AdSetting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AdSetting"
    ADD CONSTRAINT "AdSetting_pkey" PRIMARY KEY (id);


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
-- Name: HelpText HelpText_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HelpText"
    ADD CONSTRAINT "HelpText_pkey" PRIMARY KEY (id);


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
-- Name: AdSetting_key_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "AdSetting_key_key" ON public."AdSetting" USING btree (key);


--
-- Name: FormulaDefinition_vrstaStolarije_vrstaProzora_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FormulaDefinition_vrstaStolarije_vrstaProzora_idx" ON public."FormulaDefinition" USING btree ("vrstaStolarije", "vrstaProzora");


--
-- Name: HelpText_fieldName_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "HelpText_fieldName_key" ON public."HelpText" USING btree ("fieldName");


--
-- Name: ProfilePrice_userId_profil_element_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "ProfilePrice_userId_profil_element_key" ON public."ProfilePrice" USING btree ("userId", profil, element);


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
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict Yx9yUUVddQ1D7rUR9rnMFzuG7BiaHfYwCixlt45UffLUNMsV8IFqrPdbfuMOfHF

