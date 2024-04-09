def caesar_cipher(string, shift)
  dict = shift_alphabet(shift)
  cipher(string, dict)
end

def shift_alphabet(shift)
  dict = {}

  97.upto(122 - shift) do |num|
    dict[num.chr] = (num + shift).chr
  end

  shift.times do |num|
    dict[(123 - shift + num).chr] = (97 + num).chr
  end

  dict
end

def cipher(str, dict)
  ciphered_string = String.new
  str.each_char do |char|
    ciphered_string +=
      if dict.include? char.downcase
        shift_letter_using(dict, char)
      else
        char
      end
  end

  ciphered_string
end

def shift_letter_using(dict, char)
  if char == char.upcase
    dict[char.downcase].upcase
  else
    dict[char]
  end
end

puts caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"
