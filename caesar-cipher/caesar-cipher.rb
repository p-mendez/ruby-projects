def caesar_cipher(string, shift)
  # create new hash: shifted alphabet
  dict = shift_alphabet(shift)
  # loop through new_string and translate to dict
  cipher(dict)
end

def shift_alphabet(shift)
  dict = {}

  # values __ - z
  97.upto(122 - shift) do |num|
    dict[num.chr] = (num + shift).chr
  end

  # values a - ___
  shift.times do |num|
    dict[(123 - shift + num).chr] = (97 + num).chr
  end

  dict
end

# def cipher(

puts caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"
