% Nathan Perez | 10.28.2023
% random s(CASP) progarm, playing around with syntax & truth states.

% two people are CloseFriends if both agree to being Friends
CloseFriends(X,Y) :- Friends(X,Y).
CloseFriends(X,Y) :- Friends(Y,X).

% two people x & y are roommates if roomMates at least one pair
roomMates(X,Y). 
LiveTogether(X,Y) :- roomMates(Y,X). % Order does not matter
LiveTogether(X,Y) :- roomMates(X,Y). % Order does not matter

Person(1).
Person(2).
Person(3).
Person(4).
Person(5).
Salt(1).
Salt(2).
Salt(3).
Friends(2,5).
Friends(3,4).
Friends(4,2).
Friends(4,3).
roomMates(4,1).

buySalt(X) :-  % a Person x should buy Salt if
  not -Salt(X).    % no evidence of having Salt 

borrowRoomMatesSalt(X) :- % a Person X should borrow Salt if
    not -Salt(X),           % assume it is true there is no Salt AND
    CloseFriends(X,Y),       % there is a Close friend has a Close friend Y
    LiveTogether(X,Y),       % and X and Y are roommates
	  Salt(Y).                 % and who has Salt

stealSaltFromRoomMate(X) :-
    not -Salt(X),         % assume it is true there is no Salt AND
    not CloseFriends(X,Y), % it can be assumed that X and Y are not Close Friends
    LiveTogether(X,Y),     % and X and Y are roommates
	  Salt(Y).               % Y has Salt 

stealSaltFromNeighbor(X) :-
    not -Salt(X),         % no evidence of X having Salt AND
    not CloseFriends(X,Y), % it can be assumed that X and Y are not Close Friends
    LiveTogether(X,Y),     % and X and Y are roommates
	  Salt(Y).               % Y has Salt