def caesar_cipher(phrase, shift)
  uppers = [*("A".."Z")]
  lowers = [*("a".."z")]
  array_phrase = phrase.split('')
  new_array_phrase = ['']
  array_phrase.each_with_index do |letter, index|
    if uppers.include?(letter)
      new_array_phrase[index] = uppers[uppers.find_index(letter) - (shift % 26)]
    elsif lowers.include?(letter)
      new_array_phrase[index] = lowers[lowers.find_index(letter) - (shift % 26)]
    else 
      new_array_phrase[index] = array_phrase[index]
    end
  end
  new_array_phrase.join('')
end

puts caesar_cipher("Test run", 99)

