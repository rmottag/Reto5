PGDMP                          y            reto5    11.10    11.10 '    3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            6           1262    41004    reto5    DATABASE     �   CREATE DATABASE reto5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Peru.1252' LC_CTYPE = 'Spanish_Peru.1252';
    DROP DATABASE reto5;
             postgres    false            �            1259    41007    alumno    TABLE     l   CREATE TABLE public.alumno (
    id integer NOT NULL,
    nombre character varying(50),
    edad integer
);
    DROP TABLE public.alumno;
       public         postgres    false            �            1259    41005    alumno_id_seq    SEQUENCE     �   ALTER TABLE public.alumno ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.alumno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    197            �            1259    41035    alumno_profesor    TABLE     �   CREATE TABLE public.alumno_profesor (
    id integer NOT NULL,
    id_alumno integer,
    id_profesor integer,
    id_curso integer,
    id_salon integer,
    id_nota integer
);
 #   DROP TABLE public.alumno_profesor;
       public         postgres    false            �            1259    41033    alumno_profesor_id_seq    SEQUENCE     �   ALTER TABLE public.alumno_profesor ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.alumno_profesor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    205            �            1259    41028    curso    TABLE     Y   CREATE TABLE public.curso (
    id integer NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public.curso;
       public         postgres    false            �            1259    41026    curso_id_seq    SEQUENCE     �   ALTER TABLE public.curso ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.curso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    203            �            1259    41062    nota    TABLE     H   CREATE TABLE public.nota (
    id integer NOT NULL,
    nota integer
);
    DROP TABLE public.nota;
       public         postgres    false            �            1259    41060    nota_id_seq    SEQUENCE     �   ALTER TABLE public.nota ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.nota_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    207            �            1259    41014    profesor    TABLE     n   CREATE TABLE public.profesor (
    id integer NOT NULL,
    nombre character varying(50),
    edad integer
);
    DROP TABLE public.profesor;
       public         postgres    false            �            1259    41012    profesor_id_seq    SEQUENCE     �   ALTER TABLE public.profesor ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.profesor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    199            �            1259    41021    salon    TABLE     Y   CREATE TABLE public.salon (
    id integer NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public.salon;
       public         postgres    false            �            1259    41019    salon_id_seq    SEQUENCE     �   ALTER TABLE public.salon ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.salon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public       postgres    false    201            &          0    41007    alumno 
   TABLE DATA               2   COPY public.alumno (id, nombre, edad) FROM stdin;
    public       postgres    false    197   Q(       .          0    41035    alumno_profesor 
   TABLE DATA               b   COPY public.alumno_profesor (id, id_alumno, id_profesor, id_curso, id_salon, id_nota) FROM stdin;
    public       postgres    false    205   n(       ,          0    41028    curso 
   TABLE DATA               +   COPY public.curso (id, nombre) FROM stdin;
    public       postgres    false    203   �(       0          0    41062    nota 
   TABLE DATA               (   COPY public.nota (id, nota) FROM stdin;
    public       postgres    false    207   �(       (          0    41014    profesor 
   TABLE DATA               4   COPY public.profesor (id, nombre, edad) FROM stdin;
    public       postgres    false    199   �(       *          0    41021    salon 
   TABLE DATA               +   COPY public.salon (id, nombre) FROM stdin;
    public       postgres    false    201   �(       7           0    0    alumno_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.alumno_id_seq', 1, false);
            public       postgres    false    196            8           0    0    alumno_profesor_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.alumno_profesor_id_seq', 1, false);
            public       postgres    false    204            9           0    0    curso_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.curso_id_seq', 1, false);
            public       postgres    false    202            :           0    0    nota_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.nota_id_seq', 1, false);
            public       postgres    false    206            ;           0    0    profesor_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profesor_id_seq', 1, false);
            public       postgres    false    198            <           0    0    salon_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.salon_id_seq', 1, false);
            public       postgres    false    200            �
           2606    41011    alumno alumno_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.alumno
    ADD CONSTRAINT alumno_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.alumno DROP CONSTRAINT alumno_pkey;
       public         postgres    false    197            �
           2606    41039 $   alumno_profesor alumno_profesor_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.alumno_profesor
    ADD CONSTRAINT alumno_profesor_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.alumno_profesor DROP CONSTRAINT alumno_profesor_pkey;
       public         postgres    false    205            �
           2606    41032    curso curso_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.curso DROP CONSTRAINT curso_pkey;
       public         postgres    false    203            �
           2606    41066    nota nota_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.nota
    ADD CONSTRAINT nota_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.nota DROP CONSTRAINT nota_pkey;
       public         postgres    false    207            �
           2606    41018    profesor profesor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profesor
    ADD CONSTRAINT profesor_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profesor DROP CONSTRAINT profesor_pkey;
       public         postgres    false    199            �
           2606    41025    salon salon_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.salon
    ADD CONSTRAINT salon_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.salon DROP CONSTRAINT salon_pkey;
       public         postgres    false    201            �
           2606    41040    alumno_profesor fktest1    FK CONSTRAINT     y   ALTER TABLE ONLY public.alumno_profesor
    ADD CONSTRAINT fktest1 FOREIGN KEY (id_alumno) REFERENCES public.alumno(id);
 A   ALTER TABLE ONLY public.alumno_profesor DROP CONSTRAINT fktest1;
       public       postgres    false    2716    197    205            �
           2606    41045    alumno_profesor fktest2    FK CONSTRAINT     }   ALTER TABLE ONLY public.alumno_profesor
    ADD CONSTRAINT fktest2 FOREIGN KEY (id_profesor) REFERENCES public.profesor(id);
 A   ALTER TABLE ONLY public.alumno_profesor DROP CONSTRAINT fktest2;
       public       postgres    false    205    199    2718            �
           2606    41050    alumno_profesor fktest3    FK CONSTRAINT     w   ALTER TABLE ONLY public.alumno_profesor
    ADD CONSTRAINT fktest3 FOREIGN KEY (id_curso) REFERENCES public.curso(id);
 A   ALTER TABLE ONLY public.alumno_profesor DROP CONSTRAINT fktest3;
       public       postgres    false    203    2722    205            �
           2606    41055    alumno_profesor fktest4    FK CONSTRAINT     w   ALTER TABLE ONLY public.alumno_profesor
    ADD CONSTRAINT fktest4 FOREIGN KEY (id_salon) REFERENCES public.salon(id);
 A   ALTER TABLE ONLY public.alumno_profesor DROP CONSTRAINT fktest4;
       public       postgres    false    205    201    2720            �
           2606    41067    alumno_profesor fktest5    FK CONSTRAINT     u   ALTER TABLE ONLY public.alumno_profesor
    ADD CONSTRAINT fktest5 FOREIGN KEY (id_nota) REFERENCES public.nota(id);
 A   ALTER TABLE ONLY public.alumno_profesor DROP CONSTRAINT fktest5;
       public       postgres    false    205    2726    207            &      x������ � �      .      x������ � �      ,      x������ � �      0      x������ � �      (      x������ � �      *      x������ � �     