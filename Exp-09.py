from queue import PriorityQueue

graph = {
    'A': [('B',1), ('C',3)],
    'B': [('D',3), ('E',6)],
    'C': [('F',5)],
    'D': [('G',2)],
    'E': [('G',1)],
    'F': [('G',2)],
    'G': []
}

heuristic = {
    'A':6,
    'B':4,
    'C':4,
    'D':2,
    'E':1,
    'F':2,
    'G':0
}

def astar(start, goal):
    pq = PriorityQueue()
    pq.put((0, start))
    came_from = {}
    cost_so_far = {start:0}

    while not pq.empty():
        _, current = pq.get()

        if current == goal:
            break

        for neighbor, weight in graph[current]:
            new_cost = cost_so_far[current] + weight

            if neighbor not in cost_so_far or new_cost < cost_so_far[neighbor]:
                cost_so_far[neighbor] = new_cost
                priority = new_cost + heuristic[neighbor]
                pq.put((priority, neighbor))
                came_from[neighbor] = current

    path = []
    node = goal
    while node != start:
        path.append(node)
        node = came_from[node]
    path.append(start)
    path.reverse()

    return path

print("Shortest Path:", astar('A','G'))