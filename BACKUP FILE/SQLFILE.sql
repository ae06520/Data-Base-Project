PGDMP  8    2                |            Hospital    16.4    16.4 V               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16722    Hospital    DATABASE     �   CREATE DATABASE "Hospital" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_American Samoa.1256';
    DROP DATABASE "Hospital";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16867 
   accountant    TABLE     �  CREATE TABLE public.accountant (
    accountantid integer NOT NULL,
    phone character varying(11) NOT NULL,
    salary numeric(8,2) NOT NULL,
    sex character(1) NOT NULL,
    street character varying(20),
    city character varying(20),
    shift character varying(10) NOT NULL,
    age integer NOT NULL,
    accountantname character varying(50) NOT NULL,
    apartment_block_no integer
);
    DROP TABLE public.accountant;
       public         heap    postgres    false    4            �            1259    16866    accountant_accountantid_seq    SEQUENCE     �   CREATE SEQUENCE public.accountant_accountantid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.accountant_accountantid_seq;
       public          postgres    false    227    4                       0    0    accountant_accountantid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.accountant_accountantid_seq OWNED BY public.accountant.accountantid;
          public          postgres    false    226            �            1259    16874    bill    TABLE     �   CREATE TABLE public.bill (
    billid integer NOT NULL,
    patid integer NOT NULL,
    accid integer NOT NULL,
    totalbill numeric(10,2) NOT NULL,
    hasinsurance boolean
);
    DROP TABLE public.bill;
       public         heap    postgres    false    4            �            1259    16873    bill_billid_seq    SEQUENCE     �   CREATE SEQUENCE public.bill_billid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bill_billid_seq;
       public          postgres    false    4    229                       0    0    bill_billid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bill_billid_seq OWNED BY public.bill.billid;
          public          postgres    false    228            �            1259    16768 	   depatment    TABLE     �   CREATE TABLE public.depatment (
    departmentid integer NOT NULL,
    departmentname character varying(50) NOT NULL,
    departmentlocation character varying(50) NOT NULL
);
    DROP TABLE public.depatment;
       public         heap    postgres    false    4            �            1259    16767    depatment_departmentid_seq    SEQUENCE     �   CREATE SEQUENCE public.depatment_departmentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.depatment_departmentid_seq;
       public          postgres    false    216    4                       0    0    depatment_departmentid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.depatment_departmentid_seq OWNED BY public.depatment.departmentid;
          public          postgres    false    215            �            1259    16825    doctor    TABLE     �  CREATE TABLE public.doctor (
    doctorid integer NOT NULL,
    doctorname character varying(20) NOT NULL,
    depid integer NOT NULL,
    salary numeric(8,2) NOT NULL,
    sex character(1) NOT NULL,
    apartmentblockno integer,
    street character varying(20),
    city character varying(20),
    age integer NOT NULL,
    shift character varying(10) NOT NULL,
    medical_specialization character varying(50) NOT NULL,
    phone character varying(12)[]
);
    DROP TABLE public.doctor;
       public         heap    postgres    false    4            �            1259    16824    doctor_doctorid_seq    SEQUENCE     �   CREATE SEQUENCE public.doctor_doctorid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.doctor_doctorid_seq;
       public          postgres    false    4    223                        0    0    doctor_doctorid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.doctor_doctorid_seq OWNED BY public.doctor.doctorid;
          public          postgres    false    222            �            1259    16836    doctorwritetestreport    TABLE     �   CREATE TABLE public.doctorwritetestreport (
    docid integer NOT NULL,
    patid integer NOT NULL,
    diagnosis character varying(100) NOT NULL,
    "reportDate" date
);
 )   DROP TABLE public.doctorwritetestreport;
       public         heap    postgres    false    4            �            1259    16891    medicalrecord    TABLE     �   CREATE TABLE public.medicalrecord (
    recordid integer NOT NULL,
    recorddate date NOT NULL,
    patid integer NOT NULL,
    diagnosis character varying(100)
);
 !   DROP TABLE public.medicalrecord;
       public         heap    postgres    false    4            �            1259    16890    medicalrecord_recordid_seq    SEQUENCE     �   CREATE SEQUENCE public.medicalrecord_recordid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.medicalrecord_recordid_seq;
       public          postgres    false    4    231            !           0    0    medicalrecord_recordid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.medicalrecord_recordid_seq OWNED BY public.medicalrecord.recordid;
          public          postgres    false    230            �            1259    16911    nurse    TABLE     �  CREATE TABLE public.nurse (
    nurseid integer NOT NULL,
    nursename character varying(20) NOT NULL,
    wardid integer NOT NULL,
    salary numeric(8,2) NOT NULL,
    sex character(1) NOT NULL,
    apartmentblockno integer,
    street character varying(20),
    city character varying(20),
    age integer NOT NULL,
    shift character varying(10) NOT NULL,
    supervisor_id integer,
    phone character varying(13)[]
);
    DROP TABLE public.nurse;
       public         heap    postgres    false    4            �            1259    16910    nurse_nurseid_seq    SEQUENCE     �   CREATE SEQUENCE public.nurse_nurseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.nurse_nurseid_seq;
       public          postgres    false    4    234            "           0    0    nurse_nurseid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.nurse_nurseid_seq OWNED BY public.nurse.nurseid;
          public          postgres    false    233            �            1259    16803    patient    TABLE     s  CREATE TABLE public.patient (
    patientid integer NOT NULL,
    patientname character varying(20) NOT NULL,
    age numeric(5,0) NOT NULL,
    phone character varying(11),
    sex character(1) NOT NULL,
    apartmentblockno integer,
    street character varying(20),
    city character varying(20),
    wardid integer NOT NULL,
    enterdate date,
    exitdate date
);
    DROP TABLE public.patient;
       public         heap    postgres    false    4            �            1259    16801    patient_patientid_seq    SEQUENCE     �   CREATE SEQUENCE public.patient_patientid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.patient_patientid_seq;
       public          postgres    false    221    4            #           0    0    patient_patientid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.patient_patientid_seq OWNED BY public.patient.patientid;
          public          postgres    false    219            �            1259    16802    patient_wardid_seq    SEQUENCE     �   CREATE SEQUENCE public.patient_wardid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.patient_wardid_seq;
       public          postgres    false    221    4            $           0    0    patient_wardid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.patient_wardid_seq OWNED BY public.patient.wardid;
          public          postgres    false    220            �            1259    16902    recordtreatment    TABLE     r   CREATE TABLE public.recordtreatment (
    recid integer NOT NULL,
    treatment character varying(50) NOT NULL
);
 #   DROP TABLE public.recordtreatment;
       public         heap    postgres    false    4            �            1259    16856    testreporttreatments    TABLE     �   CREATE TABLE public.testreporttreatments (
    docid integer NOT NULL,
    patid integer NOT NULL,
    treatments character varying(50) NOT NULL
);
 (   DROP TABLE public.testreporttreatments;
       public         heap    postgres    false    4            �            1259    16790    ward    TABLE     �   CREATE TABLE public.ward (
    wardid integer NOT NULL,
    capacity integer NOT NULL,
    availability integer NOT NULL,
    depatmentno integer NOT NULL
);
    DROP TABLE public.ward;
       public         heap    postgres    false    4            �            1259    16789    ward_wardid_seq    SEQUENCE     �   CREATE SEQUENCE public.ward_wardid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ward_wardid_seq;
       public          postgres    false    218    4            %           0    0    ward_wardid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ward_wardid_seq OWNED BY public.ward.wardid;
          public          postgres    false    217            O           2604    16870    accountant accountantid    DEFAULT     �   ALTER TABLE ONLY public.accountant ALTER COLUMN accountantid SET DEFAULT nextval('public.accountant_accountantid_seq'::regclass);
 F   ALTER TABLE public.accountant ALTER COLUMN accountantid DROP DEFAULT;
       public          postgres    false    227    226    227            P           2604    16877    bill billid    DEFAULT     j   ALTER TABLE ONLY public.bill ALTER COLUMN billid SET DEFAULT nextval('public.bill_billid_seq'::regclass);
 :   ALTER TABLE public.bill ALTER COLUMN billid DROP DEFAULT;
       public          postgres    false    228    229    229            J           2604    16771    depatment departmentid    DEFAULT     �   ALTER TABLE ONLY public.depatment ALTER COLUMN departmentid SET DEFAULT nextval('public.depatment_departmentid_seq'::regclass);
 E   ALTER TABLE public.depatment ALTER COLUMN departmentid DROP DEFAULT;
       public          postgres    false    216    215    216            N           2604    16828    doctor doctorid    DEFAULT     r   ALTER TABLE ONLY public.doctor ALTER COLUMN doctorid SET DEFAULT nextval('public.doctor_doctorid_seq'::regclass);
 >   ALTER TABLE public.doctor ALTER COLUMN doctorid DROP DEFAULT;
       public          postgres    false    222    223    223            Q           2604    16894    medicalrecord recordid    DEFAULT     �   ALTER TABLE ONLY public.medicalrecord ALTER COLUMN recordid SET DEFAULT nextval('public.medicalrecord_recordid_seq'::regclass);
 E   ALTER TABLE public.medicalrecord ALTER COLUMN recordid DROP DEFAULT;
       public          postgres    false    230    231    231            R           2604    16914    nurse nurseid    DEFAULT     n   ALTER TABLE ONLY public.nurse ALTER COLUMN nurseid SET DEFAULT nextval('public.nurse_nurseid_seq'::regclass);
 <   ALTER TABLE public.nurse ALTER COLUMN nurseid DROP DEFAULT;
       public          postgres    false    234    233    234            L           2604    16806    patient patientid    DEFAULT     v   ALTER TABLE ONLY public.patient ALTER COLUMN patientid SET DEFAULT nextval('public.patient_patientid_seq'::regclass);
 @   ALTER TABLE public.patient ALTER COLUMN patientid DROP DEFAULT;
       public          postgres    false    219    221    221            M           2604    16807    patient wardid    DEFAULT     p   ALTER TABLE ONLY public.patient ALTER COLUMN wardid SET DEFAULT nextval('public.patient_wardid_seq'::regclass);
 =   ALTER TABLE public.patient ALTER COLUMN wardid DROP DEFAULT;
       public          postgres    false    220    221    221            K           2604    16793    ward wardid    DEFAULT     j   ALTER TABLE ONLY public.ward ALTER COLUMN wardid SET DEFAULT nextval('public.ward_wardid_seq'::regclass);
 :   ALTER TABLE public.ward ALTER COLUMN wardid DROP DEFAULT;
       public          postgres    false    218    217    218                      0    16867 
   accountant 
   TABLE DATA           �   COPY public.accountant (accountantid, phone, salary, sex, street, city, shift, age, accountantname, apartment_block_no) FROM stdin;
    public          postgres    false    227   �g                 0    16874    bill 
   TABLE DATA           M   COPY public.bill (billid, patid, accid, totalbill, hasinsurance) FROM stdin;
    public          postgres    false    229   h                 0    16768 	   depatment 
   TABLE DATA           U   COPY public.depatment (departmentid, departmentname, departmentlocation) FROM stdin;
    public          postgres    false    216   (h       
          0    16825    doctor 
   TABLE DATA           �   COPY public.doctor (doctorid, doctorname, depid, salary, sex, apartmentblockno, street, city, age, shift, medical_specialization, phone) FROM stdin;
    public          postgres    false    223   jh                 0    16836    doctorwritetestreport 
   TABLE DATA           V   COPY public.doctorwritetestreport (docid, patid, diagnosis, "reportDate") FROM stdin;
    public          postgres    false    224   �h                 0    16891    medicalrecord 
   TABLE DATA           O   COPY public.medicalrecord (recordid, recorddate, patid, diagnosis) FROM stdin;
    public          postgres    false    231   �h                 0    16911    nurse 
   TABLE DATA           �   COPY public.nurse (nurseid, nursename, wardid, salary, sex, apartmentblockno, street, city, age, shift, supervisor_id, phone) FROM stdin;
    public          postgres    false    234   �h                 0    16803    patient 
   TABLE DATA           �   COPY public.patient (patientid, patientname, age, phone, sex, apartmentblockno, street, city, wardid, enterdate, exitdate) FROM stdin;
    public          postgres    false    221   �h                 0    16902    recordtreatment 
   TABLE DATA           ;   COPY public.recordtreatment (recid, treatment) FROM stdin;
    public          postgres    false    232   Ai                 0    16856    testreporttreatments 
   TABLE DATA           H   COPY public.testreporttreatments (docid, patid, treatments) FROM stdin;
    public          postgres    false    225   ^i                 0    16790    ward 
   TABLE DATA           K   COPY public.ward (wardid, capacity, availability, depatmentno) FROM stdin;
    public          postgres    false    218   {i       &           0    0    accountant_accountantid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.accountant_accountantid_seq', 1, false);
          public          postgres    false    226            '           0    0    bill_billid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bill_billid_seq', 1, false);
          public          postgres    false    228            (           0    0    depatment_departmentid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.depatment_departmentid_seq', 1, false);
          public          postgres    false    215            )           0    0    doctor_doctorid_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.doctor_doctorid_seq', 1, false);
          public          postgres    false    222            *           0    0    medicalrecord_recordid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.medicalrecord_recordid_seq', 1, false);
          public          postgres    false    230            +           0    0    nurse_nurseid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.nurse_nurseid_seq', 1, false);
          public          postgres    false    233            ,           0    0    patient_patientid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.patient_patientid_seq', 1, false);
          public          postgres    false    219            -           0    0    patient_wardid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.patient_wardid_seq', 1, false);
          public          postgres    false    220            .           0    0    ward_wardid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ward_wardid_seq', 1, false);
          public          postgres    false    217            `           2606    16872    accountant accountant_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.accountant
    ADD CONSTRAINT accountant_pkey PRIMARY KEY (accountantid);
 D   ALTER TABLE ONLY public.accountant DROP CONSTRAINT accountant_pkey;
       public            postgres    false    227            b           2606    16879    bill bill_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT bill_pkey PRIMARY KEY (billid);
 8   ALTER TABLE ONLY public.bill DROP CONSTRAINT bill_pkey;
       public            postgres    false    229            T           2606    16773    depatment depatment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.depatment
    ADD CONSTRAINT depatment_pkey PRIMARY KEY (departmentid);
 B   ALTER TABLE ONLY public.depatment DROP CONSTRAINT depatment_pkey;
       public            postgres    false    216            Z           2606    16830    doctor doctor_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT doctor_pkey PRIMARY KEY (doctorid);
 <   ALTER TABLE ONLY public.doctor DROP CONSTRAINT doctor_pkey;
       public            postgres    false    223            \           2606    16840 0   doctorwritetestreport doctorwritetestreport_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.doctorwritetestreport
    ADD CONSTRAINT doctorwritetestreport_pkey PRIMARY KEY (docid, patid);
 Z   ALTER TABLE ONLY public.doctorwritetestreport DROP CONSTRAINT doctorwritetestreport_pkey;
       public            postgres    false    224    224            d           2606    16896     medicalrecord medicalrecord_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.medicalrecord
    ADD CONSTRAINT medicalrecord_pkey PRIMARY KEY (recordid);
 J   ALTER TABLE ONLY public.medicalrecord DROP CONSTRAINT medicalrecord_pkey;
       public            postgres    false    231            f           2606    16916    nurse nurse_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.nurse
    ADD CONSTRAINT nurse_pkey PRIMARY KEY (nurseid);
 :   ALTER TABLE ONLY public.nurse DROP CONSTRAINT nurse_pkey;
       public            postgres    false    234            X           2606    16809    patient patient_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (patientid);
 >   ALTER TABLE ONLY public.patient DROP CONSTRAINT patient_pkey;
       public            postgres    false    221            ^           2606    16860 .   testreporttreatments testreporttreatments_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.testreporttreatments
    ADD CONSTRAINT testreporttreatments_pkey PRIMARY KEY (docid, patid);
 X   ALTER TABLE ONLY public.testreporttreatments DROP CONSTRAINT testreporttreatments_pkey;
       public            postgres    false    225    225            V           2606    16795    ward ward_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ward
    ADD CONSTRAINT ward_pkey PRIMARY KEY (wardid);
 8   ALTER TABLE ONLY public.ward DROP CONSTRAINT ward_pkey;
       public            postgres    false    218            m           2606    16885    bill fk_bill_accountant    FK CONSTRAINT     �   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT fk_bill_accountant FOREIGN KEY (accid) REFERENCES public.accountant(accountantid);
 A   ALTER TABLE ONLY public.bill DROP CONSTRAINT fk_bill_accountant;
       public          postgres    false    4704    227    229            n           2606    16880    bill fk_bill_patient    FK CONSTRAINT     z   ALTER TABLE ONLY public.bill
    ADD CONSTRAINT fk_bill_patient FOREIGN KEY (patid) REFERENCES public.patient(patientid);
 >   ALTER TABLE ONLY public.bill DROP CONSTRAINT fk_bill_patient;
       public          postgres    false    229    4696    221            i           2606    16831    doctor fk_doctor    FK CONSTRAINT     {   ALTER TABLE ONLY public.doctor
    ADD CONSTRAINT fk_doctor FOREIGN KEY (depid) REFERENCES public.depatment(departmentid);
 :   ALTER TABLE ONLY public.doctor DROP CONSTRAINT fk_doctor;
       public          postgres    false    223    216    4692            l           2606    16861 $   testreporttreatments fk_doctor__test    FK CONSTRAINT     �   ALTER TABLE ONLY public.testreporttreatments
    ADD CONSTRAINT fk_doctor__test FOREIGN KEY (docid, patid) REFERENCES public.doctorwritetestreport(docid, patid);
 N   ALTER TABLE ONLY public.testreporttreatments DROP CONSTRAINT fk_doctor__test;
       public          postgres    false    224    225    224    4700    225            j           2606    16841 $   doctorwritetestreport fk_doctor_test    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctorwritetestreport
    ADD CONSTRAINT fk_doctor_test FOREIGN KEY (docid) REFERENCES public.doctor(doctorid);
 N   ALTER TABLE ONLY public.doctorwritetestreport DROP CONSTRAINT fk_doctor_test;
       public          postgres    false    224    223    4698            h           2606    16810    patient fk_patient    FK CONSTRAINT     s   ALTER TABLE ONLY public.patient
    ADD CONSTRAINT fk_patient FOREIGN KEY (wardid) REFERENCES public.ward(wardid);
 <   ALTER TABLE ONLY public.patient DROP CONSTRAINT fk_patient;
       public          postgres    false    4694    221    218            k           2606    16846 %   doctorwritetestreport fk_patient_test    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctorwritetestreport
    ADD CONSTRAINT fk_patient_test FOREIGN KEY (patid) REFERENCES public.patient(patientid);
 O   ALTER TABLE ONLY public.doctorwritetestreport DROP CONSTRAINT fk_patient_test;
       public          postgres    false    224    221    4696            o           2606    16897    medicalrecord fk_record    FK CONSTRAINT     }   ALTER TABLE ONLY public.medicalrecord
    ADD CONSTRAINT fk_record FOREIGN KEY (patid) REFERENCES public.patient(patientid);
 A   ALTER TABLE ONLY public.medicalrecord DROP CONSTRAINT fk_record;
       public          postgres    false    221    231    4696            q           2606    16917    nurse fk_supervisor    FK CONSTRAINT     }   ALTER TABLE ONLY public.nurse
    ADD CONSTRAINT fk_supervisor FOREIGN KEY (supervisor_id) REFERENCES public.nurse(nurseid);
 =   ALTER TABLE ONLY public.nurse DROP CONSTRAINT fk_supervisor;
       public          postgres    false    234    4710    234            p           2606    16905    recordtreatment fk_treatment    FK CONSTRAINT     �   ALTER TABLE ONLY public.recordtreatment
    ADD CONSTRAINT fk_treatment FOREIGN KEY (recid) REFERENCES public.medicalrecord(recordid);
 F   ALTER TABLE ONLY public.recordtreatment DROP CONSTRAINT fk_treatment;
       public          postgres    false    4708    231    232            g           2606    16796    ward fk_ward    FK CONSTRAINT     }   ALTER TABLE ONLY public.ward
    ADD CONSTRAINT fk_ward FOREIGN KEY (depatmentno) REFERENCES public.depatment(departmentid);
 6   ALTER TABLE ONLY public.ward DROP CONSTRAINT fk_ward;
       public          postgres    false    4692    216    218            r           2606    16922    nurse fk_ward    FK CONSTRAINT     n   ALTER TABLE ONLY public.nurse
    ADD CONSTRAINT fk_ward FOREIGN KEY (wardid) REFERENCES public.ward(wardid);
 7   ALTER TABLE ONLY public.nurse DROP CONSTRAINT fk_ward;
       public          postgres    false    234    4694    218               g   x���1@0���)�@^��f�E��J��$���ŷ�5�ƲQI���
�e�(q߰�%��j8Ye�Ы�w=d�g��tp[�w+:�>�s��s�R)uB.E            x������ � �         2   x�3�.-JO��L�,*.Qp���/�2��HM,*�,NM��K�
��qqq p��      
      x������ � �            x������ � �            x������ � �            x������ � �         S   x�3�L��MM�42�40442475610���4��K,.Rp�,��tN�,����� 1��8Ss�&�4��	1z\\\ p��            x������ � �            x������ � �            x�3�44 #.#NCS2����� ,G     