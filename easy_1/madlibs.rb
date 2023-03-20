=begin
Problem: Create a simple mad-lib program that prompts for: 
a noun, a verb, an adverb, and an adjective 
and injects those into a story that you create.

-Input: 4 string words
-Output: Longer story string

Examples:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

Data Structures:
String

Algorithm:
LOOP
  GET string input 4x times
  IF input is a non-empty string
    BREAK word
  ELSE
    PRINT enter valid word
		END IF
END LOOP
Join values into strings
PRINT new string

Code:
=end

def word_setter(type)
  loop do
    print "Enter a #{type}: "
    word = gets.chomp
    break word unless word.empty? || word.class != String
    puts "Please enter a word"
  end
end

noun = word_setter('noun')
verb = word_setter('verb')
adjective = word_setter('adjective')
adverb = word_setter('adverb')

sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3].sample