print("Input a = ")
so1 = gets.chomp.to_i
print("Input b = ")
so2 = gets.chomp.to_i
print("Input  = ")
so3 = gets.chomp.to_i

numbers = []
numbers.push(so1)
numbers.push(so2)
numbers.push(so3)


print "Thứ tự tăng dần: #{numbers.sort} ,"
print "Thứ tự giảm dần: #{numbers.sort.reverse}"