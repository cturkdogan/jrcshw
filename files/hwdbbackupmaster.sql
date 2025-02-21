PGDMP                     
    w            hwdb    10.8    10.8     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16434    hwdb    DATABASE     �   CREATE DATABASE hwdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE hwdb;
             root    false            �
           0    0    DATABASE hwdb    COMMENT     4   COMMENT ON DATABASE hwdb IS 'JRCS homework dev db';
                  root    false    2811                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16442    Menus    TABLE     F  CREATE TABLE public."Menus" (
    id integer NOT NULL,
    menu_id character varying(255) NOT NULL,
    label character varying(255),
    title character varying(255),
    value text,
    parent_id character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Menus";
       public         root    false    3            �            1259    16440    Menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menus_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Menus_id_seq";
       public       root    false    198    3            �
           0    0    Menus_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Menus_id_seq" OWNED BY public."Menus".id;
            public       root    false    197            �            1259    16435    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         root    false    3            s
           2604    16445    Menus id    DEFAULT     h   ALTER TABLE ONLY public."Menus" ALTER COLUMN id SET DEFAULT nextval('public."Menus_id_seq"'::regclass);
 9   ALTER TABLE public."Menus" ALTER COLUMN id DROP DEFAULT;
       public       root    false    198    197    198            �
          0    16442    Menus 
   TABLE DATA               h   COPY public."Menus" (id, menu_id, label, title, value, parent_id, "createdAt", "updatedAt") FROM stdin;
    public       root    false    198   �       �
          0    16435    SequelizeMeta 
   TABLE DATA               /   COPY public."SequelizeMeta" (name) FROM stdin;
    public       root    false    196   q                   0    0    Menus_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Menus_id_seq"', 6, true);
            public       root    false    197            w
           2606    16452    Menus Menus_menu_id_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "Menus_menu_id_key" UNIQUE (menu_id);
 E   ALTER TABLE ONLY public."Menus" DROP CONSTRAINT "Menus_menu_id_key";
       public         root    false    198            y
           2606    16450    Menus Menus_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Menus"
    ADD CONSTRAINT "Menus_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Menus" DROP CONSTRAINT "Menus_pkey";
       public         root    false    198            u
           2606    16439     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public         root    false    196            �
   �  x��V�n�F>�O1�.Ikʒ����q��5����(,�X�#q#r��]�V�C�}�{��Q�$���dZ�� =�K����ofg�t^�)	_�i�th����W�N2�=��i��^l��1ǥcJTP�S���2	�6���:�5�r��B�`�yz�K�g6�ǩ��ΕE�/&�H���9p�����V)ε�B;Nʸ:�Y��-�Y�p��hZ��Z���N(�3탎����XM�<�����|������A���ܖQ�7[���2��YG/��&�G����&07��UPP���;�2'�.�U�_v����h0��F���?�}������o6��AoY&�6+%��j��j��:ú�ΪU�6X*b�E���Bxϩ�3�Ue�]���M�g�>=8�u���ϯ+��̖	T̄�;b��آ7G[t�g: ���~���sV�н��J����-z�$	�*���u�0�_�z��YU�/����p	��$�c	~Q��� �S�elf@@w��	L���9H`~l`�f�zFQ�b��3m�pxt����ދg�|��6��\�6_�Zq>��ˈ�TW�
g/�@Yܬ'���\B�����g�36�ykP�{[ ��w�;�ȇ�0��D�؎C�扝)��͇������vz��)��h�2fM��f� 8D�g|Q�ƾ��
R��r(�_�-j�� �����ܺ��+�ł���S��^_I��H���X�}�b���^�aWOI�ǵu�G�����N�rs���;*IdP
�(��&_�F�vg��6 g��L�[�����'V�2�W���~M昣j����i��o]OXs,ƭCc����}z.���F2W>�_>H��y
�2qJ���6����xv�Y�.Lʛ��@ϖ�ÄV"���O��P�ؚ�򰋗���v�fl��k�W�m��}aKw[z��٩EP�nY$y%y�e����/�d�rv3$�T�D��Ў�flY�E�����t<%e�o��FH'�1��ߌ��1������{��5s��S��p'��:����ʛ�f�U�+Q��N�j���Js$o?v�Z�"��d������(�� O6�Ժ?�P}��
�u�!���͍�O02,)훙S�5W��eSRU���������d1���M9+ڷ��.Аa�4�h�x����$�㫦o2�l<���6J�,]R�s9�؈�-���Q&��B��
珿V"�Z�6D:ٱ�.�wO�w>���;���u�*����ea��p�=*�wI���}H�/���ϐmڦi�*}73�T�{PX(�J�������t�\�dtlƁ��$*/ŭ8+�J��:�s"���9�ft�NC축D̧��x���??}������˔�vP֓��V!���m��'���ݵk8~3�{�W��W��������      �
   (   x�320�444 !cS���ĒT��ԼR��b�=... �i�     