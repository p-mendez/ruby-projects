def caesar_cipher(string, shift)
  alphabet = [*'a'..'z']
  shifted_alphabet = alphabet[shift..-1] << alphabet[0..shift -1]
  p alphabet
  p shifted_alphabet
end


caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"

caesar_cipher("z", 1)
