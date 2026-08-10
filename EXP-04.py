from collections import deque

start = (3, 3)
goal = (0, 0)

q = deque([start])
visited = {start}

while q:
    state = q.popleft()
    print(state)

    if state == goal:
        print("Goal Reached")
        break

    m, c = state

    for dm, dc in [(1,0),(0,1),(1,1),(2,0),(0,2)]:
        nm, nc = max(0,m-dm), max(0,c-dc)

        if (nm, nc) not in visited:
            visited.add((nm,nc))
            q.append((nm,nc))