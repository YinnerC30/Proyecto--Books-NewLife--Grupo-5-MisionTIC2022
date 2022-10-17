--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL,
    trial204 character(1),
    trial073 character(1)
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: TABLE auth_group; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.auth_group IS 'TRIAL';


--
-- Name: COLUMN auth_group.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group.id IS 'TRIAL';


--
-- Name: COLUMN auth_group.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group.name IS 'TRIAL';


--
-- Name: COLUMN auth_group.trial204; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group.trial204 IS 'TRIAL';


--
-- Name: COLUMN auth_group.trial073; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group.trial073 IS 'TRIAL';


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial256 character(1),
    trial092 character(1)
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: TABLE auth_group_permissions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.auth_group_permissions IS 'TRIAL';


--
-- Name: COLUMN auth_group_permissions.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group_permissions.id IS 'TRIAL';


--
-- Name: COLUMN auth_group_permissions.group_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group_permissions.group_id IS 'TRIAL';


--
-- Name: COLUMN auth_group_permissions.permission_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group_permissions.permission_id IS 'TRIAL';


--
-- Name: COLUMN auth_group_permissions.trial256; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group_permissions.trial256 IS 'TRIAL';


--
-- Name: COLUMN auth_group_permissions.trial092; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_group_permissions.trial092 IS 'TRIAL';


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL,
    trial312 character(1),
    trial109 character(1)
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: TABLE auth_permission; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.auth_permission IS 'TRIAL';


--
-- Name: COLUMN auth_permission.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_permission.id IS 'TRIAL';


--
-- Name: COLUMN auth_permission.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_permission.name IS 'TRIAL';


--
-- Name: COLUMN auth_permission.content_type_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_permission.content_type_id IS 'TRIAL';


--
-- Name: COLUMN auth_permission.codename; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_permission.codename IS 'TRIAL';


--
-- Name: COLUMN auth_permission.trial312; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_permission.trial312 IS 'TRIAL';


--
-- Name: COLUMN auth_permission.trial109; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_permission.trial109 IS 'TRIAL';


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp(6) without time zone,
    username character varying(100) NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    email character varying(254) NOT NULL,
    date_joined timestamp(6) without time zone NOT NULL,
    trial390 character(1),
    is_superuser boolean NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    trial122 character(1)
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: TABLE auth_user; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.auth_user IS 'TRIAL';


--
-- Name: COLUMN auth_user.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.id IS 'TRIAL';


--
-- Name: COLUMN auth_user.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.password IS 'TRIAL';


--
-- Name: COLUMN auth_user.last_login; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.last_login IS 'TRIAL';


--
-- Name: COLUMN auth_user.username; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.username IS 'TRIAL';


--
-- Name: COLUMN auth_user.first_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.first_name IS 'TRIAL';


--
-- Name: COLUMN auth_user.last_name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.last_name IS 'TRIAL';


--
-- Name: COLUMN auth_user.email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.email IS 'TRIAL';


--
-- Name: COLUMN auth_user.date_joined; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.date_joined IS 'TRIAL';


--
-- Name: COLUMN auth_user.trial390; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.trial390 IS 'TRIAL';


--
-- Name: COLUMN auth_user.is_superuser; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.is_superuser IS 'TRIAL';


--
-- Name: COLUMN auth_user.is_active; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.is_active IS 'TRIAL';


--
-- Name: COLUMN auth_user.is_staff; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.is_staff IS 'TRIAL';


--
-- Name: COLUMN auth_user.trial122; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user.trial122 IS 'TRIAL';


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL,
    trial439 character(1),
    trial138 character(1)
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: TABLE auth_user_groups; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.auth_user_groups IS 'TRIAL';


--
-- Name: COLUMN auth_user_groups.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_groups.id IS 'TRIAL';


--
-- Name: COLUMN auth_user_groups.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_groups.user_id IS 'TRIAL';


--
-- Name: COLUMN auth_user_groups.group_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_groups.group_id IS 'TRIAL';


--
-- Name: COLUMN auth_user_groups.trial439; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_groups.trial439 IS 'TRIAL';


--
-- Name: COLUMN auth_user_groups.trial138; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_groups.trial138 IS 'TRIAL';


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL,
    trial485 character(1),
    trial164 character(1)
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: TABLE auth_user_user_permissions; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.auth_user_user_permissions IS 'TRIAL';


--
-- Name: COLUMN auth_user_user_permissions.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_user_permissions.id IS 'TRIAL';


--
-- Name: COLUMN auth_user_user_permissions.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_user_permissions.user_id IS 'TRIAL';


--
-- Name: COLUMN auth_user_user_permissions.permission_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_user_permissions.permission_id IS 'TRIAL';


--
-- Name: COLUMN auth_user_user_permissions.trial485; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_user_permissions.trial485 IS 'TRIAL';


--
-- Name: COLUMN auth_user_user_permissions.trial164; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.auth_user_user_permissions.trial164 IS 'TRIAL';


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_books (
    id bigint NOT NULL,
    titulo character varying(200) NOT NULL,
    autor character varying(200) NOT NULL,
    "reseña" character varying(2000),
    usuario_id integer NOT NULL,
    libro_img character varying(1000),
    categoria character varying(100) NOT NULL,
    estado character varying(15) NOT NULL,
    fecha timestamp(6) without time zone NOT NULL,
    editorial character varying(50),
    cantidad integer,
    precio integer,
    intencion character varying(200) NOT NULL,
    trial543 character(1),
    trial180 character(1)
);


ALTER TABLE public.books_books OWNER TO postgres;

--
-- Name: TABLE books_books; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.books_books IS 'TRIAL';


--
-- Name: COLUMN books_books.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.id IS 'TRIAL';


--
-- Name: COLUMN books_books.titulo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.titulo IS 'TRIAL';


--
-- Name: COLUMN books_books.autor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.autor IS 'TRIAL';


--
-- Name: COLUMN books_books."reseña"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books."reseña" IS 'TRIAL';


--
-- Name: COLUMN books_books.usuario_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.usuario_id IS 'TRIAL';


--
-- Name: COLUMN books_books.libro_img; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.libro_img IS 'TRIAL';


--
-- Name: COLUMN books_books.categoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.categoria IS 'TRIAL';


--
-- Name: COLUMN books_books.estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.estado IS 'TRIAL';


--
-- Name: COLUMN books_books.fecha; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.fecha IS 'TRIAL';


--
-- Name: COLUMN books_books.editorial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.editorial IS 'TRIAL';


--
-- Name: COLUMN books_books.cantidad; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.cantidad IS 'TRIAL';


--
-- Name: COLUMN books_books.precio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.precio IS 'TRIAL';


--
-- Name: COLUMN books_books.intencion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.intencion IS 'TRIAL';


--
-- Name: COLUMN books_books.trial543; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.trial543 IS 'TRIAL';


--
-- Name: COLUMN books_books.trial180; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books.trial180 IS 'TRIAL';


--
-- Name: books_books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_books_id_seq OWNER TO postgres;

--
-- Name: books_books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_books_id_seq OWNED BY public.books_books.id;


--
-- Name: books_books_likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_books_likes (
    id bigint NOT NULL,
    books_id bigint NOT NULL,
    user_id integer NOT NULL,
    trial599 character(1),
    trial206 character(1)
);


ALTER TABLE public.books_books_likes OWNER TO postgres;

--
-- Name: TABLE books_books_likes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.books_books_likes IS 'TRIAL';


--
-- Name: COLUMN books_books_likes.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books_likes.id IS 'TRIAL';


--
-- Name: COLUMN books_books_likes.books_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books_likes.books_id IS 'TRIAL';


--
-- Name: COLUMN books_books_likes.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books_likes.user_id IS 'TRIAL';


--
-- Name: COLUMN books_books_likes.trial599; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books_likes.trial599 IS 'TRIAL';


--
-- Name: COLUMN books_books_likes.trial206; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_books_likes.trial206 IS 'TRIAL';


--
-- Name: books_books_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_books_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_books_likes_id_seq OWNER TO postgres;

--
-- Name: books_books_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_books_likes_id_seq OWNED BY public.books_books_likes.id;


--
-- Name: books_categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_categorias (
    id bigint NOT NULL,
    categoria character varying(250) NOT NULL,
    trial658 character(1),
    trial220 character(1)
);


ALTER TABLE public.books_categorias OWNER TO postgres;

--
-- Name: TABLE books_categorias; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.books_categorias IS 'TRIAL';


--
-- Name: COLUMN books_categorias.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_categorias.id IS 'TRIAL';


--
-- Name: COLUMN books_categorias.categoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_categorias.categoria IS 'TRIAL';


--
-- Name: COLUMN books_categorias.trial658; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_categorias.trial658 IS 'TRIAL';


--
-- Name: COLUMN books_categorias.trial220; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.books_categorias.trial220 IS 'TRIAL';


--
-- Name: books_categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_categorias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_categorias_id_seq OWNER TO postgres;

--
-- Name: books_categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_categorias_id_seq OWNED BY public.books_categorias.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp(6) without time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag integer NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    trial703 character(1),
    trial233 character(1)
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: TABLE django_admin_log; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.django_admin_log IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.id IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.action_time; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.action_time IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.object_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.object_id IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.object_repr; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.object_repr IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.action_flag; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.action_flag IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.change_message; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.change_message IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.content_type_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.content_type_id IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.user_id IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.trial703; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.trial703 IS 'TRIAL';


