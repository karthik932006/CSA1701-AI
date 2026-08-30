% Initial facts

fact(sunny).
fact(has_umbrella).

% Rules

rule(sunny, hot).
rule(hot, drink_water).
rule(has_umbrella, protected_from_rain).

% Forward chaining

derive :-
    fact(X),
    rule(X, Y),
    \+ fact(Y),
    assertz(fact(Y)),
    derive.

derive.