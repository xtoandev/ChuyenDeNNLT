print("Input a = ")
a = gets.chomp.to_i
print("Input b = ")
b = gets.chomp.to_i
print("Input  = ")
c = gets.chomp.to_i

def check_triangle (var1, var2, var3)
    if((var1 + var2) > var3 && (var1 + var3) > var2 && (var2 + var3) > var1)
      return true
    else
      return false
  end
end

def area_triangle(a,b,c)
  p = (a+b+c) /2
  s = Math.sqrt(p*(p-a)*(p-b)*(p-c))
  return s
end



if(check_triangle(a,b,c))
  puts "Day la tam giac"
  puts "Chu vi tam giac : #{a+b+c}"
  puts "Dien tich tam giac : #{area_triangle(a,b,c)}"

else
  puts "Day khong phai la tam giac"
end

