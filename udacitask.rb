require_relative 'todolist.rb'

# Creates a new todo list
items = TodoList.new("Items")

# Add four new items
items.add_chore("Get dry cleaning TODAY")
items.add_chore("Get diapers and milk on the way home")
items.add_chore("Call lawyer for the speeding ticket")
items.add_chore("Call comcast, they overcharged again!")
# Print the list
items.print_list
# Delete the first item
items.delete_chore(0)
# Print the list
items.print_list
# Delete the second item
items.delete_chore(1)
# Print the list
items.print_list
# Update the completion status of the first item to complete
items.finished_chore(0)
# Print the list
items.print_list
# Update the title of the list
items.update_tittle
# Print the list
items.print_list
# Marking all items incomplete
items.not_finished
items.print_list