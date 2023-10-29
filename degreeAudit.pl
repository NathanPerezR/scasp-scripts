% TODO:still need to account for APs
% TODO:still need to account for extra hours
% TODO:still need to account for eh
% TODO:should prob remove the _
% TODO:can likely adjust the core to make it easier to aduit, hours dont matter, the things at the bottom do

% TODO: y is a prereq of x

% TODO: y is a pre OR corequiste of x

% Freshmen_Year-----
ecs_1100_(X).
cs_1200_(X).
math_2413_2417(X) :- math_2413(X).
math_2413_2417(X) :- math_2417(X).
cs_1337_(X).
coreHours6(X).
univ_1010_(X).

cs_2336_2337(X).
cs_2305_(X).
math_2414_2419(X).
phys_2325_(X).
phys_2125_(X).

%-----Sophmore_Year------
cs_3305(X).
cs_2340(X).
phys_2326(X).
phys_2126(X).
core_6(X).

cs_3341_(X).
cs_3345_(X).
cs_3377_(X).
math_2418(X).
core_6_(X).

%-----Junior_Year--------
cs_3162_(X).
cs_4348_(X).
cs_4349_(X).
core3(X).
free1(X).

cs_3354(X).
cs_4337(X).
cs_4341(X).
cs_4141(X).
ecs_3390(X).
core3(X).

%-----Senior_Year-------
cs_4384(X).
cs_43XX(X).
cs_43XX(X).

cs_4347(X).
free6(X).

cs_4485(X).
cs_43XX(X).
free6(X).


%-----CORE---------------------------------------------------
3_Hour_arts(X) :- Ahst_1301(X).
3_Hour_arts(X) :- Ahst_1304(X.)
3_Hour_arts(X) :- Ahst_2331(X).
3_Hour_arts(X) :- Artsi301(X).
3_Hour_arts(X) :- Film_2332(X).
3_Hour_arts(X) :- Musi_1306(X).
3_Hour_arts(X) :- Thea_1310(X).

3_hours_humanities(X) :- Ams_2300_(X).
3_hours_humanities(X) :- Ams_2341_(X).
3_hours_humanities(X) :- Huma_1301(X).
3_hours_humanities(X) :- Lit_2331_(X).
3_hours_humanities(X) :- Phil_1301(X).
3_hours_humanities(X) :- Phil_2316(X).
3_hours_humanities(X) :- Phil_2317(X).

6_hours_history(X) :- Hist_1301(X).
6_hours_history(X) :- Hist_1302(X).
6_hours_history(X) :- Hist_2301(X).
6_hours_history(X) :- Hist_2330(X).
6_hours_history(X) :- Hist_2332(X).

3_hours_social_science(X) :- Crim_1301(X).
3_hours_social_science(X) :- Econ_2301(X).
3_hours_social_science(X) :- Econ_2302(X).
3_hours_social_science(X) :- Geog_2303(X).
3_hours_social_science(X) :- Psy_2301_(X).

rhet(X) :- rhet_1302(X)

government(X) :- Govt_2305(X)
government(X) :- Govt_2306(X)
%-----CORE---------------------------------------------------

