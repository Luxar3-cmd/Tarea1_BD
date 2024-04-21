PGDMP  5    3                |            TAREA1BD    16.2    16.2 +               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            "           1262    16531    TAREA1BD    DATABASE     �   CREATE DATABASE "TAREA1BD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "TAREA1BD";
                postgres    false            �            1259    16544    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    16543    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16560    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    16538    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    16537    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16550    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16549    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16587    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    16586     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16576    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    16575 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16598    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    16597 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    16544    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   �5                 0    16560    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   V=                 0    16538    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   �C                 0    16550    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   CK                 0    16587    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   �a                 0    16576    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   Db                 0    16598    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   c       #           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            $           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            %           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            &           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 25, true);
          public          postgres    false    224            '           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 34, true);
          public          postgres    false    222            (           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 29, true);
          public          postgres    false    226            t           2606    16564 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    221    221            p           2606    16548    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    16542    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    16554    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            x           2606    16591 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            v           2606    16580 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            z           2606    16602 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            |           2606    16565 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    221    218    4720            }           2606    16570 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    221    4722    220            {           2606    16555 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    216    4718    220                       2606    16592 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    225    4720    218            ~           2606    16581 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    223    216    4718            �           2606    16603 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    227    4722    220               �  x�mW�r�8=_�/�"H��щ��v�쩹�"a�%!EM⯟��(W�Q	4��F���`u��L�N����S�`����t=�g�j^����˜���gV�\��;�4��լ(�bot�;�]ڍ�#S�W�Z���W�53�-��Yg�}z܍8��{�ӝ�d�u�0�adB��v?Y,��{M��]�A?��颧�a��B��'ԝ}4���@��(����-�gJpQ�S���Iv7?�)��#+�b��ƙ���8<�뜋���O���v�c*Z�q��bt	U������4=���\��\ovX����vy�Y&��}�����gVH^�x�oz`Uŋ�}�{���~|�i�r^�i�s�]pg�A�^H��v;��8�ͤ�y��[����0�Y␊}F�V^ag�F�:�z���o����Movهq�1cŋ6\�l��<�	�0��2g7�T7l&^b0��g=l�1;���Ux�`���w�qgQ{��4ߌ2�Lw�u���J�����M��L8�{ӆ`3QQ�fP/y��uj���m�-=�VT\��F& &R���}vu ViY�xw���7@?aA��n��!�f�^��Kɾ-�����
[�vrw�����b_mOy�����F�v�v��3�pl^�k@�l�g��i%D�s�B���zJ�S=�!��'�P����xUɾk�w�����'R쬷@m:�R\UI0���eU�lw��@�-J��jؕ��K@�"��ҽ^�~@om�D������
�����M*xU���бJ�.3����Ž��t�6P�*��MI�N�x��9&[<�jC�?�i�
p�:OH���Z֎��{b��L���zg���S$Heɮm���ejj�䵊x����vB%x�b_p ]���u�W,B������M��nم��!�/��Q��/A�̃)^��yS8i����^�!�k��n%.)�H���*Z�(_OB�\��x�>45�0�vg��͂���� mњ��ɢve�^��bW�~����%J?-S4%t�-�x����t^�A�VF�.�
|��ݏ�����0�VQ�_�頻�Hv��I���O7��ygᇸ��0ܶ�~�Հ�"Ori����à�"	���ܳ`W���bEOB����݂�����?�\��L�:N�9�QG�t�6I�<�]�m��c��������8X|�G����"h��AK%sF��Px�Ygx�)�1L���lb( &��R>E��n%> !���'��T@������{^�"",xI����N����cmw?y�,]�����R�-���X����w�J}���<�������w��q�#�-�X|�Y!{)ZnT<+Q����G�	C��=�=w���)��>'� ���C���`����EA�E�V�~wX�O+� 9FE3�������=؆2�Xù����)NPf��{�Y� (/d�(B��}�)��5��� ="������W�8�}@rȁN/�-�*�>(�Z<:��	;�߅[���yHD�K��}'!����A�o/!(Q�Z!�e�(�w���r�;�������C$�&����=�+��*b�8jZ�����Ք�T��菵#�wd�w䕤�4i=xn"�κ�`|��P�P��{�q�9��h�AP�X!���lM���/")$ӳʂ��-e*BT�4l�bAP�A+�ExARpn�\�(������Z1D��R{�~���:Rj�����	�s)�A�"}v��7�C���8ʹ�h����'*�Y�[x��@b���BXMR�����_r�p��� ����6�F��"9\,�^�cwj_|�F��+R��Ms۔)AǏ�H�A	ɻڗrA D�pA 5�A��Ľڤ��R��#�'����D�ݐy���_��� Qj��         >  x�=�[�$9C�Ë�c�{/��u��Ț����!	jƷ_����-㻽���kw-������r�v�{��Ѣ�/n{�v��/��|q��e�������[�u���bΖ��r�f�xϗ#�ԙq�N���t�����=� �u����b(b�<zN7r4�.m)�S%O�7[vU7��L�E�M�k)/U��ͺ � z���"g��u̻��w��_�l� ۇR���)]��m�o�d�o���_Y�Q�
�%4��ݎP�r]r�@Ҹ����S���� ���T��ˆ��BJ�
a^ m#�t��� �SK��$HP��#�^g��'���#�n'�ߡ-��k[`��n��{�0��,����7�.S� 2���PT�'p�Itr(%Z���g�5v��껸���i�ZKe*��髹��w�Q��Cr(��\EƀU��8��'�� 9u�^w��XJ���%��*�_߷G`j����$
���BB�uM��XfG�f�����c�d��p�U��h>w␑J%O�*�:��\0����1\T�.=��$i|���m�w�k��16�����[����p�=���l*����I�:����!Ԣ�\:�lKu�A�{?�˧�� �i""� �L���>� ���pI�W�\
�F�j�/M�3Y�R�vU��OՊ�{��w~B|X���M���e?��������ߝ�N.z�V)�^�`a��R�e݂�s�tǩA����M�/]��]�RX��Rl�
ƒ'(=��Њb��C)D�ӏ���$�g��,�ԃ��,9d9acG@j���c�ް�����y�Y�[���)	��ީZ����E/uˀ:�5n'*��$����I�IA7�'�����F�����L�Q��T�8�,���Nkە��ҶM4���$RD��6aY�$��_n���T:f�4�P��Yߤ"�B@�ri&AP12W�3ڟ�I,��$9���vQ2A�}U�v�OS�ط�&��4v2��&�e<�WO9 F����UL�7�WF)^�S7D�tR���"=.m븻��;0��^{��e"�X|���*ʣ��)Dg����L�μǍt}Y��f��Z�,��d֥��|M(��1�(�E�eQ�=��E��|���8� ~o5�5vs�6��� ���,AʛY�n7p�XrT(���\dZP��_}�@�E�r��o��� !2>H������ë����h;�W�*V�7�Wm��U0�j'
Hc�&0Df�
���0-p_���� A����8���':@��g԰�˛�D�R�c$��ۏ�
aw	���!��M�(\@ͽ�vP5e'��^���T1� �1Mg�3O����.O%��,+�Q4�E�RgV��^Lo�8�@جz�Q!-��bH(��, ���빺�K���[���*" ���!,����R��S^���Q����o3`�K�����n�y��1�,�ž{Kz�̥4����m�P��F���LI䙵���Gմ�&7º�bu|�\D-ǷQ?�P��4aX�,�c����ʑ�W�k�z֜Z6���_����������'��6�8�����7�]�� "���1�G;����b�ʱ���?=D��i���$x         �  x�mWKv�6\��	�$��lْl˲˶���4�?	��ĺMΒ��?��htwuUQ�/z��M���/ؽ>v�����i���y�^����>Z=2Us��������#S�Wi���J�k��~Zg�}2=]��&�x���Ts������c�2v�L6�e_�`��ڌ;l����}ֽ��;3N�,��n{��k3��tYsQ�k��i�g�cg'V�\�)�;�T\H���e��ًi�#P�}�b���E�������ޚ��Ӕ���>���a7��3��β��B��zguvi�����gִ\�����^Lxn�X%/�����7��m�Tw�Z�.
v;�V�R�<}�K=u�!W�P�����@�h
^T�f���x�ĕ5��J,FѰw����/
�����؝�m�hK��x�;��ac)����%0Tڲ`7�G���a1G�/K��ͤ�X��j�Kz��t*K�U���*�ꖗux��qX��MDO��)y�ث�����-{���gVU\��|� C���WD5���$�������,�,�^��3S���ꅞ��M������Y�3�?�q7O�7�;jC�5�@0|l�|��I-+�V���~�τmٲ���ξ�53S%�r��fz��g�vX	�do���}`J�`o��K��B*7�b��M�d����MӀ�����K3�x!�שKa�P�j�{dW��2~��eP8����-�_ф�Ԃ�p^���pT�/� ۳��� 	�|]���;M��Rkx]�&�eG�Zj��x~�P��j{�B�O���@"Jk؅��=d_�`���vN/�Z^���w�~��&g�i�3��o�Gd�HU�`�a��)��3�����M�ΞP�p�k$�Շ���$�LMZ{��Mx�	�(J" �i��1�5*��|E\��h�ۣ��&�^�쎨�D��1W"=�ઈ1S
(���7a��2�ȮC��?�DU�o�L��U�6�8�_�  T\)b�}*<��@�d�i���08�v+<��^`X��T��\�[��j���G;Q��*n�f-yK�,dz�3u/��d>q#�qW���n��aPD���o��N���\�O�T�i2N�s/�ҟ�J��|�tT��z��=�/��!i��88�Z<Q�M���wR�\�n��W���bAL���j�}�>��~m��,���hD�T�;!=�ka&�- ��m���3�f�!��ݠP��s5=X��i��	��̼L[�1E���E H��+<=P�1P� �@T
q ������ۈ�\�5j���4��O��G�e�,L���0*d���H���>P���� �x��ՙH�����������O�_���y=���'h��K���(=Fpg�L��>8�8��8�F�+
���N���<����&U@�c ok�
'��=���`�m������a'��h#�W�_z�G�r^�r�OC��h9"��M��g&ѬC��zx�BYB�O �s���7�+��G�F��|������;�8R���-�qFq�p ������
�?�:�f�[����uA$�n�9\�>'�ʕJ���<2�?Vys�P	��-�f> ��7���Q���j���7�V�Kn�gLRGG�,UG��B�\����`���ｅ�fh��85:�����b(O<��]�0~�:�~
؁oz�
�0������!Cp��/O�=���� �XT"I�UDBr�7�f�jW8����!D`�w�a��q��a~�R�a�>=�Ct%S{�8St��� �𽄔`�'.�G�π�m�N��xl�@t����
�)��vk����Kk7ܝXM�m��#)K$�>�v!H��Wg��N�&"��@�1En�S���~_������6���Y���p����_���?            x��\���8r�ɧ�h� hn�V֞#)B�v���b��C7o��g\�wn���$�����D�_~�US�:?���mZ��<�ǧq~:˭��c���סR��T���}nL�+������ey����GY�6�ޗ�O�p�eFW�Q�Y)XY��+\vo���:]&�y�p��q�տ/��<�6��Y��F�mŧ�ߖ}��۲.i�v�Uk�����%�xN�N����紕����36p��иGw{Yn��՟���?8̕R�����?���4\�����p����C���.k�[���n�6���������t�>�y���?S����6^oc�О�����{����4��2���o�����>�Wx�e��c�Z5������c�}�}x�MW0���^��^���ۣqqy��l�Te�C�O����J����V����
���ַ�A<�V�~��2�G�B��2��x��NS���2�.K���e��`Yk�	��ݳ���U��M���pf���SyP~G��Sl�[�Ko��<Ȳ��6�'4˟���q ��!<���mK��9����� ��7dW�Ύ|�\m]�n�9�rB�Oߦ��(�`_��ᢾ�7�_x]����i[���cȪ=��y�(A3��/��2Ȏ��5�n*�m\ ����5�&0tNX�(��ӧ[�� 6�]��ͣx�&�5p��M$���
͡�6�=nw�=dw��1�r��Z���q��:���g�ǿ�@/x�iK�~�k�-�,��$��؇�@�*9���0��Q>  �U��-��u(�"�m��)4��������5�Q�!�Pٵͳ����Ed��D�)}ˎx�u�b�S��#X"�0�f�La�6ő�����5��  =ߞ��0��Gpj�R����/p��Ѿ���ӏL�	�C�h_�������o��v���P �س�6piw�P���s�2@A�@���گ��+��Q�Ad;J��61E��ǟ�y�{j����]m\���߄���i�w�*�k�O�!l[���[j8p//2�,_�W �䪚¢�g�b���V��mq�I#xAG����'��i�g�K�oD��&vVn�Xg���@��?�e�����-�Fx�@eW���{����� 濄����D��붭`��i�P�%�)��1e�<,?�O]��&%XJ1�"Y�mm��[�����ň�]�:t��ߗ�l�H�lF�U����jO�-jDڻt#��?��r+�f�\�����l���kr�B�8-��tq�?e'ʼp$
�3���.�m1�r�f��u�8Ed"�u���
Ik �q����E&M�H�� �;�e},�0�qM�5�\��\��
��u�6��7�E)Myz-��]G�K�{F��>
��qK��&|ې���H�^瑥C����4�(�����i���awC�Y��ѨH�n��!~�¡��<
#���a~�#�B���YI�Ĉ /<=���0gіѱ�6"L����9���]��(~�/�����T���+dЬ�B�A���R��,�k�
���@@t=�3���i��6A���Gy�Ŕ�e!WX&>��b�Ё��Ot�/�;շ���Q��ל�7C�'�e�*u{~���,���3��*,�8*u��O��v�cʳ=e���Rd��#y���5��Ƀ�O���؜���X�a�2bfXs*J�e�d7~tk(���xY�9�8V"��b�"�@YD��G\�6Bp����^pL�{�VL�
�@�H1Z|F!l9�}�A蚠��G�^���8���қk#ZC��T����_ʂ#;$���`1� �ȋok�� �D�t�1϶�`�2� ���۰���&+��(T�0��,��}���(��K�����."�/�F�W �"�T��U~����u(�3�"���mB182��E�ȊA~O'�r�IkJ`���}���v �UsP�����1a;��.O(�JwS1D�y0p�A��!@7�m��pST����1f�x�"���hP���# L��)�]\P�
�Dʲ�p�=p�TG�nG�T5T�ݑ�D�-1��2i���*��Y���
��Kl#�c�O��R^"ѧ��5.��-UG��~�ݝ���Bw��,J��\P1�s�4�L�dqx-�ζ} 2R��}�9�M�JGP�.��r����<�Zv�7�lBIH��1���_�'���9�!��v�5���o�<^'ڌ ��s(?��~��k��p^��)�JJoH��&Қ�g�`H%t}�ַ1�Tv̗ɝ`���$=�ȍ0�5B��_>og�ֽQ�`J���SLb�<��I�������	����2z����Ωl9O�1�*��7?��~��c�U�5�K{��5<�N�眓��{���>���R����2(�y+%!�
���j?�no��w���[
T�]����;�0l��lHD�������2L�J4y#�C���Mm� 럌Z;��ڔ�XAlH�ӝ��*�J$ fT˵���k"��;�
�ۖ؜hc�Z]Ä���lZ����\�O�3��؍Y�!=�ىkQO	����m��0םqs_f|���,�vT��QQ5crL�	��Fa+B[��"�ц�BL���V	�c:�Ǝe��7��@�M��Lp,
���ى����赕�̢zA��mu`�"�8�y�<Xn\a��~�w︐���VI/ s��D��y������
�	�HҶ��x�s-u��x�Ύ�g�ŭ��!c��}rY�dxY�],ǧ$��^.ו������Sd$��(�B�dZ�a��][�y�\	`*�V�>�7=9�	5}Q	��|�3� ��^v�j�_8`rp[摊� ���M<"��}nKx�᳴�X�AP���l�F���i����mOs����ʵ���+$�[�f)N���U]�I��e/��� p��K�e�9��1!Zj֐*Iާ ���u��G�I\�P?��vd�;�-	z��EHǔ�w�0�ڌ�vȢ������K*+Ob�6�(��V�����4��%��1.*]"�)k��<E�3����e�z+w�Qg��A��Z�W���zh躨T��Ŵ[ʝ~Cx��h�*��_��%-���$�8V� Һ B�
�\>&�V����G����/wl�l��L��֒�9V�_�8<�}��GVZ�N���pJ�n_˔�m������D���BJ�|��tƠ9��!,�����.��΅S^ f¹�#�}�E#b_G��j����;��#��N4$4�s�K�8��S��%ca�dIZ��n���o��V6d�g��VI38���N ���k�[]q..x\�_1��:[�6�͇|���A�G}5,�5�"`�<����gc'a@��H@�����4Oo�p�9�F�*�J���Ms��\�l�cukpl�U��Y�"i8oD1�v|V8��I	&G����X�!HG�Z��1�[�J#%2npi���)7Qn�ع���@:Mͥ��9��XE	��v���Q֬<��ñ��%�t��%��� O"�ܫ\Y$�s�����{,�Ί �C"�0��a�PZ	��:2S�h���T	W[Y�BE:�n�:6��6!��v�gH��2���o��F�A2g��Ծd��|]�៥Ҡ>1l���v{�ֲK�I���Mw#�5�A�ө������.�>�!�����VG�Y��� �iE.��E��פ����ǃ2�:�PF*�����?G11��o�����ñ�1���I�xR�w���c��	+�i����씗z��ŉ��A���q��M�em�=ƍ���'ciQ�0�:X*Z_j������eX'A��$R�q0�Gճ.�k��pu��p��Y� j@�a��b��5Z#"3l�ض���d*x��$�2$]����6~�|��GFF�m������Z3\PWv�a��>�X!}e0Ί��!�xT�`<�Ճi(�C�>O*ώ�	)�=��h�J��Y�Ӳ��7i��X#�iR��h�<�H��P)1zR�h H  Ե���K��H:I"��ȫێ�d΂�Y!(��^����_���w񉌩V؅FI[vOUx上聧��:�Z��W\�)��⤙��5�_1�}O�ױO�F����19���R�&�1�L$h��,Y�<�J�L&W�n�җ4�E.���(H�gg#��q���&$�ts)ciE�㦕��R���74Oc�����k�}�@�ͭ0��x�����oE����:�f(��f$��4F��vۥ9)�S�&�q������t�e7�<d��Z��k��ז�?Ԙ2Z�=v�痣qLΉ`��a�rE:��sK)�Ǡn�u)�� 
�Vt#�O
�J�ً��n�1�~Gp���B]�5���l�&f ���<��#�=�����4�&�����?��Ğ<����'-�fԑ�$���h���b~֚[m��5Fޔ �Ho\��ΏX�.�'$��~pLn/���|"�l�pw���D���G��aH!�e���am��GNt�L�WF�su݁\�E*�CR�8L���r��p9l Y���Ն���r4��!�D ��6��9g�i��RDcE�p��O~�9[�;��%D���i�lgqVSt����O��P�䣆q\��QT���+�T�m����G��Ug6"Ҙ���lN�20�њ��&eH��>����T6�v'�f<}��E��:a��]�8�SN�[G^�V�����|w��������<�4Ά�L���SKR�X��odB��a�[�xk���S��5B9��,i�)96|e�0+��1!up[h�pzf
�FRUX'��Ï�(A2(^��;`YT����f�tc[i{h������0a���p> )��?����_�퀘�N�"���M�.�)�%�H�ECA�Y}͇1�֖�Tf�X����'#ԹP�yYG��樧�m��9��1M�M�~��P�:����kOocYx�F���"M
4"���t(P6M��p�S+@@0��.�%R5�A�@�7�s�_|c�6�!^m;��}�L�2u.ZqE����jI��m77�̊���:��s�� ta�PnE�8���f:��t0�>��܃�6��}�4n&ASA�b��i�F��>J�����/�y������/����gW�ch��D��%�z�.Ω͘�Ҩ�a�J��nw8�2���N�ɾ��#�����N|��?l��;J�P�p���2����PA w�.L	슉����7d�G����&�8>�f�ty[����z���i��_�{O���j+r�/{)-i�W#��ߡNeL�|���;��4Gd9Tky/;N�B���)�y<�d�4T��ͷb��`�^vS�_O��%�׮ǜ7ْ(f2���n��:��

�a����M��
ۋ7���G/#c��ϙXG+����%�﬩��Ё��ۃG�xu+/�)dz%��r\�6�S.�t�@(����X.��/GCF��oE��cD�9h8��e�Y9�X�f�����(	�)ل/��(�I���q ��Nў���"	�iPRɮq.�bN]��l�&0�5NZ���I���"�.�Řf�=��x0�f[�����V����G��         �   x�-��!CϤ�}T��鿎��m�#���DZ���qL��>mK"��D��v`kv!,]t��i�Q	�Ls�B��o��~x4���h�*�Ձ�~�dw�K�;o_���A������Z���m̛-�}���?T,�         �   x�5P��1:K1��L4�e��c���!"c�MT��`/���D%7�`����=BCtp�qOCL����2��L�s��ӆ��v8	V��C�+��ν����<�첝A�JHv�����6Ja7-��#7Q5V
꼴y^�,답�<o��V��70��|/(�L�����K��oэ�;�t�~�\O���? � q<]         �   x�-��� �V1�� z���X9���%���w7hƵ���8��N޸$&��f��E�Pƺ/m#%u\3Gߋ�w"�vsd�o�p�z�,�O�B�W�ݞ�OtcL�L
���	�2g�rP,s|qʙ�F���}���_������)�7T�;��S��&��~ � +g4�     