PGDMP         4                x            project    13.1    13.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    project    DATABASE     c   CREATE DATABASE project WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE project;
                postgres    false            �            1259    16508    document    TABLE     �   CREATE TABLE public.document (
    dno integer NOT NULL,
    aadhar text,
    pan_card text,
    police_verification text,
    flatno integer
);
    DROP TABLE public.document;
       public         heap    postgres    false            �            1259    16506    document_dno_seq    SEQUENCE     �   CREATE SEQUENCE public.document_dno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.document_dno_seq;
       public          postgres    false    204            �           0    0    document_dno_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.document_dno_seq OWNED BY public.document.dno;
          public          postgres    false    203            �            1259    16395    register    TABLE     {   CREATE TABLE public.register (
    username character varying(20) NOT NULL,
    password character varying(20) NOT NULL
);
    DROP TABLE public.register;
       public         heap    postgres    false            �            1259    16410    rent    TABLE     :  CREATE TABLE public.rent (
    rno integer NOT NULL,
    month character varying(12) NOT NULL,
    rent_amount integer NOT NULL,
    electricity_bill integer NOT NULL,
    gas_bill integer NOT NULL,
    maintanance_charge integer NOT NULL,
    payable_amount integer NOT NULL,
    flatno integer,
    date date
);
    DROP TABLE public.rent;
       public         heap    postgres    false            �            1259    16400    tenent    TABLE     �  CREATE TABLE public.tenent (
    flatno integer NOT NULL,
    name character varying(20) NOT NULL,
    gender character varying(10) NOT NULL,
    no_of_members integer NOT NULL,
    contact_no numeric(10,0) NOT NULL,
    address character varying(100) NOT NULL,
    aadhar_no numeric(12,0) NOT NULL,
    pan_no character varying(10) NOT NULL,
    months_started character varying(12) NOT NULL,
    security_amount integer NOT NULL
);
    DROP TABLE public.tenent;
       public         heap    postgres    false            /           2604    16511    document dno    DEFAULT     l   ALTER TABLE ONLY public.document ALTER COLUMN dno SET DEFAULT nextval('public.document_dno_seq'::regclass);
 ;   ALTER TABLE public.document ALTER COLUMN dno DROP DEFAULT;
       public          postgres    false    204    203    204            �          0    16508    document 
   TABLE DATA           V   COPY public.document (dno, aadhar, pan_card, police_verification, flatno) FROM stdin;
    public          postgres    false    204   u       �          0    16395    register 
   TABLE DATA           6   COPY public.register (username, password) FROM stdin;
    public          postgres    false    200   �       �          0    16410    rent 
   TABLE DATA           �   COPY public.rent (rno, month, rent_amount, electricity_bill, gas_bill, maintanance_charge, payable_amount, flatno, date) FROM stdin;
    public          postgres    false    202          �          0    16400    tenent 
   TABLE DATA           �   COPY public.tenent (flatno, name, gender, no_of_members, contact_no, address, aadhar_no, pan_no, months_started, security_amount) FROM stdin;
    public          postgres    false    201   �       �           0    0    document_dno_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.document_dno_seq', 15, true);
          public          postgres    false    203            7           2606    16516    document document_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (dno);
 @   ALTER TABLE ONLY public.document DROP CONSTRAINT document_pkey;
       public            postgres    false    204            1           2606    16399    register register_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.register
    ADD CONSTRAINT register_pkey PRIMARY KEY (username);
 @   ALTER TABLE ONLY public.register DROP CONSTRAINT register_pkey;
       public            postgres    false    200            5           2606    16414    rent rent_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_pkey PRIMARY KEY (rno);
 8   ALTER TABLE ONLY public.rent DROP CONSTRAINT rent_pkey;
       public            postgres    false    202            3           2606    16404    tenent tenent_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tenent
    ADD CONSTRAINT tenent_pkey PRIMARY KEY (flatno);
 <   ALTER TABLE ONLY public.tenent DROP CONSTRAINT tenent_pkey;
       public            postgres    false    201            9           2606    16517    document document_flatno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_flatno_fkey FOREIGN KEY (flatno) REFERENCES public.tenent(flatno) ON UPDATE SET NULL ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.document DROP CONSTRAINT document_flatno_fkey;
       public          postgres    false    201    2867    204            8           2606    16415    rent rent_flatno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_flatno_fkey FOREIGN KEY (flatno) REFERENCES public.tenent(flatno) ON UPDATE SET NULL ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.rent DROP CONSTRAINT rent_flatno_fkey;
       public          postgres    false    2867    201    202            �   V   x�34�t�����Ԣb�1��(1���Ku)�,K�]�KsS�J���e��fC.C�!�v�	P�0��H:�,��C�=... Snġ      �   +   x�K�+-JL��.�M,���*�Lή����ML9�$W� :U�      �   �   x�]��� Dg�_R����5C� C�D�"e��00t��t~������x|	"mP�kVZ�|�����%�D3� �d]��+�0��eP:΅�+�^;E{L�{O��r�2A''�FW������3��?� �`ͨ4x�0��.6      �   O   x�3�L�+-JL��M�I�4�051���4�4��K,����4426153��435���q�6502N��J��45 �=... ��*     