--
-- Name: COLUMN django_admin_log.trial233; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_admin_log.trial233 IS 'TRIAL';


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    trial762 character(1),
    trial252 character(1)
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: TABLE django_content_type; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.django_content_type IS 'TRIAL';


--
-- Name: COLUMN django_content_type.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_content_type.id IS 'TRIAL';


--
-- Name: COLUMN django_content_type.app_label; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_content_type.app_label IS 'TRIAL';


--
-- Name: COLUMN django_content_type.model; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_content_type.model IS 'TRIAL';


--
-- Name: COLUMN django_content_type.trial762; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_content_type.trial762 IS 'TRIAL';


--
-- Name: COLUMN django_content_type.trial252; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_content_type.trial252 IS 'TRIAL';


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp(6) without time zone NOT NULL,
    trial805 character(1),
    trial265 character(1)
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: TABLE django_migrations; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.django_migrations IS 'TRIAL';


--
-- Name: COLUMN django_migrations.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_migrations.id IS 'TRIAL';


--
-- Name: COLUMN django_migrations.app; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_migrations.app IS 'TRIAL';


--
-- Name: COLUMN django_migrations.name; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_migrations.name IS 'TRIAL';


--
-- Name: COLUMN django_migrations.applied; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_migrations.applied IS 'TRIAL';


--
-- Name: COLUMN django_migrations.trial805; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_migrations.trial805 IS 'TRIAL';


--
-- Name: COLUMN django_migrations.trial265; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_migrations.trial265 IS 'TRIAL';


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp(6) without time zone NOT NULL,
    trial873 character(1),
    trial282 character(1)
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: TABLE django_session; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.django_session IS 'TRIAL';


--
-- Name: COLUMN django_session.session_key; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_session.session_key IS 'TRIAL';


--
-- Name: COLUMN django_session.session_data; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_session.session_data IS 'TRIAL';


--
-- Name: COLUMN django_session.expire_date; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_session.expire_date IS 'TRIAL';


--
-- Name: COLUMN django_session.trial873; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_session.trial873 IS 'TRIAL';


--
-- Name: COLUMN django_session.trial282; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.django_session.trial282 IS 'TRIAL';


--
-- Name: feedback_comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback_comentario (
    id bigint NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(150) NOT NULL,
    departamento character varying(100) NOT NULL,
    mensaje text NOT NULL,
    trial912 character(1),
    trial295 character(1)
);


ALTER TABLE public.feedback_comentario OWNER TO postgres;

--
-- Name: TABLE feedback_comentario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.feedback_comentario IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.id IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.nombre IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.correo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.correo IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.departamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.departamento IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.mensaje; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.mensaje IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.trial912; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.trial912 IS 'TRIAL';


--
-- Name: COLUMN feedback_comentario.trial295; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.feedback_comentario.trial295 IS 'TRIAL';


--
-- Name: feedback_comentario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedback_comentario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedback_comentario_id_seq OWNER TO postgres;

--
-- Name: feedback_comentario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedback_comentario_id_seq OWNED BY public.feedback_comentario.id;


--
-- Name: miembros_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.miembros_profile (
    id bigint NOT NULL,
    descripcion text NOT NULL,
    profile_pic character varying(100),
    departamento character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    telefono character varying(10) NOT NULL,
    whatsapp character varying(10) NOT NULL,
    facebook character varying(700) NOT NULL,
    user_id integer,
    trial958 character(1),
    trial311 character(1)
);


ALTER TABLE public.miembros_profile OWNER TO postgres;

--
-- Name: TABLE miembros_profile; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.miembros_profile IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.id IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.descripcion IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.profile_pic; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.profile_pic IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.departamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.departamento IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.direccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.direccion IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.telefono; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.telefono IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.whatsapp; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.whatsapp IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.facebook; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.facebook IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.user_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.user_id IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.trial958; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.trial958 IS 'TRIAL';


--
-- Name: COLUMN miembros_profile.trial311; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.miembros_profile.trial311 IS 'TRIAL';


--
-- Name: miembros_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.miembros_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.miembros_profile_id_seq OWNER TO postgres;

--
-- Name: miembros_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.miembros_profile_id_seq OWNED BY public.miembros_profile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_books id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books ALTER COLUMN id SET DEFAULT nextval('public.books_books_id_seq'::regclass);


--
-- Name: books_books_likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books_likes ALTER COLUMN id SET DEFAULT nextval('public.books_books_likes_id_seq'::regclass);


--
-- Name: books_categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_categorias ALTER COLUMN id SET DEFAULT nextval('public.books_categorias_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: feedback_comentario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback_comentario ALTER COLUMN id SET DEFAULT nextval('public.feedback_comentario_id_seq'::regclass);


--
-- Name: miembros_profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.miembros_profile ALTER COLUMN id SET DEFAULT nextval('public.miembros_profile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name, trial204, trial073) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id, trial256, trial092) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename, trial312, trial109) FROM stdin;
1	Can add log entry	1	add_logentry	T	T
2	Can change log entry	1	change_logentry	T	T
3	Can delete log entry	1	delete_logentry	T	T
4	Can view log entry	1	view_logentry	T	T
5	Can add permission	2	add_permission	T	T
6	Can change permission	2	change_permission	T	T
7	Can delete permission	2	delete_permission	T	T
8	Can view permission	2	view_permission	T	T
9	Can add group	3	add_group	T	T
10	Can change group	3	change_group	T	T
11	Can delete group	3	delete_group	T	T
12	Can view group	3	view_group	T	T
13	Can add user	4	add_user	T	T
14	Can change user	4	change_user	T	T
15	Can delete user	4	delete_user	T	T
16	Can view user	4	view_user	T	T
17	Can add content type	5	add_contenttype	T	T
18	Can change content type	5	change_contenttype	T	T
19	Can delete content type	5	delete_contenttype	T	T
20	Can view content type	5	view_contenttype	T	T
21	Can add session	6	add_session	T	T
22	Can change session	6	change_session	T	T
23	Can delete session	6	delete_session	T	T
24	Can view session	6	view_session	T	T
25	Can add books	7	add_books	T	T
26	Can change books	7	change_books	T	T
27	Can delete books	7	delete_books	T	T
28	Can view books	7	view_books	T	T
29	Can add libro	8	add_libro	T	T
30	Can change libro	8	change_libro	T	T
31	Can delete libro	8	delete_libro	T	T
32	Can view libro	8	view_libro	T	T
33	Can add categorias	9	add_categorias	T	T
34	Can change categorias	9	change_categorias	T	T
35	Can delete categorias	9	delete_categorias	T	T
36	Can view categorias	9	view_categorias	T	T
37	Can add comentario	10	add_comentario	T	T
38	Can change comentario	10	change_comentario	T	T
39	Can delete comentario	10	delete_comentario	T	T
40	Can view comentario	10	view_comentario	T	T
41	Can add profile	11	add_profile	T	T
42	Can change profile	11	change_profile	T	T
43	Can delete profile	11	delete_profile	T	T
44	Can view profile	11	view_profile	T	T
45	Can add profile	12	add_profile	T	T
46	Can change profile	12	change_profile	T	T
47	Can delete profile	12	delete_profile	T	T
48	Can view profile	12	view_profile	T	T
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, username, first_name, last_name, email, date_joined, trial390, is_superuser, is_active, is_staff, trial122) FROM stdin;
26	pbkdf2_sha256$390000$LEg3ymO7Q6eEnmwaQdARjb$yrI7QpAA7u7ab6eYO+ylu4QAeADeDpFjrpPqdGAtCrE=	2022-10-06 19:02:05.132448	Carlos	carlos	lara	carloselara034@gmail.com	2022-10-06 19:01:58.156109	\N	f	t	f	T
24	pbkdf2_sha256$390000$qAxBsMfmBzBLOv0asnto4o$T1yxcZCLsIeUQrrgzNZGqjko8tg+Z7Z0OdODMmPz5yI=	2022-10-06 19:13:37.827319	beren	osman	barros	osmanzxc02@gmail.com	2022-10-07 03:29:34	\N	t	t	t	T
27	pbkdf2_sha256$390000$Y1Xt3EuvWc4SvuVWeOkZsf$qmjDB4NU92YZpbK4NPVIlm/pYgSZluGW1ssZzup6XIw=	2022-10-07 01:54:22.714209	Johnnathan	Johnnathan	Hernandez G	Jhonnathan_hg@hotmail.com	2022-10-07 05:25:30.979992	\N	f	t	f	T
28	pbkdf2_sha256$390000$EdOhMgNzCF0NySPRQvplSn$3bpCoF5IJTRUgsEesbEUM0T2fScHdsMaOdlLOs2+grw=	2022-10-07 18:47:39.81625	andres	andres2	martinez	andresmartinez@gmail.com	2022-10-07 18:47:25.831442	\N	f	t	f	T
29	pbkdf2_sha256$390000$MzS3dNraWJFLkFYfBrDyMk$hy1SBdHm0kCii2p0YMV+rv2S93cVmdX+zWXTHxqInf0=	2022-10-07 23:38:59.249482	Sebastian05	Sebastian	Velasquez	sebasvr2017@gmail.com	2022-10-07 23:38:45.603134	\N	f	t	f	T
23	pbkdf2_sha256$390000$NxCgNyO85IZ8qIbXLxbKjT$Sua1dS4GyMd2VUgApekmVfBdp+xn+lYyLIQAaNLkh0I=	2022-10-13 00:24:48.523593	YinnerC30	Yinner	Chilito Medina	yinnermedina30@gmail.com	2022-10-07 08:20:32.219586	\N	f	t	f	T
25	pbkdf2_sha256$390000$Gey9K3kerkkTKgVOGON7PD$O2e0TJ0MnGkl8qU06n78RUQOYecrITxihknU57hRRUg=	2022-10-13 00:25:12.461939	admin	STIVEN	CHILITO	yinnermedina30@gmail.com	2022-10-06 22:32:15.267409	\N	t	t	t	T
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id, trial439, trial138) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id, trial485, trial164) FROM stdin;
\.


