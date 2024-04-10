def substrings(text, dictionary)
  matches = {}
  text.downcase!

  dictionary.each do |dictionary_word|
    count = text.scan(dictionary_word).size
    matches[dictionary_word] = count if count > 0
  end

  matches
end


# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# p substrings("below", dictionary)
# p substrings("Howdy partner, sit down! How's it going?", dictionary)

# 2nd try:

# def substrings(string, dict)
#   # convert string to array
#   str_arr = string.split
#   matches = Hash.new

#   # loop through each dictionary word and count
#   dict.each do |dict_word|
#     count = str_arr.count { |str_arr_element| str_arr_element.downcase.include? dict_word }
#     matches[dict_word] = count if count.positive?
#   end

#   matches
# end
