=begin
Problem: Write a method that will take a short line of text, and print it within a box.
-Input: String
-Output: String inside text box

-Rules:
-Box has one line of padding top/bottom
-Box has one space of padding right/left
-Text is in box center

Examples:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

Data Structures:
-String

Algorithm:
-GET string
-PRINT top line relative to string length + 2 '+'
-PRINT top padding relative to string length + 2 '-'
-PRINT center w/ string input + 2 spaces
-PRINT bottom padding relative to string length + 2 '-'
-PRINT bottom line relative to string length + 2 '+'

Code:
=end

def top_bottom_lines(string)
  "+#{'-' * (string.length + 2)}+"
end

def top_bottom_padding(string)
  "|#{' ' * (string.length + 2)}|"
end

def center_message(string)
  puts("| #{string} |")
end

def print_in_box(string)
  puts top_bottom_lines(string)
  puts top_bottom_padding(string)
  center_message(string)
  puts top_bottom_padding(string)
  puts top_bottom_lines(string)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')