% 


% s(CASP) Programming
:- use_module(library(scasp)).
% Uncomment to suppress warnings
%:- style_check(-discontiguous).
%:- style_check(-singleton).
%:- set_prolog_flag(scasp_unknown, fail).

% peoples name
person(nathan).
 
% domains
class_type(cs).
class_type(math).
class_type(phys).
class_type(ams).
class_type(huma).
class_type(lit).
class_type(phil).
class_type(psy).
class_type(govt).
class_type(rhet).
class_type(econ).
class_type(geog).
class_type(crim).
class_type(film).
class_type(ahst).
class_type(art).
class_type(musi).
class_type(thea).

  class(cs, 1200).
  class(cs, 1337).
  class(cs, 2305).
  class(cs, 2340).
  class(cs, 3162).
  class(cs, 3305).
  class(cs, 3341).
  class(cs, 3345).
  class(cs, 3354).
  class(cs, 3377).
  class(cs, 4141).
  class(cs, 4337).
  class(cs, 4341).
  class(cs, 4347).
  class(cs, 4348).
  class(cs, 4349).
  class(cs, 4384).
  class(cs, 4485).
  class(cs, 4300). % any 43XX, can not be a class listed above
  class(cs, 4300). % any 43XX, can not be a class listed above
class(math, 2413).
class(math, 2414).
class(math, 2417).
class(math, 2418).
class(math, 2419).
class(phys, 2125).
class(phys, 2126).
class(phys, 2325).
class(phys, 2326).
 class(ams, 2300).
 class(ams, 2341).
class(huma, 1301).
 class(lit, 2331).
class(phil, 1301).
class(phil, 2316).
class(phil, 2317).
 class(psy, 2301).
class(govt, 2305).
class(govt, 2306).
class(rhet, 1302).
class(econ, 2301).
class(econ, 2302).
class(geog, 2303).
class(crim, 1301).
class(film, 2332).
class(ahst, 1301).
class(ahst, 1304).
class(ahst, 2331).
 class(art, 1301).
class(musi, 1306).
class(thea, 1310).

% def of what it means to be in a class
in(X, Y, Z) :- person(X), class(Y, Z).

% ----freshmen_year-----

%-----sophmore_year------

%-----junior_year--------

%-----senior_year-------

%-----core---------------------------------------------------

%-----script used to create facts for saying someone has taken a class----------------------------------------
generate_facts_for_x(X) :- % Replace with the actual persons name when calling
Courses = [cs(1301), cs(1200), cs(1337), cs(2305), cs(2340), cs(3162), cs(3305), cs(3341), cs(3345), cs(3354) , cs(3377), cs(4141), cs(4337), cs(4341), cs(4347), cs(4348), cs(4349), cs(4384), cs(4485), cs(4300), cs(4300) 
              ,math(2413) ,math(2414) ,math(2417) ,math(2418) ,math(2419) ,phys(2125) ,phys(2126) ,phys(2325) ,phys(2326) ,ams(2300) ,ams(2341) ,huma(1301) ,lit(2331) ,phil(1301) ,phil(2316) ,phil(2317) ,psy(2301) ,govt(2305) 
              ,govt(2306) ,rhet(1302) ,econ(2301) ,econ(2302) ,geog(2303) ,crim(1301) ,film(2332) ,ahst(1301) ,ahst(1304) ,ahst(2331) ,art(1301) ,musi(1306) ,thea(1310)],    
generate_facts(X, Courses).

% generates a list of facts in the format in(NAME, COURSETYPE(ID))
generate_facts(_, []).
generate_facts(X, [Course | Rest]) :-
    format("in(~w, ~w).~n", [X, Course]),
    generate_facts(X, Rest).

%%%---------------------------------------------------------------------------------------

% final script used to audit degrees ---------------------------------------------------------




/** <ex> To make a list of facts for saying 'test' is in the courses listed in the generate_facts_for_x function 
 * generate_facts_for_x(test).
*/