--
-- Data for Name: books_books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_books (id, titulo, autor, "reseña", usuario_id, libro_img, categoria, estado, fecha, editorial, cantidad, precio, intencion, trial543, trial180) FROM stdin;
53	la divina comedia	Dante Alighieri	Dante Alighieri	25	images/1.jpg	Epopeya	Excelente	2022-10-06 20:42:29.858157	django	1	0	Vender	\N	T
57	El retrato de Dorian Gray: Clásicos de la literatura	Oscar Wilde	Este ebook presenta "El retrato de Dorian Gray", con un índice dinámico y detallado. Se trata de una novela que escribió Oscar Wilde, publicada en 1890. Se considera una de las últimas obras clásicas de la novela de terror gótica con una fuerte temática faustiana. La novela cuenta la historia de un joven llamado Dorian Gray, retratado por el artista Basilio Hallward, quien queda enormemente impresionado por la belleza física de Dorian y comienza a encapricharse con él, creyendo que esta belleza es la responsable de la nueva forma de su arte. Dorian conoce a Lord Henry Wotton, un amigo de Basil, y empieza a cautivarse por la visión del mundo de Lord Henry. Exponiendo un nuevo tipo de hedonismo, Lord Henry indica que "lo único que vale la pena en la vida es la belleza, y la satisfacción de los sentidos". Al darse cuenta de que un día su belleza se desvanecerá, Dorian desea tener siempre la edad de cuando le pintó en el cuadro Basil. El deseo de Dorian se cumple, mientras él mantiene para siempre la misma apariencia del cuadro, la figura en él retratada envejece por él.	23	images/5.webp	Libros literarios y lingüísticos	Bueno	2022-10-07 01:49:16.662911	Desconocida	3	12000	Vender	\N	T
56	cien años de soledad	gabriel garcia marquez	La historia se centra en la familia Buendía, durante seis generaciones, desde José Arcadio Buendía y su mujer Úrsula, pertenecientes a una de las familias fundadoras del pueblo donde se desarrolla la trama-Macondo- hasta la sexta, Aureliano Babilonia. Se encuentra enmarcada en el principio del S. XX y se puede apreciar la guerra entre liberales y conservadores en la que se ve envuelto el Coronel Aureliano Buendía, perteneciente a la segunda generación,  así como la llegada de los americanos a Macondo que instalan una bananera.	24	images/share_1.jpg	Libros literarios y lingüísticos	Excelente	2022-10-07 01:47:35.927985	Debolsillo	5	30000	Vender	\N	T
46	Breves respuestas a las grandes preguntas	Stephen Hawking	Esta es una reseña genérica para probar.	23	images/libro.jpg	Cientificos	Excelente	2022-10-07 23:24:03.684357	Editorial de prueba	0	30000	Regalar	\N	T
52	Pedro Páramo	Juan Rulfo	"Desconcertante, lista a inquietar a la crítica, está ya en los escaparates la primera novela de Juan Rulfo, Pedro Páramo, que transcurre en una serie de transposiciones oníricas, ahondando más allá de la muerte de sus personajes, que uno no sabe en qué momento son sueño, vida, fábula, verdad, pero a los que se les oye la voz al través de la perspicacia despiadada y certera de tan sin duda extraordinario escritor".	23	images/2.webp	Libros literarios y lingüísticos	Regular	2022-10-07 06:40:27.941757	Desconocida	4	0	Regalar	\N	T
54	Orgullo y prejuicio: Clásicos de la literatura	Jane Austen	Este ebook presenta "Orgullo y prejuicio", con un índice dinámico y detallado. Una de las obras maestras de la literatura inglesa de todos los tiempos y una de las obras esenciales en la difusión de la novela como género. Se publicó por primera vez el 28 de enero de 1813 como una obra anónima, sin que figurara el nombre de su autora. Su primera frase es, además, una de las más famosas en la literatura inglesa: "Es una verdad mundialmente reconocida que un hombre soltero, poseedor de una gran fortuna, necesita una esposa."	23	images/3.webp	Libros literarios y lingüísticos	Bueno	2022-10-07 01:43:11.72372	Desconocida	3	10000	Vender	\N	T
55	El crossover (Crossover Spanish Edition)	Kwame Alexander	Ganador de la Medalla Newbery ∙ Ganador del Premio Coretta Scott King ∙ New York Times Bestseller ∙ 2015 YALSA 2015 Top Ten Best Fiction for Young Adults∙ 2015 YALSA Quick Picks for Reluctant Young Adult Readers ∙ Publishers Weekly Best Book ∙ School Library Journal Best Book∙ Kirkus Reviews Best Book	23	images/4.webp	Poeticos	Excelente	2022-10-07 01:47:14.726582	Desconocida	4	1	Intercambiar	\N	T
58	El cuerpo habla	Joe Navarro	Con este libro aprenderás de una forma amena y fácil a interpretar las señales no verbales que los demás emiten inconscientemente, lo cual te permitirá descubrir sus intenciones y sentimientos verdaderos y evitar así engaños y trampas. Al mismo tiempo podrás utilizar ese lenguaje no verbal para transmitir a tus familiares, amigos y jefes aquello que realmente quieres comunicarles.	23	images/6.webp	Instructivos	Excelente	2022-10-07 01:50:48.478214	Desconocida	1	0	Intercambiar	\N	T
64	IT	Stephen king	Un libro muy bien desarrollado y entretenido con un final no muy bien desarrollado para mi gusto pero lo recomiendo total.	27	images/Caratula_It.png	Recreativos	Bueno	2022-10-06 20:58:35.519671	Planeta	1	60000	Vender	\N	T
66	Álgebra de Baldor	Aurelio Baldor	Libro de matemáticas	27	images/Algebra.jpg	Cientificos	Regular	2022-10-06 20:59:53.059158	Grupo Editorial Patria	1	0	Regalar	\N	T
68	Narnia	C.S lewis	Colección de saga de  libros de Narnia.	27	images/Narnia.jfif	Recreativos	Bueno	2022-10-06 21:01:55.37718	Planeta	8	0	Intercambiar	\N	T
59	El origen de las especies	Charles Darwin	Charles Darwin transformó nuestra cosmovisión para siempre. Su teoría de la evolución explicó por primera vez de forma lógica cómo se originan las especies a partir de otras especies, por qué se transforman y luego desaparecen. En su juventud, Darwin tuvo la oportunidad de su vida: pudo participar de una expedición a bordo del Beagle, que duró casi cinco años y lo llevó alrededor del mundo. Sus observaciones y descubrimientos se fueron acumulando hasta convertirse en un enorme tesoro de saber y el relato de su viaje causó sensación en Inglaterra. Sus incansables ansias de conocimiento y el amplio rango de sus temas de interés lo convirtieron en un importante biólogo, pero fue su teoría de la evolución la que lo llevó a ser uno de los pensadores más influyentes de todos los tiempos. “Dios está muerto”, escribiría Friedrich Nietzsche 20 años más tarde. Por algo, Darwin había dicho que mientras escribía tenía la sensación de “estar cometiendo un asesinato”.	24	images/nuevo-2.jpgORIGEN.jpg	Cientificos	Bueno	2022-10-07 06:51:22.608895	Porrua	1	0	Intercambiar	\N	T
63	La biblia-edicion coleccionista	cristo rey	biblia autografiada por san pedro	24	images/spanish-bible-anniversary-hands-umnews-2019-3500.jpg	Religiosos	Bueno	2022-10-07 01:56:59.748064	12Apostoles	3	100000	Vender	\N	T
61	El manifiesto comunista	Friedrich Engels y Karl Marx	El manifiesto comunista es el documento base del pensamiento comunista, conformado por los pensamientos de Marx y Engels en materia política, económica y sociológica. En él se plasman los pilares tanto del socialismo originario como del marxismo.\r\n\r\nen resumen: no funciona	24	images/manifiesto-comunista_pFWrN0H.jpeg	Recreativos	Excelente	2022-10-07 06:54:26.672892	bolchevique	1	0	Regalar	\N	T
84	22 Cuentos Infantiles	Errikos Kalyvas	22 breves cuentos infantiles para niños y jóvenes. Cada uno de estos cuentos “nació” espontáneamente cuando cada noche al acostar a mis hijas, me pedían que les contase una nueva historia. El libro contiene también 22 imágenes.\r\n\r\nEsta es la sexta versión (marzo 2021) del libro en el que una serie de errores de ortografía, de redacción y del formato han sido corregidos.	23	images/18.webp	Ilustrados	Excelente	2022-10-07 02:27:34.741829	Desconocida	35	23000	Vender	\N	T
65	Excel 2019 Paso a Paso	Handz Valentin	La nueva manera de aprender Excel 2019 de inmediato. Aprenda a su propio ritmo con ejercicios reales "paso a paso" para garantizar su aprendizaje. No se olvide de descargar gratis los archivos de práctica.\r\n\r\n¡Ahora con 20 nuevos ejercicios!\r\n\r\nRegistre su libro para acceder a muchos beneficios.\r\n\r\nCon Excel 2019 Paso a Paso usted aprenderá a:\r\n\r\n- Conocer las novedades de Excel 2019\r\n- Introducir textos, números y fórmulas\r\n- Trabajar fácilmente con las diversas funciones de Excel\r\n- Ordenar y Filtrar datos	23	images/9.webp	Instructivos	Bueno	2022-10-07 01:59:34.467218	Desconocida	1	0	Regalar	\N	T
67	El arte de la guerra	sun tzu	El arte de la guerra es un tratado sobre estrategia militar dividido en trece partes, cada una de las cuales da cuenta de los diversos aspectos y escenarios que pueden darse en un conflicto.	24	images/el-arte-de-la-guerra_KJXTx9G.jpg	Técnicos	Excelente	2022-10-07 07:00:49.597853	mao	109	10000	Vender	\N	T
70	Algebra de baldor	A.baldor	libro de algebra muy bueno	24	images/D_NQ_NP_604575-MCO32972345423_112019-O.jpg	De consulta o referencia	Regular	2022-10-07 02:03:25.216609	Cultural	1	0	Regalar	\N	T
60	El cerebro del niño explicado a los padres	Álvaro Bilbao	Cómo ayudar a tu hijo a desarrollar su potencial intelectual y emocional.\r\nDurante los seis primeros años de vida el cerebro infantil tiene un potencial que no volverá a tener. Esto no quiere decir que debamos intentar convertir a los niños en pequeños genios, porque además de resultar imposible, un cerebro que se desarrolla bajo presión puede perder por el camino parte de su esencia.	23	images/7.webp	Recreativos	Excelente	2022-10-07 01:53:02.549507	Editorial de prueba	3	0	Regalar	\N	T
62	Los secretos de la mente millonaria:	T. Harv Eker	¡Piensa como rico, hazte rico!\r\n\r\nTodos tenemos un patrón personal del dinero arraigado en nuestro subconsciente, y es este patrón, más que cualquier otra cosa, lo que determinará nuestra vida financiera. Puedes saberlo todo sobre mercadotecnia, ventas, negociaciones, acciones, propiedad inmobiliaria y finanzas en general, pero si tu patrón del dinero no está programado para el éxito nunca tendrás mucho dinero; y si, de algún modo lo consigues, ¡lo perderás con gran facilidad! La buena noticia es que ahora, aplicando las sencillas instrucciones contenidas en este libro, puedes programar de nuevo tu patrón del dinero para que te lleve al éxito económico de una forma natural y automática. ¡Los resultados te sorprenderán!	23	images/8.webp	Instructivos	Excelente	2022-10-07 06:55:03.599671	Desconocida	9	20000	Vender	\N	T
75	La sanación de las 5 heridas	Lise Bourbeau	Hace ya catorce años que Lise Bourbeau escribió su primera obra sobre las heridas del alma. Las 5 heridas que impiden ser uno mismo ha sido traducida a dieciséis idiomas, ha batido récords de ventas en varios países y, lo que es más importante, ha ayudado a millones de personas.\r\nSin embargo, su autora -incansablemente comprometida con sus seguidores- nunca se dio por satisfecha y continuó observando el sufrimiento emocional desde su perspectiva amorosa y lúcida, para ajustar sus conclusiones y tratar de comunicarlas de manera más efectiva. Porque no basta con reconocer la herida, lo realmente necesario es sanarla. Si te limitas a cubrirla sin ningún tratamiento, la infección irá a más y puede llegar a ser fatal.	23	images/12.webp	Poeticos	Excelente	2022-10-07 02:08:51.079115	Lise Bourbeau	2	0	Intercambiar	\N	T
71	Demon Slayer #1	Kimetsu no Yaiba	comics	27	images/Demon_Slayer.jpg	Ilustrados	Excelente	2022-10-06 21:05:32.711929	comics	1	30000	Vender	\N	T
74	Demon Slayer #2	Kimetsu no Yaiba	comics en español	27	images/Demon_Slayer_2.jpg	Ilustrados	Excelente	2022-10-06 21:07:49.460248	comics	2	30000	Vender	\N	T
77	Demon Slayer #8	Kimetsu no Yaiba	comics en español	27	images/Demon_Slayer_8.jpg	Ilustrados	Excelente	2022-10-06 21:10:47.96565	comics	1	60000	Vender	\N	T
73	Autodisciplina diaria	Martin Meadows	Estos hábitos y ejercicios te ayudarán a construir la autodisciplina y una voluntad de hierro\r\n\r\n¿Te fijas metas, pero te desanimas cuando tus planes no funcionan? Todos conocemos a una persona que parece haber nacido para ser exitosa. Acondicionamiento físico, salud, negocios, siempre logran todas sus metas. Tú deseas lograr ése éxito, y sabes que puedes conseguirlo... pero, ¿cómo?\r\n\r\nDondequiera que vas encuentras obstáculos que bloquean tu camino. Ser exitoso no significa evitarlos; significa enfrentarse a esos obstáculos cara a cara y sortearlos. Tú necesitas de autodisciplina y fuerza de voluntad para llegar hasta el final. Necesitas contar con las herramientas que te permitirán tener esa autodisciplina y fuerza de voluntad. Autodisciplina diaria te ofrece esas herramientas.	23	images/11.webp	Religiosos	Regular	2022-10-07 02:07:21.355592	Desconocida	12	0	Intercambiar	\N	T
76	diccionario	larousse	un diccionario que quieres que te diga XD	24	images/2420.jpg	Complementarios	Excelente	2022-10-07 02:09:06.309339	larrouse	1	5000	Vender	\N	T
78	Diccionario ingles-español	larousse	diccionario de ingles	24	images/descarga_6.jpg	Complementarios	Excelente	2022-10-07 02:10:56.164405	larousse	4	10000	Vender	\N	T
72	Tom clancy: Tormenta roja	Tom clancy	Un grupo de muhaiddines infiltrados en una de las mayores refinerías de la Unión Soviética comete un atentado. La refinería salta por los aires, y con ella, parte de un oleoducto y un campo petrolífero. Debido a este sabotaje no habrá suficiente combustible para calentar los hogares ese invierno.	24	images/9788401322488-es.jpg	Libros literarios y lingüísticos	Excelente	2022-10-07 07:07:05.001598	p&j	1	0	Regalar	\N	T
79	Libro del desasosiego	Fernando Pessoa	Sin duda una de las obras más personales, abiertas, inclasificables e imprescindibles de toda la literatura contemporánea, está compuesto por más de medio millar de fragmentos que operan de una manera caleidoscópica, abriéndonos a un mundo en el que la sensibilidad y la lucidez se hermanan para mostrarnos un universo de una extraordinaria complejidad humana, todo bajo la sombra tutelar de una ciudad, Lisboa, que lejos de ser un simple escenario, parece prestarle su alma a este libro magistral y extraordinario. La presente edición, preparada, traducida y ordenada por Manuel Moya, recoge la visión completa de un libro que figura sin discusión entre los clásicos del siglo XX.	23	images/13.webp	Libros literarios y lingüísticos	Excelente	2022-10-07 02:11:04.333133	Desconocida	14	28000	Vender	\N	T
81	Marketing 4.0	Hermawan Kartajaya ,  Iwan Setiawan  y  Philip Kotler	Las nuevas tecnologías, las redes sociales y el marketing digital en general están revolucionando la forma de llegar a nuestros clientes. El cliente de hoy tiene unos hábitos diferentes al de hace unos años: está hiperinformado, hiperconectado, ama las empresas honestas y éticas, no compra sin antes comparar, confía en las experiencias de otros consumidores y es infiel a las marcas.\r\n\r\nPor eso, ahora más que nunca, es necesario reorientar nuestras prácticas de marketing para ganar el apoyo y confianza del cliente. Si conseguimos superar sus expectativas no solo nos comprará, sino que nos recomendará. Para ello es necesario ofrecer experiencias transparentes y coherentes, y cubrir cada aspecto del producto que este demande: marcas más humanas, mayor compromiso, ofertas mejores y más personalizadas. Es el marketing 4.0.	23	images/15.webp	Informativos	Excelente	2022-10-07 02:15:40.873383	Desconocida	2	0	Intercambiar	\N	T
90	Aprender PHP, MySQL y JavaScript	Robin Nixon	Si quiere crear sitios web interactivos apoyados en bases de datos con la potente combinación de tecnologías de código abierto y estándares web, incluso sin tener conocimientos básicos de HTML, ha llegado al libro indicado. Gracias a esta guía práctica, abordará la programación web dinámica con la última versión de las principales herramientas del momento: PHP, MySQL, CSS, HTML5 y las bibliotecas clave de jQuery.	29	images/índice.png	Instructivos	Excelente	2022-10-07 23:46:53.244714	Marcombo	1	20000	Vender	\N	T
83	Ana, la de Tejas Verdes	Montgomery  y  Lucy Maud	Cuando en lugar del chico huérfano que pretendían adoptar, Ana Shirley, una niña pelirroja de once años, aparece en las vidas de Marilla y Matthew Cuthbert, dos hermanos solteros que viven en su casa familiar de Tejas Verdes, en el pequeño pueblo de Avonlea, sus vidas y las de cuantos la rodean cambiarán para siempre. Con su vivacidad, risas y lágrimas, y sobre todo su alegría e imaginación, Ana conseguirá formar parte, por primera vez en su vida, de una familia, y tener un lugar al que podrá llamar hogar para siempre.	23	images/17.webp	Ilustrados	Regular	2022-10-07 07:25:16.681809	Desconocida	23	0	Intercambiar	\N	T
85	Cartas que no llegaron	Gilraen Eärfalas	Ella era un alma libre, como una sirena con ansias de conquistar los océanos. Él parecía el hombre perfecto, pero guardaba un secreto: quería convertirla en sardina y mantenerla cautiva en una pecera.\r\n\r\n¿Cómo volver a nadar contracorriente, si la convencieron de que su vida debe ser tras los cristales?\r\n\r\n¿Cómo volver a mirarse al espejo, si en el reflejo ya no se ve a sí misma?\r\n\r\nDime, ¿cómo se encuentra el olvido?\r\n365 cartas fueron la respuesta que Danny encontró para dejar atrás a Narciso.	23	images/19.webp	Poeticos	Regular	2022-10-07 02:30:35.879655	Desconocida	19	0	Intercambiar	\N	T
91	La Naranja Mecánica	1111	1111111	25	images/descarga_6.jpg	De prueba	Excelente	2022-10-11 17:48:20.405436	a	111	111	Regalar	\N	T
82	las caletas del patron los tesoros escondidos del cartel	CÉSAR CASTRILLÓN	Información de este libro electrónico\r\nAlgo que siempre ha caracterizado a los narcotraficantes es el modo en el que llevan la droga a Estados Unidos, con ideas ingeniosas que parecen salidas de una mente maestra. \r\nOtro de los atributos es el de esconder el dinero, armas y droga, las llamadas caletas. De ello hablamos en este libro. Ya es mucha la literatura que llena las librerías que habla del Patrón y su cartel y la huella que dejó en Colombia. \r\nLibros escritos por la esposa, la amante, el hijo, el sicario, y tantos otros implicados en este tema, todos dicen más o menos lo mismo, la vida del hombre, sus crímenes, algunos, engrandecidos para desatar el morbo de los lectores y otras reales que muestran la crueldad del ca-po.	23	images/16.webp	Informativos	Excelente	2022-10-07 02:23:56.364725	Desconocida	4	0	Regalar	\N	T
86	Psicología Oscura	R. J. Anderson	Acabas de descubrir el libro que cambiará tu vida y cómo verás el mundo para siempre. Expone los verdaderos métodos que la gente usa para controlar a los demás. Al final de este libro, tus ojos se habrán abierto y entenderás más de lo que nunca esperaste.\r\n\r\n \r\n\r\nLa gente se someterá a tu voluntad, confiará en ti para que les muestres el camino y sin saberlo seguirá todos tus caprichos. Puedes tomar lo que quieras cuando quieras y donde quieras. ¡Nada podrá interponerse en tu camino!	23	images/20.webp	Complementarios	Bueno	2022-10-07 02:32:28.497965	Desconocida	3	0	Intercambiar	\N	T
87	Cómo Desarrollar Una Mente Millonaria	King Rich	"Tanto si piensas que puedes, como si piensas que no puedes, estás en lo cierto"\r\n\r\n- Henry Ford -\r\n\r\n \r\n\r\n¿Cuál es tu sueño?\r\n\r\n \r\n\r\n¿Una empresa? ¿Un emprendimiento? ¿Estudiar en la universidad más importante para ti?	23	images/21.webp	Complementarios	Excelente	2022-10-07 02:34:01.424221	Desconocida	9	30000	Vender	\N	T
88	El momento Crucial	Jacques Carles  y  Paco Lorente	La especie humana alcanzará pronto los 11 mil millones. En este entonces, los humanos serán tan numerosos que el planeta no podrá hacerlos subsistir a este nivel. Así pues, la población de la Tierra decrecerá inexorablemente como cualquier especie animal que se pone a proliferar en un espacio con recursos limitados y en breve plazo agotados. En pocos siglos, los efectivos humanos bajarán de 98 % para alcanzar de nuevo el equilibrio que existía antes de la explosión demográfica. Comparado con la duración de la vida humana, el reflujo se escalonará durante un periodo suficientemente largo para que nuestra especie se adapte. Más allá de una visión a largo plazo que puede asombrar, ese libro expone los trastornos con los cuales la generación actual estará enfrentada en los años venideros y durante los cuales el destino de la humanidad va a jugarse.	23	images/22.webp	De consulta o referencia	Regular	2022-10-07 02:37:25.02401	Desconocida	23	0	Intercambiar	\N	T
89	¿Dónde está el Tiempo?	Gumersindo Salgado Gascón	Hay algunos conceptos de la realidad que debemos de mejorar. Seguimos considerando a la luz separada de la materia como la separó Dios en el día primero. La materia produce y absorbe la luz. No podemos separarlas. Cualquier partícula se transforma en luz si se encuentra con su antipartícula. Podemos digitalizar el universo contando sus fotones. Digitalizamos la realidad y nos podemos trasladar por el espacio en forma de luz. Mantenemos todavía los conceptos de espacio y tiempo absolutos que descubrió Newton hace ya casi cuatro siglos.	23	images/23.webp	Instructivos	Bueno	2022-10-07 02:40:02.896359	Desconocida	3	0	Regalar	\N	T
48	Una vida robada	Jaycee Dugard	Ralph Vaughan Williams\r\nRalph Vaughan Williams\r\nRalph Vaughan Williams (Down Ampney, Gloucestershire, 12 de octubre de 1872-Londres, 26 de agosto de 1958) fue un compositor británico. Sus obras incluyen óperas, ballets, música de cámara, piezas vocales seculares y religiosas y composiciones orquestales que incluyen nueve sinfonías, escritas durante sesenta años. Fuertemente influenciado por la música de la época Tudor (c. 1450–c. 1660) y la canción popular inglesa, su producción marcó una ruptura decisiva en la música británica de su estilo dominado por los alemanes del siglo xix.\r\n\r\nNació en una familia acomodada con fuertes puntos de vista morales y una vida social progresista. A lo largo de su vida buscó estar al servicio de sus conciudadanos y creyó en hacer que la música estuviera lo más disponible posible para todos. Escribió muchas obras para la interpretación de aficionados y estudiantes. Musicalmente se desarrolló tarde y no encontró su verdadera voz hasta finales de los treinta; sus estudios en 1907-1908 con el compositor francés Maurice Ravel lo ayudaron a clarificar las texturas de su música y liberarla de las influencias teutónicas.	23	images/1.webp	De texto	Excelente	2022-10-07 20:21:05.895678	New York Times	2	0	Intercambiar	\N	T
69	Aprendizaje Acelerado	Jimmie Powell	¿Te has preguntado alguna vez cómo esos fenómenos de la naturaleza conocidos como " máquinas humanas " hacen lo que hacen?¿Cómo pueden aprender todo lo que leen, escuchan o ven en cuestión de minutos?\r\n\r\nBueno, ¡hay un método para su locura! Y en este libro, voy a tirar y mostrar todos los frijoles!\r\n\r\nTodos tenemos un potencial infinito y una capacidad escondida en los rincones más profundos de nuestros cerebros: la capacidad de absorber un flujo interminable de información del mundo que nos rodea. El autor de este libro, un psicólogo de gran éxito, ha desarrollado un metodo único de seis pasos para la adquisición rápida de habilidades, que ha ayudado a cientos de personas de todos los ámbitos a mejorar su enfoque de aprendizaje.	23	images/10.webp	Recreativos	Excelente	2022-10-07 12:02:43.782142	Desconocida	20	21000	Vender	\N	T
80	Viaje al centro de la Tierra: Clásicos de la literatura	Julio Verne	Este ebook presenta "Viaje al centro de la Tierra", con un sumario dinámico y detallado. Viaje al centro de la Tierra es una novela de Julio Verne, publicada en 1864. Durante una expedición científica en Islandia, el científico y visionario Trevor Anderson, su sobrino Sean y la bella guía local, Hannah, quedan inesperadamente atrapados en una cueva y la única forma de escape posible les lleva a adentrarse cada vez más en las entrañas de la tierra. Viajando a través de mundos nunca antes vistos, el trío se encuentra frente a frente con criaturas surrealistas e inimaginables, incluyendo a plantas devoradoras de hombres, pirañas voladoras gigantes, pájaros que brillan y los temidos dinosaurios de las primeras eras. Los aventureros se dan cuenta muy rápidamente de que está aumentando la actividad volcánica a su alrededor, y deben buscar una manera de volver a la superficie antes de que sea demasiado tarde.	23	images/14.webp	Libros literarios y lingüísticos	Regular	2022-10-07 02:12:23.951431	Desconocida	5	0	Vender	\N	T
\.


