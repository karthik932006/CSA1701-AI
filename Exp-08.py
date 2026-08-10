# Travelling Salesman Problem using Nearest Neighbor Algorithm

def tsp(graph, start):
    n = len(graph)
    visited = [False] * n
    path = [start]
    visited[start] = True
    cost = 0
    current = start

    for _ in range(n - 1):
        nearest = None
        min_cost = float('inf')

        for city in range(n):
            if not visited[city] and graph[current][city] < min_cost:
                min_cost = graph[current][city]
                nearest = city

        path.append(nearest)
        visited[nearest] = True
        cost += min_cost
        current = nearest

    cost += graph[current][start]
    path.append(start)

    return path, cost


graph = [
    [0, 10, 15, 20],
    [10, 0, 35, 25],
    [15, 35, 0, 30],
    [20, 25, 30, 0]
]

path, cost = tsp(graph, 0)

print("Path:", path)
print("Total Cost:", cost)