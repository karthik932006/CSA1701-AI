% Fruit-color facts

fruit_color(apple, red).
fruit_color(cherry, red).
fruit_color(strawberry, red).

fruit_color(banana, yellow).
fruit_color(mango, yellow).
fruit_color(pineapple, yellow).

fruit_color(orange, orange).

fruit_color(grapes, purple).

% Rule
fruit_of_color(Color, Fruit) :-
    fruit_color(Fruit, Color).