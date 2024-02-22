% Rule for determining f(x) for x < 0
f(X, K, Result) :-
  X < 0,
  Result is K.

% Rule for determining f(x) for x > 0
f(X, K, Result) :-
  X > 0,
  calculate_sum(X, K, 0, Result).

% Recursive case
calculate_sum(X, K, Accumulator, Result) :-
  K >= 1,
  NewAccumulator is Accumulator + K * X + 2,
  NextK is K - 1,
  calculate_sum(X, NextK, NewAccumulator, Result).

% Base case
calculate_sum(_, 0, Result, Result).