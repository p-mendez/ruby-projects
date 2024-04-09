ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.freeze

def caesar_cipher(string, shift)
  shifted = shift_alphabet(shift)
  string.tr(ALPHABET, shifted).tr(ALPHABET.upcase, shifted.upcase)
end

def shift_alphabet(shift)
  ALPHABET.chars.rotate(shift).join
end


puts caesar_cipher("What a string!", 5)
# "Bmfy f xywnsl!"
