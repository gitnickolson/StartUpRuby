stock_market = [22, 13, 4, 66, 32, 11, 66, 33, 24, 63, 64, 72, 5, 7, 12, 2, 8]
#stock_market = gets.chomp.to_a
def stock_picker(stock_market)
  stock_max = stock_market.max
  stock_min = stock_market.min
  profit = stock_max - stock_min
  result = Array.new

  stock_market.each_with_index do |number, index|
    if number == stock_min
      result << index
    elsif number == stock_max
      result << index
    end
  end

  p result
  puts "You should buy on day ##{result[0]} and sell on day ##{result[1]}"
  puts "Your profit will be #{profit}"
end

stock_picker(stock_market)