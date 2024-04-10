# Implement a method #substrings that takes a word as the first argument
# and then an array of valid substrings (your dictionary) as the second argument.

# It should return a hash listing each substring (case insensitive) that was found in the original string
# and how many times it was found.

# In my own words: substrings(string, dictionary) return {word_found : times_found}


def substrings(string, dict)
  # convert string to array
  str_arr = string.split
  result_dict = Hash.new

  # loop through each dictionary word and count
  dict.each do |dict_word|
    count = str_arr.count { |str_arr_element| str_arr_element.downcase.include? dict_word }
    result_dict[dict_word] = count if count.positive?
  end

  result_dict
end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# puts substrings("below", dictionary)
# puts '=> { "below" => 1, "low" => 1 }'

# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# puts '{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }'
