dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, substr)
  str_arr = str.downcase.split
  substrings_hash = Hash.new(0)
  
  str_arr.each do |word|
    substr.each do |sub|
      substrings_hash[sub] += 1 if word.include?(sub)
    end
  end
  substrings_hash
end

my_string = gets.chomp
p substrings(my_string, dictionary)
