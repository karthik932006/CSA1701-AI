% Symptoms

has_symptom(john, fever).
has_symptom(john, cough).
has_symptom(john, body_pain).

has_symptom(alice, sneezing).
has_symptom(alice, runny_nose).

has_symptom(peter, fever).
has_symptom(peter, cough).
has_symptom(peter, breathing_problem).

% Rules

diagnosis(Patient, flu) :-
    has_symptom(Patient, fever),
    has_symptom(Patient, cough),
    has_symptom(Patient, body_pain).

diagnosis(Patient, common_cold) :-
    has_symptom(Patient, sneezing),
    has_symptom(Patient, runny_nose).

diagnosis(Patient, possible_respiratory_infection) :-
    has_symptom(Patient, fever),
    has_symptom(Patient, cough),
    has_symptom(Patient, breathing_problem).