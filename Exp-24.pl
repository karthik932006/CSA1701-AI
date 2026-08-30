% Initial state
initial_state(state(
    monkey_at(door),
    box_at(window),
    monkey_on_floor,
    bananas_hanging
)).

% Move monkey
move_monkey(
    state(monkey_at(X), Box, monkey_on_floor, Bananas),
    state(monkey_at(Y), Box, monkey_on_floor, Bananas)
) :-
    X \= Y.

% Push box
push_box(
    state(monkey_at(X), box_at(X), monkey_on_floor, Bananas),
    state(monkey_at(Y), box_at(Y), monkey_on_floor, Bananas)
) :-
    Y = center.

% Climb box
climb(
    state(monkey_at(center), box_at(center), monkey_on_floor, Bananas),
    state(monkey_at(center), box_at(center), monkey_on_box, Bananas)
).

% Grab bananas
grab_bananas(
    state(monkey_at(center), box_at(center), monkey_on_box, bananas_hanging),
    state(monkey_at(center), box_at(center), monkey_on_box, bananas_in_hand)
).