factorial(1, 1).
factorial(N, F) :- N1 is N-1, factorial(N1, F1), F is F1*N.
