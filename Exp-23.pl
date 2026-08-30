% Recommended foods

diet(diabetes, vegetables).
diet(diabetes, whole_grains).
diet(diabetes, nuts).

diet(anemia, spinach).
diet(anemia, beans).
diet(anemia, beetroot).

diet(fever, fruits).
diet(fever, soup).
diet(fever, water).

diet(hypertension, vegetables).
diet(hypertension, fruits).
diet(hypertension, low_salt_food).

% Rule to recommend diet
recommend_diet(Disease, Food) :-
    diet(Disease, Food).