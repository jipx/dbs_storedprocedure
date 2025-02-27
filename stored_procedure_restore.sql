PGDMP      3        
        |            highgarden_university    16.2    16.2 =               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    18833    highgarden_university    DATABASE     �   CREATE DATABASE highgarden_university WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Singapore.1252';
 %   DROP DATABASE highgarden_university;
                postgres    false            �            1259    18834    country    TABLE     �   CREATE TABLE public.country (
    country_name character varying(30) NOT NULL,
    language character varying(30) NOT NULL,
    region character varying(30) NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    18837    course    TABLE     �   CREATE TABLE public.course (
    crse_code character varying(5) NOT NULL,
    crse_name character varying(100) NOT NULL,
    offered_by character varying(5) NOT NULL,
    crse_fee numeric(7,2) NOT NULL,
    lab_fee numeric(7,2)
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    18840 
   department    TABLE     &  CREATE TABLE public.department (
    dept_code character varying(5) NOT NULL,
    dept_name character varying(100) NOT NULL,
    hod character(4) NOT NULL,
    no_of_staff integer,
    max_staff_strength integer,
    budget numeric(9,2),
    expenditure numeric(9,2),
    hod_appt_date date
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    18843    module    TABLE     �   CREATE TABLE public.module (
    mod_code character varying(10) NOT NULL,
    mod_name character varying(100) NOT NULL,
    credit_unit integer NOT NULL,
    mod_coord character(4)
);
    DROP TABLE public.module;
       public         heap    postgres    false            �            1259    18846    pre_requisite    TABLE     �   CREATE TABLE public.pre_requisite (
    mod_code character varying(10) NOT NULL,
    requisite character varying(10) NOT NULL
);
 !   DROP TABLE public.pre_requisite;
       public         heap    postgres    false            �            1259    18849    staff    TABLE     �  CREATE TABLE public.staff (
    staff_no character(4) NOT NULL,
    staff_name character varying(100) NOT NULL,
    supervisor_staff_no character(4),
    dob date NOT NULL,
    grade character varying(5) NOT NULL,
    marital_status character varying(1) NOT NULL,
    pay numeric(7,2),
    allowance numeric(7,2),
    hourly_rate numeric(7,2),
    gender character(1) NOT NULL,
    citizenship character varying(10) NOT NULL,
    join_yr integer NOT NULL,
    dept_code character varying(5) NOT NULL,
    type_of_employment character varying(2) NOT NULL,
    highest_qln character varying(10) NOT NULL,
    designation character varying(20) NOT NULL
);
    DROP TABLE public.staff;
       public         heap    postgres    false            �            1259    18852    staff_backup    TABLE     �  CREATE TABLE public.staff_backup (
    staff_no character(4) NOT NULL,
    staff_name character varying(100) NOT NULL,
    supervisor character(4),
    dob date NOT NULL,
    grade character varying(5) NOT NULL,
    marital_status character varying(1) NOT NULL,
    pay numeric(7,2),
    allowance numeric(7,2),
    hourly_rate numeric(7,2),
    gender character(1) NOT NULL,
    citizenship character varying(10) NOT NULL,
    join_yr integer NOT NULL,
    dept_code character varying(5) NOT NULL,
    type_of_employment character varying(2) NOT NULL,
    highest_qln character varying(10) NOT NULL,
    designation character varying(20) NOT NULL
);
     DROP TABLE public.staff_backup;
       public         heap    postgres    false            �            1259    18855    staff_dependent    TABLE     �   CREATE TABLE public.staff_dependent (
    staff_no character(4) NOT NULL,
    dependent_name character varying(30) NOT NULL,
    relationship character varying(20) NOT NULL
);
 #   DROP TABLE public.staff_dependent;
       public         heap    postgres    false            �            1259    18858    stud_mod_performance    TABLE     �   CREATE TABLE public.stud_mod_performance (
    adm_no character(4) NOT NULL,
    mod_registered character varying(10) NOT NULL,
    mark integer,
    grade character(2)
);
 (   DROP TABLE public.stud_mod_performance;
       public         heap    postgres    false            �            1259    18861    student    TABLE     o  CREATE TABLE public.student (
    adm_no character(4) NOT NULL,
    stud_name character varying(30) NOT NULL,
    gender character(1) NOT NULL,
    address character varying(100) NOT NULL,
    mobile_phone character(8),
    home_phone character(8),
    dob date NOT NULL,
    nationality character varying(30) NOT NULL,
    crse_code character varying(5) NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    18959    user_account    TABLE     �   CREATE TABLE public.user_account (
    id integer NOT NULL,
    account_no character varying(6) NOT NULL,
    role integer NOT NULL,
    password character varying(255)
);
     DROP TABLE public.user_account;
       public         heap    postgres    false            �            1259    18958    user_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_account_id_seq;
       public          postgres    false    228                       0    0    user_account_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;
          public          postgres    false    227            �            1259    18940 	   user_role    TABLE     d   CREATE TABLE public.user_role (
    id integer NOT NULL,
    name character varying(25) NOT NULL
);
    DROP TABLE public.user_role;
       public         heap    postgres    false            �            1259    18939    user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_role_id_seq;
       public          postgres    false    226                       0    0    user_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_role_id_seq OWNED BY public.user_role.id;
          public          postgres    false    225            H           2604    18962    user_account id    DEFAULT     r   ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);
 >   ALTER TABLE public.user_account ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            G           2604    18943    user_role id    DEFAULT     l   ALTER TABLE ONLY public.user_role ALTER COLUMN id SET DEFAULT nextval('public.user_role_id_seq'::regclass);
 ;   ALTER TABLE public.user_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �          0    18834    country 
   TABLE DATA           A   COPY public.country (country_name, language, region) FROM stdin;
    public          postgres    false    215   P       �          0    18837    course 
   TABLE DATA           U   COPY public.course (crse_code, crse_name, offered_by, crse_fee, lab_fee) FROM stdin;
    public          postgres    false    216   �P       �          0    18840 
   department 
   TABLE DATA           �   COPY public.department (dept_code, dept_name, hod, no_of_staff, max_staff_strength, budget, expenditure, hod_appt_date) FROM stdin;
    public          postgres    false    217   aQ                  0    18843    module 
   TABLE DATA           L   COPY public.module (mod_code, mod_name, credit_unit, mod_coord) FROM stdin;
    public          postgres    false    218   R                 0    18846    pre_requisite 
   TABLE DATA           <   COPY public.pre_requisite (mod_code, requisite) FROM stdin;
    public          postgres    false    219   DS                 0    18849    staff 
   TABLE DATA           �   COPY public.staff (staff_no, staff_name, supervisor_staff_no, dob, grade, marital_status, pay, allowance, hourly_rate, gender, citizenship, join_yr, dept_code, type_of_employment, highest_qln, designation) FROM stdin;
    public          postgres    false    220   �S                 0    18852    staff_backup 
   TABLE DATA           �   COPY public.staff_backup (staff_no, staff_name, supervisor, dob, grade, marital_status, pay, allowance, hourly_rate, gender, citizenship, join_yr, dept_code, type_of_employment, highest_qln, designation) FROM stdin;
    public          postgres    false    221   >V                 0    18855    staff_dependent 
   TABLE DATA           Q   COPY public.staff_dependent (staff_no, dependent_name, relationship) FROM stdin;
    public          postgres    false    222   �X                 0    18858    stud_mod_performance 
   TABLE DATA           S   COPY public.stud_mod_performance (adm_no, mod_registered, mark, grade) FROM stdin;
    public          postgres    false    223   �Y                 0    18861    student 
   TABLE DATA           |   COPY public.student (adm_no, stud_name, gender, address, mobile_phone, home_phone, dob, nationality, crse_code) FROM stdin;
    public          postgres    false    224   �Z       
          0    18959    user_account 
   TABLE DATA           F   COPY public.user_account (id, account_no, role, password) FROM stdin;
    public          postgres    false    228   �\                 0    18940 	   user_role 
   TABLE DATA           -   COPY public.user_role (id, name) FROM stdin;
    public          postgres    false    226   �\                  0    0    user_account_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_account_id_seq', 2, true);
          public          postgres    false    227                       0    0    user_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_role_id_seq', 2, true);
          public          postgres    false    225            J           2606    18865    country country_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_name);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    215            L           2606    18867    course course_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (crse_code);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    216            N           2606    18869    department department_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_code);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    217            P           2606    18871    module module_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.module
    ADD CONSTRAINT module_pkey PRIMARY KEY (mod_code);
 <   ALTER TABLE ONLY public.module DROP CONSTRAINT module_pkey;
       public            postgres    false    218            R           2606    18873     pre_requisite pre_requisite_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.pre_requisite
    ADD CONSTRAINT pre_requisite_pkey PRIMARY KEY (mod_code, requisite);
 J   ALTER TABLE ONLY public.pre_requisite DROP CONSTRAINT pre_requisite_pkey;
       public            postgres    false    219    219            V           2606    18875    staff_backup staff_backup_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.staff_backup
    ADD CONSTRAINT staff_backup_pkey PRIMARY KEY (staff_no);
 H   ALTER TABLE ONLY public.staff_backup DROP CONSTRAINT staff_backup_pkey;
       public            postgres    false    221            X           2606    18877 $   staff_dependent staff_dependent_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.staff_dependent
    ADD CONSTRAINT staff_dependent_pkey PRIMARY KEY (staff_no, dependent_name);
 N   ALTER TABLE ONLY public.staff_dependent DROP CONSTRAINT staff_dependent_pkey;
       public            postgres    false    222    222            T           2606    18879    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_no);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    220            Z           2606    18881 .   stud_mod_performance stud_mod_performance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.stud_mod_performance
    ADD CONSTRAINT stud_mod_performance_pkey PRIMARY KEY (adm_no, mod_registered);
 X   ALTER TABLE ONLY public.stud_mod_performance DROP CONSTRAINT stud_mod_performance_pkey;
       public            postgres    false    223    223            \           2606    18883    student student_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (adm_no);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    224            `           2606    18964    user_account user_account_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pkey;
       public            postgres    false    228            ^           2606    18945    user_role user_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_role
    ADD CONSTRAINT user_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_role DROP CONSTRAINT user_role_pkey;
       public            postgres    false    226            a           2606    18884    course course_offered_by_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_offered_by_fk FOREIGN KEY (offered_by) REFERENCES public.department(dept_code);
 E   ALTER TABLE ONLY public.course DROP CONSTRAINT course_offered_by_fk;
       public          postgres    false    216    4686    217            b           2606    18889    department dept_hod_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.department
    ADD CONSTRAINT dept_hod_fk FOREIGN KEY (hod) REFERENCES public.staff(staff_no);
 @   ALTER TABLE ONLY public.department DROP CONSTRAINT dept_hod_fk;
       public          postgres    false    220    217    4692            l           2606    18965    user_account fk_account_no    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT fk_account_no FOREIGN KEY (account_no) REFERENCES public.staff(staff_no);
 D   ALTER TABLE ONLY public.user_account DROP CONSTRAINT fk_account_no;
       public          postgres    false    220    4692    228            m           2606    18970    user_account fk_role    FK CONSTRAINT     t   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT fk_role FOREIGN KEY (role) REFERENCES public.user_role(id);
 >   ALTER TABLE ONLY public.user_account DROP CONSTRAINT fk_role;
       public          postgres    false    4702    228    226            c           2606    18894    module mod_mod_coord_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.module
    ADD CONSTRAINT mod_mod_coord_fk FOREIGN KEY (mod_coord) REFERENCES public.staff(staff_no);
 A   ALTER TABLE ONLY public.module DROP CONSTRAINT mod_mod_coord_fk;
       public          postgres    false    4692    220    218            d           2606    18899 '   pre_requisite pre_requisite_mod_code_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_requisite
    ADD CONSTRAINT pre_requisite_mod_code_fk FOREIGN KEY (mod_code) REFERENCES public.module(mod_code);
 Q   ALTER TABLE ONLY public.pre_requisite DROP CONSTRAINT pre_requisite_mod_code_fk;
       public          postgres    false    218    219    4688            e           2606    18904 (   pre_requisite pre_requisite_requisite_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pre_requisite
    ADD CONSTRAINT pre_requisite_requisite_fk FOREIGN KEY (requisite) REFERENCES public.module(mod_code);
 R   ALTER TABLE ONLY public.pre_requisite DROP CONSTRAINT pre_requisite_requisite_fk;
       public          postgres    false    219    218    4688            g           2606    18909 +   staff_dependent staff_dependent_staff_no_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff_dependent
    ADD CONSTRAINT staff_dependent_staff_no_fk FOREIGN KEY (staff_no) REFERENCES public.staff(staff_no);
 U   ALTER TABLE ONLY public.staff_dependent DROP CONSTRAINT staff_dependent_staff_no_fk;
       public          postgres    false    220    4692    222            f           2606    18914    staff staff_dept_code_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_dept_code_fk FOREIGN KEY (dept_code) REFERENCES public.department(dept_code);
 B   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_dept_code_fk;
       public          postgres    false    220    4686    217            h           2606    18919 5   stud_mod_performance stud_mod_performance_adm_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stud_mod_performance
    ADD CONSTRAINT stud_mod_performance_adm_no_fkey FOREIGN KEY (adm_no) REFERENCES public.student(adm_no);
 _   ALTER TABLE ONLY public.stud_mod_performance DROP CONSTRAINT stud_mod_performance_adm_no_fkey;
       public          postgres    false    223    224    4700            i           2606    18924 =   stud_mod_performance stud_mod_performance_mod_registered_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.stud_mod_performance
    ADD CONSTRAINT stud_mod_performance_mod_registered_fkey FOREIGN KEY (mod_registered) REFERENCES public.module(mod_code);
 g   ALTER TABLE ONLY public.stud_mod_performance DROP CONSTRAINT stud_mod_performance_mod_registered_fkey;
       public          postgres    false    218    4688    223            j           2606    18929    student student_crse_code_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_crse_code_fk FOREIGN KEY (crse_code) REFERENCES public.course(crse_code);
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_crse_code_fk;
       public          postgres    false    224    216    4684            k           2606    18934    student student_nationality_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_nationality_fk FOREIGN KEY (nationality) REFERENCES public.country(country_name);
 H   ALTER TABLE ONLY public.student DROP CONSTRAINT student_nationality_fk;
       public          postgres    false    215    4682    224            �   t   x�U�1
�0Eg�9A�L�!d��.bl�#��Pz�*�P�<O�䕱E�=��nV����o0�Ơ������tS�,(���-�V��C�h�T�e��ֳ��!�d�K,={��&�6�      �   �   x�}ν�0�}�>�Q�	�0�T�z�rK(��ؒ��q����92DBgl� KF��c�i���")sqN�+�Y�5���a9>l�΢vq^E��?k6���J]����HqK�)$���R�����膉��Tf
�3����ŦŖ��]�N�cC�
d����3�{w��V��OLe�      �   �   x�Mα�0���lN%W,�]�H��bh�����{�H���[���M	�x?%~LJ�\ַ��`�5R�� �m�G�Q0[x�7!D�@+���Z�m�(.0궁����-��h�����\���xR���"U��'9�f��)
w�լKc_?�9u          #  x�m��n�0E��W�T�%ҥ��
R �Al�3������/I��Ԯ�d�)��=@bW�2h�!���@^�=F�%�_�Y���7:Y�)�4^[����ⵇ�oϦ�
y��x������X�
M��u���%�0�|�
�e�;��N�_��ӈ� ��j7dO� I��aYZ!W���q@�����I���,��>j�1]L�Y`8��f����Zߧ�,%���D��`�v���h�����U����;rTG���^�Ĝlp�ѭ~��Vi�@)�R;��         E   x�s��t��bN'_�+ ��v	�r�ȸ@�`G�
��5�� )���.\@6Di� ~?e         �  x�u�Ko�0�ח_�He�8�%�i�d��H���"V�&� ����^�y0�����s�o���5gcx*Y�x 8l9d��=1�1���ȍ�TǺѸ<� [¦�ݡ��i��\7��`��Ґ��K�#nQ9^<¾"Q�ʄu�E���>^���1y˃j*}��a�y�$lj�I�Q�� S��>§~Y�=�� �����{G��	�@�R�X���Dt�����H5��>kU[º4�z�'��`;����߽�B�/e	������FY��a�i���"�Y#xA��r~�a?L�[�QE�>�ё/�#���f��=�Q�����P�xJN`�ނ�W>�����z�횗W�F��W	.v/�l����!�n�wi4����T>��U�]�KT�a��{i����X\�貕�݉c�z������r��A�Jْ����o��K�eH#��K
�\��=�1�k�9}���.�k�1�|q,�m��hB�P��69�����&؂�1�?����N����b��a�����n�cx
�J+[7�f;M�I�JP������X��Unm��S���? {\e� ��i��3T��WKY?T��awo���5���QUw��/��,��8D^#$��+��y���a�����d�k9z�         �  x�u�Ko�0�ח_�He�8�%�i�d��H���"V�&� ����^�y0�����s�o���5gcx*Y�x 8l9d��=1�1���ȍ�TǺѸ<� [¦�ݡ��i��\7��`��Ґ��K�#nQ9^<¾"Q�ʄu�E���>^���1y˃j*}��a�y�$lj�I�Q�� S��>§~Y�=�� �����{G��	�@�R�X���Dt�����H5��>kU[º4�z�'��`;����߽�B�/e	������FY��a�i���"�Y#xA��r~�a?L�[�QE�>�ё/�#���f��=�Q�����P�xJN`�ނ�W>�����z�횗W�F��W	.v/�l����!�n�wi4����T>��U�]�KT�a��{i����X\�貕�݉c�z������r��A�Jْ����o��K�eH#��K
�\��=�1�k�9}���.�k�1�|q,�m��hB�P��69�����&؂�1�?����N����b��a�����n�cx
�J+[7�f;M�I�JP������X��Unm��S���? {\e� ��i��3T��WKY?T��awo���5���QUw��/��,��8D^#$��+��y���a�����d�k9z�         �   x�e��
�PF�s��'�k%�7"$#0Ƞ�M'��·�j�V�3ߜo�@��[�&��j]c)���X>\�ob��w`>�u���c�pF������U�����j����	���Ζ�ǌ"Rc�O�sM����/ò�q���=��K�U��+Kt��9)͔R�CS=��}!�xf�         �   x�]�1n�0Eg���,��(GI� 	�:E����IZE3>�}�5��� 8�C5\�#ԃ��U/���6�}�q������AmF_��f�d܄�	���c���ud{z��a�1��iA�C},6f+��<}�e{���)��2�}�� �θ��f�0Fߌ�O"�a9��,�k﵊�����7�${3�~4�Rg����h>��ӛ����uy��vTK��a�Iwh         �  x�M�ˎ�@E��W�t���ҀFC#�F#ͦ�[�iG�L�ߧچ���M���TU�q�r:Dx.,Y�㯘�D��H|����9�4���.�c��v����bL@�S"�����٥@v}cR
FY�����(��؄s�]R��|�)ؤS�X��k�}^kc�`���{�1X4)�G$�1�	#9G+�Qm&?�P����?j1A�4HUU�a`��!���̻T㓣��E��q�{X�z�P���+�oن[ې��+����Y�{%O�����lc;�dه|D��-	�H%��XN�l!FgT�)i�+ ��%Y�_�#������i��I�D�0������� E���p#��(�;�<�QںqI�p0�# �eU x}�����ƒ�����ĭ`�#�>n).��G���!0GN�bW������|����8�h�2vz��&�s�����6���F��      
   [   x�3�600�4�T1JR14P�w5,*�2.7M�p3�0�K�6�vsI76�)�u�N,����2q�t��2�b�iH�)1z\\\ A�(h            x�3�v�2�tt�������� ,>�     