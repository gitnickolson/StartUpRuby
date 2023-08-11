stock_market = gets.chomp.split(", ")

stock_market.each_with_index do |number, index|
  stock_market[index] = number.to_i
end

results = Array.new(stock_market.length) {Array.new}
comparison = Array.new
profit = 0

stock_market.each_with_index do |buy_number, buy_index|
  stock_market.each_with_index do |sell_number, sell_index|
    if sell_index > buy_index
      if sell_number - buy_number > profit
        profit = sell_number - buy_number
        results[buy_index][0] = profit
        results[buy_index][1] = buy_index
        results[buy_index][2] = sell_index
      end
    end
  end
end

results = results.delete_if { |array| array.flatten.empty?}

results.each do |array|
  comparison << array[0]
end

final_index = comparison.rindex(comparison.max)

final_result = Array.new
final_result << results[final_index][1] + 1
final_result << results[final_index][2] + 1

p final_result
puts "You should buy on day ##{results[final_index][1] + 1} and sell on day ##{results[final_index][2] + 1}"
puts "Your profit will be #{results[final_index][0]}"