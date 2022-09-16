print("Input Size Array = ")
n = gets.chomp.to_i
number_array = []
for a in 1..n do
  print("Input Number #{a} = ")
  j = gets.chomp.to_i
  number_array.push(j)
end


puts ("Max number in arrays =  #{number_array.max}")
puts ("Min number in arrays =  #{number_array.min}")
puts ("Average in arrays =  #{number_array.sum/number_array.size}")
