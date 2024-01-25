
def caesar_cipher(string, shift)
  new_word = String.new
  string.each_char do |char|
    if !char.match(/[a-z]/)
      new_word += char
    elsif (char.ord + shift) > 123
      new_word += (96 + ((char.ord + shift) - 123)).chr
    else
      new_word += (char.ord + shift).chr
    end
  end
  new_word
end


puts caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"

puts caesar_cipher("z", 1)
