# Map Coloring using Backtracking

graph = {
    'A': ['B', 'C'],
    'B': ['A', 'C', 'D'],
    'C': ['A', 'B', 'D'],
    'D': ['B', 'C']
}

colors = ['Red', 'Green', 'Blue']

result = {}

def is_safe(node, color):
    for neighbor in graph[node]:
        if neighbor in result and result[neighbor] == color:
            return False
    return True

def solve(nodes, index):
    if index == len(nodes):
        return True

    node = nodes[index]

    for color in colors:
        if is_safe(node, color):
            result[node] = color

            if solve(nodes, index + 1):
                return True

            del result[node]

    return False

nodes = list(graph.keys())

if solve(nodes, 0):
    print("Color Assignment:")
    for node in result:
        print(node, "->", result[node])
else:
    print("No solution exists.")