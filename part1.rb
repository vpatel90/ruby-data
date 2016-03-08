str = "Tacos must not have lettuce Only meat and cheese and salsa"

arr = str.split(" ")
word_length_5 = 0
arr.each do |word|
  if word.length == 5 then word_length_5 += 1 end
end
puts word_length_5
