#sort_me = [3, 5, 6, 1, 9, 2, 4, 3, 5, 8]
sort_me = gets.chomp.split(", ")

sort_me.each_with_index do |number, index|
  sort_me[index] = number.to_i
end

def bubble_sort(sort_me)
  sort_me.each_with_index do |number, index|
    if index != sort_me.length - 1
      if number > sort_me[index + 1]
        sort_me[index] = sort_me[index + 1]
        sort_me[index + 1] = number
      end
    end
  end

  sort_me.each_with_index do |number, index|
    if index != sort_me.length - 1
      if number > sort_me[index + 1]
        bubble_sort(sort_me)
      end
    end
  end
end

bubble_sort(sort_me)
p sort_me