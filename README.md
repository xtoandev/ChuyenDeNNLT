#RubyMineIDE
### Mục lục

[0.Note](#Note)

[1. Reserved Words](#Reserved Words)

[2. Ruby Comments](#Ruby Comments)
- [2.1. Single-Line Comments](#Single-Line Comments)
- [2.2. Multi-Line Comments](#Multi-Line Comments)



===========================

# 0.Note
In Ruby, everything is treated as an object.


# 1.Reserved Words

The following list shows the reserved words in Ruby. These reserved words may not be used as constant or variable names. They can, however, be used as method names.

|Column1   |Column2 |Column3 |Column4     |
|----------|--------|--------|------------|
| BEGIN    | do	    | next	 | then       |
| END	   | else	| nil	 | true       |
| alias	   | elsif	| not	 | undef      |
| and	   | end	| or	 | unless     |
| begin	   | ensure	| redo	 | until      |
| break	   | false	| rescue | when       |
| case	   | for	| retry	 | while      |
| class	   | if	    | return | while      |
| def	   | in	    | self	 | \__FILE__  |
| defined? | module	| super	 | \__LINE__  |

# 2.Ruby Comments
Ruby comments:
- Single-Line Comments: start with a # character and run to the end of the line.
- Multi-Line Comments: start with the =begin token and ends with the =end token. 

Example:
#### 2.1. Single-Line Comments

```ruby
#This is a comment
```
#### 2.2. Multi-Line Comments
```ruby
=begin
This is a comment.
This is a comment, too1.
This is a comment, too2.
=end
```
# 3.Data Types
Data types in Ruby represents different types of data like text, string, numbers, etc. 
All data types are based on classes because it is a pure Object-Oriented language. 
There are different data types in Ruby as follows:
- Numbers
- Boolean
- Strings
- Hashes
- Arrays
- Symbols

#### 3.1. Numbers

- https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_numeric.html
- https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_bignum.html
- https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_fixnum.html
- https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_float.html
- https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_integer.html

Numbers: 
Generally a number is defined as a series of digits, using a dot as a decimal mark. 
Optionally the user can use the underscore as a separator. 
There are different kinds of numbers like integers and float. 
Ruby can handle both Integers and floating point numbers. 

According to their size, there are two types of integers, one is Bignum and second is Fixnum.

```ruby
# float type
price = 5.5

# both integer and float type
quantity = 3 
total = price * quantity
puts "The total bill is #{total} " 
```
Output: 
>The total bill is 16.5 

#### 3.1.1. Integers support several useful iterators
 **a)**
```
3.times        { print "X " }           >>Output: XXX
```
**b)**
```
1.upto(5)      { |i| print i, " " }     >>Output: 1 2 3 4 5
```
**c)**
```
99.downto(95)  { |i| print i, " " }     >>Output: 99 98 97 96 95 
```
**d)**
```
50.step(80, 5) { |i| print i, " " }     >>Output: 50 55 60 65 70 75 80 
```
#### 3.2. Boolean
Boolean: Data type represents only one bit of information either true or false.

```ruby
# Ruby program to illustrate the
# Boolean Data Type
 
if true
  puts "It is True!"
else
  puts "It is False!"
end

if 0
  puts "0 is True!"
else
  puts "0 is False!"
end
```
Output: 
>It is True! \
0 is True!

#### True, False, and Nil In Ruby
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_trueclass.html
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_falseclass.html
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_nilclass.html

Always remember in Ruby true, false, and nil are objects, not numbers. 
Whenever Ruby requires a Boolean value, then nil behaves like false and values 
other than nil or false behave like true.
- Ruby does not contain Boolean class
- True is an object of TrueClass, false is an object of FalseClass

In Ruby, nil is a special value that denotes the absence of any value. 
Nil is an object of NilClass. Nil is Ruby’s way of referring to nothing or void

```ruby
# Checking for nil's class
a = nil.class
puts a       >> Output: NilClass
```
```ruby
# Ruby program to illustrate nil? method
# Checking for Nil
array = [ 1, 2, 3, 4, 5 ]
# Size array: 0->4

# Since array[5] does not exist so, it is nil.
result1 = array[5].nil?
puts result1

# Since array[2] exists so, it is not nil.
result2 = array[2].nil?
puts result2
```
Output:
>true \
false

#### 3.4. String
Class String : https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_string.html

Strings: A string is a group of letters that represent a sentence or a word.
- Strings are objects of class String
- Strings are defined by enclosing a text within a single (”) or double (“”) quotes

```ruby
"String Data Type";            » Output: String Data Type
"Seconds/day: #{24*60*60}"     » Output: Seconds/day: 86400
"#{'Ho! '*3}Merry Christmas"   » Output: Ho! Ho! Ho! Merry Christmas
'escape using "\\"'            » Output: escape using "\"
'That\'s right';               » Output: That's right
#Error: 'That's error';
```
You can construct a string using
```ruby
aString = <<END_OF_STRING
    The body of the string
    is the input lines up to
    one ending with the same
    text that followed the '<<'
END_OF_STRING
```
Output:
>    The body of the string \
    is the input lines up to \
    one ending with the same \
    text that followed the '<<' 
#### 3.5. Hashes
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_hash.html

Hashes: A hash assign its values to its key. Value to a key is assigned by => sign. 
A key pair is separated with a comma between them and all the pairs are enclosed within curly braces.
They’re made similarly to arrays. A trailing comma is ignored

```ruby
hsh = number = { "One" => 1, "Two" => 2, "Three" => 3 }

hsh.each do |key, value|
 print key, " is ", value, "\n"
end
```
Output:
>One is 1 \
Two is 2 \
Three is 3 

#### 3.6. Arrays
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_array.html

Arrays: An array stores data or list of data. 
- It can contain all types of data. 
- Data in an array are separated by comma in between them and are enclosed within square bracket.
- The position of elements in an array starts with 0. 
- A trailing comma is ignored

```ruby
ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
 puts i
end
```
Output:
>fred \
10 \
3.14 \
This is a string \
last element 

#### 3.7. Symbols
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_symbol.html

Symbols: Symbols are light-weight strings. 
- A symbol is preceded by a colon (:). 
- They are used instead of strings because they can take up much less memory. 
- Symbols have better performance.

```ruby
domains = {:last => "Toan", :mid => "Xuan", :first => "Pham"}
 
puts domains[:last]
puts domains[:mid]
puts domains[:first]
```
Output:
>Toan \
Xuan \
Pham 

#### 3.8. Ranges
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_range.html

- Ruby provides the 3 types of ranges as follows:
  - Ranges as Sequences: This is a general and easy way to define the ranges in Ruby to produce successive values in the sequence. 
  It has a start point and an end point. Two operators are used for creating ranges, 
  one is Double Dot (..) operator and the another one is Triple Dot (…) operator.
  - Ranges as Conditions: Ranges can also be defined as conditional expressions in looping. 
  Here conditions are enclosed within the start and end statements.
  - Ranges as Intervals: Ranges can also be defined in terms of intervals to check that the given value falls within the interval or not. 
  It is represented by equality operator(===).

##### 3.8.1. Ranges as Sequences
```ruby
# input the value which lies between 
# the range 6 and 8    
ranges = 6..8  

#if ranges = 6...8 = [6,7] 
  
# print true if the value is lies
# between the range otherwise 
# print false 
puts ranges.include?(3)
  
# print the maximum value which lies
# between the range 
ans = ranges.max   
puts "Maximum value = #{ans}"   
  
# print the minimum value which lies
# between the range 
ans = ranges.min   
puts "Minimum value = #{ans}"   

# Iterate 3 times from 6 to 8
# and print the value
ranges.each do |digit|   
   puts "In Loop #{digit}"   
end 
```
Output:
>false \
Maximum value = 8 \
Minimum value = 6 \
In Loop 6 \
In Loop 7 \
In Loop 8
##### 3.8.2. Ranges as Conditions
```ruby
# given number
num = 4152  
    
result = case num   
   when 1000..2000 then "Lies Between 1000 and 2000"   
   when 2000..3000 then "Lies Between 2000 and 3000"
   when 4000..5000 then "Lies Between 4000 and 5000" 
   when 6000..7000 then "Lies Between 6000 and 7000" 
         
   else "Above 7000"   
end   
    
puts result
```
Output:
>Lies Between 4000 and 5000
##### 3.8.3. Ranges as Intervals
```ruby
# using if statement 
if (('A'..'Z') === 'D')
  
   # display the value
   puts "D lies in the range of A to Z"
  
# end of if
end
  
# using if statement 
if ((1..100) === 100)
  
  # display the value
  puts "77 lies in the range of 1 to 100"
  
# end of if
end
```
Output:
>D lies in the range of A to Z \
77 lies in the range of 1 to 100

# 4.Types of Variables
- Local variables: 
  - These variables are local to the code construct in which they are declared. 
  - A local variable is only accessible within the block of its initialization. 
  - Local variables are not available outside the method. 
  - There is no need to initialize the local variables
- Instance variables:
  - An instance variable name always starts with a @ sign. 
  - They are similar to Class variables but their values are local to specific instances of an object. 
  - Instance variables are available across methods for any specified instance or object i.e. 
  - instance variables can change from object to object. 
  - There is no need to initialize the instance variables and uninitialized 
  - Instance variable always contains a nil value
- Class variables
  - A class variable name always starts with @@ sign.
  - It is available across different objects. 
  - A class variable belongs to the class and it is a characteristic of a class. 
  - They need to be initialized before use. 
  - Another way of thinking about class variables is as global variables within the context of a single class. 
  - A class variable is shared by all the descendants of the class. 
  - An uninitialized class variable will result in an error.
- Global variables
  - A global variable name always starts with $. 
  - Class variables are not available across classes. 
  - If you want to have a single variable, which is available across classes, you need to define a global variable. 
  - Its scope is global, means it can be accessed from anywhere in a program. 
  - By default, an uninitialized global variable has a nil value  
  - Its use can cause the programs to be cryptic and complex.

| Symbol | Type of Variable |
|--------|----------------|
|[a-z] or _	| Local Variable |
|@	| Instance Variable |
|@@	| Class Variable |
|$	| Global Variable |


Example variable and class names Variables	

|Local	| Global	| Instance	| Class	| Constants and Class Names  |
|-------|-----------|-----------|-------|----------------------------|
|name	|$debug	|@name	|@@total	|PI |
|fishAndChips	|$CUSTOMER	|@point_1	|@@symtab	|FeetPerMile |
|x_axis	|$_	|@X	|@@N	|String |
|thx1138	|$plan9	|@_	|@@x_pos	|MyClass |
|_26	|$Global	|@plan9	|@@SINGLE	|Jazz_Song |

##### Instance Variables, Class Variables: 
```ruby
class Customer
      
# class variable
 @@no_of_customers = 0
   
 def initialize(id, name, addr)
       
# An instance Variable
 @cust_id = id
 @cust_name = name
 @cust_addr = addr
 end
  
# displaying result 
 def display_details()
 puts "Customer id #@cust_id"
 puts "Customer name #@cust_name"
 puts "Customer address #@cust_addr"
 end
   
 def total_no_of_customers()
       
# class variable
 @@no_of_customers += 1
 puts "Total number of customers: #@@no_of_customers"
    end
end
  
# Create Objects
cust1 = Customer.new("1", "Toan", "Da Nang,VietNam")

  
# Call Methods
cust1.display_details()
cust1.total_no_of_customers()

```
Output:
>Customer id 1 \
Customer name Toan \
Customer address Da Nang,VietNam \
Total number of customers: 1 

##### Global Variables:
```ruby
$global_variable = 10
class Class1
 def print_global
 puts "Global variable in Class1 is #$global_variable"
 end
end
class Class2
 def print_global
 puts "Global variable in Class2 is #$global_variable"
 end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
```
Output:
>Global variable in Class1 is 10 \
Global variable in Class2 is 10






