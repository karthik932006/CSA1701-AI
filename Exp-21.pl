% Facts
bird(parrot).
bird(eagle).
bird(pigeon).
bird(penguin).
bird(ostrich).
bird(sparrow).

can_fly(parrot).
can_fly(eagle).
can_fly(pigeon).
can_fly(sparrow).

cannot_fly(penguin).
cannot_fly(ostrich).

% Rules
flies(Bird) :-
    can_fly(Bird).

does_not_fly(Bird) :-
    cannot_fly(Bird).