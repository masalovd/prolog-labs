%* ?Who, ?Whom
is_sister(X, Y) :- 
  is_female(X),
  is_parent(Parent, X), 
  is_parent(Parent, Y), 
  X\=Y.

%* ?Parent, ?Child
is_parent(yaroslav, izyaslav).
is_parent(yaroslav, vsevolod).
is_parent(yaroslav, anastasia).
is_parent(ingigerda, izyaslav).
is_parent(ingigerda, vsevolod).
is_parent(ingigerda, anastasia).
%* ?Name
is_male(yaroslav).
is_male(izyaslav).
is_male(vsevolod).
is_female(ingigerda).
is_female(anastasia).
%* ?Husband ?Wife
marriage(yaroslav, ingigerda).