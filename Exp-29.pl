% Facts

bird(tweety).
has_feathers(tweety).

% Rules

can_fly(X) :-
    bird(X),
    has_feathers(X).