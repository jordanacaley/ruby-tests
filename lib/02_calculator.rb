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

# Compute the factorial of a number
def factorial(a)
  if a == 0
    num = 1
  elsif a > 0
    fact_array = []
    i = 0
    while i < a
      fact_array.push(a - i)
      i = i + 1
    end
    j = 0
    while j < fact_array.length
      num = fact_array[j] *= fact_array[j-1]
      j = j + 1
    end
  end
  return num
end