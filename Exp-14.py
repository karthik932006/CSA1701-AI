import math

data = [
    ["Sunny", "No"],
    ["Sunny", "No"],
    ["Rainy", "Yes"],
    ["Rainy", "Yes"],
    ["Cloudy", "Yes"]
]

def entropy(data):
    total = len(data)
    yes = sum(row[1] == "Yes" for row in data)
    no = total - yes

    e = 0

    for count in [yes, no]:
        if count != 0:
            p = count / total
            e -= p * math.log2(p)

    return e

print("Entropy:", entropy(data))

if entropy(data) == 0:
    print("Pure Decision")
else:
    print("Decision Tree can be created")
