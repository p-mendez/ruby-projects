# Returns a encrypted caesar cipher of message with applied shift
# Params:
# - message: string
# - shift: positive integer
def caesar_cipher(message, shift)
  alphabet = [*'a'..'z']
  shifted_alphabet = get_shifted_alphabet(shift)

  message.gsub(/\w/, shifted_alphabet)
end

# Returns hash of characters, regular_alphabet => shifted_alphabet
# Params:
# - shift: integer
def get_shifted_alphabet(shift)
  alphabet = [*'a'..'z']
  shifted_values = alphabet[shift..-1] + alphabet[0..shift -1]
  shifted_alphabet = {}

  alphabet.each_with_index do |letter, i|
    shifted_alphabet[letter] = shifted_values[i]
    shifted_alphabet[letter.upcase] = shifted_values[i].upcase
  end
  shifted_alphabet
end

puts caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"
