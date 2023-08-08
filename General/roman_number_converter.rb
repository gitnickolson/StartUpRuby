puts 'What number should be converted?'
original_number = gets.chomp
original_number = original_number.to_i

roman_numbers = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

result = ''
roman_numbers.each do |value, letter|
  result << letter * (original_number / value)
  original_number = original_number % value
end

puts result

