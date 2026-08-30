% Graph edges

edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).

edge(b, a).
edge(c, a).
edge(d, b).
edge(e, b).
edge(f, c).

% BFS

bfs(Start, Goal, Path) :-
    bfs_queue([[Start]], Goal, RevPath),
    reverse(RevPath, Path).

bfs_queue([[Goal|Rest]|_], Goal, [Goal|Rest]).

bfs_queue([[Current|Rest]|Queue], Goal, Path) :-
    findall(
        [Next, Current|Rest],
        (
            edge(Current, Next),
            \+ member(Next, [Current|Rest])
        ),
        NewPaths
    ),
    append(Queue, NewPaths, UpdatedQueue),
    bfs_queue(UpdatedQueue, Goal, Path).