# Add two numbers
def add(a, b)
  return a + b
end

# Subtract two numbers
def subtract(a, b)
  return a - b
end

# Compute sum of number in an array
def sum(array)
  sum = 0
  i = 0
  while i < array.length
    sum = sum + array[i]
    i = i + 1
  end
  return sum
end

# Multiply two numbers
def multiply(a, b)
  return a*b
end

#  Raise one number to the power of another number
def power(a, b)
  return a**b
end
