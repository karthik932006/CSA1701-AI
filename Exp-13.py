def alphabeta(depth, alpha, beta, maximizing):
    if depth == 0:
        return 10

    if maximizing:
        value = -999

        for i in range(2):
            value = max(value, alphabeta(depth - 1, alpha, beta, False))
            alpha = max(alpha, value)

            if alpha >= beta:
                print("Branch Pruned")
                break

        return value

    else:
        value = 999

        for i in range(2):
            value = min(value, alphabeta(depth - 1, alpha, beta, True))
            beta = min(beta, value)

            if alpha >= beta:
                print("Branch Pruned")
                break

        return value


result = alphabeta(3, -999, 999, True)
print("Best Value:", result)