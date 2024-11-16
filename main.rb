dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, substr)
  str_arr = str.downcase.split
  matched_arr = []
  
  substr.each do |word|
    if str_arr.any? { |str| str.include?(word) }
      matched_arr.push(word)
    end
  end
  puts matched_arr
  substrings_hash = matched_arr.reduce(Hash.new(0)) do |tally, word| 
    tally[word] += 1
    tally
  end
  substrings_hash
end

my_string = gets.chomp
p substrings(my_string, dictionary)
