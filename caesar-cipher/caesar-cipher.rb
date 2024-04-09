


def caesar_cipher(string, shift)
  # create new hash: shifted alphabet
  shifted_alphabet = shift_alphabet(shift)
  # initialize blank new_string
  # loop through new_string and translate to shifted_alphabet
end

def shift_alphabet(shift)
  shifted_alphabet = {}

  # values __ - z
  97.upto(122 - shift) do |num|
    shifted_alphabet[num.chr] = (num + shift).chr
  end

  # values a - ___
  shift.times do |num|
    shifted_alphabet[(123 - shift + num).chr] = (97 + num).chr
  end

  puts shifted_alphabet
  shifted_alphabet
end

puts caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"
