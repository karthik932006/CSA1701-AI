% Parent facts
parent(john, mary).
parent(john, david).
parent(susan, mary).
parent(susan, david).

parent(david, peter).
parent(david, anna).
parent(linda, peter).
parent(linda, anna).

% Rules

father(X, Y) :-
    parent(X, Y),
    male(X).

mother(X, Y) :-
    parent(X, Y),
    female(X).

% Gender facts
male(john).
male(david).
male(peter).

female(susan).
female(linda).
female(mary).
female(anna).

% Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Sibling
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.