--
-- Data for Name: books_books_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_books_likes (id, books_id, user_id, trial599, trial206) FROM stdin;
4	46	25	\N	T
5	46	23	\N	T
6	46	27	\N	T
8	46	24	\N	T
9	53	26	\N	T
10	63	24	\N	T
11	69	23	\N	T
12	72	23	\N	T
13	78	23	\N	T
14	77	23	\N	T
15	70	23	\N	T
16	53	23	\N	T
17	86	29	\N	T
18	69	29	\N	T
19	83	25	\N	T
20	48	26	\N	T
21	52	27	\N	T
22	54	29	\N	T
23	55	23	\N	T
24	57	28	\N	T
25	58	26	\N	T
26	60	23	\N	T
27	62	28	\N	T
28	65	24	\N	T
29	75	25	\N	T
30	73	28	\N	T
31	79	25	\N	T
32	80	24	\N	T
33	81	27	\N	T
34	82	23	\N	T
35	84	26	\N	T
36	85	23	\N	T
37	87	28	\N	T
38	88	29	\N	T
39	89	28	\N	T
\.


--
-- Data for Name: books_categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books_categorias (id, categoria, trial658, trial220) FROM stdin;
12	Complementarios	T	T
13	De consulta o referencia	T	T
14	Recreativos	T	T
15	Cientificos	T	T
16	Instructivos	T	T
17	Libros literarios y lingüísticos	T	T
18	Técnicos	T	T
11	De texto	T	T
24	Epopeya	\N	T
23	Poeticos	T	T
22	Ilustrados	T	T
21	Religiosos	T	T
20	De divulgación	T	T
19	Informativos	T	T
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id, trial703, trial233) FROM stdin;
139	2022-10-06 19:13:29.676092	24	beren	2	[{"changed": {"fields": ["Staff status", "Superuser status"]}}]	4	25	\N	T
140	2022-10-06 20:39:51.938902	24	Epopeya	1	[{"added": {}}]	9	24	\N	T
141	2022-10-06 20:42:29.866379	53	la divina comedia|admin	1	[{"added": {}}]	7	24	\N	T
142	2022-10-06 20:42:56.515651	51	Álgebra de Baldor|Johnnathan	3		7	24	\N	T
143	2022-10-06 20:42:56.520001	50	Narnia|Johnnathan	3		7	24	\N	T
144	2022-10-06 20:42:56.52241	49	IT|Johnnathan	3		7	24	\N	T
145	2022-10-11 02:45:18.313382	11	de texto	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
146	2022-10-11 02:47:26.876079	25	de prueba	1	[{"added": {}}]	9	25	\N	T
147	2022-10-11 02:49:45.899598	24	epopeya	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
148	2022-10-11 02:50:00.388262	23	poeticos	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
149	2022-10-11 02:50:17.073523	21	religiosos	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
150	2022-10-11 02:50:31.241605	20	de divulgación	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
151	2022-10-11 02:51:41.170051	48	Una vida robada|YinnerC30	2	[{"changed": {"fields": ["Categoria", "Likes"]}}]	7	25	\N	T
152	2022-10-11 02:58:52.565671	11	De texto	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
153	2022-10-11 03:04:54.446489	25	De prueba	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
154	2022-10-11 03:05:20.136509	24	Epopeya	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
155	2022-10-11 03:07:23.887423	23	Poeticos	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
156	2022-10-11 03:08:38.577849	22	Ilustrados	2	[]	9	25	\N	T
157	2022-10-11 03:08:52.400494	21	Religiosos	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
158	2022-10-11 03:09:11.83498	20	De divulgación	2	[{"changed": {"fields": ["Categoria"]}}]	9	25	\N	T
159	2022-10-11 03:09:26.017057	19	Informativos	2	[]	9	25	\N	T
160	2022-10-11 03:14:25.326504	48	Una vida robada|YinnerC30	2	[{"changed": {"fields": ["Categoria"]}}]	7	25	\N	T
161	2022-10-11 03:17:33.696983	25	De prueba	3		9	25	\N	T
162	2022-10-13 00:26:28.945362	46	Breves respuestas a las grandes preguntas|YinnerC30	2	[{"changed": {"fields": ["Libro img"]}}]	7	25	\N	T
163	2022-10-13 00:30:07.876381	48	Una vida robada|YinnerC30	2	[{"changed": {"fields": ["Libro img"]}}]	7	25	\N	T
164	2022-10-13 00:30:41.621463	52	Pedro Páramo|YinnerC30	2	[{"changed": {"fields": ["Likes"]}}]	7	25	\N	T
165	2022-10-13 00:30:55.722644	52	Pedro Páramo|YinnerC30	2	[{"changed": {"fields": ["Libro img"]}}]	7	25	\N	T
166	2022-10-13 00:31:23.507369	54	Orgullo y prejuicio: Clásicos de la literatura|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
167	2022-10-13 00:31:46.50299	55	El crossover (Crossover Spanish Edition)|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
168	2022-10-13 00:32:05.516524	57	El retrato de Dorian Gray: Clásicos de la literatura|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
169	2022-10-13 00:33:27.311521	58	El cuerpo habla|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
170	2022-10-13 00:33:42.702842	60	El cerebro del niño explicado a los padres|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
171	2022-10-13 00:34:03.104453	62	Los secretos de la mente millonaria:|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
172	2022-10-13 00:34:23.489267	65	Excel 2019 Paso a Paso|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
173	2022-10-13 00:34:50.79531	69	Aprendizaje Acelerado|YinnerC30	2	[{"changed": {"fields": ["Libro img"]}}]	7	25	\N	T
174	2022-10-13 00:35:36.572438	75	La sanación de las 5 heridas|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
175	2022-10-13 00:35:54.288518	73	Autodisciplina diaria|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
176	2022-10-13 00:36:15.107142	79	Libro del desasosiego|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
177	2022-10-13 00:36:41.84298	80	Viaje al centro de la Tierra: Clásicos de la literatura|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
178	2022-10-13 00:37:02.747321	81	Marketing 4.0|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
179	2022-10-13 00:37:24.245409	82	las caletas del patron los tesoros escondidos del cartel|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
180	2022-10-13 00:37:42.080723	83	Ana, la de Tejas Verdes|YinnerC30	2	[{"changed": {"fields": ["Libro img"]}}]	7	25	\N	T
181	2022-10-13 00:37:58.734006	84	22 Cuentos Infantiles|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
182	2022-10-13 00:38:23.29096	85	Cartas que no llegaron|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
183	2022-10-13 00:38:39.314254	86	Psicología Oscura|YinnerC30	2	[{"changed": {"fields": ["Libro img"]}}]	7	25	\N	T
184	2022-10-13 00:38:57.189843	87	Cómo Desarrollar Una Mente Millonaria|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
185	2022-10-13 00:39:16.480585	88	El momento Crucial|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
186	2022-10-13 00:39:32.300201	89	¿Dónde está el Tiempo?|YinnerC30	2	[{"changed": {"fields": ["Libro img", "Likes"]}}]	7	25	\N	T
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model, trial762, trial252) FROM stdin;
1	admin	logentry	T	T
3	auth	group	T	T
2	auth	permission	T	T
4	auth	user	T	T
7	books	books	T	T
9	books	categorias	T	T
8	books	libro	T	T
11	books	profile	T	T
5	contenttypes	contenttype	T	T
10	feedback	comentario	T	T
12	miembros	profile	T	T
6	sessions	session	T	T
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied, trial805, trial265) FROM stdin;
1	contenttypes	0001_initial	2022-09-22 23:00:45.287408	T	T
2	auth	0001_initial	2022-09-22 23:00:46.644626	T	T
3	admin	0001_initial	2022-09-22 23:00:46.912939	T	T
4	admin	0002_logentry_remove_auto_add	2022-09-22 23:00:46.925978	T	T
5	admin	0003_logentry_add_action_flag_choices	2022-09-22 23:00:46.940983	T	T
6	contenttypes	0002_remove_content_type_name	2022-09-22 23:00:47.042988	T	T
7	auth	0002_alter_permission_name_max_length	2022-09-22 23:00:47.117992	T	T
8	auth	0003_alter_user_email_max_length	2022-09-22 23:00:47.165996	T	T
9	auth	0004_alter_user_username_opts	2022-09-22 23:00:47.180996	T	T
10	auth	0005_alter_user_last_login_null	2022-09-22 23:00:47.396012	T	T
11	auth	0006_require_contenttypes_0002	2022-09-22 23:00:47.403014	T	T
12	auth	0007_alter_validators_add_error_messages	2022-09-22 23:00:47.417015	T	T
13	auth	0008_alter_user_username_max_length	2022-09-22 23:00:47.492019	T	T
14	auth	0009_alter_user_last_name_max_length	2022-09-22 23:00:47.561027	T	T
15	auth	0010_alter_group_name_max_length	2022-09-22 23:00:47.593028	T	T
16	auth	0011_update_proxy_permissions	2022-09-22 23:00:47.606031	T	T
17	auth	0012_alter_user_first_name_max_length	2022-09-22 23:00:47.680037	T	T
18	sessions	0001_initial	2022-09-22 23:00:47.822045	T	T
19	books	0001_initial	2022-09-22 23:12:21.220904	T	T
20	books	0002_books_libro_img	2022-09-22 23:59:51.493686	T	T
21	books	0003_libro	2022-09-23 19:01:32.261377	T	T
22	books	0004_books_categoria_books_estado	2022-09-24 21:50:36.744753	T	T
23	books	0005_alter_books_estado	2022-09-24 21:53:16.68287	T	T
24	books	0006_alter_books_estado	2022-09-24 21:58:32.21031	T	T
25	books	0007_alter_books_estado	2022-09-24 22:04:22.031283	T	T
26	books	0008_books_pais	2022-09-24 23:54:01.358489	T	T
27	books	0009_remove_books_pais	2022-09-24 23:54:51.074133	T	T
28	books	0010_delete_libro	2022-09-25 16:39:19.449948	T	T
29	books	0011_books_fecha	2022-09-25 20:41:00.222558	T	T
30	books	0012_alter_books_categoria	2022-09-25 21:47:42.850879	T	T
31	books	0013_categorias	2022-09-25 21:47:42.890882	T	T
32	books	0014_alter_books_categoria_alter_books_estado	2022-09-26 21:22:55.84029	T	T
33	books	0015_books_likes	2022-09-27 18:16:42.600394	T	T
34	books	0016_alter_books_reseña	2022-09-27 20:40:47.8463	T	T
35	feedback	0001_initial	2022-09-28 03:40:56.355893	T	T
36	feedback	0002_remove_comentario_fecha	2022-09-30 07:34:38.781819	T	T
37	feedback	0003_alter_comentario_correo_alter_comentario_mensaje	2022-09-30 07:34:38.788819	T	T
38	books	0002_profile	2022-09-30 07:39:26.020353	T	T
39	books	0003_delete_profile	2022-09-30 07:42:35.555261	T	T
40	books	0004_profile	2022-09-30 07:42:35.69127	T	T
41	books	0005_profile_departamento_profile_facebook_and_more	2022-09-30 08:32:55.668365	T	T
42	books	0006_delete_profile	2022-09-30 19:29:15.438752	T	T
43	miembros	0001_initial	2022-09-30 19:29:15.619939	T	T
44	books	0007_books_editorial	2022-10-04 18:04:00.423049	T	T
45	books	0008_books_cantidad_books_precio	2022-10-04 18:04:00.515387	T	T
46	books	0009_alter_books_cantidad_alter_books_precio	2022-10-04 18:04:00.559362	T	T
47	books	0010_books_intencion	2022-10-04 18:04:00.625324	T	T
48	books	0011_alter_books_intencion	2022-10-04 18:05:29.265365	T	T
49	miembros	0002_rename_poblacion_profile_direccion_and_more	2022-10-04 18:05:29.353941	T	T
50	miembros	0003_alter_profile_user	2022-10-04 18:05:29.531043	T	T
51	miembros	0004_alter_profile_user	2022-10-04 18:05:29.714561	T	T
52	books	0012_alter_books_reseña	2022-10-05 19:32:42.275464	T	T
53	books	0013_alter_books_categoria	2022-10-06 20:15:24.920171	\N	T
54	feedback	0004_alter_comentario_correo	2022-10-06 20:15:26.220336	\N	T
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date, trial873, trial282) FROM stdin;
03w6dzdcncnnwnj3h72z0glu3frgn0px	.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1oeLEf:OTyen0ZBteOwgJTQm3vr1uSnaGz56Wh8nz4fjv0vKJ0	2022-10-14 18:59:45.326702	T	T
12dol8gkni0tqj9tifty50vyhb61xv1d	.eJxVjDsOwjAQBe_iGlmxd-O1Kek5Q7T-LA6gRIqTCnF3iJQC2jcz76UG3tY6bK0sw5jVWVmrTr9j5PQo007ynafbrNM8rcsY9a7ogzZ9nXN5Xg7376Byq9-6ZCQBk9GAj5ag70KglKzrwXNhz8QcREAKOuyFEDongSCBAXFI6v0B_JY3jw:1ogJ6U:kD4caIHbfdJPYbkg7LpUnF1nN5H1LGsLYQLTYE-YZu0	2022-10-20 05:07:26.190538	T	T
1bg6miz23ju8vk31a4uz0cy7duvggb1g	.eJxVjMsOwiAUBf-FtSFAecWle7-BcDlXqRqalHZl_HdD0oVuz8yct0h532raO69phjgLL06_G-Xy5DYAHrndF1mWtq0zyaHIg3Z5XcCvy-H-HdTc66hvNk7Rh1h4CposjCOjDDvLLpigOBponVGUDQwUBDh40jGDCOzF5wvgqjiT:1oeonA:e3u6Hw41O1v3H_8oED543GuLv0a84oiA5Fq3eUw2VA8	2022-10-16 02:33:20.081956	T	T
32aqhs78k35driyoaqestdopno157sxg	.eJxVjEEOwiAQRe_C2hAo0HFcuu8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIiNIjT7xiIH6nuJN6p3prkVtdlDnJX5EG7nFpMz-vh_h0U6uVbG5dcJsv2rDJli1FlZqCBM4w0Jm0JDGpERxYxOAAbEckozJGGwEa8PyCnOH8:1ofraX:cx-QNqrH-JuXeDUTs2SoV38Un66dCB-8aQzQW8t70A8	2022-10-18 23:44:37.37369	T	T
axvcqinpr06uc2d52scrvsw8i9z0ljps	.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1odONg:SbeTv5K-069IN5_IpR8MZLBDnxCe34QOFtX9HunHB-A	2022-10-12 04:09:08.623269	T	T
ojz87fbpqyqp4qi77tunmifhl3i9mz67	.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1ofVPw:jvJGlEXsg9vG3fm03tHx0laA5jkG9LNcVNtjyHVuhes	2022-10-18 00:04:12.613031	T	T
ufhb1x0tifidcl4svfhazcj8mn3d9mko	.eJxVjDsOwjAQBe_iGln-xR9Kes5grb1rHEC2FCcV4u4QKQW0b2bei0XY1hq3QUuckZ2ZZKffLUF-UNsB3qHdOs-9rcuc-K7wgw5-7UjPy-H-HVQY9VsXA6SKnYpRgnyxBCEZzFqCD5glWm-EkDJp5wIkAK3IOjUp55J1QRT2_gD2czfU:1ogEZX:d8xa_4tiMk_Jp93Eec9zVR9Pzwdwz1ETaqEWzGjLrsg	2022-10-20 00:17:07.417103	T	T
5qg4i3y2eads5ac8hvas2t17ojhwoq8m	.eJxVjDkOwjAUBe_iGlne8EJJzxmsvxgcQLYUJxXi7hApBbRvZt5LZFiXmtdR5jyxOAljxeF3RKBHaRvhO7Rbl9TbMk8oN0XudMhL5_I87-7fQYVRv7UlCup49VFHq4moaOUie8biExmv0bmIjJZMYOeRgJICBdErTiGFIN4fEBs4Ng:1ogUte:XyPa5bS7US72Dsz90z1lr9iEgSD_uytr5YgPeaweF34	2022-10-20 17:42:58.465335	\N	T
ojgz2l9qu1ox9knojswv1qr3rkqyxb7r	.eJxVjEsOwjAMRO-SNYrSWI4Tluw5Q-XUDimgVupnVXF3WqkL0OzmvZnNtLwutV1nndpezNX4YC6_ZebupcNB5MnDY7TdOCxTn-2h2JPO9j6Kvm-n-3dQea77GppCKIoukzrIkYGFfIEYGBWlOKZAmfekkkIiiQAeQRtCgiRoPl8Yzzgb:1ogW8D:Dxs2KLtvf7vOIJ9fCjsfqXp1U4nmZl7bs0tdOwf26eA	2022-10-20 19:02:05.137189	\N	T
wtf9xz3qa8pgb8gt3qtwdo0r0l17ja61	.eJxVjEEOwiAQRe_C2hAGkLEu3XuGZhgGqRpISrsy3l2bdKHb_977LzXSupRx7TKPU1JnZb06_I6R-CF1I-lO9dY0t7rMU9Sbonfa9bUleV529--gUC_fGjOnaDOgQwQ2iMEcJYoVIJMpQKSMBMHyiZMZfGR2IN4BIeScBlHvDx3LOOI:1ogWJN:Zbd7nEeOWifUrRbJPF8xtOLlDKVQIYZBenfUVJ9zBFQ	2022-10-20 19:13:37.830594	\N	T
k004pa5il5iyhrydo39fdng0zotux9co	.eJxVjDkOwjAUBe_iGlne8EJJzxmsvxgcQLYUJxXi7hApBbRvZt5LZFiXmtdR5jyxOAljxeF3RKBHaRvhO7Rbl9TbMk8oN0XudMhL5_I87-7fQYVRv7UlCup49VFHq4moaOUie8biExmv0bmIjJZMYOeRgJICBdErTiGFIN4fEBs4Ng:1ogWpy:mqCksASCyEShFeH3mIyNtH8I3Zm2ETcRt56qlpHU2Dg	2022-10-20 19:47:18.899654	\N	T
4ra0u54u90yrr387nv1dpuz9b6c2w9as	.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIaHVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CnNiZKcNOvyNhfOS2k3THdus89rYuM_Fd4Qcd_NpTfl4O9--g4qjf2pJTBaQGb8ABIVnICa2PViaFkJ0BoSeh1aRIFURpRDYi-lgKFUiOvT_4oDgV:1ogXJe:M5kYyhrhs6I_dOKw79QQ-mult83QRvugOA0_oZhXmzY	2022-10-20 20:17:58.397462	\N	T
5vfg7g9rg9mykoj0fwv3k91uamsddjil	.eJxVjDkOwjAUBe_iGlne8EJJzxmsvxgcQLYUJxXi7hApBbRvZt5LZFiXmtdR5jyxOAljxeF3RKBHaRvhO7Rbl9TbMk8oN0XudMhL5_I87-7fQYVRv7UlCup49VFHq4moaOUie8biExmv0bmIjJZMYOeRgJICBdErTiGFIN4fEBs4Ng:1ogXY0:o9pKTcvoRCEEwNarqoHCo_HiPRCqNG3mIV-ZxYL5LWw	2022-10-20 20:32:48.769661	\N	T
7qwysz8dd8mjvypqsm6hn8i8wyi9qckp	.eJxVjDsOwjAQBe_iGlnx-htKes5gre1dHECOFCcV4u4QKQW0b2beS0Tc1hq3TkucijgLCOL0OybMD2o7KXdst1nmua3LlOSuyIN2eZ0LPS-H-3dQsddvzcEk4wCD1wyZMqii9Bg0oWJ0ifxYmMlZF6y2GQZLiRVoY9DD4D2K9wcVtDgP:1ognhT:TvD4AMto15MgyoXgAj7aJMpiWvXmbTUp8sNs0THfIi4	2022-10-21 13:47:39.821103	\N	T
sxcjfk60uis3er19usmbfp9lblnnrj9u	.eJxVjDsOwjAQRO_iGln-xWwo6TmDtbZ3cQDZUpxUiLuTSClAmmrem3mLgOtSwtppDlMWF2FGcfotI6Yn1Z3kB9Z7k6nVZZ6i3BV50C5vLdPrerh_BwV72dY4emCrDVBUhhFYqy3J-YGQgEgPNp0RIROTBjBMyUUgtoheK4fi8wUlBTkk:1ogwvj:KHJFKDkahFJJYAu8CUiS-vnhtw0bcMCNYG2D-n0Q9oU	2022-10-21 23:38:59.253131	\N	T
b7rid7fpslj8xi1zkv2xl8e1miiw8p76	.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIaHVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CnNiZKcNOvyNhfOS2k3THdus89rYuM_Fd4Qcd_NpTfl4O9--g4qjf2pJTBaQGb8ABIVnICa2PViaFkJ0BoSeh1aRIFURpRDYi-lgKFUiOvT_4oDgV:1oiTlL:bRHv7bksRXp9wTU167h4kcARs5-jyMP8K2U-96lTOTA	2022-10-26 04:54:35.671004	\N	T
s7fj8b8wjx379iu1k1tve8g5q8dow0xt	.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIaHVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CnNiZKcNOvyNhfOS2k3THdus89rYuM_Fd4Qcd_NpTfl4O9--g4qjf2pJTBaQGb8ABIVnICa2PViaFkJ0BoSeh1aRIFURpRDYi-lgKFUiOvT_4oDgV:1oilsJ:gVgC77cQfRUPmWh2EOy08bVcq_IvUMktaR5DYEYV5yQ	2022-10-27 00:14:59.552352	\N	T
gdy42oocqf1im77uv66lj9qfr9mo0g95	.eJxVjMsOwiAQRf-FtSE8Cgwu3fsNZIaHVA0kpV0Z_12bdKHbe865LxZwW2vYRl7CnNiZKcNOvyNhfOS2k3THdus89rYuM_Fd4Qcd_NpTfl4O9--g4qjf2pJTBaQGb8ABIVnICa2PViaFkJ0BoSeh1aRIFURpRDYi-lgKFUiOvT_4oDgV:1oim2C:NVAxC7Xa0R9fYtC3QIZLXySYRWctQ5wr6a4QlxKEzcc	2022-10-27 00:25:12.469047	\N	T
\.


