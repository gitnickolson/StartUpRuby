dictionary = ["below","down","go","going","horn","how",
              "howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  words = words.downcase.gsub(",", "")
  words_hash = Hash.new()

  dictionary.each do |d_word|
    if words.include?(d_word)
      words_hash[d_word] = words.scan(d_word).length
    end
  end

  # if you additionaly want every word in the original string to be counted
  # words.split(" ",).each do |split_word|
  # if !words_hash.has_key?(split_word)
  #   words_hash[split_word] = 0
  #H end


  puts words_hash
end

words = gets.chomp
substrings(words, dictionary)



