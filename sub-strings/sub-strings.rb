def substrings(text, dictionary)
  matches = {}
  text.downcase!

  dictionary.each do |dictionary_word|
    count = text.scan(dictionary_word).size
    matches[dictionary_word] = count if count > 0
  end

  matches
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
