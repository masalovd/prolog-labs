%+X,+Final X,+Step Size,+N, 
% -List of Function Values
func_main(X, Xf, H, N, L):-
    Xf1 is Xf + H/100,
    func_list(X, Xf1, H, N, L).

%+X,+Final X,+Step Size,+N, 
% -List of Function Values
func_list(X, Xf, H, N, [F|Fs]):-
    X =< Xf,
    X1 is X + H,
    sum_right(X, N, 0, SumResult),
    F is SumResult + sin(X**2),
    func_list(X1, Xf, H, N, Fs).

func_list(X, Xf, _, _, []):-
    X > Xf.


sum_right(X, I, Acc, F):-
    I >= 2,
    Acc1 is Acc + 1 / (X**2 + I),
    I1 is I - 1,
    sum_right(X, I1, Acc1, F).
sum_right(_, 1, S, S).