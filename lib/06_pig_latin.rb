# Translate a string into pig latin:
  # If the word begins with 1+ consontants and/or "qu", move it/them to the end of the word then add "ay"
  # If the word begins with a vowel, add "way" to the end of the word
  # Do this for each word in a multi-word string

def translate(string)
  array = string.split(" ")
  pig_latin_array = []
  i = 0
  while i < array.length
    # Does word start with a vowel followed by 0+ characters? Add "way" to the end.
    # Does word start with 1+ consonants and/or "qu" followed by 0+ characters? Move it/them to the end and add "ay".
    pig_latin_array.push(array[i].sub(/^[aeiou]\w*/, "#{array[i]}ay").sub(/(^[^aeiou]+)([qu]*)(\w*)/, "\\3\\1\\2ay"))
    i = i + 1
  end
  return pig_latin_array.join(" ")
end