% Nathan Perez | 10.28.2023
% random s(CASP) progarm, playing around with syntax & truth states.

% two people x & y are roommates if roomMates at least one pair
% two people are closefriends if both agree to being friends
closefriends(X,Y) :- friends(X,Y).
closefriends(X,Y) :- friends(Y,X).

% two people x & y are roommates if roommates at least one pair
livetogether(X,Y) :- roommates(Y,X). % order does not matter
livetogether(X,Y) :- roommates(X,Y). % order does not matter

person(1).
person(2).
person(3).
person(4).
person(5).
salt(1).
salt(2).
salt(3).
friends(2,5).
friends(3,4).
friends(4,2).
friends(4,3).
roommates(4,1).

buy_salt(X) :-  % a person x should buy salt if
  not -salt(X).   % no evidence of having salt 

borrow_roommates_salt(X) :- % a person x should borrow salt if
    not -salt(X),           % assume it is true there is no salt and
    closefriends(X,Y),        % there is a close friend has a close friend y
    livetogether(X,Y),        % and x and y are roommates
	  salt(Y).                  % and who has salt

steal_salt_from_roommate(X) :-
    not -salt(X),         % assume it is true there is no salt and
    not closefriends(X,Y),  % it can be assumed that x and y are not close friends
    livetogether(X,Y),      % and x and y are roommates
	  salt(Y).                % y has salt 

steal_salt_from_neighbor(X) :-
    not -salt(X),         % no evidence of x having salt and
    not closefriends(X,Y),  % it can be assumed that x and y are not close friends
    livetogether(X,Y),      % and x and y are roommates
	  salt(Y).                % y has salt