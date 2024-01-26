def caesar_cipher(string, shift)
  alphabet = [*'a'..'z']
  shifted_alphabet = get_shifted_alphabet(shift)
  p alphabet
  p shifted_alphabet
end

def get_shifted_alphabet(shift)
  alphabet = [*'a'..'z']
  alphabet[shift..-1] << alphabet[0..shift -1]
end

caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"

caesar_cipher("z", 1)
