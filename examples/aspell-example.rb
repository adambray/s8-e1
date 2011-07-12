require 'rubygems'
require 'ffi'
require File.expand_path('../../lib/speller', __FILE__)

#Create a new Checker object
my_checker = Speller::Checker.new

#Checks if a word is correct
puts my_checker.correct?("word")
puts my_checker.correct?("wordd")

#Returns an array of suggestions, nil if the word is correct
#Should it be an empty array instead?
puts my_checker.suggest("wordd").join(", ")

#Check a whole string, returns the word, offset, and suggestions for the first mispelled word
result = my_checker.check_string("This is a a testz")
if result
  puts "The word '#{result[0]}' is misspelled at offset #{result[1]}"
  puts "Suggested spellings: #{result[2].join(", ")}"
else
  puts "No mispellings found"
end