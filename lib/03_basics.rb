# Return biggest number. If any values are nil, return "nil detected". Otherwise, return "a/b/c is bigger"
def who_is_bigger(a, b, c)
  if a == nil or b == nil or c == nil
    return "nil detected"
  elsif a > b and a > c 
    return "a is bigger"
  elsif b > a and b > c 
    return "b is bigger"
  elsif c > a and c > b
    return "c is bigger"
  end
end

# Reverse, upcase then removes all L, T and A.
def reverse_upcase_noLTA(string)
  rev_up = string.reverse.upcase
  rev_up_array = rev_up.split("")
  i = 0
  while i < rev_up_array.length
    if rev_up_array[i] == "T" or rev_up_array[i] == "L" or rev_up_array[i] == "A"
      rev_up_array[i] = nil
    end
    i = i +1
  end
  return rev_up_array.join
end

# Return true if there is a 42 in the array, otherwise return false
def array_42(array)
  return array.include?(42)
end

# The magic_array function takes an array of number or an array of array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  # BONUS : You can do this in one line less than 55 chars

def magic_array(array)
  return array.flatten.sort.map { |i| i*2 }.delete_if { |i| i % 3 == 0}.uniq
end
