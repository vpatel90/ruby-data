str = "Tacos must not have lettuce Only meat and cheese and salsa"

arr = str.scan /[a-zA-Z]+\b/
word_length_5 = str.scan /\b[a-zA-Z]{5}\b/
print word_length_5
puts
