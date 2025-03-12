-- ##################################################
-- BENEFICIARY GENDER
-- ##################################################

-- Count beneficiary IDs by sex (gender) code from raw data
SELECT DISTINCT bene_sex_ident_cd
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008
GROUP BY bene_sex_ident_cd
ORDER BY bene_sex_ident_cd;

-- Count beneficiary IDs by gender labels
SELECT DISTINCT ben.bene_sex_ident_cd AS gender_cd
	,g_lkp.gender_desc
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008 AS ben
LEFT JOIN cms_prd.gender_lookup AS g_lkp
	ON ben.bene_sex_ident_cd=g_lkp.gender_cd
GROUP BY ben.bene_sex_ident_cd
	,g_lkp.gender_desc
ORDER BY ben.bene_sex_ident_cd;

/*
Output of CMS SynPUF Sample 1:
gender_cd	gender_desc		desynpuf_id_count
1			"Male"			52005
2			"Female"		64347
*/



-- ##################################################
-- BENEFICIARY RACE
-- ##################################################

-- Count beneficiary IDs by race code from raw data
SELECT DISTINCT bene_race_cd
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008
GROUP BY bene_race_cd
ORDER BY bene_race_cd;

-- Count beneficiary IDs by race labels
SELECT DISTINCT ben.bene_race_cd AS race_cd
	,r_lkp.race_desc
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008 AS ben
LEFT JOIN cms_prd.race_lookup AS r_lkp
	ON ben.bene_race_cd=r_lkp.race_cd
GROUP BY bene_race_cd
	,r_lkp.race_desc
ORDER BY bene_race_cd;

/*
Output of CMS SynPUF Sample 1:
race_cd		race_desc										desynpuf_id_count
1			"Caucasian or White"							96349
2			"African American or Black"						12343
3			"Asian"											4931
5			"Native Hawaiian or Other Pacific Islander"		2729
*/



-- ##################################################
-- BENEFICIARY STATE
-- ##################################################

-- Count beneficiary IDs by US state code from raw data
SELECT DISTINCT sp_state_code
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008
GROUP BY sp_state_code
ORDER BY sp_state_code;

-- Count beneficiary IDs by US state/territory labels
SELECT DISTINCT ben.sp_state_code AS state_cd
	,s_lkp.state_abbr
	,s_lkp.state_desc
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008 AS ben
LEFT JOIN cms_prd.state_lookup AS s_lkp
	ON ben.sp_state_code=s_lkp.state_cd
GROUP BY ben.sp_state_code
	,s_lkp.state_abbr
	,s_lkp,state_desc
ORDER BY desynpuf_id_count DESC;

/*
Output of CMS SynPUF Sample 1:
state_cd	state_abbr		state_desc		desynpuf_id_count
5	"CA"	"California"	10224
10	"TX"	"Texas"	7745
45	"FL"	"Florida"	6703
33	"NY"	"New York"	6510
39	"PA"	"Pennsylvania"	5199
36	"IL"	"Illinois"	4329
14	"OH"	"Ohio"	4277
23	"GA"	"Georgia"	4012
34	"NC"	"North Carolina"	3935
31	"MI"	"Michigan"	3176
11	"NJ"	"New Jersey"	3012
49	"VA"	"Virginia"	2895
44	"WA"	"Washington"	2803
22	"AZ"	"Arizona"	2587
1	"TN"	"Tennessee"	2570
15	"MA"	"Massachusetts"	2497
26	"IN"	"Indiana"	2378
52	"MD"	"Maryland"	2371
3	"MO"	"Missouri"	2325
50	"WI"	"Wisconsin"	2282
6	"CO"	"Colorado"	2012
24	"MN"	"Minnesota"	1982
18	"SC"	"South Carolina"	1864
4	"AL"	"Alabama"	1851
42	"LA"	"Louisiana"	1848
21	"KY"	"Kentucky"	1837
38	"OR"	"Oregon"	1725
19	"OK"	"Oklahoma"	1715
37	"CT"	"Connecticut"	1663
54	"UT"	"Utah"	1628
7	"NV"	"Nevada"	1473
25	"IA"	"Iowa"	1331
16	"PR"	"Puerto Rico"	1317
51	"AR"	"Arkansas"	1152
17	"KS"	"Kansas"	1142
32	"MS"	"Mississippi"	1119
46	"NM"	"New Mexico"	889
29	"NE"	"Nebraska"	842
28	"ID"	"Idaho"	713
20	"WV"	"West Virginia"	692
13	"HI"	"Hawaii"	675
41	"NH"	"New Hampshire"	674
30	"ME"	"Maine"	644
12	"MT"	"Montana"	544
53	"RI"	"Rhode Island"	501
8	"DE"	"Delaware"	493
27	"SD"	"South Dakota"	429
35	"ND"	"North Dakota"	420
43	"AK"	"Alaska"	419
47	"DC"	"District of Columbia"	374
9	"VT"	"Vermont"	310
2	"WY"	"Wyoming"	244
*/



