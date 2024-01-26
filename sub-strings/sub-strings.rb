def substrings(text, dictionary)
  matches = {}
  text.downcase!

  dictionary.each do |dictionary_word|
    dictionary_word.downcase!

    if text.include? dictionary_word
      count = 0

      text.split.each do |word_to_check|
        count += 1 if word_to_check.include? dictionary_word
      end

      if count > 0
          matches[dictionary_word] = count
      end

    end
  end
  matches
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
