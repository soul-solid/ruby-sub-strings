class SubStrings

  def initialize(str)
    @strings = str.downcase.split
    @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] 
  end

  def count
    @appearance_counter = Hash.new(0)
    
    @strings.each do |word|
      @dictionary.each do |sub|
        unless word.scan(sub).length == 0
          @appearance_counter[sub] += word.scan(sub).length
        end
      end
    end
    @appearance_counter
  end

end

my_string = gets.chomp
substrings = SubStrings.new(my_string)
p substrings.count