--
-- Data for Name: feedback_comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedback_comentario (id, nombre, correo, departamento, mensaje, trial912, trial295) FROM stdin;
3	Yinner	al@mail.com	Cali	Hola mi gente	\N	T
4	Yinner	Yinnermedina30@gmail.com	Santander	Ponganos 5	\N	T
5	Johnnathan Hernandez	Johnnathan_hg@hotmail.com	Cundinamarca	La aplicación me parece adecuada para poder dar vida nueva mente a esos libros que tenia almacenados. gracias	\N	T
6	Yinner	oto@mail.com	Pasto	Hola equipo	\N	T
\.


--
-- Data for Name: miembros_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.miembros_profile (id, descripcion, profile_pic, departamento, direccion, telefono, whatsapp, facebook, user_id, trial958, trial311) FROM stdin;
27	Me gustas las novelas históricas y los libros de terror sin embargo también leo comics.	images/profile/foto_perfil_2.png	Cundinamarca	Puente del comun	3152347823	3152347823	https://www.facebook.com/	27	\N	T
25	Hola Soy Yinner	images/profile/perfil_P7Ns7od.jpg	Valle del Cauca	Cauca/Municipio de Bolívar/Bolívar	3147736549	3147736549	https://www.facebook.com/yinner	23	\N	T
28	Hola	images/profile/1.webp	Valle	Calle 57	3135924455	3135924455	https://www.facebook.com/juansebastian.velasquezruiz/	29	\N	T
29	Hola esta es una descripción	images/profile/descarga_3.jpg	Cauca	Cauca/Municipio de Bolívar/Bolívar	3147736549	3147736549	https://www.facebook.com/677	25	\N	T
26	osman	images/profile/Dark-Souls-III-feature-2.ico	Bolivar	aaa	3005593992	3005593992	https://www.facebook.com/zuck	24	\N	T
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 29, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_books_id_seq', 91, true);


