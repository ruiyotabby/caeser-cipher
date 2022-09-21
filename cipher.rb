def ceaser_cipher(sentence, shift)
  ciphered_sentence = sentence.split("").map do |char|
    unless /[[:alpha:]]/.match(char)
      char = char
    else
      if char.ord >= 65 && char.ord <= 90
        if char.ord + shift > 90
          rem = (char.ord + shift) - 91
          char = 65 + rem
        else
          char = char.ord + shift
        end
      elsif char.ord >= 97 && char.ord <= 122
        if char.ord + shift > 122
          rem = (char.ord + shift) - 123
          char = 97 + rem
        else
          char = char.ord + shift
        end
      end
      char.chr
    end
  end
  ciphered_sentence.join('')

end

p ceaser_cipher('What a String!', 5)