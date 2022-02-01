dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
def substrings (string, dictionary)
    s_array = string.split.each {|a| a.downcase!}
    subs = Hash.new(0)
    s_array.each do |item| 
        dictionary.each{|w| item.include?(w)? (subs[w] += 1) : nil}
    end
    puts subs
end
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)