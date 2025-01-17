toc.dat                                                                                             0000600 0004000 0002000 00000010331 14452747014 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                   
        {         
   SeleksiBasdat    14.7    14.7 
    ·           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         √           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ⁿ           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ²           1262    41009 
   SeleksiBasdat    DATABASE     o   CREATE DATABASE "SeleksiBasdat" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "SeleksiBasdat";
                postgres    false         ╤            1259    41055 
   playerinfo    TABLE     Ω   CREATE TABLE public.playerinfo (
    playernickname character varying(50) NOT NULL,
    country character varying(50) NOT NULL,
    team character varying(50) NOT NULL,
    playername character varying(50) NOT NULL,
    birth date
);
    DROP TABLE public.playerinfo;
       public         heap    postgres    false         ╙            1259    41072 	   playerage    VIEW        CREATE VIEW public.playerage AS
 SELECT playerinfo.playernickname,
    playerinfo.country,
    playerinfo.team,
    playerinfo.playername,
    playerinfo.birth,
    age(now(), (playerinfo.birth)::timestamp with time zone) AS age
   FROM public.playerinfo;
    DROP VIEW public.playerage;
       public          postgres    false    209    209    209    209    209         ╥            1259    41062    playerstats    TABLE     ≈  CREATE TABLE public.playerstats (
    stats_id integer NOT NULL,
    playernickname character varying(50) NOT NULL,
    agents character varying(255) NOT NULL,
    maps integer NOT NULL,
    kills integer NOT NULL,
    deaths integer NOT NULL,
    assists integer NOT NULL,
    kd double precision NOT NULL,
    kda double precision NOT NULL,
    acspermap double precision NOT NULL,
    kpermap double precision NOT NULL,
    dpermap double precision NOT NULL,
    apermap double precision NOT NULL
);
    DROP TABLE public.playerstats;
       public         heap    postgres    false         ÷          0    41055 
   playerinfo 
   TABLE DATA           V   COPY public.playerinfo (playernickname, country, team, playername, birth) FROM stdin;
    public          postgres    false    209       3318.dat ≈          0    41062    playerstats 
   TABLE DATA           ö   COPY public.playerstats (stats_id, playernickname, agents, maps, kills, deaths, assists, kd, kda, acspermap, kpermap, dpermap, apermap) FROM stdin;
    public          postgres    false    210       3319.dat d           2606    41061    playerinfo playerinfo_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.playerinfo
    ADD CONSTRAINT playerinfo_pkey PRIMARY KEY (playernickname);
 D   ALTER TABLE ONLY public.playerinfo DROP CONSTRAINT playerinfo_pkey;
       public            postgres    false    209         f           2606    41059 (   playerinfo playerinfo_playernickname_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.playerinfo
    ADD CONSTRAINT playerinfo_playernickname_key UNIQUE (playernickname);
 R   ALTER TABLE ONLY public.playerinfo DROP CONSTRAINT playerinfo_playernickname_key;
       public            postgres    false    209         h           2606    41066    playerstats playerstats_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT playerstats_pkey PRIMARY KEY (stats_id);
 F   ALTER TABLE ONLY public.playerstats DROP CONSTRAINT playerstats_pkey;
       public            postgres    false    210         i           2606    41067 +   playerstats playerstats_playernickname_fkey 
   FK CONSTRAINT     ó   ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT playerstats_playernickname_fkey FOREIGN KEY (playernickname) REFERENCES public.playerinfo(playernickname);
 U   ALTER TABLE ONLY public.playerstats DROP CONSTRAINT playerstats_playernickname_fkey;
       public          postgres    false    210    209    3174                                                                                                                                                                                                                                                                                                               3318.dat                                                                                            0000600 0004000 0002000 00000006434 14452747014 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Sayaplayer	South Korea	T1	φòÿ∞áò∞Ü░	1998-07-29
something	Russia	Paper Rex	╨ÿ╨╗╤î╤Å ╨ƒ╨╡╤é╤Ç╨╛╨▓	2002-02-11
Foxy9	South Korea	DRX	∞áò∞₧¼∞ä▒	2004-11-20
Jinggg	Singapore	Paper Rex	Wang Jing Jie	2003-07-29
SkRossi	India	Global Esports	Ganesh Gangadhar	1997-10-12
BuZz	South Korea	DRX	∞£áδ│æ∞▓á	2003-01-13
f0rsakeN	Indonesia	Paper Rex	Jason Susanto	2004-03-25
Dep	Japan	ZETA DIVISION	Yuma Hashimoto	2000-12-04
t3xture	South Korea	Global Esports	Ω╣Çδéÿδ¥╝	1999-07-20
Suggest	South Korea	DetonatioN FocusMe	∞ä£∞₧¼∞ÿü	2002-09-30
Meteor	South Korea	Gen.G Esports	Ω╣Çφâ£∞ÿñ	1999-12-19
Seoldam	South Korea	DetonatioN FocusMe	δ░ò∞âüδ»╝	2001-03-02
Monyet	Indonesia	Global Esports	Cahya Nugraha	2005-06-05
xffero	Indonesia	Rex Regum Qeon	David Monangin	2001-08-04
MaKo	South Korea	DRX	Ω╣Çδ¬àΩ┤Ç	2002-01-15
garnetS	Thailand	Talon Esports	Apiwat Apiraksukumal	2004-07-07
EJAY	Philippines	Rex Regum Qeon	Eroll Jule R. Delfin	\N
Benkai	Singapore	Paper Rex	Benedict Tan	1996-11-10
Munchkin	South Korea	T1	δ│Ç∞âüδ▓ö	1998-03-27
k1Ng	South Korea	Gen.G Esports	∞¥┤∞è╣∞¢É	2001-11-03
patt	Thailand	Talon Esports	α╕¢α╕Åα╕┤α╕áα╕▓α╕ô α╣äα╕èα╕óα╕ºα╕çα╕⌐α╣î	2003-09-03
Lmemore	Indonesia	Rex Regum Qeon	Hagai Kristen Yesyurun Tewuh	\N
d4v41	Malaysia	Paper Rex	Ahmad Khalish Rusyaidee bin Nordin	1998-10-14
Jremy	Philippines	Team Secret	Jeremy Cabrera	\N
xeta	South Korea	T1	∞åÉ∞äáφÿ╕	1997-06-03
Sylvan	South Korea	Gen.G Esports	Ω│á∞ÿü∞ä¡	2001-10-04
SugarZ3ro	Japan	ZETA DIVISION	Shota Watanabe	2003-03-18
Crws	Thailand	Talon Esports	α╕ÿα╕Öα╣Çα╕íα╕ÿα╕¬α╣î α╕íα╕½α╕▒α╕ùα╕ÿα╕Öα╕▓α╕Öα╕╕α╕óα╕╕α╕òα╕òα╕┤	1996-11-15
fl1pzjder	Indonesia	Rex Regum Qeon	Saibani Rahmad	1999-07-27
Bazzi	South Korea	Global Esports	δ░ò∞ñÇΩ╕░	1999-03-24
foxz	Thailand	Talon Esports	α╕¡α╕┤α╕ùα╕ÿα╕┤α╕ñα╕ùα╕ÿα╕┤α╣î α╕çα╕▓α╕íα╕¬α╕¡α╕▓α╕ö	1999-04-08
GodDead	South Korea	Gen.G Esports	Ω╣Ç∞ä▒∞ïá	1998-01-09
invy	Philippines	Team Secret	Adrian Reyes	\N
TENNN	Japan	ZETA DIVISION	Tenta Asai	2001-10-19
WRONSKI	Australia	Global Esports	Michael Wronski	\N
sushiboys	Thailand	Talon Esports	Panyawat Subsiriroj	2000-11-06
Anthem	Japan	DetonatioN FocusMe	Yoshitaka Enomoto	2002-03-16
iNTRO	South Korea	T1	Ω░ò∞è╣Ω╖á	2002-02-02
JitboyS	Thailand	Talon Esports	Jittana Nokngam	\N
ban	United States	T1	Joseph Seungmin Oh	2000-01-27
TS	South Korea	Gen.G Esports	∞£áφâ£∞ä¥	\N
DubsteP	Philippines	Team Secret	Jayvee Paguirigan	1992-09-21
Rb	South Korea	DRX	Ω╡¼∞âüδ»╝	2001-12-07
takej	Japan	DetonatioN FocusMe	τ½╣µú« τÑÑµéƒ	2000-12-17
Lightningfast	India	Global Esports	Abhirup Choudhury	2000-12-07
Zest	South Korea	DRX	Ω╣ÇΩ╕░∞ä¥	2000-12-27
CigaretteS	Thailand	Paper Rex	α╕¢α╕Åα╕┤α╕áα╕▓α╕ô α╣éα╕₧α╕ÿα╕┤α╣îα╕¿α╕úα╕╡	\N
Emman	Philippines	Rex Regum Qeon	Emmanuel Morales	\N
Carpe	South Korea	T1	∞¥┤∞₧¼φÿü	1998-10-14
stax	South Korea	DRX	Ω╣ÇΩ╡¼φâ¥	2000-02-16
BORKUM	Philippines	Team Secret	Jim Albert Timbreza	1996-04-18
Reita	Japan	DetonatioN FocusMe	Ryumon Oshiro	1994-12-11
mindfreak	Indonesia	Paper Rex	 Aaron Leonhart	\N
AYRIN	Canada	Global Esports	Jordan He	1996-04-04
Laz	Japan	ZETA DIVISION	τë¢τö░ µ╡⌐Σ║î	1995-11-26
2ge	Philippines	Rex Regum Qeon	James Goopio	\N
eKo	South Korea	Gen.G Esports	∞ù╝∞Öòδúí	\N
xnfri	Japan	DetonatioN FocusMe	Tomoki Moriya	1999-03-09
JessieVash	Philippines	Team Secret	Jessie Cristy Cuyco	1990-02-21
crow	Japan	ZETA DIVISION	Σ╕╕σ▓í µÖ║µÿÄ	1997-11-28
lenne	Singapore	Team Secret	Lionel Lim You Xiang	\N
\.


                                                                                                                                                                                                                                    3319.dat                                                                                            0000600 0004000 0002000 00000011174 14452747014 0014265 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        880	Sayaplayer	['Jett', 'Raze']	36	642	513	117	1.25	1.47	236	17.8	14.2	3.2
881	something	['Jett', 'Reyna', 'Breach']	24	415	304	106	1.36	1.71	230	17.2	12.6	4.4
882	Foxy9	['Jett', 'Raze']	23	372	337	76	1.1	1.32	229	16.1	14.6	3.3
883	Jinggg	['Raze', 'Phoenix', 'Sage']	29	471	411	171	1.14	1.56	227	16.2	14.1	5.8
884	SkRossi	['Jett']	11	185	180	43	1.02	1.26	225	16.8	16.3	3.9
885	BuZz	['Killjoy', 'Jett', 'KAY/O']	33	547	472	185	1.15	1.55	224	16.5	14.3	5.6
886	f0rsakeN	['Killjoy', 'Neon', 'Skye']	30	484	435	177	1.11	1.51	223	16.1	14.5	5.9
887	Dep	['Jett', 'Raze', 'Neon']	28	510	468	103	1.08	1.3	223	18.2	16.7	3.6
888	t3xture	['Killjoy', 'Jett', 'Raze']	20	344	310	70	1.1	1.33	219	17.2	15.5	3.5
889	Suggest	['Killjoy', 'Jett', 'Raze']	14	220	218	58	1	1.27	218	15.7	15.5	4.1
890	Meteor	['Jett', 'Raze']	29	450	450	118	1	1.26	218	15.5	15.5	4
891	Seoldam	['Jett', 'Raze']	13	197	213	45	0.92	1.13	218	15.1	16.3	3.4
892	Monyet	['Astra', 'Omen', 'Viper']	21	358	318	186	1.12	1.71	217	17	15.1	8.8
893	xffero	['Astra', 'Sova', 'Skye']	21	326	290	138	1.12	1.6	213	15.5	13.8	6.5
894	MaKo	['Viper', 'Omen', 'Brimstone']	35	523	449	348	1.16	1.93	212	14.9	12.8	9.9
895	garnetS	['Jett', 'Raze', 'Neon']	17	246	269	57	0.91	1.12	211	14.4	15.8	3.3
896	EJAY	['Jett', 'Raze']	21	320	321	78	0.99	1.23	210	15.2	15.2	3.7
897	Benkai	['Breach', 'Killjoy', 'Viper']	7	109	101	43	1.07	1.5	210	15.5	14.4	6.1
898	Munchkin	['Killjoy', 'Skye']	36	571	496	154	1.15	1.46	210	15.8	13.7	4.2
899	k1Ng	['Killjoy', 'Viper']	29	435	402	134	1.08	1.41	208	15	13.8	4.6
900	patt	['Harbor', 'Breach', 'KAY/O']	20	300	302	127	0.99	1.41	208	15	15.1	6.3
901	Lmemore	['Killjoy', 'Cypher', 'Viper']	21	310	311	77	0.99	1.24	207	14.7	14.8	3.6
902	d4v41	['Skye', 'Killjoy', 'Viper']	29	455	358	247	1.27	1.96	206	15.6	12.3	8.5
903	Jremy	['Raze', 'Killjoy', 'Sage']	29	459	483	144	0.95	1.24	203	15.8	16.6	4.9
904	xeta	['Sova', 'Harbor', 'Breach']	36	525	483	280	1.08	1.66	200	14.5	13.4	7.7
905	Sylvan	['Sova', 'Skye', 'Fade']	15	212	208	114	1.01	1.56	196	14.1	13.8	7.6
906	SugarZ3ro	['Omen', 'Brimstone', 'Viper']	28	452	420	288	1.07	1.76	194	16.1	15	10.2
907	Crws	['Viper', 'Omen', 'Brimstone']	21	273	316	160	0.86	1.37	191	13	15	7.6
908	fl1pzjder	['Breach', 'Skye', 'KAY/O']	21	283	303	202	0.93	1.6	191	13.4	14.4	9.6
909	Bazzi	['Skye', 'Fade', 'Breach']	21	291	306	224	0.95	1.68	190	13.8	14.5	10.6
910	foxz	['Skye', 'Sova', 'Fade']	21	280	304	142	0.92	1.38	190	13.3	14.4	6.7
911	GodDead	['KAY/O', 'Breach', 'Sage']	29	373	432	312	0.86	1.58	189	12.8	14.8	10.7
912	invy	['Breach', 'KAY/O', 'Skye']	28	450	448	301	1	1.67	188	16	16	10.7
913	TENNN	['Killjoy', 'Viper', 'Raze']	28	426	448	113	0.95	1.2	188	15.2	16	4
914	WRONSKI	['KAY/O', 'Jett', 'Sage']	9	127	156	99	0.81	1.44	188	14.1	17.3	11
915	sushiboys	['Killjoy', 'Jett', 'Viper']	10	132	154	37	0.85	1.09	187	13.2	15.4	3.7
916	Anthem	['Skye', 'Killjoy', 'Breach']	20	255	295	140	0.86	1.33	187	12.7	14.7	7
917	iNTRO	['Viper', 'Omen', 'Harbor']	5	58	60	35	0.96	1.55	184	11.6	12	7
918	JitboyS	['Cypher', 'Killjoy', 'Breach']	16	214	232	93	0.92	1.32	184	13.3	14.5	5.8
919	ban	['Jett', 'Omen', 'Viper']	31	441	469	197	0.94	1.36	183	14.2	15.1	6.3
920	TS	['Omen', 'Astra']	29	372	426	264	0.87	1.49	183	12.8	14.6	9.1
921	DubsteP	['Jett', 'Killjoy', 'Cypher']	29	461	439	95	1.05	1.26	183	15.8	15.1	3.2
922	Rb	['Killjoy', 'Harbor', 'Astra']	35	455	469	230	0.97	1.46	178	13	13.4	6.5
923	takej	['Viper', 'Omen', 'Brimstone']	20	255	299	143	0.85	1.33	177	12.7	14.9	7.1
924	Lightningfast	['Raze']	2	24	27	8	0.88	1.18	177	12	13.5	4
925	Zest	['Sova', 'Fade', 'Harbor']	14	194	202	95	0.96	1.43	177	13.8	14.4	6.7
926	CigaretteS	['Gekko']	1	13	14	2	0.92	1.07	176	13	14	2
927	Emman	['Skye', 'KAY/O']	6	79	84	39	0.94	1.4	175	13.1	14	6.5
928	Carpe	['Skye', 'Brimstone', 'Breach']	36	462	526	342	0.87	1.52	175	12.8	14.6	9.5
929	stax	['Skye', 'Breach', 'KAY/O']	35	436	511	336	0.85	1.51	174	12.4	14.6	9.6
930	BORKUM	['Omen', 'Astra', 'Brimstone']	29	400	432	294	0.92	1.6	174	13.7	14.8	10.1
931	Reita	['Sova', 'Killjoy', 'Cypher']	15	182	217	92	0.83	1.26	172	12.1	14.4	6.1
932	mindfreak	['Astra', 'Brimstone', 'Omen']	30	376	379	253	0.99	1.65	169	12.5	12.6	8.4
933	AYRIN	['Killjoy', 'KAY/O', 'Viper']	21	265	314	131	0.84	1.26	169	12.6	14.9	6.2
934	Laz	['Sova', 'Skye', 'Fade']	28	398	393	201	1.01	1.52	169	14.2	14	7.1
935	2ge	['Astra', 'Harbor', 'Omen']	15	187	205	123	0.91	1.51	168	12.4	13.6	8.2
936	eKo	['Breach', 'Sova']	14	169	199	106	0.84	1.38	163	12	14.2	7.5
937	xnfri	['Omen', 'Skye', 'Harbor']	18	203	275	162	0.73	1.32	162	11.2	15.2	9
938	JessieVash	['Sova', 'Fade', 'Skye']	29	380	418	214	0.9	1.42	159	13.1	14.4	7.3
939	crow	['Breach', 'KAY/O', 'Killjoy']	28	343	426	278	0.8	1.45	152	12.2	15.2	9.9
940	lenne	['Gekko']	1	8	13	5	0.61	1	139	8	13	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                    restore.sql                                                                                         0000600 0004000 0002000 00000010276 14452747014 0015402 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

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

DROP DATABASE "SeleksiBasdat";
--
-- Name: SeleksiBasdat; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "SeleksiBasdat" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';


ALTER DATABASE "SeleksiBasdat" OWNER TO postgres;

\connect "SeleksiBasdat"

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
-- Name: playerinfo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playerinfo (
    playernickname character varying(50) NOT NULL,
    country character varying(50) NOT NULL,
    team character varying(50) NOT NULL,
    playername character varying(50) NOT NULL,
    birth date
);


ALTER TABLE public.playerinfo OWNER TO postgres;

--
-- Name: playerage; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.playerage AS
 SELECT playerinfo.playernickname,
    playerinfo.country,
    playerinfo.team,
    playerinfo.playername,
    playerinfo.birth,
    age(now(), (playerinfo.birth)::timestamp with time zone) AS age
   FROM public.playerinfo;


ALTER TABLE public.playerage OWNER TO postgres;

--
-- Name: playerstats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playerstats (
    stats_id integer NOT NULL,
    playernickname character varying(50) NOT NULL,
    agents character varying(255) NOT NULL,
    maps integer NOT NULL,
    kills integer NOT NULL,
    deaths integer NOT NULL,
    assists integer NOT NULL,
    kd double precision NOT NULL,
    kda double precision NOT NULL,
    acspermap double precision NOT NULL,
    kpermap double precision NOT NULL,
    dpermap double precision NOT NULL,
    apermap double precision NOT NULL
);


ALTER TABLE public.playerstats OWNER TO postgres;

--
-- Data for Name: playerinfo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playerinfo (playernickname, country, team, playername, birth) FROM stdin;
\.
COPY public.playerinfo (playernickname, country, team, playername, birth) FROM '$$PATH$$/3318.dat';

--
-- Data for Name: playerstats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playerstats (stats_id, playernickname, agents, maps, kills, deaths, assists, kd, kda, acspermap, kpermap, dpermap, apermap) FROM stdin;
\.
COPY public.playerstats (stats_id, playernickname, agents, maps, kills, deaths, assists, kd, kda, acspermap, kpermap, dpermap, apermap) FROM '$$PATH$$/3319.dat';

--
-- Name: playerinfo playerinfo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playerinfo
    ADD CONSTRAINT playerinfo_pkey PRIMARY KEY (playernickname);


--
-- Name: playerinfo playerinfo_playernickname_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playerinfo
    ADD CONSTRAINT playerinfo_playernickname_key UNIQUE (playernickname);


--
-- Name: playerstats playerstats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT playerstats_pkey PRIMARY KEY (stats_id);


--
-- Name: playerstats playerstats_playernickname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playerstats
    ADD CONSTRAINT playerstats_playernickname_fkey FOREIGN KEY (playernickname) REFERENCES public.playerinfo(playernickname);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
