dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, source)
  temp_string = string.split(" ")
  temp = Hash.new()

  source.each do |item|
    counter = 0
    temp_string.each do |string_item|
      if string_item.downcase.include? item
        counter += 1
      end
    end
    if counter > 0
      temp[item] = counter
    end
  end
  p temp
end

substrings("BElow", dictionary)
# Should be { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
# should be { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }