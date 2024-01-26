def substrings(text, dictionary)
  matches = {}
  text.downcase!

  dictionary.each do |word|
    word.downcase!
    if text.include? word
      puts "before: " + matches.to_s
      matches[word] = 1 + matches.fetch(word, 0)
      puts "after: " + matches.to_s
      puts
    end
  end
  matches
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
