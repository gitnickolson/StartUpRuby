#stock_market = [22, 13, 4, 66, 32, 11, 66, 33, 24, 63, 64, 72, 5, 7, 12, 2, 8]
stock_market = gets.chomp.split(", ")

stock_market.each_with_index do |number, index|
  stock_market[index] = number.to_i
end

def stock_picker(stock_market)
  stock_max = stock_market.max
  stock_min = stock_market.min
  profit = stock_max - stock_min
  result = Array.new
  temp_index_min = 0
  temp_index_max = 0

  stock_market.each_with_index do |number, index|
    if number == stock_min
      result << index
      temp_index_min = index

    elsif number == stock_max
      result << index
      temp_index_max = index
    end
  end


  p result
  if temp_index_min < temp_index_max
    puts "You should buy on day ##{result[0]} and sell on day ##{result[1]}"
  else
    puts "You should buy on day ##{result[1]} and sell on day ##{result[0]}"
  end
  puts "Your profit will be #{profit}"
end

stock_picker(stock_market)