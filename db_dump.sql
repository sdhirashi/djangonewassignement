Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ligia_diaz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ligia_diaz;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ligia_diaz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ligia_diaz;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ligia_diaz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ligia_diaz;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.auth_user (
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
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ligia_diaz;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ligia_diaz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ligia_diaz;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ligia_diaz;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ligia_diaz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ligia_diaz;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO ligia_diaz;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO ligia_diaz;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    published_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    publishername_id bigint
);


ALTER TABLE public.books_book OWNER TO ligia_diaz;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO ligia_diaz;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_bookgenres; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.books_bookgenres (
    id bigint NOT NULL,
    bookname_id bigint NOT NULL,
    selectedgenre_id bigint NOT NULL
);


ALTER TABLE public.books_bookgenres OWNER TO ligia_diaz;

--
-- Name: books_bookgenres_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.books_bookgenres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookgenres_id_seq OWNER TO ligia_diaz;

--
-- Name: books_bookgenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.books_bookgenres_id_seq OWNED BY public.books_bookgenres.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO ligia_diaz;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO ligia_diaz;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    genre character varying(30) NOT NULL,
    description character varying(300) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO ligia_diaz;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO ligia_diaz;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_publisher; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.books_publisher (
    id bigint NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.books_publisher OWNER TO ligia_diaz;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.books_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_publisher_id_seq OWNER TO ligia_diaz;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.books_publisher_id_seq OWNED BY public.books_publisher.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ligia_diaz
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


ALTER TABLE public.django_admin_log OWNER TO ligia_diaz;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ligia_diaz;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ligia_diaz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ligia_diaz;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ligia_diaz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ligia_diaz;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ligia_diaz;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO ligia_diaz;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO ligia_diaz;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: ligia_diaz
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO ligia_diaz;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: ligia_diaz
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO ligia_diaz;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ligia_diaz
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_bookgenres id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_bookgenres ALTER COLUMN id SET DEFAULT nextval('public.books_bookgenres_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_publisher id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_publisher ALTER COLUMN id SET DEFAULT nextval('public.books_publisher_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add blacklisted token	7	add_blacklistedtoken
26	Can change blacklisted token	7	change_blacklistedtoken
27	Can delete blacklisted token	7	delete_blacklistedtoken
28	Can view blacklisted token	7	view_blacklistedtoken
29	Can add outstanding token	8	add_outstandingtoken
30	Can change outstanding token	8	change_outstandingtoken
31	Can delete outstanding token	8	delete_outstandingtoken
32	Can view outstanding token	8	view_outstandingtoken
33	Can add author	9	add_author
34	Can change author	9	change_author
35	Can delete author	9	delete_author
36	Can view author	9	view_author
37	Can add book	10	add_book
38	Can change book	10	change_book
39	Can delete book	10	delete_book
40	Can view book	10	view_book
41	Can add books authors	11	add_booksauthors
42	Can change books authors	11	change_booksauthors
43	Can delete books authors	11	delete_booksauthors
44	Can view books authors	11	view_booksauthors
45	Can add genre	12	add_genre
46	Can change genre	12	change_genre
47	Can delete genre	12	delete_genre
48	Can view genre	12	view_genre
49	Can add publisher	13	add_publisher
50	Can change publisher	13	change_publisher
51	Can delete publisher	13	delete_publisher
52	Can view publisher	13	view_publisher
53	Can add book genres	14	add_bookgenres
54	Can change book genres	14	change_bookgenres
55	Can delete book genres	14	delete_bookgenres
56	Can view book genres	14	view_bookgenres
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$1rnoY99ikS6EDJvUcbtrFu$WMjovS6B9WFZST1KjNh5re/3bQcRiuFHRywEh031drw=	\N	f	admin3			amin3@admin.com	f	t	2022-04-12 20:47:50.435251+00
2	pbkdf2_sha256$320000$GjUytMxlpuZdY1SrmClbPB$UoogUxPM5S7dwSBXluPfh+HN5ADUNAGSYtYunWrKQhA=	\N	f	admin4			admin4@admin.com	f	t	2022-04-12 21:41:09.664079+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.books_book (id, name, published_year, pages, price, created_at, updated_at, publishername_id) FROM stdin;
\.


--
-- Data for Name: books_bookgenres; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.books_bookgenres (id, bookname_id, selectedgenre_id) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.books_genre (id, genre, description) FROM stdin;
\.


--
-- Data for Name: books_publisher; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.books_publisher (id, name) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	token_blacklist	blacklistedtoken
8	token_blacklist	outstandingtoken
9	books	author
10	books	book
11	books	booksauthors
12	books	genre
13	books	publisher
14	books	bookgenres
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 19:55:32.691776+00
2	auth	0001_initial	2022-04-12 19:55:32.77997+00
3	admin	0001_initial	2022-04-12 19:55:32.802436+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 19:55:32.808547+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 19:55:32.814623+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 19:55:32.827359+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 19:55:32.833454+00
8	auth	0003_alter_user_email_max_length	2022-04-12 19:55:32.840243+00
9	auth	0004_alter_user_username_opts	2022-04-12 19:55:32.846073+00
10	auth	0005_alter_user_last_login_null	2022-04-12 19:55:32.852438+00
11	auth	0006_require_contenttypes_0002	2022-04-12 19:55:32.855213+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 19:55:32.860964+00
13	auth	0008_alter_user_username_max_length	2022-04-12 19:55:32.872542+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 19:55:32.878709+00
15	auth	0010_alter_group_name_max_length	2022-04-12 19:55:32.886046+00
16	auth	0011_update_proxy_permissions	2022-04-12 19:55:32.891507+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 19:55:32.897305+00
18	books	0001_initial	2022-04-12 19:55:32.921358+00
19	books	0002_genre_publisher_rename_authors_book_books_authors_and_more	2022-04-12 19:55:32.958143+00
20	books	0003_remove_book_books_genres	2022-04-12 19:55:32.962439+00
21	books	0004_book_books_genres	2022-04-12 19:55:32.966965+00
22	sessions	0001_initial	2022-04-12 19:55:32.982427+00
23	token_blacklist	0001_initial	2022-04-12 19:55:33.012328+00
24	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 19:55:33.019539+00
25	token_blacklist	0003_auto_20171017_2007	2022-04-12 19:55:33.03017+00
26	token_blacklist	0004_auto_20171017_2013	2022-04-12 19:55:33.043475+00
27	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 19:55:33.051093+00
28	token_blacklist	0006_auto_20171017_2113	2022-04-12 19:55:33.058598+00
29	token_blacklist	0007_auto_20171017_2214	2022-04-12 19:55:33.078027+00
30	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 19:55:33.118528+00
31	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 19:55:33.132319+00
32	token_blacklist	0011_linearizes_history	2022-04-12 19:55:33.134424+00
33	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 19:55:33.141111+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:47:18.507679+00	3
2	2022-04-12 22:58:12.488405+00	28
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: ligia_diaz
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjEzMCwiaWF0IjoxNjQ5Nzk5NzMwLCJqdGkiOiIxMTY1MTVlYWViMDY0ZjI4YmQwMzA4ODY3M2EzZjYwNyIsInVzZXJfaWQiOjJ9.Ucwj3tF_zd3Dimkc-BCOrWXWYGsrswesYbVBXs7ZmuQ	2022-04-12 21:42:10.589433+00	2022-04-13 21:42:10+00	2	116515eaeb064f28bd03088673a3f607
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM0OSwiaWF0IjoxNjQ5Nzk5OTQ5LCJqdGkiOiI0NWViZTZiZjJiYzg0ZTVhYmE0OTExNjE5NzRkNGIzYiIsInVzZXJfaWQiOjJ9.Twv4D4g-lvvkQb40etZwQJtXMaGRYDE1QQdQ4bGz2cM	2022-04-12 21:45:49.850298+00	2022-04-13 21:45:49+00	2	45ebe6bf2bc84e5aba491161974d4b3b
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQwMywiaWF0IjoxNjQ5ODAwMDAzLCJqdGkiOiI2ZDQ4MWNjNTdmM2Q0ZWIzOGM1NmYyNGE1ZmI0MTU5OCIsInVzZXJfaWQiOjJ9.vD1_FHZEmrS-LUXzdFYeWCQoK59YgMJB94CX4XiyGho	2022-04-12 21:46:43.578467+00	2022-04-13 21:46:43+00	2	6d481cc57f3d4eb38c56f24a5fb41598
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4ODE3NiwiaWF0IjoxNjQ5ODAxNzc2LCJqdGkiOiI3YjYxNTliZDk5YjE0MzQ2YWMzN2ZjYWNhYzQ0YTc1ZSIsInVzZXJfaWQiOjJ9.ElZmt_Y0e8wkNiNMl28PxDCME8A1SoVJswshFhz4GiA	2022-04-12 22:16:16.123243+00	2022-04-13 22:16:16+00	2	7b6159bd99b14346ac37fcacac44a75e
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4ODE3NywiaWF0IjoxNjQ5ODAxNzc3LCJqdGkiOiI4NWFhNjczODRiZDI0M2EwYTU4ODViMDFhMTE0ZDkzOSIsInVzZXJfaWQiOjJ9.5DT9uP-49FFKUrNjtMgSqLj-A0N0mPdior7NwA6yXYo	2022-04-12 22:16:17.996232+00	2022-04-13 22:16:17+00	2	85aa67384bd243a0a5885b01a114d939
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4ODIzMywiaWF0IjoxNjQ5ODAxODMzLCJqdGkiOiJlYzcwN2ZmOGJhMGE0ZTk5YTU4MDZlNzBkYjZlMzY0MyIsInVzZXJfaWQiOjJ9.Es7Sn5P2JkT4TojNTzGLBVw6lIWzSHOV88j3_IUlKro	2022-04-12 22:17:13.281515+00	2022-04-13 22:17:13+00	2	ec707ff8ba0a4e99a5806e70db6e3643
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4ODIzOCwiaWF0IjoxNjQ5ODAxODM4LCJqdGkiOiI1YjNhZWE3MmFmNTg0ODlmOGVhZjUyNzMyODBiZDlhNiIsInVzZXJfaWQiOjJ9.gPt3aiAOZVxs4pUFDdcdISp4KxvNV0EPihOAOPvDOlk	2022-04-12 22:17:18.78561+00	2022-04-13 22:17:18+00	2	5b3aea72af58489f8eaf5273280bd9a6
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4ODI1NywiaWF0IjoxNjQ5ODAxODU3LCJqdGkiOiJlZjI5OTYyOWZjM2Q0ZmEyYThkODc2MWRmNzM3ODkyZiIsInVzZXJfaWQiOjJ9.Wi-HyW87IBH--Xm-fKfIbYzS-PFdrtBpdJoUSMXR0dI	2022-04-12 22:17:37.305122+00	2022-04-13 22:17:37+00	2	ef299629fc3d4fa2a8d8761df737892f
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTM0OCwiaWF0IjoxNjQ5ODAyOTQ4LCJqdGkiOiI4NjgzYjU4NDM3NTg0Y2MzOTcxZDgyNGM5YWM2YThhNCIsInVzZXJfaWQiOjJ9.PjovEr2xiBz1zD0RO67N3GNc5a-rxnwo_TH0aBCsQFE	2022-04-12 22:35:48.121706+00	2022-04-13 22:35:48+00	2	8683b58437584cc3971d824c9ac6a8a4
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTQ0MCwiaWF0IjoxNjQ5ODAzMDQwLCJqdGkiOiI2ZmQ3ODJjZjlmMjk0ODZlOGFkODRiZTMyMGZmYTU5MiIsInVzZXJfaWQiOjJ9.ZHNyKzSXI7T8HDhg3hkUYlKIdgJOVqgFqo-MHInNXPk	2022-04-12 22:37:20.652529+00	2022-04-13 22:37:20+00	2	6fd782cf9f29486e8ad84be320ffa592
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTQ4OSwiaWF0IjoxNjQ5ODAzMDg5LCJqdGkiOiI4NGY5MjVlNTY5YTM0NzQwODU5Yzc5YzIxNmUxMDE3MCIsInVzZXJfaWQiOjJ9.effizpG6e0r9pJqaSZSWsn94ywd6p-CphIyhny16Uhg	2022-04-12 22:38:09.782746+00	2022-04-13 22:38:09+00	2	84f925e569a34740859c79c216e10170
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTQ5MywiaWF0IjoxNjQ5ODAzMDkzLCJqdGkiOiJiYWZmNWFlMmJiZDA0ZTAzOWY2NjNhZWI3NmE0NTAwMCIsInVzZXJfaWQiOjJ9.Bs2fPOgYCgd9llA1TivlbSzotiMh-lwW-AgtY6YBYVQ	2022-04-12 22:38:13.390402+00	2022-04-13 22:38:13+00	2	baff5ae2bbd04e039f663aeb76a45000
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTYxMiwiaWF0IjoxNjQ5ODAzMjEyLCJqdGkiOiJmOWRjMDdiY2EzOTg0ODMwOWFhY2I4N2ZlMmM3YTM5MSIsInVzZXJfaWQiOjJ9.oSs-KOKHBHBpwnh1dV9NuRWDP9dmF4AWb29maGUZ5_w	2022-04-12 22:40:12.206893+00	2022-04-13 22:40:12+00	2	f9dc07bca39848309aacb87fe2c7a391
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTYxNCwiaWF0IjoxNjQ5ODAzMjE0LCJqdGkiOiJjN2NhYjJlMjMzOWU0MDgyOWVjMDRhYzZkNzVkZjgzNyIsInVzZXJfaWQiOjJ9.wDgjdyb24Pm2RiK4jHst98th1vJuJQioZUXuyUa4D80	2022-04-12 22:40:14.274772+00	2022-04-13 22:40:14+00	2	c7cab2e2339e40829ec04ac6d75df837
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTgyNSwiaWF0IjoxNjQ5ODAzNDI1LCJqdGkiOiI4MWM0NjQ3M2VmMzE0YmJmYTdiYjQ0MTU2ZmU0YTU3MiIsInVzZXJfaWQiOjJ9.0SJgZE8p6-TiDZ8gPGVaVIldq6B9faVu5UZ8o1Zm8-0	2022-04-12 22:43:45.536921+00	2022-04-13 22:43:45+00	2	81c46473ef314bbfa7bb44156fe4a572
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTgzOCwiaWF0IjoxNjQ5ODAzNDM4LCJqdGkiOiJmOWI1MzkxYTJhMzY0OWQxODkyN2ZiMDVkYThkODAyYSIsInVzZXJfaWQiOjJ9.8ytMPRDtu7l_c8uuEatIWp9Fg873Y7MybPvQK0Sl0o4	2022-04-12 22:43:58.789343+00	2022-04-13 22:43:58+00	2	f9b5391a2a3649d18927fb05da8d802a
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTkyMSwiaWF0IjoxNjQ5ODAzNTIxLCJqdGkiOiI3ZTZjNzczODBlYWU0Njg1YjJmODUzNzQxZGFjOGQ0OCIsInVzZXJfaWQiOjJ9.KwnRtF58v1u9tm5I4__kKGDyvdTJ6ad1UardQtQY_NQ	2022-04-12 22:45:21.448223+00	2022-04-13 22:45:21+00	2	7e6c77380eae4685b2f853741dac8d48
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTkyMywiaWF0IjoxNjQ5ODAzNTIzLCJqdGkiOiIxZmUwMTVlZTllYmE0YTllYTgxODllYWRmNmZmZjg4MCIsInVzZXJfaWQiOjJ9.Ldi5qtLWEeXMiRt-wkV2DOw2bFI0-dxm7KsZp4EdFgs	2022-04-12 22:45:23.604397+00	2022-04-13 22:45:23+00	2	1fe015ee9eba4a9ea8189eadf6fff880
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTkyOSwiaWF0IjoxNjQ5ODAzNTI5LCJqdGkiOiI0NDFhNjM1ZTZhZTk0MmRkODU2MGNiNmM5ODBjZjM0ZSIsInVzZXJfaWQiOjJ9.iPBsLkMVK8iCoqjZzVNYqs5-Gzc2Uz4B5_3RK6Z_ogw	2022-04-12 22:45:29.95879+00	2022-04-13 22:45:29+00	2	441a635e6ae942dd8560cb6c980cf34e
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTk4NiwiaWF0IjoxNjQ5ODAzNTg2LCJqdGkiOiI1ODViMWU4MGRmNGQ0MGEyOTFiYzQ0ZGE3YzY5YTQzMCIsInVzZXJfaWQiOjJ9.peaa9tMD7ModAK7IwLJb-D7OigEnem2bV45YykImLxM	2022-04-12 22:46:26.595772+00	2022-04-13 22:46:26+00	2	585b1e80df4d40a291bc44da7c69a430
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTk5MiwiaWF0IjoxNjQ5ODAzNTkyLCJqdGkiOiJhZTBkM2U0OWI4Yjc0NTA5YjhmMDA4YzczZjc4OTUyNiIsInVzZXJfaWQiOjJ9.DSJ4k1Q1cTHpUM6dEH3YVFCTZN-DVrCHc_ouTZAETIA	2022-04-12 22:46:32.330334+00	2022-04-13 22:46:32+00	2	ae0d3e49b8b74509b8f008c73f789526
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4OTk5NywiaWF0IjoxNjQ5ODAzNTk3LCJqdGkiOiIyZjFlMzczZTg4ZDM0NjYyODI2NDU4NzhjYjllMjAzMCIsInVzZXJfaWQiOjJ9.fV7cUbUfZAD5eZ_jftCKrqQDfCIYsDD7qTMTeaAa3og	2022-04-12 22:46:37.191427+00	2022-04-13 22:46:37+00	2	2f1e373e88d3466282645878cb9e2030
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDAzNywiaWF0IjoxNjQ5ODAzNjM3LCJqdGkiOiIyNWI1YzZlOGRhY2M0YWE4ODYxMWM4MWI2NzgyNDE1ZiIsInVzZXJfaWQiOjJ9.howjlSNlGRJLclaUeSsq3Wlt6xGynkfkE4mGZv3cjWU	2022-04-12 22:47:17.607804+00	2022-04-13 22:47:17+00	2	25b5c6e8dacc4aa88611c81b6782415f
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDMyMCwiaWF0IjoxNjQ5ODAzOTIwLCJqdGkiOiIxZjY1MGE1MjZiNWU0NmRkYjNkMjQ5ODUzNzg1MWE1OCIsInVzZXJfaWQiOjJ9.4k6WsvzClSOlIyvgG3pTdhzIl6vQMLHQ1EZsb3C7DEY	2022-04-12 22:52:00.7162+00	2022-04-13 22:52:00+00	2	1f650a526b5e46ddb3d2498537851a58
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDUxOSwiaWF0IjoxNjQ5ODA0MTE5LCJqdGkiOiI0Y2ZhMjM3NTg4ZmI0Y2UzOWNlNDg4MzUwZTcyYmM4NyIsInVzZXJfaWQiOjJ9.L3G4dbAbPcMt1706NUyUOBvQcNFaNN82UXZF5IDbDXI	2022-04-12 22:55:19.584644+00	2022-04-13 22:55:19+00	2	4cfa237588fb4ce39ce488350e72bc87
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDUyNCwiaWF0IjoxNjQ5ODA0MTI0LCJqdGkiOiI4NzMzMTQ4MDg5ZTI0YzI2ODM1NWY5ZmQwYWNlYzljOSIsInVzZXJfaWQiOjJ9.Do_vJdczhq4CxePui6osRisqh-NZepEQM7Rdq8LJGbA	2022-04-12 22:55:24.797299+00	2022-04-13 22:55:24+00	2	8733148089e24c268355f9fd0acec9c9
27	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDY4NiwiaWF0IjoxNjQ5ODA0Mjg2LCJqdGkiOiIyMDZmNWM5MjdkZTk0NmQwOWUwNmQ2NTBmZWE3ZmRlNCIsInVzZXJfaWQiOjJ9.ZZoMI5a10w-xiXHojdLGlVPIv0YJ29Pja535FByQ2wE	2022-04-12 22:58:06.333356+00	2022-04-13 22:58:06+00	2	206f5c927de946d09e06d650fea7fde4
28	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDY4OCwiaWF0IjoxNjQ5ODA0Mjg4LCJqdGkiOiI4MDQ5MGE4N2ZlOTc0MjgyOWRhNTc1Yjg1ODYxYzVhNSIsInVzZXJfaWQiOjJ9.0o3P2AE7g7PztgvOjLSOmPn2Omc5IRHRqQ9NIRsLZ6k	2022-04-12 22:58:08.497932+00	2022-04-13 22:58:08+00	2	80490a87fe9742829da575b85861c5a5
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_bookgenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.books_bookgenres_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.books_publisher_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 2, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ligia_diaz
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 28, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_bookgenres books_bookgenres_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_bookgenres
    ADD CONSTRAINT books_bookgenres_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_publisher books_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_book_publishername_id_1e3876b7; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX books_book_publishername_id_1e3876b7 ON public.books_book USING btree (publishername_id);


--
-- Name: books_bookgenres_bookname_id_76583e98; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX books_bookgenres_bookname_id_76583e98 ON public.books_bookgenres USING btree (bookname_id);


--
-- Name: books_bookgenres_selectedgenre_id_e0630c97; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX books_bookgenres_selectedgenre_id_e0630c97 ON public.books_bookgenres USING btree (selectedgenre_id);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: ligia_diaz
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_publishername_id_1e3876b7_fk_books_publisher_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_publishername_id_1e3876b7_fk_books_publisher_id FOREIGN KEY (publishername_id) REFERENCES public.books_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookgenres books_bookgenres_bookname_id_76583e98_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_bookgenres
    ADD CONSTRAINT books_bookgenres_bookname_id_76583e98_fk_books_book_id FOREIGN KEY (bookname_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookgenres books_bookgenres_selectedgenre_id_e0630c97_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_bookgenres
    ADD CONSTRAINT books_bookgenres_selectedgenre_id_e0630c97_fk_books_genre_id FOREIGN KEY (selectedgenre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: ligia_diaz
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

