# Return string
def echo(string)
  return string
end

# Capitalize string
def shout(string)
  return string.upcase
end

# Return string a specified number of times (default value = return twice)
def repeat(string, num=2)
  return string + (" " + string)*(num-1)
end

# Return specified number of first letters of a word
def start_of_word(string, num)
  return string.slice(0, num)
end

# Return first word of a string
def first_word(string)
  array = string.split(" ")
  return array[0]
end

# Capitalize words longer than 3 letters, and all words that start a sentence
def titleize(string)
  array = string.split(" ")
  titleized_array = []
  i = 0
  while i < array.length
    if array[i].length > 3 or i == 0
      titleized_array.push(array[i].capitalize)
    else
      titleized_array.push(array[i])
    end
    i = i + 1
  end
  return titleized_array.join(" ")
end