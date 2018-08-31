# Write a method that will take a short line of text, and print it within a box.

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+


def print_in_box(string)
  row = "+"
  space = ""
  (string.length + 2).times do
    row << "-"
    space << " "
  end
  row << "+"

  puts row
  puts "|#{space}|"
  puts "| #{string} |"
  puts "|#{space}|"
  puts row
end

print_in_box('This is America!')