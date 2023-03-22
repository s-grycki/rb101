=begin
Problem: Print all odd numbers from 1 to 99.
Each number should be on a seperate line

Input: Range
Output: Integers

Data Strucutres:
Range, Array

Algorithm:
FOR each val IN (1..99)
  IF val.odd?
    PRINT val
  END IF
END FOR

Code:

=end

(1..99).to_a.select { |int| puts int if int.odd? }