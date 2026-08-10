# Initial state of rooms
rooms = {
    "A": "Dirty",
    "B": "Dirty"
}

# Visit each room
for room in rooms:

    # Check whether room is dirty
    if rooms[room] == "Dirty":

        print("Cleaning Room", room)

        # Make room clean
        rooms[room] = "Clean"

# Display final state
print("\nFinal State:")
print(rooms)