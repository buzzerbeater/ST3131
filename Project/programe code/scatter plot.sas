 ODS HTML CLOSE;
  ODS HTML;
data climate;
 	input H MSL T  C SUN V RF D ;
	datalines;
84.84285714	1011.671429	27.31428571	86.25	8.892857143	3.428571429	2.4	0
89.92857143	1009.857143	25.94285714	89.28571429	2.828571429	2.214285714	52	0
89.21428571	1008	26.97142857	88.03571429	7.014285714	2.071428571	24.4	0
85.62857143	1009.3	26.54285714	88.57142857	5.157142857	2.314285714	9.6	0
87.77142857	1010.657143	26.65714286	87.32142857	5.978571429	2.928571429	40.6	0
82.67142857	1010.271429	27.47142857	85.35714286	9.385714286	3.428571429	6.4	0
89.14285714	1009.128571	26.6	88.21428571	4.092857143	2.057142857	35.8	0
83.4	1006.9	28	86.78571429	7.964285714	2.585714286	0.8	0
88.97142857	1006.985714	26.95714286	88.92857143	3.671428571	1.757142857	56.4	0
87.61428571	1008.7	26.44285714	91.07142857	1.785714286	2.114285714	124.4	0
86.51428571	1010.228571	27.44285714	88.21428571	5.192857143	2.042857143	23.6	0
85.42857143	1011.2	27.51428571	87.14285714	6.264285714	1.771428571	43.6	0
83.17142857	1011.742857	27.37142857	87.85714286	5.471428571	1.842857143	55.8	0
87.41428571	1009.685714	27.31428571	88.21428571	5.392857143	1.842857143	106	0
86.68571429	1008.685714	27.45714286	87.5	5.421428571	1.657142857	87.4	0
82.78571429	1009.3	28.17142857	87.14285714	6.992857143	1.8	9	0
85.77142857	1008.842857	27.42857143	88.75	3.178571429	1.642857143	117.6	1
81.47142857	1009.3	28.4	87.85714286	7.621428571	1.842857143	47.2	1
83	1008.514286	28.54285714	88.21428571	6.035714286	1.9	52.4	1
81.54285714	1008.714286	28.32857143	87.85714286	5.378571429	2.414285714	40.2	1
81.27142857	1007.314286	28.6	88.39285714	3.4	1.814285714	2.4	1
80.7	1009.814286	28.57142857	88.21428571	5.4	2.385714286	39.6	1
76.98571429	1009.8	28.95714286	87.32142857	8.142857143	2.971428571	1	1
77.15714286	1010.385714	28.8	87.5	7.85	2.714285714	7.6	1
83.55714286	1007.628571	27.41428571	88.57142857	5.228571429	2.371428571	67.2	1
83.02857143	1009.114286	27.4	89.46428571	2.814285714	2.257142857	35	1
84.5	1010.828571	27.18571429	88.75	5.95	2.057142857	28.4	1
75.5	1009.657143	28.61428571	86.25	9.421428571	3.3	0	1
80.67142857	1010.428571	27.97142857	88.21428571	5.707142857	3.142857143	23.6	1
75.18571429	1010.442857	28.72857143	84.10714286	9.228571429	3.9	0	1
78.61428571	1009.657143	28.07142857	87.14285714	6.707142857	3.442857143	61.8	1
81.51428571	1010.242857	27.55714286	88.03571429	5.085714286	2.442857143	18.6	1
80.15714286	1010.028571	27.78571429	86.25	6.378571429	3.185714286	46.2	1
79.94285714	1011.271429	27.55714286	87.85714286	4.421428571	1.928571429	22.4	1
79.11428571	1010.442857	28.48571429	87.5	5.714285714	2.4	0	1
78.71428571	1010.157143	27.9	88.92857143	5.621428571	1.857142857	35.6	1
78.17142857	1011.342857	28.18571429	87.67857143	5.764285714	1.814285714	17.4	0
82.02857143	1010.171429	27.65714286	86.96428571	5.25	1.642857143	40	0
88.11428571	1010.728571	26.67142857	88.21428571	4.157142857	1.528571429	56.2	0
76.3	1008.242857	28.55714286	85.71428571	8.657142857	2.242857143	0	0
84.28571429	1009.585714	26.85714286	89.46428571	4.414285714	1.771428571	29.6	0
86.74285714	1009.242857	26.87142857	89.10714286	3.214285714	1.414285714	50.4	0
85.28571429	1010.071429	27.44285714	88.21428571	5.242857143	1.657142857	64.6	0
86	1009.642857	27.07142857	87.67857143	4.321428571	1.628571429	63.4	0
85.24285714	1010.042857	27.02857143	88.92857143	3.857142857	1.742857143	71.2	0
87.04285714	1010.2	26.64285714	89.28571429	3.392857143	1.842857143	122.2	0
88.7	1009.114286	26.52857143	88.39285714	4.914285714	1.728571429	57.8	0
86.12857143	1008.028571	26.58571429	88.57142857	3.157142857	1.914285714	25.6	0




proc sgplot data=climate;
  scatter x=MSL y =H / group=D;
run;
proc sgplot data=climate;
  scatter x=T y =H / group=D;
run;
proc sgplot data=climate;
  scatter x=C y =H / group=D;
run;
proc sgplot data=climate;
  scatter x=SUN y =H / group=D;
run;
proc sgplot data=climate;
  scatter x=V y =H / group=D;
run;
proc sgplot data = climate;	
	 scatter x=RF y =H / group=D;
run;
