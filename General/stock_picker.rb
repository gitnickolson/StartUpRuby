#stock_market = [22, 13, 4, 66, 32, 11, 66, 33, 24, 63, 64, 72, 5, 7, 12, 2, 8]
stock_market = gets.chomp.split(", ")

stock_market.each_with_index do |number, index|
  stock_market[index] = number.to_i
end

def stock_picker(stock_market)
  max_profit = 0
  buy_day = 0
  sell_day = 0
  result = Array.new

  stock_market[0..-2].each_with_index do |buy_number, buy_index|
    stock_market[(buy_index + 1)..-1].each.with_index do |sell_number, sell_index|
      if (sell_number - buy_number) > max_profit
        buy_day = buy_index
        sell_day = sell_index + (buy_index + 1)
        max_profit = sell_number - buy_number
      end
    end
  end

  result << buy_day + 1
  result << sell_day + 1

  p result
  puts "You should buy on day ##{result[0]} and sell on day ##{result[1]}"
  puts "Your profit will be #{max_profit}"
end

stock_picker(stock_market)