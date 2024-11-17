dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, substr)
  str_arr = str.downcase.split
  substrings_hash = Hash.new(0)
  
  str_arr.each do |word|
    substr.each do |sub|
      unless word.scan(sub).length == 0
        substrings_hash[sub] += word.scan(sub).length
      end
    end
  end
  substrings_hash
end

my_string = gets.chomp
p substrings(my_string, dictionary)
