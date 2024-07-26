member(Head, [Head |_]).
member(Head, [_ |Tail ]):- member(Head, Tail).


