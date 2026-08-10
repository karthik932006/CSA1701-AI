def minimax(depth, is_max):
    scores = [10, -10, 0]

    if depth == 0:
        return scores[0]

    if is_max:
        best = -999
        for i in range(3):
            best = max(best, minimax(depth - 1, False))
        return best
    else:
        best = 999
        for i in range(3):
            best = min(best, minimax(depth - 1, True))
        return best

print("Best Score:", minimax(3, True))