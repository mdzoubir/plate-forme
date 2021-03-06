PGDMP     3    2    	            x        	   plateform    13.1    13.1 /    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16446 	   plateform    DATABASE     f   CREATE DATABASE plateform WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE plateform;
                postgres    false            �            1259    16449    admin    TABLE     �   CREATE TABLE public.admin (
    id bigint NOT NULL,
    nom character varying(50) NOT NULL,
    email character varying(250),
    password character varying(250) NOT NULL
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16447    admin_id_seq    SEQUENCE     u   CREATE SEQUENCE public.admin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.admin_id_seq;
       public          postgres    false    201            �           0    0    admin_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;
          public          postgres    false    200            �            1259    16540 
   evaluateur    TABLE     �   CREATE TABLE public.evaluateur (
    nom character varying(50) NOT NULL,
    email character varying(250) NOT NULL,
    password character varying(250) NOT NULL,
    review character varying NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public.evaluateur;
       public         heap    postgres    false            �            1259    16538    evaluateur_id_seq    SEQUENCE     z   CREATE SEQUENCE public.evaluateur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.evaluateur_id_seq;
       public          postgres    false    209            �           0    0    evaluateur_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.evaluateur_id_seq OWNED BY public.evaluateur.id;
          public          postgres    false    208            �            1259    16482    question    TABLE     �   CREATE TABLE public.question (
    id bigint NOT NULL,
    introduction character varying(250) NOT NULL,
    description character varying NOT NULL,
    tags character varying NOT NULL
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    16480    question_id_seq    SEQUENCE     x   CREATE SEQUENCE public.question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.question_id_seq;
       public          postgres    false    203            �           0    0    question_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;
          public          postgres    false    202            �            1259    16493    questionneur    TABLE     �   CREATE TABLE public.questionneur (
    id bigint NOT NULL,
    nom character varying(50) NOT NULL,
    email character varying(250) NOT NULL,
    password character varying(250) NOT NULL,
    question_id bigint
);
     DROP TABLE public.questionneur;
       public         heap    postgres    false            �            1259    16491    questionneur_id_seq    SEQUENCE     |   CREATE SEQUENCE public.questionneur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.questionneur_id_seq;
       public          postgres    false    205            �           0    0    questionneur_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.questionneur_id_seq OWNED BY public.questionneur.id;
          public          postgres    false    204            �            1259    16550 	   redacteur    TABLE     �   CREATE TABLE public.redacteur (
    nom character varying(50) NOT NULL,
    email character varying(250) NOT NULL,
    password character varying(250) NOT NULL,
    domain character varying NOT NULL,
    reponse_id bigint,
    evaluateur_id bigint
);
    DROP TABLE public.redacteur;
       public         heap    postgres    false            �            1259    16511    reponse    TABLE     `   CREATE TABLE public.reponse (
    id bigint NOT NULL,
    reponse character varying NOT NULL
);
    DROP TABLE public.reponse;
       public         heap    postgres    false            �            1259    16509    reponse_id_seq    SEQUENCE     w   CREATE SEQUENCE public.reponse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reponse_id_seq;
       public          postgres    false    207            �           0    0    reponse_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reponse_id_seq OWNED BY public.reponse.id;
          public          postgres    false    206            D           2604    16452    admin id    DEFAULT     d   ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);
 7   ALTER TABLE public.admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            H           2604    16543    evaluateur id    DEFAULT     n   ALTER TABLE ONLY public.evaluateur ALTER COLUMN id SET DEFAULT nextval('public.evaluateur_id_seq'::regclass);
 <   ALTER TABLE public.evaluateur ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            E           2604    16485    question id    DEFAULT     j   ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);
 :   ALTER TABLE public.question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            F           2604    16496    questionneur id    DEFAULT     r   ALTER TABLE ONLY public.questionneur ALTER COLUMN id SET DEFAULT nextval('public.questionneur_id_seq'::regclass);
 >   ALTER TABLE public.questionneur ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            G           2604    16514 
   reponse id    DEFAULT     h   ALTER TABLE ONLY public.reponse ALTER COLUMN id SET DEFAULT nextval('public.reponse_id_seq'::regclass);
 9   ALTER TABLE public.reponse ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �          0    16449    admin 
   TABLE DATA           9   COPY public.admin (id, nom, email, password) FROM stdin;
    public          postgres    false    201   4       �          0    16540 
   evaluateur 
   TABLE DATA           F   COPY public.evaluateur (nom, email, password, review, id) FROM stdin;
    public          postgres    false    209   24       �          0    16482    question 
   TABLE DATA           G   COPY public.question (id, introduction, description, tags) FROM stdin;
    public          postgres    false    203   O4       �          0    16493    questionneur 
   TABLE DATA           M   COPY public.questionneur (id, nom, email, password, question_id) FROM stdin;
    public          postgres    false    205   l4       �          0    16550 	   redacteur 
   TABLE DATA           \   COPY public.redacteur (nom, email, password, domain, reponse_id, evaluateur_id) FROM stdin;
    public          postgres    false    210   �4       �          0    16511    reponse 
   TABLE DATA           .   COPY public.reponse (id, reponse) FROM stdin;
    public          postgres    false    207   �4       �           0    0    admin_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.admin_id_seq', 1, false);
          public          postgres    false    200            �           0    0    evaluateur_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.evaluateur_id_seq', 1, false);
          public          postgres    false    208            �           0    0    question_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.question_id_seq', 1, false);
          public          postgres    false    202            �           0    0    questionneur_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.questionneur_id_seq', 1, false);
          public          postgres    false    204            �           0    0    reponse_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reponse_id_seq', 1, false);
          public          postgres    false    206            J           2606    16457    admin admin_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    201            T           2606    16548    evaluateur evaluateur_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.evaluateur
    ADD CONSTRAINT evaluateur_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.evaluateur DROP CONSTRAINT evaluateur_pkey;
       public            postgres    false    209            L           2606    16490    question question_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            postgres    false    203            N           2606    16501    questionneur questionneur_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.questionneur
    ADD CONSTRAINT questionneur_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.questionneur DROP CONSTRAINT questionneur_pkey;
       public            postgres    false    205            P           2606    16503 )   questionneur questionneur_question_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.questionneur
    ADD CONSTRAINT questionneur_question_id_key UNIQUE (question_id);
 S   ALTER TABLE ONLY public.questionneur DROP CONSTRAINT questionneur_question_id_key;
       public            postgres    false    205            V           2606    16559 %   redacteur redacteur_evaluateur_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_evaluateur_id_key UNIQUE (evaluateur_id);
 O   ALTER TABLE ONLY public.redacteur DROP CONSTRAINT redacteur_evaluateur_id_key;
       public            postgres    false    210            X           2606    16557 "   redacteur redacteur_reponse_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_reponse_id_key UNIQUE (reponse_id);
 L   ALTER TABLE ONLY public.redacteur DROP CONSTRAINT redacteur_reponse_id_key;
       public            postgres    false    210            R           2606    16519    reponse reponse_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reponse
    ADD CONSTRAINT reponse_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reponse DROP CONSTRAINT reponse_pkey;
       public            postgres    false    207            Y           2606    16504 *   questionneur questionneur_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.questionneur
    ADD CONSTRAINT questionneur_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(id);
 T   ALTER TABLE ONLY public.questionneur DROP CONSTRAINT questionneur_question_id_fkey;
       public          postgres    false    203    2892    205            [           2606    16565 &   redacteur redacteur_evaluateur_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_evaluateur_id_fkey FOREIGN KEY (evaluateur_id) REFERENCES public.evaluateur(id);
 P   ALTER TABLE ONLY public.redacteur DROP CONSTRAINT redacteur_evaluateur_id_fkey;
       public          postgres    false    2900    210    209            Z           2606    16560 #   redacteur redacteur_reponse_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.redacteur
    ADD CONSTRAINT redacteur_reponse_id_fkey FOREIGN KEY (reponse_id) REFERENCES public.reponse(id);
 M   ALTER TABLE ONLY public.redacteur DROP CONSTRAINT redacteur_reponse_id_fkey;
       public          postgres    false    207    210    2898            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     