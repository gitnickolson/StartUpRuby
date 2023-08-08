# frozen_string_literal: true

# rubocop:disable Metrics

def palindrome_test
  puts 'Which word would you like me to test?'
  palindrome = gets.chomp
  word_reverse = palindrome.reverse
  result = palindrome

  palindrome = palindrome.downcase
  word_reverse = word_reverse.downcase

  if word_reverse == palindrome
    puts "#{result} is a palindrome."
  else
    puts "#{result} is not a palindrome."
  end
end

def anagram_test
  puts "This will require you to enter 2 words for me to compare."
  puts "What's the first word?"
  anagram = gets.chomp
  puts "What's the second word?"
  anagram1 = gets.chomp
  anagram = anagram.downcase
  anagram1 = anagram1.downcase

  anagram2 = anagram.chars
  anagram3 = anagram1.chars

  sorted_word = anagram2.sort
  sorted_word1 = anagram3.sort

  if sorted_word == sorted_word1
    puts 'These words are Anagrams.'
  else
    puts "These words aren't Anagrams."
  end
end

def choice_method
  puts 'What should I test for?'
  choice = gets.chomp
  if choice.start_with?('Pali', 'pali')
    palindrome_test
  elsif choice.start_with?('Ana', 'ana')
    anagram_test
  elsif !choice.start_with?('Ana', 'ana', 'Pali', 'pali')
    puts 'Please input if I should either test for an Anagram or a Palindrome.'
    choice_method
  end
end

########################################################################################################################

choice_method

# rubocop:enable Metrics