--
-- Name: books_books_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_books_likes_id_seq', 39, true);


--
-- Name: books_categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_categorias_id_seq', 24, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 186, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 54, true);


--
-- Name: feedback_comentario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedback_comentario_id_seq', 6, true);


--
-- Name: miembros_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.miembros_profile_id_seq', 29, true);


--
-- Name: auth_group pk_auth_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT pk_auth_group PRIMARY KEY (id);


--
-- Name: auth_group_permissions pk_auth_group_permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT pk_auth_group_permissions PRIMARY KEY (id);


--
-- Name: auth_permission pk_auth_permission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT pk_auth_permission PRIMARY KEY (id);


--
-- Name: auth_user pk_auth_user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT pk_auth_user PRIMARY KEY (id);


--
-- Name: auth_user_groups pk_auth_user_groups; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT pk_auth_user_groups PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions pk_auth_user_user_permissions; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT pk_auth_user_user_permissions PRIMARY KEY (id);


--
-- Name: books_books pk_books_books; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books
    ADD CONSTRAINT pk_books_books PRIMARY KEY (id);


--
-- Name: books_books_likes pk_books_books_likes; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books_likes
    ADD CONSTRAINT pk_books_books_likes PRIMARY KEY (id);


--
-- Name: books_categorias pk_books_categorias; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_categorias
    ADD CONSTRAINT pk_books_categorias PRIMARY KEY (id);


