PGDMP         1        
        y            agricola    13.2    13.2 h    J           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            K           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            L           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            M           1262    16400    agricola    DATABASE     l   CREATE DATABASE agricola WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE agricola;
                postgres    false            �            1259    31562    administrador    TABLE     }   CREATE TABLE public.administrador (
    adm_id character varying(60) NOT NULL,
    adm_ema character varying(60) NOT NULL
);
 !   DROP TABLE public.administrador;
       public         heap    postgres    false            �            1259    31604    cultivo    TABLE       CREATE TABLE public.cultivo (
    cul_id integer NOT NULL,
    cul_nom character varying(60) NOT NULL,
    cul_ini date DEFAULT CURRENT_TIMESTAMP,
    cul_fin date,
    cul_cant integer NOT NULL,
    cul_lot_id integer NOT NULL,
    cul_tip_id integer NOT NULL
);
    DROP TABLE public.cultivo;
       public         heap    postgres    false            �            1259    31602    cultivo_cul_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cultivo_cul_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cultivo_cul_id_seq;
       public          postgres    false    208            N           0    0    cultivo_cul_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cultivo_cul_id_seq OWNED BY public.cultivo.cul_id;
          public          postgres    false    207            �            1259    31733    factura    TABLE     3  CREATE TABLE public.factura (
    fac_id integer NOT NULL,
    fac_fec date DEFAULT CURRENT_TIMESTAMP,
    fac_tip character varying(30) DEFAULT 'efectivo'::character varying,
    fac_val integer NOT NULL,
    fac_cant integer DEFAULT 1,
    fac_ins_id integer NOT NULL,
    fac_pro_ced integer NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    31731    factura_fac_id_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_fac_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.factura_fac_id_seq;
       public          postgres    false    224            O           0    0    factura_fac_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.factura_fac_id_seq OWNED BY public.factura.fac_id;
          public          postgres    false    223            �            1259    31683    fertilizante    TABLE     }   CREATE TABLE public.fertilizante (
    id integer NOT NULL,
    fer_nut integer NOT NULL,
    fer_pro_id integer NOT NULL
);
     DROP TABLE public.fertilizante;
       public         heap    postgres    false            �            1259    31681    fertilizante_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fertilizante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fertilizante_id_seq;
       public          postgres    false    218            P           0    0    fertilizante_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fertilizante_id_seq OWNED BY public.fertilizante.id;
          public          postgres    false    217            �            1259    31569    finca    TABLE     �   CREATE TABLE public.finca (
    fin_id integer NOT NULL,
    fin_nom character varying(60) NOT NULL,
    fin_are double precision NOT NULL,
    fin_des character varying(255),
    fin_adm_id character varying(60) NOT NULL
);
    DROP TABLE public.finca;
       public         heap    postgres    false            �            1259    31567    finca_fin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.finca_fin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.finca_fin_id_seq;
       public          postgres    false    202            Q           0    0    finca_fin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.finca_fin_id_seq OWNED BY public.finca.fin_id;
          public          postgres    false    201            �            1259    31670 	   fungicida    TABLE     z   CREATE TABLE public.fungicida (
    id integer NOT NULL,
    fun_niv integer NOT NULL,
    fun_pro_id integer NOT NULL
);
    DROP TABLE public.fungicida;
       public         heap    postgres    false            �            1259    31668    fungicida_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fungicida_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.fungicida_id_seq;
       public          postgres    false    216            R           0    0    fungicida_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.fungicida_id_seq OWNED BY public.fungicida.id;
          public          postgres    false    215            �            1259    31696    insumo    TABLE     �   CREATE TABLE public.insumo (
    ins_id integer NOT NULL,
    ins_nom character varying(60) DEFAULT 'sin nombre'::character varying NOT NULL,
    ins_fecv date,
    ins_pro_id integer NOT NULL
);
    DROP TABLE public.insumo;
       public         heap    postgres    false            �            1259    31694    insumo_ins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insumo_ins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.insumo_ins_id_seq;
       public          postgres    false    220            S           0    0    insumo_ins_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.insumo_ins_id_seq OWNED BY public.insumo.ins_id;
          public          postgres    false    219            �            1259    31708    insxope    TABLE     y   CREATE TABLE public.insxope (
    ixo_id integer NOT NULL,
    oxi_id integer NOT NULL,
    ixo_cant integer NOT NULL
);
    DROP TABLE public.insxope;
       public         heap    postgres    false            �            1259    31582    lote    TABLE     �   CREATE TABLE public.lote (
    lot_id integer NOT NULL,
    lot_nom character varying(60) DEFAULT 'sin nombre'::character varying NOT NULL,
    lot_are double precision NOT NULL,
    lot_des character varying(255),
    lot_fin_id integer NOT NULL
);
    DROP TABLE public.lote;
       public         heap    postgres    false            �            1259    31580    lote_lot_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lote_lot_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.lote_lot_id_seq;
       public          postgres    false    204            T           0    0    lote_lot_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.lote_lot_id_seq OWNED BY public.lote.lot_id;
          public          postgres    false    203            �            1259    31623 	   operacion    TABLE     �   CREATE TABLE public.operacion (
    ope_id integer NOT NULL,
    ope_nom character varying(60) NOT NULL,
    ope_tie character varying(20),
    ope_fec date DEFAULT CURRENT_TIMESTAMP,
    ope_fin character varying(255),
    ope_cul_id integer NOT NULL
);
    DROP TABLE public.operacion;
       public         heap    postgres    false            �            1259    31621    operacion_ope_id_seq    SEQUENCE     �   CREATE SEQUENCE public.operacion_ope_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.operacion_ope_id_seq;
       public          postgres    false    210            U           0    0    operacion_ope_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.operacion_ope_id_seq OWNED BY public.operacion.ope_id;
          public          postgres    false    209            �            1259    31662    producto    TABLE     �   CREATE TABLE public.producto (
    pro_id integer NOT NULL,
    pro_nom character varying(60) NOT NULL,
    pro_pre character varying(60)
);
    DROP TABLE public.producto;
       public         heap    postgres    false            �            1259    31660    producto_pro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.producto_pro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.producto_pro_id_seq;
       public          postgres    false    214            V           0    0    producto_pro_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.producto_pro_id_seq OWNED BY public.producto.pro_id;
          public          postgres    false    213            �            1259    31723 	   proveedor    TABLE     Q  CREATE TABLE public.proveedor (
    pro_ced integer NOT NULL,
    pro_nom character varying(60) DEFAULT 'nombre no asignado'::character varying,
    pro_raz character varying(60) DEFAULT 'sin razon social asignada'::character varying NOT NULL,
    pro_ema character varying(60) DEFAULT 'email no asignado'::character varying NOT NULL
);
    DROP TABLE public.proveedor;
       public         heap    postgres    false            �            1259    31596    tipocultivo    TABLE     m   CREATE TABLE public.tipocultivo (
    tip_id integer NOT NULL,
    tip_nom character varying(60) NOT NULL
);
    DROP TABLE public.tipocultivo;
       public         heap    postgres    false            �            1259    31594    tipocultivo_tip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipocultivo_tip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tipocultivo_tip_id_seq;
       public          postgres    false    206            W           0    0    tipocultivo_tip_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipocultivo_tip_id_seq OWNED BY public.tipocultivo.tip_id;
          public          postgres    false    205            �            1259    31635 
   trabajador    TABLE     �   CREATE TABLE public.trabajador (
    tra_ced integer NOT NULL,
    tra_nom character varying(60),
    tra_tel integer NOT NULL,
    tra_adm_id character varying(60)
);
    DROP TABLE public.trabajador;
       public         heap    postgres    false            �            1259    31645    traxope    TABLE     y   CREATE TABLE public.traxope (
    oxt_id integer NOT NULL,
    txo_ced integer NOT NULL,
    txo_val integer NOT NULL
);
    DROP TABLE public.traxope;
       public         heap    postgres    false            p           2604    31607    cultivo cul_id    DEFAULT     p   ALTER TABLE ONLY public.cultivo ALTER COLUMN cul_id SET DEFAULT nextval('public.cultivo_cul_id_seq'::regclass);
 =   ALTER TABLE public.cultivo ALTER COLUMN cul_id DROP DEFAULT;
       public          postgres    false    208    207    208            |           2604    31736    factura fac_id    DEFAULT     p   ALTER TABLE ONLY public.factura ALTER COLUMN fac_id SET DEFAULT nextval('public.factura_fac_id_seq'::regclass);
 =   ALTER TABLE public.factura ALTER COLUMN fac_id DROP DEFAULT;
       public          postgres    false    223    224    224            v           2604    31686    fertilizante id    DEFAULT     r   ALTER TABLE ONLY public.fertilizante ALTER COLUMN id SET DEFAULT nextval('public.fertilizante_id_seq'::regclass);
 >   ALTER TABLE public.fertilizante ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            l           2604    31572    finca fin_id    DEFAULT     l   ALTER TABLE ONLY public.finca ALTER COLUMN fin_id SET DEFAULT nextval('public.finca_fin_id_seq'::regclass);
 ;   ALTER TABLE public.finca ALTER COLUMN fin_id DROP DEFAULT;
       public          postgres    false    201    202    202            u           2604    31673    fungicida id    DEFAULT     l   ALTER TABLE ONLY public.fungicida ALTER COLUMN id SET DEFAULT nextval('public.fungicida_id_seq'::regclass);
 ;   ALTER TABLE public.fungicida ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            w           2604    31699    insumo ins_id    DEFAULT     n   ALTER TABLE ONLY public.insumo ALTER COLUMN ins_id SET DEFAULT nextval('public.insumo_ins_id_seq'::regclass);
 <   ALTER TABLE public.insumo ALTER COLUMN ins_id DROP DEFAULT;
       public          postgres    false    220    219    220            m           2604    31585    lote lot_id    DEFAULT     j   ALTER TABLE ONLY public.lote ALTER COLUMN lot_id SET DEFAULT nextval('public.lote_lot_id_seq'::regclass);
 :   ALTER TABLE public.lote ALTER COLUMN lot_id DROP DEFAULT;
       public          postgres    false    204    203    204            r           2604    31626    operacion ope_id    DEFAULT     t   ALTER TABLE ONLY public.operacion ALTER COLUMN ope_id SET DEFAULT nextval('public.operacion_ope_id_seq'::regclass);
 ?   ALTER TABLE public.operacion ALTER COLUMN ope_id DROP DEFAULT;
       public          postgres    false    210    209    210            t           2604    31665    producto pro_id    DEFAULT     r   ALTER TABLE ONLY public.producto ALTER COLUMN pro_id SET DEFAULT nextval('public.producto_pro_id_seq'::regclass);
 >   ALTER TABLE public.producto ALTER COLUMN pro_id DROP DEFAULT;
       public          postgres    false    214    213    214            o           2604    31599    tipocultivo tip_id    DEFAULT     x   ALTER TABLE ONLY public.tipocultivo ALTER COLUMN tip_id SET DEFAULT nextval('public.tipocultivo_tip_id_seq'::regclass);
 A   ALTER TABLE public.tipocultivo ALTER COLUMN tip_id DROP DEFAULT;
       public          postgres    false    206    205    206            /          0    31562    administrador 
   TABLE DATA           8   COPY public.administrador (adm_id, adm_ema) FROM stdin;
    public          postgres    false    200   �x       7          0    31604    cultivo 
   TABLE DATA           f   COPY public.cultivo (cul_id, cul_nom, cul_ini, cul_fin, cul_cant, cul_lot_id, cul_tip_id) FROM stdin;
    public          postgres    false    208   >y       G          0    31733    factura 
   TABLE DATA           g   COPY public.factura (fac_id, fac_fec, fac_tip, fac_val, fac_cant, fac_ins_id, fac_pro_ced) FROM stdin;
    public          postgres    false    224   �y       A          0    31683    fertilizante 
   TABLE DATA           ?   COPY public.fertilizante (id, fer_nut, fer_pro_id) FROM stdin;
    public          postgres    false    218   cz       1          0    31569    finca 
   TABLE DATA           N   COPY public.finca (fin_id, fin_nom, fin_are, fin_des, fin_adm_id) FROM stdin;
    public          postgres    false    202   �z       ?          0    31670 	   fungicida 
   TABLE DATA           <   COPY public.fungicida (id, fun_niv, fun_pro_id) FROM stdin;
    public          postgres    false    216   k{       C          0    31696    insumo 
   TABLE DATA           G   COPY public.insumo (ins_id, ins_nom, ins_fecv, ins_pro_id) FROM stdin;
    public          postgres    false    220   �{       D          0    31708    insxope 
   TABLE DATA           ;   COPY public.insxope (ixo_id, oxi_id, ixo_cant) FROM stdin;
    public          postgres    false    221   �{       3          0    31582    lote 
   TABLE DATA           M   COPY public.lote (lot_id, lot_nom, lot_are, lot_des, lot_fin_id) FROM stdin;
    public          postgres    false    204   /|       9          0    31623 	   operacion 
   TABLE DATA           [   COPY public.operacion (ope_id, ope_nom, ope_tie, ope_fec, ope_fin, ope_cul_id) FROM stdin;
    public          postgres    false    210   �|       =          0    31662    producto 
   TABLE DATA           <   COPY public.producto (pro_id, pro_nom, pro_pre) FROM stdin;
    public          postgres    false    214   �}       E          0    31723 	   proveedor 
   TABLE DATA           G   COPY public.proveedor (pro_ced, pro_nom, pro_raz, pro_ema) FROM stdin;
    public          postgres    false    222   ~       5          0    31596    tipocultivo 
   TABLE DATA           6   COPY public.tipocultivo (tip_id, tip_nom) FROM stdin;
    public          postgres    false    206   z~       :          0    31635 
   trabajador 
   TABLE DATA           K   COPY public.trabajador (tra_ced, tra_nom, tra_tel, tra_adm_id) FROM stdin;
    public          postgres    false    211   �~       ;          0    31645    traxope 
   TABLE DATA           ;   COPY public.traxope (oxt_id, txo_ced, txo_val) FROM stdin;
    public          postgres    false    212   q       X           0    0    cultivo_cul_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cultivo_cul_id_seq', 10, true);
          public          postgres    false    207            Y           0    0    factura_fac_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.factura_fac_id_seq', 11, true);
          public          postgres    false    223            Z           0    0    fertilizante_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.fertilizante_id_seq', 2, true);
          public          postgres    false    217            [           0    0    finca_fin_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.finca_fin_id_seq', 10, true);
          public          postgres    false    201            \           0    0    fungicida_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.fungicida_id_seq', 3, true);
          public          postgres    false    215            ]           0    0    insumo_ins_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.insumo_ins_id_seq', 10, true);
          public          postgres    false    219            ^           0    0    lote_lot_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.lote_lot_id_seq', 8, true);
          public          postgres    false    203            _           0    0    operacion_ope_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.operacion_ope_id_seq', 16, true);
          public          postgres    false    209            `           0    0    producto_pro_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.producto_pro_id_seq', 5, true);
          public          postgres    false    213            a           0    0    tipocultivo_tip_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tipocultivo_tip_id_seq', 3, true);
          public          postgres    false    205            �           2606    31566     administrador administrador_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.administrador
    ADD CONSTRAINT administrador_pkey PRIMARY KEY (adm_id);
 J   ALTER TABLE ONLY public.administrador DROP CONSTRAINT administrador_pkey;
       public            postgres    false    200            �           2606    31610    cultivo cultivo_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_pkey PRIMARY KEY (cul_id);
 >   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_pkey;
       public            postgres    false    208            �           2606    31741    factura factura_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (fac_id);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    224            �           2606    31688    fertilizante fertilizante_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fertilizante
    ADD CONSTRAINT fertilizante_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fertilizante DROP CONSTRAINT fertilizante_pkey;
       public            postgres    false    218            �           2606    31574    finca finca_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.finca
    ADD CONSTRAINT finca_pkey PRIMARY KEY (fin_id);
 :   ALTER TABLE ONLY public.finca DROP CONSTRAINT finca_pkey;
       public            postgres    false    202            �           2606    31675    fungicida fungicida_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.fungicida
    ADD CONSTRAINT fungicida_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.fungicida DROP CONSTRAINT fungicida_pkey;
       public            postgres    false    216            �           2606    31702    insumo insumo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.insumo
    ADD CONSTRAINT insumo_pkey PRIMARY KEY (ins_id);
 <   ALTER TABLE ONLY public.insumo DROP CONSTRAINT insumo_pkey;
       public            postgres    false    220            �           2606    31712    insxope insxope_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.insxope
    ADD CONSTRAINT insxope_pkey PRIMARY KEY (ixo_id, oxi_id);
 >   ALTER TABLE ONLY public.insxope DROP CONSTRAINT insxope_pkey;
       public            postgres    false    221    221            �           2606    31588    lote lote_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_pkey PRIMARY KEY (lot_id);
 8   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_pkey;
       public            postgres    false    204            �           2606    31629    operacion operacion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT operacion_pkey PRIMARY KEY (ope_id);
 B   ALTER TABLE ONLY public.operacion DROP CONSTRAINT operacion_pkey;
       public            postgres    false    210            �           2606    31667    producto producto_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (pro_id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public            postgres    false    214            �           2606    31730    proveedor proveedor_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (pro_ced);
 B   ALTER TABLE ONLY public.proveedor DROP CONSTRAINT proveedor_pkey;
       public            postgres    false    222            �           2606    31601    tipocultivo tipocultivo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tipocultivo
    ADD CONSTRAINT tipocultivo_pkey PRIMARY KEY (tip_id);
 F   ALTER TABLE ONLY public.tipocultivo DROP CONSTRAINT tipocultivo_pkey;
       public            postgres    false    206            �           2606    31639    trabajador trabajador_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT trabajador_pkey PRIMARY KEY (tra_ced);
 D   ALTER TABLE ONLY public.trabajador DROP CONSTRAINT trabajador_pkey;
       public            postgres    false    211            �           2606    31649    traxope traxope_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.traxope
    ADD CONSTRAINT traxope_pkey PRIMARY KEY (oxt_id, txo_ced);
 >   ALTER TABLE ONLY public.traxope DROP CONSTRAINT traxope_pkey;
       public            postgres    false    212    212            �           2606    31611    cultivo cultivo_cul_lot_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_cul_lot_id_fkey FOREIGN KEY (cul_lot_id) REFERENCES public.lote(lot_id);
 I   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_cul_lot_id_fkey;
       public          postgres    false    2949    208    204            �           2606    31616    cultivo cultivo_cul_tip_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cultivo
    ADD CONSTRAINT cultivo_cul_tip_id_fkey FOREIGN KEY (cul_tip_id) REFERENCES public.tipocultivo(tip_id);
 I   ALTER TABLE ONLY public.cultivo DROP CONSTRAINT cultivo_cul_tip_id_fkey;
       public          postgres    false    208    206    2951            �           2606    31742    factura factura_fac_ins_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_fac_ins_id_fkey FOREIGN KEY (fac_ins_id) REFERENCES public.insumo(ins_id);
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_fac_ins_id_fkey;
       public          postgres    false    220    224    2967            �           2606    31747     factura factura_fac_pro_ced_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_fac_pro_ced_fkey FOREIGN KEY (fac_pro_ced) REFERENCES public.proveedor(pro_ced);
 J   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_fac_pro_ced_fkey;
       public          postgres    false    224    2971    222            �           2606    31689 )   fertilizante fertilizante_fer_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fertilizante
    ADD CONSTRAINT fertilizante_fer_pro_id_fkey FOREIGN KEY (fer_pro_id) REFERENCES public.producto(pro_id);
 S   ALTER TABLE ONLY public.fertilizante DROP CONSTRAINT fertilizante_fer_pro_id_fkey;
       public          postgres    false    218    214    2961            �           2606    31575    finca finca_fin_adm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.finca
    ADD CONSTRAINT finca_fin_adm_id_fkey FOREIGN KEY (fin_adm_id) REFERENCES public.administrador(adm_id);
 E   ALTER TABLE ONLY public.finca DROP CONSTRAINT finca_fin_adm_id_fkey;
       public          postgres    false    200    2945    202            �           2606    31676 #   fungicida fungicida_fun_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.fungicida
    ADD CONSTRAINT fungicida_fun_pro_id_fkey FOREIGN KEY (fun_pro_id) REFERENCES public.producto(pro_id);
 M   ALTER TABLE ONLY public.fungicida DROP CONSTRAINT fungicida_fun_pro_id_fkey;
       public          postgres    false    2961    216    214            �           2606    31703    insumo insumo_ins_pro_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insumo
    ADD CONSTRAINT insumo_ins_pro_id_fkey FOREIGN KEY (ins_pro_id) REFERENCES public.producto(pro_id);
 G   ALTER TABLE ONLY public.insumo DROP CONSTRAINT insumo_ins_pro_id_fkey;
       public          postgres    false    2961    214    220            �           2606    31713    insxope insxope_ixo_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.insxope
    ADD CONSTRAINT insxope_ixo_id_fkey FOREIGN KEY (ixo_id) REFERENCES public.insumo(ins_id);
 E   ALTER TABLE ONLY public.insxope DROP CONSTRAINT insxope_ixo_id_fkey;
       public          postgres    false    220    221    2967            �           2606    31718    insxope insxope_oxi_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.insxope
    ADD CONSTRAINT insxope_oxi_id_fkey FOREIGN KEY (oxi_id) REFERENCES public.operacion(ope_id);
 E   ALTER TABLE ONLY public.insxope DROP CONSTRAINT insxope_oxi_id_fkey;
       public          postgres    false    221    2955    210            �           2606    31589    lote lote_lot_fin_id_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.lote
    ADD CONSTRAINT lote_lot_fin_id_fkey FOREIGN KEY (lot_fin_id) REFERENCES public.finca(fin_id);
 C   ALTER TABLE ONLY public.lote DROP CONSTRAINT lote_lot_fin_id_fkey;
       public          postgres    false    202    204    2947            �           2606    31630 #   operacion operacion_ope_cul_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operacion
    ADD CONSTRAINT operacion_ope_cul_id_fkey FOREIGN KEY (ope_cul_id) REFERENCES public.cultivo(cul_id);
 M   ALTER TABLE ONLY public.operacion DROP CONSTRAINT operacion_ope_cul_id_fkey;
       public          postgres    false    2953    210    208            �           2606    31640 %   trabajador trabajador_tra_adm_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.trabajador
    ADD CONSTRAINT trabajador_tra_adm_id_fkey FOREIGN KEY (tra_adm_id) REFERENCES public.administrador(adm_id);
 O   ALTER TABLE ONLY public.trabajador DROP CONSTRAINT trabajador_tra_adm_id_fkey;
       public          postgres    false    211    200    2945            �           2606    31650    traxope traxope_oxt_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.traxope
    ADD CONSTRAINT traxope_oxt_id_fkey FOREIGN KEY (oxt_id) REFERENCES public.operacion(ope_id);
 E   ALTER TABLE ONLY public.traxope DROP CONSTRAINT traxope_oxt_id_fkey;
       public          postgres    false    210    2955    212            �           2606    31655    traxope traxope_txo_ced_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.traxope
    ADD CONSTRAINT traxope_txo_ced_fkey FOREIGN KEY (txo_ced) REFERENCES public.trabajador(tra_ced);
 F   ALTER TABLE ONLY public.traxope DROP CONSTRAINT traxope_txo_ced_fkey;
       public          postgres    false    212    2957    211            /   U   x�342�L�KIu(��K�242B�#�C2ͳ�ݳJB��S�2*��<�J}3�����R�s���sr��s3s���s�b���� _k      7   �   x�}�;
�0��_��R"�v�K�YLI���&�!��:8��1�4��
7�kD�?`��`	�p�J����ǺB�d��uj���5K��r�+��0�X�+ݐ}��r�;�0����l<�xn��t��s�/�*���_��l<En      G   v   x�}�1�0����|۹K�ȕ:e�z�"[�:��'� �	�$�~���r�Uc���������L����+&Pe5�����\�b�9�����UD�(��C3 âPg      A      x�3�4�4�2�4�4����� H      1   �   x�}O�n1<;_�/@�,U�+�VE�-���wc��H���{�PPO+Y�G3�tL�؉����'f�FY�1�c�4�o���j!Q�t�j
]<l�y��`vR��������)_����=��?̬.�|f�+$��w��!���}�}��'��У�Sk-�L(��59_�(���5�4�g��ct����D"��O���l&J��]m!      ?      x�3�4�4�2��\ƜƜ�\1z\\\ !��      C   D   x�3�,��S���M*J���4�2B1�2F1�2A1�2E1�2�0��dK�0,����� �G4:      D   3   x���	  ���0������sX�4�$��d+)shB�9���)߼K�ը
      3   �   x�U�A�0E�?��	�ii�Sx6�fS������U����<^SuU��	|L0����v����~/lS)������5��V��U6�3�����[�]Qt����I3�,u��q��+�� `�|�M�1���:?$      9   �   x���mn�0�;����v��	��ML���B]�n��(�����@5��B.�No��Nwh��(����� T�]l���*v(���bϲ�Z�j�2��	���s7JLW�PA}F���sg����|ސ.�Ʌ|�]�"��y�U9x�M���ǰ�N]�I����B�C�~��q�Q��z���ڊc	�y�vt�L|���9��$�x��r���2s�ټ�ct�\�4�����R��ܽd      =   4   x�3�,H,H���2�,M��9s��,����Ң۔� "���� ���      E   V   x���,N-J���,��S(J���S(�O�L�QH,�L�KLI�L�M��Q�ˇ��s�s���&�"�d���&�[Pj���&��qqq �ip�      5   3   x�3�L-NN,��2��MM�L��K��2�L��+.��WH�L,������� .'8      :   �   x��O;�0��S���S�k�"����%j"�H[��E�������4��� LH���L;�� �E0�4T��:�pw�T>��Hy�K��~��N�î��˻<���~S��,K ���G3Z�k����	��CT��6�n�N<�Ę��bRt��<SJ} �QV      ;   U   x�5���0�0L����t�9�T��!z��;X�<9h�Z��Cˣ }�K^�(�
O@2�O�m<ҏ{�<�^���x�     