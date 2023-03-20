=begin
Problem: Write a method that takes integer n as an argument,
and displays a right triangle whose base has n stars.
The hypotenuse of the triangle should have options to
display at any corner of the screen

Examples:
triangle(5, NE)

    *
   **
  ***
 ****
*****

triangle(9, NE)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

Data Structures:

Algorithm:
GET integer & position
CASE position
  WHEN NW
		  PRINT NW Triangle
		WHEN SW
		  PRINT SW Triangle
		WHEN NE
		  PRINT NE Triangle
		WHEN SE
		  PRINT SE Triangle
END CASE

Code:
=end

def normal(int)
  int.times { |i| puts ('*' * i) + '*' }
end

def upside_down(int)
  int.times { |i| puts '*' * (int - i) }
end

def mirrored(int)
  int.times { |i| puts (' ' * ((int - 1) - i) + ('*' * i) + '*') }
end

def upside_down_mirrored(int)
  int.times { |i| puts (' ' * i) + ('*' * (int - i)) }
end

def triangle(int, position = 'NW')
  case position
    when 'NW' then normal(int)
    when 'SW' then upside_down(int)
    when 'NE' then mirrored(int)
    when 'SE' then upside_down_mirrored(int)
  end
end

triangle(9)
triangle(9, 'SW')
triangle(9, 'NE')
triangle(9, 'SE')