-- ##################################################
-- BENEFICIARY COUNTY
-- ##################################################
SELECT DISTINCT bene_county_cd
	,COUNT(DISTINCT desynpuf_id) AS desynpuf_id_count
FROM cms_raw.beneficiaries_2008
GROUP BY bene_county_cd
ORDER BY desynpuf_id_count DESC;

/*
Output of CMS SynPUF Sample 1:
bene_county_cd	desynpuf_id_count
200	3454
10	3223
20	3023
0	2897
60	2703
90	2433
400	2247
470	2154
120	2078
170	2066
150	2061
160	2045
50	1721
40	1710
250	1707
490	1700
590	1693
480	1676
310	1650
610	1649
290	1632
130	1580
141	1572
30	1546
620	1517
390	1503
70	1453
260	1445
100	1439
510	1413
440	1401
240	1330
530	1330
80	1236
810	1182
230	1180
270	1179
280	1158
370	1154
140	1150
420	1146
550	1128
460	1118
350	1099
430	1086
500	1059
540	1054
220	1045
700	1009
520	1003
410	991
330	990
360	968
580	964
320	932
560	931
300	913
800	906
910	904
570	895
210	894
340	882
190	859
780	825
180	802
380	790
110	783
450	769
770	764
650	737
600	724
630	706
660	705
940	665
331	656
640	622
710	581
720	537
750	518
680	517
690	455
860	405
730	390
760	376
790	372
670	361
999	349
740	343
840	321
830	288
890	265
900	259
970	248
880	246
930	225
950	223
820	213
850	206
960	196
989	181
801	180
920	174
921	171
791	134
870	129
986	128
980	120
991	108
451	105
892	100
981	87
641	86
982	85
990	81
194	79
988	74
711	65
622	59
411	56
911	51
564	50
953	48
11	44
241	43
288	43
551	43
992	43
291	42
972	42
591	41
631	41
653	41
843	38
948	38
563	37
794	36
985	36
461	35
974	35
581	33
421	32
191	31
885	31
734	30
841	30
222	28
341	28
651	27
984	27
757	26
973	25
471	24
561	24
821	24
962	24
983	24
111	22
281	22
882	22
891	22
731	21
861	21
961	21
987	20
511	19
951	19
978	19
342	18
552	18
879	18
913	18
946	18
947	18
971	18
701	17
792	17
838	17
881	17
943	17
251	16
88	15
771	15
541	14
582	14
831	14
942	14
977	14
994	14
25	13
311	13
652	13
661	13
758	13
871	13
954	13
963	13
321	12
462	12
751	12
756	12
812	12
883	12
949	12
952	12
312	11
343	11
601	11
654	11
811	11
884	11
901	11
941	11
945	11
993	11
996	11
743	10
761	10
795	10
802	10
902	10
131	9
213	9
381	9
611	9
752	9
755	9
772	9
842	9
212	8
522	8
562	8
671	8
703	8
754	8
832	8
55	7
224	7
328	7
702	7
722	7
783	7
834	7
851	7
874	7
888	7
932	7
975	7
113	6
211	6
223	6
441	6
822	6
931	6
979	6
34	5
292	5
301	5
391	5
681	5
784	5
803	5
976	5
1	4
612	4
621	4
785	4
835	4
845	4
867	4
876	4
903	4
955	4
14	3
161	3
221	3
271	3
362	3
531	3
592	3
662	3
782	3
878	3
893	3
361	2
412	2
431	2
521	2
542	2
583	2
691	2
712	2
741	2
744	2
796	2
797	2
844	2
875	2
886	2
887	2
117	1
392	1
672	1
753	1
793	1
804	1
862	1
912	1
*/