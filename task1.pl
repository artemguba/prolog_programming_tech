%ищет оптимальную конфигурацию
launch:-
write_ln('Вершины'), read(X),
write_ln('Вес ребер'), read(Y),
linked(X,Y,Z),
write_ln('Минимальное остевое дерево'),
write(Z).

launch:-
write_ln('ERROR').

%ищет соединение минимальной длины
%
%Z1 - выбранные ребра,
%Y- список ребер
%Z2 - результат
minimum([],Z,Z):- !.

minimum([[X1,X2,_]|Y],Z1,Z2):-
not(search(X1,X2,Z1,[X1])),!,
minimum(Y,[[X1,X2]|Z1],Z2).

minimum([_|Y],Z1,Z2):- minimum(Y,Z1,Z2). %пропустить ребро

%реализует поиск пути от вершины Х1 к вершине Х2
%алгоритм поиска - поиск в глубину.
%где, Y - список ребер, Z - список вершин (которые пройдены).
search(X1,X2,Y,_):- member([X1,X2],Y).

search(X1,X2,Y,_):- member([X2,X1],Y).

search(X1,X2,Y,Z):- member([X1,X3],Y),
not(member(X3,Z)), search(X3,X2,Y,[X3|Z]).

search(X1,X2,Y,Z):- member([X3,X1],Y),
not(member(X3,Z)), search(X3,X2,Y,[X3|Z]).

% реализует вставку в список (с сортировкой)
%
% L1 - список, X - элемент, а L2 - результат
ins(X,[],[X]).

ins([X1,X2,R1],[[Y1,Y2,R2]|L],[[X1,X2,R1]|[[Y1,Y2,R2]|L]]):- R1<R2,!.
ins(X,[Y|L1],[Y|L2]):- ins(X,L1,L2).

%реализует сортировку вставкой
%
%L - список,Y1 - отсортированный список, а Y3 - результат.
sortrast([],Y,Y). sortrast([X|L],Y1,Y3):- ins(X,Y1,Y2), sortrast(L,Y2,Y3).

%соединяет ребром компоненты связности.
%
%Z - результат X - вершины, Y - расстояния,
linked([X|L],Y,Z):- sortrast(Y,[],Y1), minimum(Y1,[],Z), all(X,L,Z).

%проверяет зону охвата всех компонент связности
% x -вершина, Z - список ребер L - список вершин
all(_,[],_).
all(X,[Y|L],Z):- search(X,Y,Z,[X]),!,all(X,L,Z).
