def ceaser_cipher(sentence, shift)
  ciphered_sentence = sentence.split("").map do |char|
    char = char.ord + shift
    char.chr
  end
  p ciphered_sentence.join('')

end

ceaser_cipher('hello ds', 4)