--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_category; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_category (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    category_name character varying(200) NOT NULL
);


ALTER TABLE public.companies_category OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_category_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_category_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_category_id_seq OWNED BY public.companies_category.id;


--
-- Name: companies_company; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_company (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(400) NOT NULL,
    web character varying(200) NOT NULL,
    address text NOT NULL,
    business text,
    is_active boolean NOT NULL,
    contact_email character varying(200),
    facebook_url character varying(200) NOT NULL,
    linkedin_url character varying(200) NOT NULL,
    rating integer,
    thana_id integer,
    company_log character varying(100),
    user_id integer,
    CONSTRAINT companies_company_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.companies_company OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_category; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_company_category (
    id integer NOT NULL,
    company_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.companies_company_category OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_category_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_company_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_company_category_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_company_category_id_seq OWNED BY public.companies_company_category.id;


--
-- Name: companies_company_following; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_company_following (
    id integer NOT NULL,
    company_id integer NOT NULL,
    exploreruser_id integer NOT NULL
);


ALTER TABLE public.companies_company_following OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_following_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_company_following_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_company_following_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_following_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_company_following_id_seq OWNED BY public.companies_company_following.id;


--
-- Name: companies_company_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_company_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_company_id_seq OWNED BY public.companies_company.id;


--
-- Name: companies_company_likes; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_company_likes (
    id integer NOT NULL,
    company_id integer NOT NULL,
    exploreruser_id integer NOT NULL
);


ALTER TABLE public.companies_company_likes OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_company_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_company_likes_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_company_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_company_likes_id_seq OWNED BY public.companies_company_likes.id;


--
-- Name: companies_feedback_comment; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_feedback_comment (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    comment text NOT NULL,
    job_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.companies_feedback_comment OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_feedback_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_feedback_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_feedback_comment_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_feedback_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_feedback_comment_id_seq OWNED BY public.companies_feedback_comment.id;


--
-- Name: companies_feedback_userratingfeedback; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_feedback_userratingfeedback (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    rating smallint NOT NULL,
    comment character varying(300) NOT NULL,
    CONSTRAINT companies_feedback_userratingfeedback_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.companies_feedback_userratingfeedback OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_feedback_userratingfeedback_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_feedback_userratingfeedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_feedback_userratingfeedback_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_feedback_userratingfeedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_feedback_userratingfeedback_id_seq OWNED BY public.companies_feedback_userratingfeedback.id;


--
-- Name: companies_jobcircular; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_jobcircular (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    deadline date NOT NULL,
    job_title character varying(200) NOT NULL,
    stacks character varying(200)[] NOT NULL,
    company_id integer,
    description text NOT NULL,
    from_url character varying(200) NOT NULL,
    salary integer,
    is_feature boolean NOT NULL,
    job_location character varying(512),
    job_responsibilities text,
    status character varying(10) NOT NULL,
    vacancy integer,
    user_id integer,
    deny_reason text,
    CONSTRAINT companies_jobcircular_salary_check CHECK ((salary >= 0)),
    CONSTRAINT companies_jobcircular_vacancy_check CHECK ((vacancy >= 0))
);


ALTER TABLE public.companies_jobcircular OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_jobcircular_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_jobcircular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_jobcircular_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_jobcircular_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_jobcircular_id_seq OWNED BY public.companies_jobcircular.id;


--
-- Name: companies_jobcirculartemplate; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_jobcirculartemplate (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    template_name character varying(100) NOT NULL,
    description text NOT NULL,
    vacancy integer NOT NULL,
    from_url character varying(200) NOT NULL,
    job_title character varying(200) NOT NULL,
    stacks character varying(200)[] NOT NULL,
    job_responsibilities text,
    job_location character varying(512),
    CONSTRAINT companies_jobcirculartemplate_vacancy_check CHECK ((vacancy >= 0))
);


ALTER TABLE public.companies_jobcirculartemplate OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_jobcirculartemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_jobcirculartemplate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_jobcirculartemplate_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_jobcirculartemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_jobcirculartemplate_id_seq OWNED BY public.companies_jobcirculartemplate.id;


--
-- Name: companies_position; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_position (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    company_id integer
);


ALTER TABLE public.companies_position OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_position_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_position_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_position_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_position_id_seq OWNED BY public.companies_position.id;


--
-- Name: companies_positioncreationtimeline; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_positioncreationtimeline (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    external_ref character varying(512) NOT NULL,
    position_id integer NOT NULL
);


ALTER TABLE public.companies_positioncreationtimeline OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_positioncreationtimeline_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_positioncreationtimeline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_positioncreationtimeline_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_positioncreationtimeline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_positioncreationtimeline_id_seq OWNED BY public.companies_positioncreationtimeline.id;


--
-- Name: companies_recommendedcompany; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_recommendedcompany (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    company_id integer NOT NULL,
    user_id integer NOT NULL,
    rank_value integer NOT NULL,
    CONSTRAINT companies_rankingcompanies_rank_value_check CHECK ((rank_value >= 0))
);


ALTER TABLE public.companies_recommendedcompany OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_rankingcompanies_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_rankingcompanies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_rankingcompanies_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_rankingcompanies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_rankingcompanies_id_seq OWNED BY public.companies_recommendedcompany.id;


--
-- Name: companies_stack; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_stack (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(900) NOT NULL,
    company_id integer
);


ALTER TABLE public.companies_stack OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_stack_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_stack_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_stack_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_stack_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_stack_id_seq OWNED BY public.companies_stack.id;


--
-- Name: companies_stackcreationtimeline; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.companies_stackcreationtimeline (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    external_ref character varying(512) NOT NULL,
    stack_id integer NOT NULL
);


ALTER TABLE public.companies_stackcreationtimeline OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_stackcreationtimeline_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.companies_stackcreationtimeline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companies_stackcreationtimeline_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: companies_stackcreationtimeline_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.companies_stackcreationtimeline_id_seq OWNED BY public.companies_stackcreationtimeline.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_celery_beat_clockedschedule; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_beat_clockedschedule OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_clockedschedule_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;


--
-- Name: django_celery_beat_crontabschedule; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);


ALTER TABLE public.django_celery_beat_crontabschedule OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_crontabschedule_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;


--
-- Name: django_celery_beat_intervalschedule; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE public.django_celery_beat_intervalschedule OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_intervalschedule_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;


--
-- Name: django_celery_beat_periodictask; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_celery_beat_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    solar_id integer,
    one_off boolean NOT NULL,
    start_time timestamp with time zone,
    priority integer,
    headers text NOT NULL,
    clocked_id integer,
    expire_seconds integer,
    CONSTRAINT django_celery_beat_periodictask_expire_seconds_check CHECK ((expire_seconds >= 0)),
    CONSTRAINT django_celery_beat_periodictask_priority_check CHECK ((priority >= 0)),
    CONSTRAINT django_celery_beat_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE public.django_celery_beat_periodictask OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_periodictask_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;


--
-- Name: django_celery_beat_periodictasks; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_beat_periodictasks OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_solarschedule; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);


ALTER TABLE public.django_celery_beat_solarschedule OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_solarschedule_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: geospatial_thana; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.geospatial_thana (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.geospatial_thana OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: geospatial_thana_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.geospatial_thana_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geospatial_thana_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: geospatial_thana_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.geospatial_thana_id_seq OWNED BY public.geospatial_thana.id;


--
-- Name: job_seekers_favouritejobs; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.job_seekers_favouritejobs (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    job_id character varying(10) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.job_seekers_favouritejobs OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: job_seekers_favouritejobs_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.job_seekers_favouritejobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_seekers_favouritejobs_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: job_seekers_favouritejobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.job_seekers_favouritejobs_id_seq OWNED BY public.job_seekers_favouritejobs.id;


--
-- Name: job_seekers_uploadcv; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.job_seekers_uploadcv (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    upload_cv character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.job_seekers_uploadcv OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: job_seekers_uploadcv_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.job_seekers_uploadcv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_seekers_uploadcv_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: job_seekers_uploadcv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.job_seekers_uploadcv_id_seq OWNED BY public.job_seekers_uploadcv.id;


--
-- Name: job_seekers_uploadedfile; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.job_seekers_uploadedfile (
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_cv character varying(100) NOT NULL,
    expose_cv_publicly boolean NOT NULL,
    job_type character varying(10) NOT NULL,
    specializes_skills character varying(200)[] NOT NULL,
    preferred_location character varying(100) NOT NULL,
    expected_salary integer,
    user_id integer NOT NULL,
    CONSTRAINT job_seekers_uploadedfile_expected_salary_check CHECK ((expected_salary >= 0))
);


ALTER TABLE public.job_seekers_uploadedfile OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: jobs_recommendeduserforjob; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.jobs_recommendeduserforjob (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_list jsonb NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE public.jobs_recommendeduserforjob OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: jobs_recommendeduserforjob_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.jobs_recommendeduserforjob_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_recommendeduserforjob_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: jobs_recommendeduserforjob_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.jobs_recommendeduserforjob_id_seq OWNED BY public.jobs_recommendeduserforjob.id;


--
-- Name: jobs_saveapplieduser; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.jobs_saveapplieduser (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    cv character varying(100) NOT NULL,
    job_id integer NOT NULL,
    user_id integer NOT NULL,
    is_sort_user boolean NOT NULL,
    status character varying(10) NOT NULL
);


ALTER TABLE public.jobs_saveapplieduser OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: jobs_saveapplieduser_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.jobs_saveapplieduser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_saveapplieduser_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: jobs_saveapplieduser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.jobs_saveapplieduser_id_seq OWNED BY public.jobs_saveapplieduser.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: thumbnail_kvstore; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.thumbnail_kvstore (
    key character varying(200) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.thumbnail_kvstore OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.users_exploreruser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    phone character varying(15) NOT NULL,
    provider character varying(20) NOT NULL,
    address text NOT NULL,
    stacks jsonb NOT NULL,
    is_uploaded_cv boolean NOT NULL,
    cv character varying(100) NOT NULL,
    role character varying(12) NOT NULL,
    profile_picture character varying(100)
);


ALTER TABLE public.users_exploreruser OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser_groups; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.users_exploreruser_groups (
    id integer NOT NULL,
    exploreruser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_exploreruser_groups OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.users_exploreruser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_exploreruser_groups_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.users_exploreruser_groups_id_seq OWNED BY public.users_exploreruser_groups.id;


--
-- Name: users_exploreruser_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.users_exploreruser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_exploreruser_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.users_exploreruser_id_seq OWNED BY public.users_exploreruser.id;


--
-- Name: users_exploreruser_user_permissions; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.users_exploreruser_user_permissions (
    id integer NOT NULL,
    exploreruser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_exploreruser_user_permissions OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.users_exploreruser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_exploreruser_user_permissions_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_exploreruser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.users_exploreruser_user_permissions_id_seq OWNED BY public.users_exploreruser_user_permissions.id;


--
-- Name: users_feedback; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.users_feedback (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    feedback text NOT NULL
);


ALTER TABLE public.users_feedback OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.users_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_feedback_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.users_feedback_id_seq OWNED BY public.users_feedback.id;


--
-- Name: users_usercvinfo; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.users_usercvinfo (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    information jsonb NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_usercvinfo OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_usercvinfo_id_seq; Type: SEQUENCE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE SEQUENCE public.users_usercvinfo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_usercvinfo_id_seq OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: users_usercvinfo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER SEQUENCE public.users_usercvinfo_id_seq OWNED BY public.users_usercvinfo.id;


--
-- Name: users_userfeed; Type: TABLE; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE TABLE public.users_userfeed (
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content jsonb NOT NULL
);


ALTER TABLE public.users_userfeed OWNER TO "uDAegzpbzizQLGtcDFGdpHBHliKuMfIP";

--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: companies_category id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_category ALTER COLUMN id SET DEFAULT nextval('public.companies_category_id_seq'::regclass);


--
-- Name: companies_company id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company ALTER COLUMN id SET DEFAULT nextval('public.companies_company_id_seq'::regclass);


--
-- Name: companies_company_category id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_category ALTER COLUMN id SET DEFAULT nextval('public.companies_company_category_id_seq'::regclass);


--
-- Name: companies_company_following id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_following ALTER COLUMN id SET DEFAULT nextval('public.companies_company_following_id_seq'::regclass);


--
-- Name: companies_company_likes id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_likes ALTER COLUMN id SET DEFAULT nextval('public.companies_company_likes_id_seq'::regclass);


--
-- Name: companies_feedback_comment id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_feedback_comment ALTER COLUMN id SET DEFAULT nextval('public.companies_feedback_comment_id_seq'::regclass);


--
-- Name: companies_feedback_userratingfeedback id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_feedback_userratingfeedback ALTER COLUMN id SET DEFAULT nextval('public.companies_feedback_userratingfeedback_id_seq'::regclass);


--
-- Name: companies_jobcircular id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_jobcircular ALTER COLUMN id SET DEFAULT nextval('public.companies_jobcircular_id_seq'::regclass);


--
-- Name: companies_jobcirculartemplate id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_jobcirculartemplate ALTER COLUMN id SET DEFAULT nextval('public.companies_jobcirculartemplate_id_seq'::regclass);


--
-- Name: companies_position id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_position ALTER COLUMN id SET DEFAULT nextval('public.companies_position_id_seq'::regclass);


--
-- Name: companies_positioncreationtimeline id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_positioncreationtimeline ALTER COLUMN id SET DEFAULT nextval('public.companies_positioncreationtimeline_id_seq'::regclass);


--
-- Name: companies_recommendedcompany id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_recommendedcompany ALTER COLUMN id SET DEFAULT nextval('public.companies_rankingcompanies_id_seq'::regclass);


--
-- Name: companies_stack id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_stack ALTER COLUMN id SET DEFAULT nextval('public.companies_stack_id_seq'::regclass);


--
-- Name: companies_stackcreationtimeline id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_stackcreationtimeline ALTER COLUMN id SET DEFAULT nextval('public.companies_stackcreationtimeline_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_celery_beat_clockedschedule id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_crontabschedule id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_intervalschedule id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_periodictask id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);


--
-- Name: django_celery_beat_solarschedule id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: geospatial_thana id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.geospatial_thana ALTER COLUMN id SET DEFAULT nextval('public.geospatial_thana_id_seq'::regclass);


--
-- Name: job_seekers_favouritejobs id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_favouritejobs ALTER COLUMN id SET DEFAULT nextval('public.job_seekers_favouritejobs_id_seq'::regclass);


--
-- Name: job_seekers_uploadcv id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_uploadcv ALTER COLUMN id SET DEFAULT nextval('public.job_seekers_uploadcv_id_seq'::regclass);


--
-- Name: jobs_recommendeduserforjob id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_recommendeduserforjob ALTER COLUMN id SET DEFAULT nextval('public.jobs_recommendeduserforjob_id_seq'::regclass);


--
-- Name: jobs_saveapplieduser id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_saveapplieduser ALTER COLUMN id SET DEFAULT nextval('public.jobs_saveapplieduser_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: users_exploreruser id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser ALTER COLUMN id SET DEFAULT nextval('public.users_exploreruser_id_seq'::regclass);


--
-- Name: users_exploreruser_groups id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_groups ALTER COLUMN id SET DEFAULT nextval('public.users_exploreruser_groups_id_seq'::regclass);


--
-- Name: users_exploreruser_user_permissions id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_exploreruser_user_permissions_id_seq'::regclass);


--
-- Name: users_feedback id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_feedback ALTER COLUMN id SET DEFAULT nextval('public.users_feedback_id_seq'::regclass);


--
-- Name: users_usercvinfo id; Type: DEFAULT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_usercvinfo ALTER COLUMN id SET DEFAULT nextval('public.users_usercvinfo_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	muazzem@bitstrapped.com	t	t	1
2	rafiqulislamrabbi2546@gmail.com	t	t	2
3	rafiqul15-2546@diu.edu.bd	t	t	3
4	saiful@bitstrapped.com	t	t	4
5	mr.saiful.azad@gmail.com	t	t	5
6	rasellabib900+1@gmail.com	t	t	6
7	moin7657467@gmail.com	t	t	7
8	moin7657467+1@gmail.com	f	t	8
9	moin7657467+2@gmail.com	t	t	9
10	moin7657467+3@gmail.com	t	t	10
11	moin7657467+4@gmail.com	f	t	11
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add content type	3	add_contenttype
10	Can change content type	3	change_contenttype
11	Can delete content type	3	delete_contenttype
12	Can view content type	3	view_contenttype
13	Can add session	4	add_session
14	Can change session	4	change_session
15	Can delete session	4	delete_session
16	Can view session	4	view_session
17	Can add site	5	add_site
18	Can change site	5	change_site
19	Can delete site	5	delete_site
20	Can view site	5	view_site
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add email address	7	add_emailaddress
26	Can change email address	7	change_emailaddress
27	Can delete email address	7	delete_emailaddress
28	Can view email address	7	view_emailaddress
29	Can add email confirmation	8	add_emailconfirmation
30	Can change email confirmation	8	change_emailconfirmation
31	Can delete email confirmation	8	delete_emailconfirmation
32	Can view email confirmation	8	view_emailconfirmation
33	Can add social account	9	add_socialaccount
34	Can change social account	9	change_socialaccount
35	Can delete social account	9	delete_socialaccount
36	Can view social account	9	view_socialaccount
37	Can add social application	10	add_socialapp
38	Can change social application	10	change_socialapp
39	Can delete social application	10	delete_socialapp
40	Can view social application	10	view_socialapp
41	Can add social application token	11	add_socialtoken
42	Can change social application token	11	change_socialtoken
43	Can delete social application token	11	delete_socialtoken
44	Can view social application token	11	view_socialtoken
45	Can add crontab	12	add_crontabschedule
46	Can change crontab	12	change_crontabschedule
47	Can delete crontab	12	delete_crontabschedule
48	Can view crontab	12	view_crontabschedule
49	Can add interval	13	add_intervalschedule
50	Can change interval	13	change_intervalschedule
51	Can delete interval	13	delete_intervalschedule
52	Can view interval	13	view_intervalschedule
53	Can add periodic task	14	add_periodictask
54	Can change periodic task	14	change_periodictask
55	Can delete periodic task	14	delete_periodictask
56	Can view periodic task	14	view_periodictask
57	Can add periodic tasks	15	add_periodictasks
58	Can change periodic tasks	15	change_periodictasks
59	Can delete periodic tasks	15	delete_periodictasks
60	Can view periodic tasks	15	view_periodictasks
61	Can add solar event	16	add_solarschedule
62	Can change solar event	16	change_solarschedule
63	Can delete solar event	16	delete_solarschedule
64	Can view solar event	16	view_solarschedule
65	Can add clocked	17	add_clockedschedule
66	Can change clocked	17	change_clockedschedule
67	Can delete clocked	17	delete_clockedschedule
68	Can view clocked	17	view_clockedschedule
69	Can add Token	18	add_token
70	Can change Token	18	change_token
71	Can delete Token	18	delete_token
72	Can view Token	18	view_token
73	Can add token	19	add_tokenproxy
74	Can change token	19	change_tokenproxy
75	Can delete token	19	delete_tokenproxy
76	Can view token	19	view_tokenproxy
77	Can add kv store	20	add_kvstore
78	Can change kv store	20	change_kvstore
79	Can delete kv store	20	delete_kvstore
80	Can view kv store	20	view_kvstore
81	Can add user	21	add_exploreruser
82	Can change user	21	change_exploreruser
83	Can delete user	21	delete_exploreruser
84	Can view user	21	view_exploreruser
85	Can add feedback	22	add_feedback
86	Can change feedback	22	change_feedback
87	Can delete feedback	22	delete_feedback
88	Can view feedback	22	view_feedback
89	Can add user feed	23	add_userfeed
90	Can change user feed	23	change_userfeed
91	Can delete user feed	23	delete_userfeed
92	Can view user feed	23	view_userfeed
93	Can add user cv info	24	add_usercvinfo
94	Can change user cv info	24	change_usercvinfo
95	Can delete user cv info	24	delete_usercvinfo
96	Can view user cv info	24	view_usercvinfo
97	Can add hr admin	25	add_hradmin
98	Can change hr admin	25	change_hradmin
99	Can delete hr admin	25	delete_hradmin
100	Can view hr admin	25	view_hradmin
101	Can add job seeker	26	add_jobseeker
102	Can change job seeker	26	change_jobseeker
103	Can delete job seeker	26	delete_jobseeker
104	Can view job seeker	26	view_jobseeker
105	Can add position	27	add_position
106	Can change position	27	change_position
107	Can delete position	27	delete_position
108	Can view position	27	view_position
109	Can add stack	28	add_stack
110	Can change stack	28	change_stack
111	Can delete stack	28	delete_stack
112	Can view stack	28	view_stack
113	Can add stack creation timeline	29	add_stackcreationtimeline
114	Can change stack creation timeline	29	change_stackcreationtimeline
115	Can delete stack creation timeline	29	delete_stackcreationtimeline
116	Can view stack creation timeline	29	view_stackcreationtimeline
117	Can add position creation timeline	30	add_positioncreationtimeline
118	Can change position creation timeline	30	change_positioncreationtimeline
119	Can delete position creation timeline	30	delete_positioncreationtimeline
120	Can view position creation timeline	30	view_positioncreationtimeline
121	Can add company	31	add_company
122	Can change company	31	change_company
123	Can delete company	31	delete_company
124	Can view company	31	view_company
125	Can add job circular	32	add_jobcircular
126	Can change job circular	32	change_jobcircular
127	Can delete job circular	32	delete_jobcircular
128	Can view job circular	32	view_jobcircular
129	Can add recommended company	33	add_recommendedcompany
130	Can change recommended company	33	change_recommendedcompany
131	Can delete recommended company	33	delete_recommendedcompany
132	Can view recommended company	33	view_recommendedcompany
133	Can add category	34	add_category
134	Can change category	34	change_category
135	Can delete category	34	delete_category
136	Can view category	34	view_category
137	Can add job circular template	35	add_jobcirculartemplate
138	Can change job circular template	35	change_jobcirculartemplate
139	Can delete job circular template	35	delete_jobcirculartemplate
140	Can view job circular template	35	view_jobcirculartemplate
141	Can add comment	36	add_comment
142	Can change comment	36	change_comment
143	Can delete comment	36	delete_comment
144	Can view comment	36	view_comment
145	Can add thana	37	add_thana
146	Can change thana	37	change_thana
147	Can delete thana	37	delete_thana
148	Can view thana	37	view_thana
149	Can add recommended user for job	38	add_recommendeduserforjob
150	Can change recommended user for job	38	change_recommendeduserforjob
151	Can delete recommended user for job	38	delete_recommendeduserforjob
152	Can view recommended user for job	38	view_recommendeduserforjob
153	Can add save applied user	39	add_saveapplieduser
154	Can change save applied user	39	change_saveapplieduser
155	Can delete save applied user	39	delete_saveapplieduser
156	Can view save applied user	39	view_saveapplieduser
157	Can add upload cv	40	add_uploadcv
158	Can change upload cv	40	change_uploadcv
159	Can delete upload cv	40	delete_uploadcv
160	Can view upload cv	40	view_uploadcv
161	Can add Job Seekers CV	41	add_uploadedfile
162	Can change Job Seekers CV	41	change_uploadedfile
163	Can delete Job Seekers CV	41	delete_uploadedfile
164	Can view Job Seekers CV	41	view_uploadedfile
165	Can add Favourite Job	42	add_favouritejobs
166	Can change Favourite Job	42	change_favouritejobs
167	Can delete Favourite Job	42	delete_favouritejobs
168	Can view Favourite Job	42	view_favouritejobs
169	Can add user rating feedback	43	add_userratingfeedback
170	Can change user rating feedback	43	change_userratingfeedback
171	Can delete user rating feedback	43	delete_userratingfeedback
172	Can view user rating feedback	43	view_userratingfeedback
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
0ba54645d705152afabc9b06b4ca435c254788a2	2024-02-24 05:27:54.555438+00	1
eeb773ed48bf02060d2a1557c3efe46f10a301c1	2024-02-24 05:29:53.869232+00	2
2800e62c03a51cc4e4e712350e955d17326ea248	2024-02-24 06:10:07.418523+00	3
617d9b9f179816ce691e76c700b2b27eec152410	2024-02-24 06:18:44.747645+00	4
b2c0b4611e1d8e9fd06ea6d143c74b6ece23eedc	2024-02-24 08:51:51.167025+00	5
707691f64ac2110af9688e151bad87899e9d60fb	2024-02-26 14:23:13.127898+00	6
bae38ddc86186667b28c98fff0d592d26504f174	2024-02-27 08:13:58.301582+00	7
50f4dd392e0c703c5f15dc8e7bd1946c34e6b0d8	2024-02-27 08:21:22.419894+00	8
0e23563a22b5235baa6eda3344be61926960eebe	2024-02-27 08:22:52.211967+00	9
692a8456c78dbbe6f57caa253b2f61f6c4654983	2024-02-27 08:30:59.499826+00	10
82220ddd8666f37b3ac9052425ab8239dfb9d55c	2024-02-27 09:09:30.505924+00	11
\.


--
-- Data for Name: companies_category; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_category (id, created_at, updated_at, category_name) FROM stdin;
\.


--
-- Data for Name: companies_company; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_company (id, created_at, updated_at, name, slug, web, address, business, is_active, contact_email, facebook_url, linkedin_url, rating, thana_id, company_log, user_id) FROM stdin;
\.


--
-- Data for Name: companies_company_category; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_company_category (id, company_id, category_id) FROM stdin;
\.


--
-- Data for Name: companies_company_following; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_company_following (id, company_id, exploreruser_id) FROM stdin;
\.


--
-- Data for Name: companies_company_likes; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_company_likes (id, company_id, exploreruser_id) FROM stdin;
\.


--
-- Data for Name: companies_feedback_comment; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_feedback_comment (id, created_at, updated_at, comment, job_id, user_id) FROM stdin;
\.


--
-- Data for Name: companies_feedback_userratingfeedback; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_feedback_userratingfeedback (id, created_at, updated_at, email, rating, comment) FROM stdin;
1	2024-02-24 15:00:24.569044+00	2024-02-24 15:00:24.572763+00	muazzem.mamun@gmail.com	5	
2	2024-02-24 15:27:10.83813+00	2024-02-24 15:27:10.841327+00	omar.iut.09@gmail.com	5	qdqw
3	2024-02-25 08:47:08.767194+00	2024-02-25 08:47:08.770433+00	mobasshir.bhuiya@graaho.com	5	Relevancy based on my skill and years of proficiency
4	2024-02-26 03:57:37.741321+00	2024-02-26 03:57:37.744405+00	mahfujurrahmantonmoy@gmail.com	5	It's nice to find a work for me...
5	2024-02-26 07:26:05.38318+00	2024-02-26 07:26:05.387463+00	ashraf_minhaj@yahoo.com	3	While the system can be beneficial, but the jobs are very old, some are not accepting application anymore.
6	2024-02-26 14:54:30.40262+00	2024-02-26 14:54:30.40265+00	muazzem.mamun@gmail.com	5	
\.


--
-- Data for Name: companies_jobcircular; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_jobcircular (id, created_at, updated_at, deadline, job_title, stacks, company_id, description, from_url, salary, is_feature, job_location, job_responsibilities, status, vacancy, user_id, deny_reason) FROM stdin;
\.


--
-- Data for Name: companies_jobcirculartemplate; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_jobcirculartemplate (id, created_at, updated_at, template_name, description, vacancy, from_url, job_title, stacks, job_responsibilities, job_location) FROM stdin;
\.


--
-- Data for Name: companies_position; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_position (id, name, company_id) FROM stdin;
\.


--
-- Data for Name: companies_positioncreationtimeline; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_positioncreationtimeline (id, created_at, updated_at, external_ref, position_id) FROM stdin;
\.


--
-- Data for Name: companies_recommendedcompany; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_recommendedcompany (id, created_at, updated_at, company_id, user_id, rank_value) FROM stdin;
\.


--
-- Data for Name: companies_stack; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_stack (id, created_at, updated_at, name, company_id) FROM stdin;
\.


--
-- Data for Name: companies_stackcreationtimeline; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.companies_stackcreationtimeline (id, created_at, updated_at, external_ref, stack_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_clockedschedule; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_crontabschedule; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
1	0	4	*	*	*	Asia/Dhaka
\.


--
-- Data for Name: django_celery_beat_intervalschedule; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_periodictask; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
1	celery.backend_cleanup	celery.backend_cleanup	[]	{}	\N	\N	\N	\N	t	2024-02-26 22:00:00.000217+00	1	2024-02-27 02:48:33.017838+00		1	\N	\N	f	\N	\N	{}	\N	43200
\.


--
-- Data for Name: django_celery_beat_periodictasks; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
1	2024-02-27 02:48:33.014893+00
\.


--
-- Data for Name: django_celery_beat_solarschedule; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	contenttypes	contenttype
4	sessions	session
5	sites	site
6	admin	logentry
7	account	emailaddress
8	account	emailconfirmation
9	socialaccount	socialaccount
10	socialaccount	socialapp
11	socialaccount	socialtoken
12	django_celery_beat	crontabschedule
13	django_celery_beat	intervalschedule
14	django_celery_beat	periodictask
15	django_celery_beat	periodictasks
16	django_celery_beat	solarschedule
17	django_celery_beat	clockedschedule
18	authtoken	token
19	authtoken	tokenproxy
20	thumbnail	kvstore
21	users	exploreruser
22	users	feedback
23	users	userfeed
24	users	usercvinfo
25	users	hradmin
26	users	jobseeker
27	companies	position
28	companies	stack
29	companies	stackcreationtimeline
30	companies	positioncreationtimeline
31	companies	company
32	companies	jobcircular
33	companies	recommendedcompany
34	companies	category
35	companies	jobcirculartemplate
36	companies_feedback	comment
37	geospatial	thana
38	jobs	recommendeduserforjob
39	jobs	saveapplieduser
40	job_seekers	uploadcv
41	job_seekers	uploadedfile
42	job_seekers	favouritejobs
43	companies_feedback	userratingfeedback
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-02-24 05:24:40.554168+00
2	contenttypes	0002_remove_content_type_name	2024-02-24 05:24:40.565294+00
3	auth	0001_initial	2024-02-24 05:24:40.61609+00
4	auth	0002_alter_permission_name_max_length	2024-02-24 05:24:40.622205+00
5	auth	0003_alter_user_email_max_length	2024-02-24 05:24:40.629595+00
6	auth	0004_alter_user_username_opts	2024-02-24 05:24:40.636537+00
7	auth	0005_alter_user_last_login_null	2024-02-24 05:24:40.643615+00
8	auth	0006_require_contenttypes_0002	2024-02-24 05:24:40.646351+00
9	auth	0007_alter_validators_add_error_messages	2024-02-24 05:24:40.653059+00
10	auth	0008_alter_user_username_max_length	2024-02-24 05:24:40.659795+00
11	auth	0009_alter_user_last_name_max_length	2024-02-24 05:24:40.668609+00
12	auth	0010_alter_group_name_max_length	2024-02-24 05:24:40.67619+00
13	auth	0011_update_proxy_permissions	2024-02-24 05:24:40.683052+00
14	users	0001_initial	2024-02-24 05:24:40.730223+00
15	account	0001_initial	2024-02-24 05:24:40.773233+00
16	account	0002_email_max_length	2024-02-24 05:24:40.784638+00
17	admin	0001_initial	2024-02-24 05:24:40.809971+00
18	admin	0002_logentry_remove_auto_add	2024-02-24 05:24:40.823056+00
19	admin	0003_logentry_add_action_flag_choices	2024-02-24 05:24:40.832578+00
20	auth	0012_alter_user_first_name_max_length	2024-02-24 05:24:40.841925+00
21	authtoken	0001_initial	2024-02-24 05:24:40.862282+00
22	authtoken	0002_auto_20160226_1747	2024-02-24 05:24:40.894359+00
23	authtoken	0003_tokenproxy	2024-02-24 05:24:40.898162+00
24	geospatial	0001_initial	2024-02-24 05:24:40.905745+00
25	geospatial	0002_auto_20210717_0632	2024-02-24 05:24:40.917635+00
26	companies	0001_initial	2024-02-24 05:24:41.019869+00
27	companies	0002_auto_20210622_0440	2024-02-24 05:24:41.099805+00
28	companies	0003_auto_20210624_0448	2024-02-24 05:24:41.111938+00
29	companies_feedback	0001_initial	2024-02-24 05:24:41.141413+00
30	companies	0004_rankingcompanies	2024-02-24 05:24:41.168647+00
31	companies	0005_remove_position_external_ref	2024-02-24 05:24:41.181813+00
32	companies_feedback	0002_auto_20210707_0732	2024-02-24 05:24:41.197218+00
33	companies_feedback	0003_auto_20210709_0324	2024-02-24 05:24:41.210706+00
34	companies	0006_rankingcompanies_rank_value	2024-02-24 05:24:41.225757+00
35	companies	0007_company_is_active	2024-02-24 05:24:41.24245+00
36	companies	0008_auto_20210712_1642	2024-02-24 05:24:41.278574+00
37	companies	0009_auto_20210714_0437	2024-02-24 05:24:41.294368+00
38	companies	0010_auto_20210715_0716	2024-02-24 05:24:41.320801+00
39	companies	0011_auto_20210717_0615	2024-02-24 05:24:41.410698+00
40	companies	0012_auto_20210717_0700	2024-02-24 05:24:41.438908+00
41	companies	0013_auto_20210727_1552	2024-02-24 05:24:41.51138+00
42	companies	0014_auto_20210730_0433	2024-02-24 05:24:41.579459+00
43	companies	0015_jobcircular	2024-02-24 05:24:41.608209+00
44	companies	0016_auto_20210801_1009	2024-02-24 05:24:41.632321+00
45	companies	0017_auto_20210802_1243	2024-02-24 05:24:41.67661+00
46	companies	0018_auto_20210809_0632	2024-02-24 05:24:41.693517+00
47	companies	0019_auto_20210819_0605	2024-02-24 05:24:41.715015+00
48	companies	0020_auto_20210928_0540	2024-02-24 05:24:41.80352+00
49	companies	0021_auto_20210928_0548	2024-02-24 05:24:41.844049+00
50	companies	0022_auto_20210928_0849	2024-02-24 05:24:41.863027+00
51	companies	0023_auto_20211012_1514	2024-02-24 05:24:41.877214+00
52	companies	0024_jobcircular_is_feature	2024-02-24 05:24:41.891377+00
53	companies	0025_company_user	2024-02-24 05:24:41.917459+00
54	companies	0026_auto_20211125_2218	2024-02-24 05:24:41.920037+00
55	companies	0027_auto_20211126_0810	2024-02-24 05:24:41.967995+00
56	companies	0028_remove_jobcircular_job_responsibilities	2024-02-24 05:24:41.970895+00
57	companies	0029_jobcircular_user	2024-02-24 05:24:41.996382+00
58	companies	0030_recommendeduserlist	2024-02-24 05:24:42.03224+00
59	companies	0031_jobcircular_deny_reason	2024-02-24 05:24:42.054584+00
60	companies	0032_auto_20220108_1936	2024-02-24 05:24:42.075179+00
61	companies	0033_delete_recommendeduserlist	2024-02-24 05:24:42.08224+00
62	companies	0034_auto_20220108_2042	2024-02-24 05:24:42.086697+00
63	companies	0035_alter_jobcircular_description_and_more	2024-02-24 05:24:42.107778+00
64	companies	0036_remove_jobcircular_external_ref	2024-02-24 05:24:42.132254+00
65	companies	0037_company_following	2024-02-24 05:24:42.178121+00
66	companies	0038_jobcirculartemplate	2024-02-24 05:24:42.199644+00
67	companies_feedback	0004_alter_comment_company	2024-02-24 05:24:42.23105+00
68	companies_feedback	0005_rename_company_comment_job	2024-02-24 05:24:42.50701+00
69	django_celery_beat	0001_initial	2024-02-24 05:24:42.550986+00
70	django_celery_beat	0002_auto_20161118_0346	2024-02-24 05:24:42.568573+00
71	django_celery_beat	0003_auto_20161209_0049	2024-02-24 05:24:42.58095+00
72	django_celery_beat	0004_auto_20170221_0000	2024-02-24 05:24:42.587606+00
73	django_celery_beat	0005_add_solarschedule_events_choices	2024-02-24 05:24:42.594126+00
74	django_celery_beat	0006_auto_20180322_0932	2024-02-24 05:24:42.624178+00
75	django_celery_beat	0007_auto_20180521_0826	2024-02-24 05:24:42.638632+00
76	django_celery_beat	0008_auto_20180914_1922	2024-02-24 05:24:42.660993+00
77	django_celery_beat	0006_auto_20180210_1226	2024-02-24 05:24:42.676856+00
78	django_celery_beat	0006_periodictask_priority	2024-02-24 05:24:42.686514+00
79	django_celery_beat	0009_periodictask_headers	2024-02-24 05:24:42.695694+00
80	django_celery_beat	0010_auto_20190429_0326	2024-02-24 05:24:42.836094+00
81	django_celery_beat	0011_auto_20190508_0153	2024-02-24 05:24:42.85662+00
82	django_celery_beat	0012_periodictask_expire_seconds	2024-02-24 05:24:42.865829+00
83	django_celery_beat	0013_auto_20200609_0727	2024-02-24 05:24:42.873736+00
84	django_celery_beat	0014_remove_clockedschedule_enabled	2024-02-24 05:24:42.88089+00
85	django_celery_beat	0015_edit_solarschedule_events_choices	2024-02-24 05:24:42.887723+00
86	django_celery_beat	0016_alter_crontabschedule_timezone	2024-02-24 05:24:42.895274+00
87	job_seekers	0001_initial	2024-02-24 05:24:42.906247+00
88	job_seekers	0002_uploadedfile	2024-02-24 05:24:42.940883+00
89	job_seekers	0003_alter_uploadedfile_specializes_skills	2024-02-24 05:24:42.958145+00
90	job_seekers	0004_remove_uploadedfile_id_alter_uploadedfile_job_type_and_more	2024-02-24 05:24:43.025265+00
91	job_seekers	0005_favouritejobs	2024-02-24 05:24:43.060274+00
92	jobs	0001_initial	2024-02-24 05:24:43.137242+00
93	jobs	0002_recommendeduserforjob	2024-02-24 05:24:43.17209+00
94	jobs	0003_alter_recommendeduserforjob_user_list	2024-02-24 05:24:43.185593+00
95	jobs	0004_saveapplieduser_remove_favorite_job_and_more	2024-02-24 05:24:43.308504+00
96	jobs	0005_alter_recommendeduserforjob_options_and_more	2024-02-24 05:24:43.338422+00
97	jobs	0006_saveapplieduser_is_sort_user	2024-02-24 05:24:43.357262+00
98	jobs	0007_saveapplieduser_status	2024-02-24 05:24:43.378277+00
99	sessions	0001_initial	2024-02-24 05:24:43.395231+00
100	sites	0001_initial	2024-02-24 05:24:43.404292+00
101	sites	0002_alter_domain_unique	2024-02-24 05:24:43.415796+00
102	sites	0003_set_site_domain_and_name	2024-02-24 05:24:43.449833+00
103	sites	0004_alter_site_options	2024-02-24 05:24:43.455436+00
104	socialaccount	0001_initial	2024-02-24 05:24:43.582911+00
105	socialaccount	0002_token_max_lengths	2024-02-24 05:24:43.622283+00
106	socialaccount	0003_extra_data_default_dict	2024-02-24 05:24:43.64169+00
107	thumbnail	0001_initial	2024-02-24 05:24:43.655236+00
108	users	0002_feedback	2024-02-24 05:24:43.66687+00
109	users	0003_remove_exploreruser_cv	2024-02-24 05:24:43.688848+00
110	users	0004_exploreruser_cv	2024-02-24 05:24:43.709774+00
111	users	0005_auto_20210717_1039	2024-02-24 05:24:43.738934+00
112	users	0006_auto_20210717_1123	2024-02-24 05:24:43.764442+00
113	users	0007_auto_20210727_1552	2024-02-24 05:24:43.79162+00
114	users	0008_auto_20210820_1145	2024-02-24 05:24:43.817606+00
115	users	0009_userfeed	2024-02-24 05:24:44.120802+00
116	users	0010_auto_20210930_0928	2024-02-24 05:24:44.140528+00
117	users	0011_exploreruser_role	2024-02-24 05:24:44.16321+00
118	users	0012_auto_20211117_0853	2024-02-24 05:24:44.221587+00
119	users	0013_alter_exploreruser_first_name_and_more	2024-02-24 05:24:44.308636+00
120	users	0014_hradmin_jobseeker	2024-02-24 05:24:44.315831+00
121	companies_feedback	0006_userratingfeedback	2024-02-24 14:47:38.837263+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
vlgd3ryqnumvysdj7glr1ka28j8xypcc	.eJxNilEKgCAQBe-y353Ay8iSKyyYyrppJN49qYi-HvNmOjQ-UZzdc0g4p5BYjj7Jhsop2ldXpgamQ1HKYOBfrxWW-7cOFWc0XvQcqDxMhwp-fowL2bctUA:1reVNS:z2EtS9aZvcpdbm__NYCs2QmIPjOHyWJJkfXXfGLJdo4	2024-03-11 07:26:18.732758+00
afk5bmoakgoqfmy6apvblnz2dbhj3mtn	.eJxVjsEOgjAQRP-lZ0OkQAvc9EeatbsNjVgMLWA0_LtFG4PHmTc7sy-mYAqdmjyNyiJrWcUOe-8C-kpuA9D3m52B1sPkQvbJJOyzU1TkgtUQ7ODO6eqvqgPfxR5DgmTOQWIu-MVwbERJKAreiFpXVSR1IwCOZZ5jURhqaoMcq5LkUcpox9LFPmFENd37ATD97sww3j7jKuHZ0sLaF_OB7nF3n9ZzbNl8hRAghtYkje3JfzU9wgg_vq5v2BRodw:1reX22:DqUR8QrY_DSxZxFMvLh3uTKgk_97Jo3Ghr5fFvzFeYo	2024-03-11 09:12:18.954952+00
iqscsdock1s34n8nvtzn8nmr96xkmxcb	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI2In0:1rebsv:EPYI4zpXOEK7KbwpfljrtZnfI2OdbjIu2ypJtyRtdjg	2024-03-11 14:23:13.375907+00
ur1dknuv0aqyoyiuk2jtjy3g9p24lxxz	.eJxVjtEOgiAUht-F6-YSFdS7ehF25Bwmy7AJaqv17pGxllfs_76fH55stQ-YUM23YYR4eJqUdWacrhDs6FTSi6WVtU_mA91Yy_7bemGHjSuEALH0StHYgfw30z1M8PMRKJhDn17DOFixHetAX8h9BAzDB2eg9Ti7kG2dpH12iolcsHr77Dnd2k314Pu4Y0iQzDlIzAXvDMdGlISi4I2odVVFUzcC4FjmORaFoaY2yLEqSR6ljJi93uByaHc:1reoeA:gR46_7SEfeaasTYHzj2Nex9fO-bXTAhCDKGYhsXOUWs	2024-03-12 04:00:50.672569+00
6nk41fqau3c556o6o53ix0uvlswadgpm	.eJxNilEKgCAQBe-y353Ay8iSKyyYyrppJN49qYi-HvNmOjQ-UZzdc0g4p5BYjj7Jhsop2ldXpgamQ1HKYOBfrxWW-7cOFWc0XvQcqDxMhwp-fowL2bctUA:1rephN:YqS5ddM6yMkIC5WeIMRkynSUynJ3QHgep5wvSLDA5ZA	2024-03-12 05:08:13.739722+00
0v0keeq3gyh2pnjvd6r7pyeyv8usmltj	.eJxVjEEOwjAMBP-SM6rSNoaYG3wksh1HqahSiSYnxN9pUQ9w3NndeZlArebQVn2GKZqrGc3plzHJQ8te0DzvuCORpZXafTdHvXa3LWmpk1CdlnI_Xn-qTGvePEiRRKOkS4-Q0EeO9gzgElsvzKiD65NLAqjOI_OgwKMFtoNHYQXz_gD1fT13:1req9e:UczgIeeQg2egh6oPClYAC_rzX5izJoxQXZ7zaa4THKc	2024-03-12 05:37:26.990022+00
zt7wvo1wzilolc48koxnci7ivmppy6r1	.eJxNilEKgCAQBe-y353Ay8iSKyyYyrppJN49qYi-HvNmOjQ-UZzdc0g4p5BYjj7Jhsop2ldXpgamQ1HKYOBfrxWW-7cOFWc0XvQcqDxMhwp-fowL2bctUA:1reqeC:1yunqg0gJ_dp5mq5dy9kTqY_ViZDleVKZZN0Y-bOGj4	2024-03-12 06:09:00.737845+00
s0dl62o218nhqcp8lhq8p93lni3626j1	.eJxVjEEOwjAMBP-SM6rSNoaYG3wksh1HqahSiSYnxN9pUQ9w3NndeZlArebQVn2GKZqrGc3plzHJQ8te0DzvuCORpZXafTdHvXa3LWmpk1CdlnI_Xn-qTGvePEiRRKOkS4-Q0EeO9gzgElsvzKiD65NLAqjOI_OgwKMFtoNHYQXz_gD1fT13:1resQ0:qcDSvNAIV8y8OHaDeuwdPT4qq75iwFRGLO4BGb8-OKw	2024-03-12 08:02:28.568442+00
ev2w4g3t9ryyxy1znbsl99u9v238m44r	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI3In0:1resb8:8enV9-AQxxOVQjISQuSTdyGkY4DCgMMZag_hkZhrc8k	2024-03-12 08:13:58.478793+00
nshhpil0bf3bvwpt9wy1yubu19zaxop2	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI4In0:1resiI:LUUZMHvvJRpLsYhCPFJuDxyOj0gFDKcPXVmKrB3nwx4	2024-03-12 08:21:22.591871+00
pckyw657l4je7i0d52iivrxe5ce4vs60	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiI5In0:1resjk:Mw310HmOdAJN_RrBo3vA6VlRCCZDy6U-GfryWRQq3AU	2024-03-12 08:22:52.408922+00
y3izrpw1kvb6c4bh1242vaqip4tx0inf	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJhIn0:1resrb:uEauaer_rKaAi1sNiS9loftsca2enoh1qYE2AbGiQSg	2024-03-12 08:30:59.740784+00
3sxuj1rzhl8p5aoid3n6n2fh1anmvsh4	eyJhY2NvdW50X3ZlcmlmaWVkX2VtYWlsIjpudWxsLCJhY2NvdW50X3VzZXIiOiJiIn0:1retSs:3EqnddJ3Sr5Lr_AKlWApv9gK3EruPgXQHADl2lurfzc	2024-03-12 09:09:30.697391+00
jkz3b18gbk6w4csjy6b6qjqh3wbbyfz4	.eJxVjtFuwyAMRf-F5ylK07CFvG0_gmxjFGuUVEDaaVX_fTRjk_pk33vsa9_UVb4hObudwwq1ZE5Wol_TCYqs0TZ8Eb6q-aZy4bOa4xbCy95bBwUquDfpJXD-1fxVEvzzagDRusViL5zECzvLJ5Dwl2ZhK0u779SsjurJQ6BPjg8AITzsrsV1-0zDuXuvimMR2t__aFtPUQvkpeYYcEDsyL8djPZmcuj6V61Hj_1EiIaH8eBHT9rwOBnEgTUee439MBlC1ur-A3k5cPw:1rdlEx:q4G5kzB1b2gUzIWG1eiMKlaQBdAH4Yl_4quFu2cvJpM	2024-03-09 06:10:27.721027+00
ijo0zjciral7yt6b9mw05ej6z72335zg	.eJxVj8FuwyAQRP9lz5FlcHGwb-2PoAUWGZXgCLBTNcq_l7ioak6rmTc7C3e4-W9MVm3XsGIdmZLy0a3pgsWvUTW8e7rBfIdc6Aoz_E-bHU6HrywWrKFHk84Hyr-avkrCP14NNGbdYlE7Je88WUUX9AHmuIVwAoVbWdpbbD3H4cXTaD4pPgGG8LS7VtcdmYZz914VxeLN8ZWPtvVStWBeak_fM02jdFbKkU29EGc-iDeJg8TJDFZzIwTHCQ06ZnuUNHJd0_rMOWOT0PD4Acj_c_g:1re4sL:23WoTZwbs2FAIIWE6YxQgleMg-tmZF5PFaB8dHbh7wM	2024-03-10 03:08:25.82367+00
fgt22ln7i3vyy1tdyypfiidij6un5x0l	.eJxVjMsOwiAURP-FtSGUXijXnf4IubwCsaGJwMr477amC13OmZnzYpZGz3a0-LQlsCsDdvlljvwj1qOgdT0wJ--3UTv_bs668dueYu3FUy9bvZ-vP1WmlndPCsJMWmmtSDsIUZpFB0wE3oho0M2gkJSYCUBLZSZ0TiEIjIvBJFNi7w-n_Tux:1re6d6:KSPuRGIb1C_IuXnESvYMUskpTEOtfqR_F4wXPEmpXbk	2024-03-10 05:00:48.044345+00
h3gjxkri9o8d0olz1yh1lms74h44mcu6	eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJuZXh0IjoiLyIsInByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwidEwyNUhVbjJWcjk2Il19:1reUV0:4wjIkxxUBkmd249a-7NH3mf7OhAF9LW_AfXHv5ZmdW4	2024-03-11 06:30:02.66509+00
x60fvtrsquoqw95tiohdylylt3ivwivb	.eJxNjbEOwjAMRP_FMygjqDsDGxsDQpFJXUhJ4yhJm4qq_44LFWI6n-_pboJiXxhr3QfHKJIoausbjh1my16v8WCpQDVByhSggn_aDLD5_HWNGQWaV9tYR-nracwRf_kCsLHo0BjufdYpYyaoLhN4IaVftXzbJqInRSUbgzWUVIgiSsZCZPFSDY7v1i_zhoMUgJzY54cOGLFbAJCtsuf2NO7O5UBHuM5vXYZXdg:1reUjP:9a-Rr5Gh9qPj_cK0srRTUUeJBJ_HFWDg112RblYkjXk	2024-03-11 06:44:55.686934+00
xkdwjn59t5l2d16ika6igxfj0uc15nqg	.eJxNjcEOgkAMRP-lZw0HL4ajfoI3jdnUpWgRtpvuAkbCv1vUGE_T6bzMTDDyE7VyfWwFTRKp41CLdphZgvvGA9MI5QQpU4QS_mk_wOr9dxVmNGj-2ppbSh9Pj6z4yxdAPGOL3ksfsksZM0F5miAYaf1FI5d1IrqTFrYxsKdURDUpbCyqmLdqaOXKYZn3Eq0A7MQ-31xExW4BwLZ2iXXTHXG7bw5wnl9cEVdR:1reV3D:vh17ZEAaIzRB9_s0FR-ELKTXL2d-fdkAvvgRiViIyOM	2024-03-11 07:05:23.27925+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.django_site (id, domain, name) FROM stdin;
1	it-jobs.fractalslab.com	it_jobs
\.


--
-- Data for Name: geospatial_thana; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.geospatial_thana (id, name) FROM stdin;
\.


--
-- Data for Name: job_seekers_favouritejobs; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.job_seekers_favouritejobs (id, created_at, updated_at, job_id, user_id) FROM stdin;
3	2024-02-24 06:18:52.630981+00	2024-02-24 06:18:52.631002+00	j79ENY	4
6	2024-02-24 08:52:25.784359+00	2024-02-24 08:52:25.784379+00	EJp9YX	5
7	2024-02-24 08:56:32.456052+00	2024-02-24 08:56:32.456075+00	4oOGDb	5
8	2024-02-24 15:05:24.024566+00	2024-02-24 15:05:24.024589+00	gMQQ9D	5
\.


--
-- Data for Name: job_seekers_uploadcv; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.job_seekers_uploadcv (id, name, email, upload_cv, created_at) FROM stdin;
\.


--
-- Data for Name: job_seekers_uploadedfile; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.job_seekers_uploadedfile (created_at, updated_at, user_cv, expose_cv_publicly, job_type, specializes_skills, preferred_location, expected_salary, user_id) FROM stdin;
2024-02-24 05:58:01.203092+00	2024-02-24 05:58:01.203115+00	uploads-user-cv/Mamuns_CV.docx_AtXiYSX.pdf	f	FT	{odata}	Mymensingh	3443	1
2024-02-24 06:10:27.429626+00	2024-02-24 06:10:27.429652+00	uploads-user-cv/CV_7SOwHkP.pdf	f	FT	{security}	fdfg	2121	3
\.


--
-- Data for Name: jobs_recommendeduserforjob; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.jobs_recommendeduserforjob (id, created_at, updated_at, user_list, job_id) FROM stdin;
\.


--
-- Data for Name: jobs_saveapplieduser; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.jobs_saveapplieduser (id, created_at, updated_at, cv, job_id, user_id, is_sort_user, status) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
2	google	105504932625803085751	2024-02-24 05:29:53.870823+00	2024-02-24 05:29:53.870833+00	{"id": "105504932625803085751", "email": "rafiqulislamrabbi2546@gmail.com", "verified_email": true, "name": "rafiqul islam rabbi", "given_name": "rafiqul islam", "family_name": "rabbi", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKV9iOM5o67vMRCH1wgOfFT6VEeiHUdR1X2svWv-q92=s96-c", "locale": "en"}	2
4	google	100442533350052842431	2024-02-25 05:00:48.025405+00	2024-02-24 06:18:44.749752+00	{"id": "100442533350052842431", "email": "saiful@bitstrapped.com", "verified_email": true, "name": "Saiful Azad", "given_name": "Saiful", "family_name": "Azad", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKrX5ofqv1xgE2pZsWUOvNUeTU9Dky9Xzk6yorwzCyH=s96-c", "locale": "en", "hd": "bitstrapped.com"}	4
5	google	113891359832863681800	2024-02-26 08:52:29.059492+00	2024-02-24 08:51:51.171139+00	{"id": "113891359832863681800", "email": "mr.saiful.azad@gmail.com", "verified_email": true, "name": "Saiful Azad", "given_name": "Saiful", "family_name": "Azad", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLo4mtvbmAvxEpTzJiiZXULDl8bTf_DJdYdOxOzQWlT82I=s96-c", "locale": "en"}	5
1	google	103785791583606820435	2024-02-26 14:32:38.55326+00	2024-02-24 05:27:54.557974+00	{"id": "103785791583606820435", "email": "muazzem@bitstrapped.com", "verified_email": true, "name": "Muazzem Hossain", "given_name": "Muazzem", "family_name": "Hossain", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJ4tsV6yZnf7KqW2IprGJ8qcQHbck9zQ5sZuk17i8ZF=s96-c", "locale": "en", "hd": "bitstrapped.com"}	1
3	google	100991553822162910024	2024-02-27 08:02:28.551071+00	2024-02-24 06:10:07.421299+00	{"id": "100991553822162910024", "email": "rafiqul15-2546@diu.edu.bd", "verified_email": true, "name": "Md. Rafiqul Islam Rabbi 191-15-2546", "given_name": "Md. Rafiqul Islam Rabbi", "family_name": "191-15-2546", "picture": "https://lh3.googleusercontent.com/a/ACg8ocLf8ExZTt_OxwIrSavG9dpPU6V8PZwWD8PN_zNT_uJBukw=s96-c", "locale": "en", "hd": "diu.edu.bd"}	3
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: thumbnail_kvstore; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.thumbnail_kvstore (key, value) FROM stdin;
\.


--
-- Data for Name: users_exploreruser; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.users_exploreruser (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, phone, provider, address, stacks, is_uploaded_cv, cv, role, profile_picture) FROM stdin;
2	!HEEvuOYnoTBSKOosn4VpB2YQ9mLnu0RT2DmWoB2T	2024-02-24 05:29:53.882952+00	f	rafiqul_islam	rafiqul islam	rabbi	rafiqulislamrabbi2546@gmail.com	f	t	2024-02-24 05:29:53.847309+00				[]	f		employee	
4	!CDoBwWRbcs1F2XT4Kso67OZYIwlpZtpCmUIrkWkt	2024-02-25 05:00:48.039177+00	f	saiful	Saiful	Azad	saiful@bitstrapped.com	f	t	2024-02-24 06:18:44.727344+00				[]	f		employee	
5	!IcMVQnTvJB2WbKde0jiU0Wacuuvb3WlsbEITO5bK	2024-02-26 08:52:29.071016+00	f	saiful2	Saiful	Azad	mr.saiful.azad@gmail.com	f	t	2024-02-24 08:51:51.133918+00				[]	f		employee	
6	argon2$argon2id$v=19$m=102400,t=2,p=8$V1F3UUJPaEhTWGtUbm1PMUdHdkEwVw$qwNMZVY8rN3HjC4aWrOIOQ	\N	f	moin			rasellabib900+1@gmail.com	f	t	2024-02-26 14:23:12.855394+00				[]	f		employee	
1	!ZbDKJW2DM6cjtCN8WCX53lxqz8Xj0QQ4G5gJEoHo	2024-02-26 14:32:38.564362+00	f	muazzem	Muazzem	Hossain	muazzem@bitstrapped.com	f	t	2024-02-24 05:27:54.529353+00				[]	f		employee	
3	!lkzRKuFUdF62LNraIXrJYjsEjl16I9p9g3fgJDrP	2024-02-27 08:02:28.562603+00	f	md._rafiqul_islam_rabbi	Md. Rafiqul Islam Rabbi	191-15-2546	rafiqul15-2546@diu.edu.bd	f	t	2024-02-24 06:10:07.391791+00				[]	f		employee	
7	argon2$argon2id$v=19$m=102400,t=2,p=8$TER0N3BrUE1yQUxLNkc4eDJ1T3huYw$2HfxcsO/yFAsr3cvgFcBkA	\N	f	akbor			moin7657467@gmail.com	f	t	2024-02-27 08:13:58.142323+00				[]	f		employee	
8	argon2$argon2id$v=19$m=102400,t=2,p=8$RG55TGRQYnNFZVJ3eE4zYjFyZ1dJVA$ERdTglltiStUsHxcEgqs6w	\N	f	main			moin7657467+1@gmail.com	f	t	2024-02-27 08:21:22.203492+00				[]	f		employee	
9	argon2$argon2id$v=19$m=102400,t=2,p=8$NVdaNUdQNkVZems4d3AwS2pmNGphMA$oAU2reIeJ5PKc7z78uyy4Q	\N	f	hi			moin7657467+2@gmail.com	f	t	2024-02-27 08:22:52.070017+00				[]	f		employee	
10	argon2$argon2id$v=19$m=102400,t=2,p=8$ak16VGtHRXc4b0JlM2NhdGlLZWNlbA$jlQxpomDllMnDGLA1bxCPw	\N	f	hello			moin7657467+3@gmail.com	f	t	2024-02-27 08:30:59.363217+00				[]	f		employee	
11	argon2$argon2id$v=19$m=102400,t=2,p=8$RlhxeDh1ZjVMY0o5QUJYd2ZtSEp5dQ$eaoR40Qy1iB5Ror53P7Z5Q	\N	f	koy			moin7657467+4@gmail.com	f	t	2024-02-27 09:09:30.368663+00				[]	f		employee	
\.


--
-- Data for Name: users_exploreruser_groups; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.users_exploreruser_groups (id, exploreruser_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_exploreruser_user_permissions; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.users_exploreruser_user_permissions (id, exploreruser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: users_feedback; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.users_feedback (id, created_at, updated_at, email, feedback) FROM stdin;
\.


--
-- Data for Name: users_usercvinfo; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.users_usercvinfo (id, created_at, updated_at, information, user_id) FROM stdin;
\.


--
-- Data for Name: users_userfeed; Type: TABLE DATA; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

COPY public.users_userfeed (created_at, updated_at, user_id, content) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 11, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 172, true);


--
-- Name: companies_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_category_id_seq', 1, false);


--
-- Name: companies_company_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_company_category_id_seq', 1, false);


--
-- Name: companies_company_following_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_company_following_id_seq', 1, false);


--
-- Name: companies_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_company_id_seq', 1, false);


--
-- Name: companies_company_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_company_likes_id_seq', 1, false);


--
-- Name: companies_feedback_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_feedback_comment_id_seq', 1, false);


--
-- Name: companies_feedback_userratingfeedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_feedback_userratingfeedback_id_seq', 6, true);


--
-- Name: companies_jobcircular_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_jobcircular_id_seq', 1, false);


--
-- Name: companies_jobcirculartemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_jobcirculartemplate_id_seq', 1, false);


--
-- Name: companies_position_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_position_id_seq', 1, false);


--
-- Name: companies_positioncreationtimeline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_positioncreationtimeline_id_seq', 1, false);


--
-- Name: companies_rankingcompanies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_rankingcompanies_id_seq', 1, false);


--
-- Name: companies_stack_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_stack_id_seq', 1, false);


--
-- Name: companies_stackcreationtimeline_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.companies_stackcreationtimeline_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);


--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 33, true);


--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, false);


--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 33, true);


--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 43, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 121, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, false);


--
-- Name: geospatial_thana_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.geospatial_thana_id_seq', 1, false);


--
-- Name: job_seekers_favouritejobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.job_seekers_favouritejobs_id_seq', 8, true);


--
-- Name: job_seekers_uploadcv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.job_seekers_uploadcv_id_seq', 1, false);


--
-- Name: jobs_recommendeduserforjob_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.jobs_recommendeduserforjob_id_seq', 1, false);


--
-- Name: jobs_saveapplieduser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.jobs_saveapplieduser_id_seq', 1, false);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 5, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: users_exploreruser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.users_exploreruser_groups_id_seq', 1, false);


--
-- Name: users_exploreruser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.users_exploreruser_id_seq', 11, true);


--
-- Name: users_exploreruser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.users_exploreruser_user_permissions_id_seq', 1, false);


--
-- Name: users_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.users_feedback_id_seq', 1, false);


--
-- Name: users_usercvinfo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

SELECT pg_catalog.setval('public.users_usercvinfo_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: companies_category companies_category_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_category
    ADD CONSTRAINT companies_category_pkey PRIMARY KEY (id);


--
-- Name: companies_company_category companies_company_category_company_id_category_id_c85c3763_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_category
    ADD CONSTRAINT companies_company_category_company_id_category_id_c85c3763_uniq UNIQUE (company_id, category_id);


--
-- Name: companies_company_category companies_company_category_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_category
    ADD CONSTRAINT companies_company_category_pkey PRIMARY KEY (id);


--
-- Name: companies_company_following companies_company_follow_company_id_exploreruser__2b7e49b1_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_following
    ADD CONSTRAINT companies_company_follow_company_id_exploreruser__2b7e49b1_uniq UNIQUE (company_id, exploreruser_id);


--
-- Name: companies_company_following companies_company_following_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_following
    ADD CONSTRAINT companies_company_following_pkey PRIMARY KEY (id);


--
-- Name: companies_company_likes companies_company_likes_company_id_exploreruser__4305e852_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_likes
    ADD CONSTRAINT companies_company_likes_company_id_exploreruser__4305e852_uniq UNIQUE (company_id, exploreruser_id);


--
-- Name: companies_company_likes companies_company_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_likes
    ADD CONSTRAINT companies_company_likes_pkey PRIMARY KEY (id);


--
-- Name: companies_company companies_company_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company
    ADD CONSTRAINT companies_company_pkey PRIMARY KEY (id);


--
-- Name: companies_company companies_company_slug_cddc66aa_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company
    ADD CONSTRAINT companies_company_slug_cddc66aa_uniq UNIQUE (slug);


--
-- Name: companies_feedback_comment companies_feedback_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_feedback_comment
    ADD CONSTRAINT companies_feedback_comment_pkey PRIMARY KEY (id);


--
-- Name: companies_feedback_userratingfeedback companies_feedback_userratingfeedback_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_feedback_userratingfeedback
    ADD CONSTRAINT companies_feedback_userratingfeedback_pkey PRIMARY KEY (id);


--
-- Name: companies_jobcircular companies_jobcircular_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_jobcircular
    ADD CONSTRAINT companies_jobcircular_pkey PRIMARY KEY (id);


--
-- Name: companies_jobcirculartemplate companies_jobcirculartemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_jobcirculartemplate
    ADD CONSTRAINT companies_jobcirculartemplate_pkey PRIMARY KEY (id);


--
-- Name: companies_position companies_position_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_position
    ADD CONSTRAINT companies_position_pkey PRIMARY KEY (id);


--
-- Name: companies_positioncreationtimeline companies_positioncreationtimeline_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_positioncreationtimeline
    ADD CONSTRAINT companies_positioncreationtimeline_pkey PRIMARY KEY (id);


--
-- Name: companies_recommendedcompany companies_rankingcompanies_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_recommendedcompany
    ADD CONSTRAINT companies_rankingcompanies_pkey PRIMARY KEY (id);


--
-- Name: companies_stack companies_stack_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_stack
    ADD CONSTRAINT companies_stack_pkey PRIMARY KEY (id);


--
-- Name: companies_stackcreationtimeline companies_stackcreationtimeline_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_stackcreationtimeline
    ADD CONSTRAINT companies_stackcreationtimeline_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: geospatial_thana geospatial_thana_name_956ad1cf_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.geospatial_thana
    ADD CONSTRAINT geospatial_thana_name_956ad1cf_uniq UNIQUE (name);


--
-- Name: geospatial_thana geospatial_thana_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.geospatial_thana
    ADD CONSTRAINT geospatial_thana_pkey PRIMARY KEY (id);


--
-- Name: job_seekers_favouritejobs job_seekers_favouritejobs_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_favouritejobs
    ADD CONSTRAINT job_seekers_favouritejobs_pkey PRIMARY KEY (id);


--
-- Name: job_seekers_uploadcv job_seekers_uploadcv_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_uploadcv
    ADD CONSTRAINT job_seekers_uploadcv_pkey PRIMARY KEY (id);


--
-- Name: job_seekers_uploadedfile job_seekers_uploadedfile_user_id_fee6190b_pk; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_uploadedfile
    ADD CONSTRAINT job_seekers_uploadedfile_user_id_fee6190b_pk PRIMARY KEY (user_id);


--
-- Name: job_seekers_uploadedfile job_seekers_uploadedfile_user_id_fee6190b_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_uploadedfile
    ADD CONSTRAINT job_seekers_uploadedfile_user_id_fee6190b_uniq UNIQUE (user_id);


--
-- Name: jobs_recommendeduserforjob jobs_recommendeduserforjob_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_recommendeduserforjob
    ADD CONSTRAINT jobs_recommendeduserforjob_pkey PRIMARY KEY (id);


--
-- Name: jobs_saveapplieduser jobs_saveapplieduser_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_saveapplieduser
    ADD CONSTRAINT jobs_saveapplieduser_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: thumbnail_kvstore thumbnail_kvstore_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.thumbnail_kvstore
    ADD CONSTRAINT thumbnail_kvstore_pkey PRIMARY KEY (key);


--
-- Name: users_exploreruser_groups users_exploreruser_group_exploreruser_id_group_id_1d13db35_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_groups
    ADD CONSTRAINT users_exploreruser_group_exploreruser_id_group_id_1d13db35_uniq UNIQUE (exploreruser_id, group_id);


--
-- Name: users_exploreruser_groups users_exploreruser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_groups
    ADD CONSTRAINT users_exploreruser_groups_pkey PRIMARY KEY (id);


--
-- Name: users_exploreruser users_exploreruser_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser
    ADD CONSTRAINT users_exploreruser_pkey PRIMARY KEY (id);


--
-- Name: users_exploreruser_user_permissions users_exploreruser_user__exploreruser_id_permissi_72b55d28_uniq; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_user_permissions
    ADD CONSTRAINT users_exploreruser_user__exploreruser_id_permissi_72b55d28_uniq UNIQUE (exploreruser_id, permission_id);


--
-- Name: users_exploreruser_user_permissions users_exploreruser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_user_permissions
    ADD CONSTRAINT users_exploreruser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_exploreruser users_exploreruser_username_key; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser
    ADD CONSTRAINT users_exploreruser_username_key UNIQUE (username);


--
-- Name: users_feedback users_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_feedback
    ADD CONSTRAINT users_feedback_pkey PRIMARY KEY (id);


--
-- Name: users_usercvinfo users_usercvinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_usercvinfo
    ADD CONSTRAINT users_usercvinfo_pkey PRIMARY KEY (id);


--
-- Name: users_userfeed users_userfeed_pkey; Type: CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_userfeed
    ADD CONSTRAINT users_userfeed_pkey PRIMARY KEY (user_id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: companies_company_category_category_id_391bb1cf; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_category_category_id_391bb1cf ON public.companies_company_category USING btree (category_id);


--
-- Name: companies_company_category_company_id_9945c6ae; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_category_company_id_9945c6ae ON public.companies_company_category USING btree (company_id);


--
-- Name: companies_company_contact_email_0084adb6; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_contact_email_0084adb6 ON public.companies_company USING btree (contact_email);


--
-- Name: companies_company_contact_email_0084adb6_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_contact_email_0084adb6_like ON public.companies_company USING btree (contact_email varchar_pattern_ops);


--
-- Name: companies_company_facebook_url_d7358e00; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_facebook_url_d7358e00 ON public.companies_company USING btree (facebook_url);


--
-- Name: companies_company_facebook_url_d7358e00_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_facebook_url_d7358e00_like ON public.companies_company USING btree (facebook_url varchar_pattern_ops);


--
-- Name: companies_company_following_company_id_41479880; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_following_company_id_41479880 ON public.companies_company_following USING btree (company_id);


--
-- Name: companies_company_following_exploreruser_id_990a932a; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_following_exploreruser_id_990a932a ON public.companies_company_following USING btree (exploreruser_id);


--
-- Name: companies_company_likes_company_id_4eed8ae0; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_likes_company_id_4eed8ae0 ON public.companies_company_likes USING btree (company_id);


--
-- Name: companies_company_likes_exploreruser_id_b953f966; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_likes_exploreruser_id_b953f966 ON public.companies_company_likes USING btree (exploreruser_id);


--
-- Name: companies_company_linkedin_url_8d125648; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_linkedin_url_8d125648 ON public.companies_company USING btree (linkedin_url);


--
-- Name: companies_company_linkedin_url_8d125648_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_linkedin_url_8d125648_like ON public.companies_company USING btree (linkedin_url varchar_pattern_ops);


--
-- Name: companies_company_slug_cddc66aa_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_slug_cddc66aa_like ON public.companies_company USING btree (slug varchar_pattern_ops);


--
-- Name: companies_company_thana_id_b348a0c5; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_thana_id_b348a0c5 ON public.companies_company USING btree (thana_id);


--
-- Name: companies_company_user_id_175c2d31; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_user_id_175c2d31 ON public.companies_company USING btree (user_id);


--
-- Name: companies_company_web_340123a9; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_web_340123a9 ON public.companies_company USING btree (web);


--
-- Name: companies_company_web_340123a9_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_company_web_340123a9_like ON public.companies_company USING btree (web varchar_pattern_ops);


--
-- Name: companies_feedback_comment_company_id_3f93d9df; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_feedback_comment_company_id_3f93d9df ON public.companies_feedback_comment USING btree (job_id);


--
-- Name: companies_feedback_comment_user_id_3e1994a9; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_feedback_comment_user_id_3e1994a9 ON public.companies_feedback_comment USING btree (user_id);


--
-- Name: companies_jobcircular_company_id_58c7f70c; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_jobcircular_company_id_58c7f70c ON public.companies_jobcircular USING btree (company_id);


--
-- Name: companies_jobcircular_form_url_116c5d9d; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_jobcircular_form_url_116c5d9d ON public.companies_jobcircular USING btree (from_url);


--
-- Name: companies_jobcircular_form_url_116c5d9d_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_jobcircular_form_url_116c5d9d_like ON public.companies_jobcircular USING btree (from_url varchar_pattern_ops);


--
-- Name: companies_jobcircular_user_id_7d25f660; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_jobcircular_user_id_7d25f660 ON public.companies_jobcircular USING btree (user_id);


--
-- Name: companies_jobcirculartemplate_from_url_4b099241; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_jobcirculartemplate_from_url_4b099241 ON public.companies_jobcirculartemplate USING btree (from_url);


--
-- Name: companies_jobcirculartemplate_from_url_4b099241_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_jobcirculartemplate_from_url_4b099241_like ON public.companies_jobcirculartemplate USING btree (from_url varchar_pattern_ops);


--
-- Name: companies_position_company_id_b3251755; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_position_company_id_b3251755 ON public.companies_position USING btree (company_id);


--
-- Name: companies_positioncreationtimeline_position_id_a3ddcaf6; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_positioncreationtimeline_position_id_a3ddcaf6 ON public.companies_positioncreationtimeline USING btree (position_id);


--
-- Name: companies_rankingcompanies_company_id_df8fc081; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_rankingcompanies_company_id_df8fc081 ON public.companies_recommendedcompany USING btree (company_id);


--
-- Name: companies_rankingcompanies_user_id_a22ff69a; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_rankingcompanies_user_id_a22ff69a ON public.companies_recommendedcompany USING btree (user_id);


--
-- Name: companies_stack_company_id_89051c8f; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_stack_company_id_89051c8f ON public.companies_stack USING btree (company_id);


--
-- Name: companies_stackcreationtimeline_stack_id_14505f46; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX companies_stackcreationtimeline_stack_id_14505f46 ON public.companies_stackcreationtimeline USING btree (stack_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_celery_beat_periodictask_clocked_id_47a69f82; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);


--
-- Name: django_celery_beat_periodictask_crontab_id_d3cba168; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);


--
-- Name: django_celery_beat_periodictask_interval_id_a8ca27da; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);


--
-- Name: django_celery_beat_periodictask_name_265a36b7_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: django_celery_beat_periodictask_solar_id_a87ce72c; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: geospatial_thana_name_956ad1cf_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX geospatial_thana_name_956ad1cf_like ON public.geospatial_thana USING btree (name varchar_pattern_ops);


--
-- Name: job_seekers_favouritejobs_user_id_198968fa; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX job_seekers_favouritejobs_user_id_198968fa ON public.job_seekers_favouritejobs USING btree (user_id);


--
-- Name: jobs_recommendeduserforjob_job_id_fd4d243a; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX jobs_recommendeduserforjob_job_id_fd4d243a ON public.jobs_recommendeduserforjob USING btree (job_id);


--
-- Name: jobs_saveapplieduser_job_id_e3f83996; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX jobs_saveapplieduser_job_id_e3f83996 ON public.jobs_saveapplieduser USING btree (job_id);


--
-- Name: jobs_saveapplieduser_user_id_bb16a8cd; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX jobs_saveapplieduser_user_id_bb16a8cd ON public.jobs_saveapplieduser USING btree (user_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: thumbnail_kvstore_key_3f850178_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX thumbnail_kvstore_key_3f850178_like ON public.thumbnail_kvstore USING btree (key varchar_pattern_ops);


--
-- Name: users_exploreruser_groups_exploreruser_id_efeafb68; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX users_exploreruser_groups_exploreruser_id_efeafb68 ON public.users_exploreruser_groups USING btree (exploreruser_id);


--
-- Name: users_exploreruser_groups_group_id_76316a01; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX users_exploreruser_groups_group_id_76316a01 ON public.users_exploreruser_groups USING btree (group_id);


--
-- Name: users_exploreruser_user_permissions_exploreruser_id_fc7bcbe3; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX users_exploreruser_user_permissions_exploreruser_id_fc7bcbe3 ON public.users_exploreruser_user_permissions USING btree (exploreruser_id);


--
-- Name: users_exploreruser_user_permissions_permission_id_3ad68b4a; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX users_exploreruser_user_permissions_permission_id_3ad68b4a ON public.users_exploreruser_user_permissions USING btree (permission_id);


--
-- Name: users_exploreruser_username_9a5934e1_like; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX users_exploreruser_username_9a5934e1_like ON public.users_exploreruser USING btree (username varchar_pattern_ops);


--
-- Name: users_usercvinfo_user_id_dd5ee31d; Type: INDEX; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

CREATE INDEX users_usercvinfo_user_id_dd5ee31d ON public.users_usercvinfo USING btree (user_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company_category companies_company_ca_category_id_391bb1cf_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_category
    ADD CONSTRAINT companies_company_ca_category_id_391bb1cf_fk_companies FOREIGN KEY (category_id) REFERENCES public.companies_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company_category companies_company_ca_company_id_9945c6ae_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_category
    ADD CONSTRAINT companies_company_ca_company_id_9945c6ae_fk_companies FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company_following companies_company_fo_company_id_41479880_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_following
    ADD CONSTRAINT companies_company_fo_company_id_41479880_fk_companies FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company_following companies_company_fo_exploreruser_id_990a932a_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_following
    ADD CONSTRAINT companies_company_fo_exploreruser_id_990a932a_fk_users_exp FOREIGN KEY (exploreruser_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company_likes companies_company_li_company_id_4eed8ae0_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_likes
    ADD CONSTRAINT companies_company_li_company_id_4eed8ae0_fk_companies FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company_likes companies_company_li_exploreruser_id_b953f966_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company_likes
    ADD CONSTRAINT companies_company_li_exploreruser_id_b953f966_fk_users_exp FOREIGN KEY (exploreruser_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company companies_company_thana_id_b348a0c5_fk_geospatial_thana_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company
    ADD CONSTRAINT companies_company_thana_id_b348a0c5_fk_geospatial_thana_id FOREIGN KEY (thana_id) REFERENCES public.geospatial_thana(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_company companies_company_user_id_175c2d31_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_company
    ADD CONSTRAINT companies_company_user_id_175c2d31_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_feedback_comment companies_feedback_c_job_id_eca6104d_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_feedback_comment
    ADD CONSTRAINT companies_feedback_c_job_id_eca6104d_fk_companies FOREIGN KEY (job_id) REFERENCES public.companies_jobcircular(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_feedback_comment companies_feedback_c_user_id_3e1994a9_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_feedback_comment
    ADD CONSTRAINT companies_feedback_c_user_id_3e1994a9_fk_users_exp FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_jobcircular companies_jobcircula_company_id_58c7f70c_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_jobcircular
    ADD CONSTRAINT companies_jobcircula_company_id_58c7f70c_fk_companies FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_jobcircular companies_jobcircular_user_id_7d25f660_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_jobcircular
    ADD CONSTRAINT companies_jobcircular_user_id_7d25f660_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_position companies_position_company_id_b3251755_fk_companies_company_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_position
    ADD CONSTRAINT companies_position_company_id_b3251755_fk_companies_company_id FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_positioncreationtimeline companies_positioncr_position_id_a3ddcaf6_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_positioncreationtimeline
    ADD CONSTRAINT companies_positioncr_position_id_a3ddcaf6_fk_companies FOREIGN KEY (position_id) REFERENCES public.companies_position(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_recommendedcompany companies_rankingcom_company_id_df8fc081_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_recommendedcompany
    ADD CONSTRAINT companies_rankingcom_company_id_df8fc081_fk_companies FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_recommendedcompany companies_rankingcom_user_id_a22ff69a_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_recommendedcompany
    ADD CONSTRAINT companies_rankingcom_user_id_a22ff69a_fk_users_exp FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_stack companies_stack_company_id_89051c8f_fk_companies_company_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_stack
    ADD CONSTRAINT companies_stack_company_id_89051c8f_fk_companies_company_id FOREIGN KEY (company_id) REFERENCES public.companies_company(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: companies_stackcreationtimeline companies_stackcreat_stack_id_14505f46_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.companies_stackcreationtimeline
    ADD CONSTRAINT companies_stackcreat_stack_id_14505f46_fk_companies FOREIGN KEY (stack_id) REFERENCES public.companies_stack(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: job_seekers_favouritejobs job_seekers_favourit_user_id_198968fa_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_favouritejobs
    ADD CONSTRAINT job_seekers_favourit_user_id_198968fa_fk_users_exp FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: job_seekers_uploadedfile job_seekers_uploaded_user_id_fee6190b_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.job_seekers_uploadedfile
    ADD CONSTRAINT job_seekers_uploaded_user_id_fee6190b_fk_users_exp FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: jobs_recommendeduserforjob jobs_recommendeduser_job_id_fd4d243a_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_recommendeduserforjob
    ADD CONSTRAINT jobs_recommendeduser_job_id_fd4d243a_fk_companies FOREIGN KEY (job_id) REFERENCES public.companies_jobcircular(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: jobs_saveapplieduser jobs_saveapplieduser_job_id_e3f83996_fk_companies; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_saveapplieduser
    ADD CONSTRAINT jobs_saveapplieduser_job_id_e3f83996_fk_companies FOREIGN KEY (job_id) REFERENCES public.companies_jobcircular(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: jobs_saveapplieduser jobs_saveapplieduser_user_id_bb16a8cd_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.jobs_saveapplieduser
    ADD CONSTRAINT jobs_saveapplieduser_user_id_bb16a8cd_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_users_exp FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_exploreruser_groups users_exploreruser_g_exploreruser_id_efeafb68_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_groups
    ADD CONSTRAINT users_exploreruser_g_exploreruser_id_efeafb68_fk_users_exp FOREIGN KEY (exploreruser_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_exploreruser_groups users_exploreruser_groups_group_id_76316a01_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_groups
    ADD CONSTRAINT users_exploreruser_groups_group_id_76316a01_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_exploreruser_user_permissions users_exploreruser_u_exploreruser_id_fc7bcbe3_fk_users_exp; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_user_permissions
    ADD CONSTRAINT users_exploreruser_u_exploreruser_id_fc7bcbe3_fk_users_exp FOREIGN KEY (exploreruser_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_exploreruser_user_permissions users_exploreruser_u_permission_id_3ad68b4a_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_exploreruser_user_permissions
    ADD CONSTRAINT users_exploreruser_u_permission_id_3ad68b4a_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_usercvinfo users_usercvinfo_user_id_dd5ee31d_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_usercvinfo
    ADD CONSTRAINT users_usercvinfo_user_id_dd5ee31d_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_userfeed users_userfeed_user_id_242e366d_fk_users_exploreruser_id; Type: FK CONSTRAINT; Schema: public; Owner: uDAegzpbzizQLGtcDFGdpHBHliKuMfIP
--

ALTER TABLE ONLY public.users_userfeed
    ADD CONSTRAINT users_userfeed_user_id_242e366d_fk_users_exploreruser_id FOREIGN KEY (user_id) REFERENCES public.users_exploreruser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

