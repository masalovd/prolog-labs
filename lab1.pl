%* ?Name1, ?Name2 
can_compete(X, Y) :- 
  sportsman(X, Sport, Class, Gender), 
  sportsman(Y, Sport, Class, Gender),
  X \= Y.

%* ?Name, ?Sport, ?Class, ?Gender
sportsman(vitaliy, box, proffessional, male).
sportsman(volodymyr, box, proffessional, male).
sportsman(kateryna, box, proffessional, female).
sportsman(svitlana, box, amateur, female).
sportsman(oleksandr, box, amateur, male).
sportsman(sergiy, football, proffessional, male).
sportsman(andrew, football, proffessional, male).
sportsman(andrew, box, proffessional, male).