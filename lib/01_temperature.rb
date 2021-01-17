# Convert fahrenheit to celcius
def ftoc(f)
  return (f-32)*5/9
end

# Convert celcius to fahrenheit
def ctof(c)
  c.to_f
  return ((c*9.0/5.0) + 32.0)
end
