def ceaser_cipher(sentence, shift)
  ciphered_sentence = sentence.split("").map do |char|
    unless /[[:alpha:]]/.match(char)
      char = char
    else
      char = char.ord + shift
      char.chr
    end
  end
  p ciphered_sentence.join('')

end

ceaser_cipher('Hello d_s!', 4)