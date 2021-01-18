# Translate a string into pig latin:
  # If the word begins with 1+ consontants, move it/them to the end of the word then add "ay"
  # If the word begins with a vowel, add "ay" to the end of the word
  # Do this for each word in a multi-word string

#   # Test-driving bonus:
#   # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
#   # * retain the punctuation from the original phrase

def translate(string)
  array = string.split(" ")
  pig_latin_array = []
  i = 0
  while i < array.length
    pig_latin_array.push(array[i].sub(/^[aeiou]\w*/, "#{string}ay").sub(/(^[^aeiou]+)(\w*)/, "\\2\\1ay"))
    i = i + 1
  end
  puts pig_latin_array.join(" ")
end

translate("eat pie")