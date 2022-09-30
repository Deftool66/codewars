# DESCRIPTION:
# Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

# Examples
# "the-stealth-warrior" gets converted to "theStealthWarrior"
# "The_Stealth_Warrior" gets converted to "TheStealthWarrior"

# mysolution

def to_camel_case(str)
  # a function that convert a dash/underscore delimited words into an Upper Camel Case string.
  array  = str.split(/_|-/)
  first_word = array.first
  array.shift
  "#{first_word}" + "#{array.map{|word| word.capitalize}.join("")}"
end
