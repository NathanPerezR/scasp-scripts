% s(casp) programming
:- use_module(library(scasp)).
% uncomment to suppress warnings
%:- style_check(-discontiguous).
%:- style_check(-singleton).
%:- set_prolog_flag(scasp_unknown, fail).

% todo: still need to account for aps
% todo: still need to account for extra hours
% todo: can likely adjust the core to make it easier to aduit, hours dont matter, the things at the bottom do
% todo: y is a prereq of x
% todo: y is a pre or corequiste of x

% domains
cs(1200).
cs(1337).
cs(2305).
cs(2340).
cs(3162).
cs(3305).
cs(3341).
cs(3345).
cs(3354).
cs(3377).
cs(4141).
cs(4337).
cs(4341).
cs(4347).
cs(4348).
cs(4349).
cs(4384).
cs(4485).
cs(43xx).
cs(43yy).


math(2413).
math(2414).
math(2417).
math(2418).
math(2419).

phys(2125).
phys(2126).
phys(2325).
phys(2326).

ams(2300).
ams(2341).

huma(1301).

lit(2331).

phil(1301).
phil(2316).
phil(2317).

psy(2301).

govt(2305).
govt(2306).

rhet(1302).

econ(2301).
econ(2302).

geog(2303).

crim(1301).

film(2332).

ahst(1301).
ahst(1304).
ahst(2331).

art(1301).

musi(1306).

thea(1310).

freshmen_year(X) :-

  %TODO need to find a way of doing the following:
    X has taken all classes in the domain of Y, is there a better way then this

% freshmen_year-----

                      ecs_1100( ).
                       cs_1200( ).
     m2413_2417() :- math_2413( ). % must have one or the other
     m2413_2417() :- math_2417( ). % must have one or the other
                       cs_1337( ).
                    corehours6( ).
                     univ_1010( ).

                  cs_2336_2337( ).
                       cs_2305( ).
                math_2414_2419( ).
                     phys_2325( ).
                     phys_2125( ).
%-----sophmore_year------
                       cs_3305( ).
                       cs_2340( ).
                     phys_2326( ).
                     phys_2126( ).
                        core_6( ).

                       cs_3341( ).
                       cs_3345( ).
                       cs_3377( ).
                     math_2418( ).
                        core_6( ).
%-----junior_year--------
                       cs_3162( ).
                       cs_4348( ).
                       cs_4349( ).
                         core3( ).
                         free1( ).
                         
                       cs_3354( ).
                       cs_4337( ).
                       cs_4341( ).
                       cs_4141( ).
                      ecs_3390( ).
                         core3( ).
%-----senior_year-------
                       cs_4384( ).
                       cs_43xx( ).
                       cs_43xx( ).

                       cs_4347( ).
                         free6( ).

                       cs_4485( ).
                       cs_43xx( ).
                         free6( ).


%-----core---------------------------------------------------
three_hour_arts(X) :- 
    ahst_1301(X)
  ; ahst_1304(X)
  ; ahst_2331(X)
  ;  art_1301(X)
  ; film_2332(X)
  ; musi_1306(X)
  ; thea_1310(X).

three_hours_humanities(X) :-  
     ams_2300(X)
  ;  ams_2341(X)
  ; huma_1301(X)
  ;  lit_2331(X)
  ; phil_1301(X)
  ; phil_2316(X)
  ; phil_2317(X).

% TODO
six_hours_history(X) :- .

three_hours_social_science(X) :- 
    crim_1301(X)
  ; econ_2301(X)
  ; econ_2302(X)
  ; geog_2303(X)
  ;  psy_2301(X).

rhet_1302( ).

government(X) :- 
    govt_2305(X) 
  ; govt_2306(X).
%-----core---------------------------------------------------




/** <ex> your ex queries go here, e.g.
?- ? p( ).
*/