--
-- Name: django_admin_log pk_django_admin_log; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT pk_django_admin_log PRIMARY KEY (id);


--
-- Name: django_content_type pk_django_content_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT pk_django_content_type PRIMARY KEY (id);


--
-- Name: django_migrations pk_django_migrations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT pk_django_migrations PRIMARY KEY (id);


--
-- Name: django_session pk_django_session; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT pk_django_session PRIMARY KEY (session_key);


--
-- Name: feedback_comentario pk_feedback_comentario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback_comentario
    ADD CONSTRAINT pk_feedback_comentario PRIMARY KEY (id);


--
-- Name: miembros_profile pk_miembros_profile; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.miembros_profile
    ADD CONSTRAINT pk_miembros_profile PRIMARY KEY (id);


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissio_permission_id_84c5c92e_fk_auth_perm ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON public.auth_group_permissions USING btree (group_id, permission_id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX auth_permission_content_type_id_codename_01ab375a_uniq ON public.auth_permission USING btree (content_type_id, codename);


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544_fk_auth_group_id ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX auth_user_groups_user_id_group_id_94350c0c_uniq ON public.auth_user_groups USING btree (user_id, group_id);


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON public.auth_user_user_permissions USING btree (user_id, permission_id);


--
-- Name: books_books_likes_books_id_user_id_51195cde_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX books_books_likes_books_id_user_id_51195cde_uniq ON public.books_books_likes USING btree (books_id, user_id);


--
-- Name: books_books_likes_user_id_439a3db6_fk_auth_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX books_books_likes_user_id_439a3db6_fk_auth_user_id ON public.books_books_likes USING btree (user_id);


--
-- Name: books_books_usuario_id_9977f027_fk_auth_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX books_books_usuario_id_9977f027_fk_auth_user_id ON public.books_books USING btree (usuario_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb_fk_django_co ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6_fk_auth_user_id ON public.django_admin_log USING btree (user_id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX django_content_type_app_label_model_76bd3d3b_uniq ON public.django_content_type USING btree (app_label, model);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: idx_facebook; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_facebook ON public.miembros_profile USING btree (facebook);


--
-- Name: idx_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_name ON public.auth_group USING btree (name);


--
-- Name: idx_username; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_username ON public.auth_user USING btree (username);


--
-- Name: miembros_profile_user_id_ca322824_uniq; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX miembros_profile_user_id_ca322824_uniq ON public.miembros_profile USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id);


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: books_books_likes books_books_likes_books_id_6975721a_fk_books_books_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books_likes
    ADD CONSTRAINT books_books_likes_books_id_6975721a_fk_books_books_id FOREIGN KEY (books_id) REFERENCES public.books_books(id);


--
-- Name: books_books_likes books_books_likes_user_id_439a3db6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books_likes
    ADD CONSTRAINT books_books_likes_user_id_439a3db6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: books_books books_books_usuario_id_9977f027_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_books
    ADD CONSTRAINT books_books_usuario_id_9977f027_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES public.auth_user(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id);


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- Name: miembros_profile miembros_profile_user_id_ca322824_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.miembros_profile
    ADD CONSTRAINT miembros_profile_user_id_ca322824_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id);


--
-- PostgreSQL database dump complete
--

