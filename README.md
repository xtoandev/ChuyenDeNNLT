
# ChuyenDeNgonNguLapTrinh 
## Phạm Xuân Toán_1911505310155
- #### Langue: Ruby
- #### IDE: RubyMineIDE(for JetBrains )

### Mục lục

[0. Note](#Note)

[1. Reserved Words](#ReservedWords)

[2. Ruby Comments](#RubyComments)
- [2.1. Single-Line Comments](#SingleLineComments)
- [2.2. Multi-Line Comments](#MultiLineComments)

[3. Data Types](#DataTypes)
- [3.1. Numbers](#Numbers)
  - [3.1. Integers support several useful iterators](#Integersiterators)
- [3.2. Boolean](#Boolean)
  - [True, False, and Nil In Ruby](#TrueFalseNil)
- [3.3. Strings](#Strings)
- [3.4. Hash](#Hash)
- [3.5. Arrays](#Arrays)
- [3.6. Symbols](#Symbols)
- [3.7. Ranges](#Ranges)
  - [3.7.1. Ranges as Sequences](#RangesasSequences)
  - [3.7.2. Ranges as Conditions](#RangesasConditions)
  - [3.7.3. Ranges as Intervals](#RangesasIntervals)

[4. Types of Variables](#TypesofVariables)
- [Local variables](#Localvariables)
- [Instance Variables, Class Variables](#Instance-ClassVariables)
- [Global Variables](#GlobalVariables)

[5. Operators](#Operators)
- [5.1. Arithmetic Operators](#ArithmeticOperators)
- [5.2. Comparison Operators](#ComparisonOperators)
- [5.3. Logical Operators](#LogicalOperators)
- [5.4. Assignment Operators](#AssignmentOperators)
- [5.5. Ternary Operator](#TernaryOperator)
- [5.6. defined? Operator](#definedOperator)

[6. Control Structures](#ControlStructures)
- [6.0. if..else](#ifelse)
- [6.1. While](#While)
- [6.2. For](#For)
- [6.3. do..while](#dowhile)
- [6.4. until Loop](#untilLoop)
- [6.5. Case Statement](#CaseStatement)

[7. Object-Oriented Programming](#OPP)
- [7.1. Classes and Objects](#ClassesandObjects)
- [7.2. Constructor](#Constructor)
- [7.3. Getters and setters Method](#gettersandsetters)
- [7.4. Inheritance in Ruby](#Inheritance)
- [7.5. Polymorphism in Ruby](#Polymorphism)
- [7.6. Encapsulation in Ruby](#Encapsulation)
- [7.7. Data Abstraction](#DataAbstraction)

[8. Include v/s Extend in Ruby](#IncludevsExtendinRuby)

[9. Exceptions](#Exceptions)

=======================================================
<a name="Note"></a>
# 0.Note
In Ruby, everything is treated as an object.

<a name="ReservedWords"></a>
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
| def	   | in	    | self	 |   |
| defined? | module	| super	 |  |

<a name="RubyComments"></a>
# 2.Ruby Comments
Ruby comments:
- Single-Line Comments: start with a # character and run to the end of the line.
- Multi-Line Comments: start with the =begin token and ends with the =end token. 

Example:
<a name="SingleLineComments"></a>

#### 2.1. Single-Line Comments

```ruby
#This is a comment
```
<a name="MultiLineComments"></a>

#### 2.2. Multi-Line Comments
```ruby
=begin
This is a comment.
This is a comment, too1.
This is a comment, too2.
=end
```
<a name="Data Types"></a>

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

<a name="Numbers"></a>

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

<a name="Integersiterators"></a>

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
<a name="Boolean"></a>

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

<a name="TrueFalseNil"></a>

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
puts a       #>> Output : NilClass
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

<a name="String"></a>

#### 3.3. String
Class String : https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_string.html

Strings: A string is a group of letters that represent a sentence or a word.
- Strings are objects of class String
- Strings are defined by enclosing a text within a single (”) or double (“”) quotes

```ruby
"String Data Type";            #» Output: String Data Type
"Seconds/day: #{24*60*60}"     #» Output: Seconds/day: 86400
"#{'Ho! '*3}Merry Christmas"   #» Output: Ho! Ho! Ho! Merry Christmas
'escape using "\\"'            #» Output: escape using "\"
'That\'s right';               #» Output: That's right
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

<a name="Hash"></a>

#### 3.4. Hash
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

<a name="Arrays"></a>

#### 3.5. Arrays
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

<a name="Symbols"></a>

#### 3.6. Symbols
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

<a name="Ranges"></a>

#### 3.7. Ranges
https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_range.html

- Ruby provides the 3 types of ranges as follows:
  - Ranges as Sequences: This is a general and easy way to define the ranges in Ruby to produce successive values in the sequence. 
  It has a start point and an end point. Two operators are used for creating ranges, 
  one is Double Dot (..) operator and the another one is Triple Dot (…) operator.
  - Ranges as Conditions: Ranges can also be defined as conditional expressions in looping. 
  Here conditions are enclosed within the start and end statements.
  - Ranges as Intervals: Ranges can also be defined in terms of intervals to check that the given value falls within the interval or not. 
  It is represented by equality operator(===).

<a name="RangesasSequences"></a>

##### 3.7.1. Ranges as Sequences
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

<a name="RangesasConditions"></a>

##### 3.7.2. Ranges as Conditions
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

<a name="RangesasIntervals"></a>

##### 3.7.3. Ranges as Intervals
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

<a name="TypesofVariables"></a>

# 4.Types of Variables

- Local variables: <a name="Localvariables"></a>
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

<a name="Instance-ClassVariables"></a>

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

<a name="GlobalVariables"></a>

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

<a name="Operators"></a>
# 5. Operators
<a name="ArithmeticOperators"></a>
#### 5.1. Arithmetic Operators
- Addition(+): operator adds two operands. For example, x+y.
- Subtraction(-): operator subtracts two operands. For example, x-y.
- Multiplication(\*): operator multiplies two operands. For example, x*y.
- Division(/): operator divides the first operand by the second. For example, x/y.
- Modulus(%): operator returns the remainder when first operand is divided by the second. For example, x%y.
- Exponent(\**): operator returns exponential(power) of the operands. For example, x**y.
```ruby
# Addition
puts (10 + 20)  #=>Output: 30
# Subtraction
puts (40 - 20)  #=>Output: 20
# Division
puts (100 / 20) #=>Output: 50
# Multiplication
puts (10 * 20)  #=>Output: 200
# Modulus
puts (20 % 7)   #=>Output: 6
# Exponent
puts (2 ** 4)   #=>Output: 16
```
<a name="ComparisonOperators"></a>
#### 5.2. Comparison Operators
- Equal To(==) operator checks whether the two given operands are equal or not. If so, it returns true. Otherwise it returns false. For example, 5==5 will return true.
- Not Equal To(!=) operator checks whether the two given operands are equal or not. If not, it returns true. Otherwise it returns false. It is the exact boolean complement of the ‘==’ operator. For example, 5!=5 will return false.
- Greater Than(>) operator checks whether the first operand is greater than the second operand. If so, it returns true. Otherwise it returns false. For example, 6>5 will return true.
- Less than(<) operator checks whether the first operand is lesser than the second operand. If so, it returns true. Otherwise it returns false. For example, 6<5 will return false.
- Greater Than Equal To(>=) operator checks whether the first operand is greater than or equal to the second operand. If so, it returns true. Otherwise it returns false. For example, 5>=5 will return true.
- Less Than Equal To(<=) operator checks whether the first operand is lesser than or equal to the second operand. If so, it returns true. Otherwise it returns false. For example, 5<=5 will also return true.
- Combined combination (<=>) operator return 0 when first operand equal to second, return 1 when first operand is greater than second operand, and return -1 when first operator is less than second operand.
- Case Equality Operator(===) It will test equality in case statement.
- ‘.eql?’ This operator returns true if the receiver and argument have both the same type and equal values.
- ‘Equal?’ This operator Returns true if if the receiver and argument have the same object id.

```ruby
#Combined combination operator
puts(20 <=> 20)          #=>Output: 0
puts(10 <=> 20)          #=>Output: -1
puts(20 <=> 10)          #=>Output: 1
```
<a name="Logical Operators"></a>
#### 5.3. Logical Operators
- Logical AND(&&) operator returns true when both the conditions in consideration are satisfied. Otherwise it returns false. Using “and” is an alternate for && operator. For example, a && b returns true when both a and b are true (i.e. non-zero).
- Logical OR(||) operator returns true when one (or both) of the conditions in consideration is satisfied. Otherwise it returns false. Using “or” is an alternate for || operator. For example, a || b returns true if one of a or b is true (i.e. non-zero). Of course, it returns true when both a and b are true.
- Logical NOT(!): operator returns true the condition in consideration is not satisfied. Otherwise it returns false. Using “not” is an alternate for ! operator. For example, !true returns false.

```ruby
# Variables
a = 10
b = 20
c = 30

# using && operator
if a == 10 && b == 20 && c == 30
  puts "Logical AND Operator"
  puts result = a * b * c
end

# using || operator
puts "Logical OR operator"
if a == 10 || b == 20
  puts result = a + b + c
end

# using ! operator
puts "Logical Not Operator"
puts !(true)
```
Output:
>Logical AND Operator \
6000 \
Logical OR operator \
60 \
Logical Not Operator \
false
<a name="AssignmentOperators"></a> 
#### 5.4. Assignment Operators
- Simple Assignment (=): operator is the simplest assignment operator. This operator is used to assign the value on the right to the variable on the left.
- Add AND Assignment (+=) operator is used for adding left operand with right operand and then assigning it to variable on the left.
- Subtract AND Assignment (-=) operator is used for subtracting left operand with right operand and then assigning it to variable on the left.
- Multiply AND Assignment (*=) operator is used for multiplying left operand with right operand and then assigning it to variable on the left.
- Divide AND Assignment (/=) operator is used for dividing left operand with right operand and then assigning it to variable on the left.
- Modulus AND Assignment (%=) operator is used for assigning modulo of left operand with right operand and then assigning it to variable on the left.
- Exponent AND Assignment (**=) operator is used for raising power of left operand to right operand and assigning it to variable on the left.
<a name="TernaryOperator"></a>
#### 5.5.Ternary Operator
Syntax :
>condition ? first_expression : second_expression;

condition: It be evaluated to true or false.\
If the condition is , first_expression is evaluated and becomes the result.
If the condition is false, second_expression is evaluated and becomes the result. 
```ruby
# variable
marks_obtained = 100

# using ternary operator
result = marks_obtained > 40 ? 'Pass' : 'Fail'

# displaying output
puts result #=>Output: Pass
```
<a name="definedOperator"></a>
#### 5.6 defined? Operator
>defined? expression_to_be_checked 
```ruby
# variables
GFG =  1
Geeks = 70
 
# using defined? Operator
# it returns constant
puts defined? GFG  #=>Ouput: constant     
 
# it returns constant
puts defined? Geeks #=>Ouput: constant  
 
# it returns expression
puts defined? a  #=>Ouput:  
        
# it returns expression
puts defined? 50  #=>Ouput:expression
```
<a name="ControlStructures"></a>
# 6.Control Structures
<a name="ifelse"></a>
#### 6.0. if..else
```ruby
if count > 10
  puts "Try again"
elsif tries == 3
  puts "You lose"
else
  puts "Enter a number"
end
```
<a name="while"></a>
#### 6.1.While
```
while conditional [do] 
  #code to be executed 
end
```
<a name="for"></a>
#### 6.2. For
```
for variable_name[, variable...] in expression [do]

   # code to be executed

end
```
<a name="dowhile"></a>
#### 6.3. do..while 
```
loop do

 # code to be executed

break if Boolean_Expression

end
```

```ruby
loop do
     
 puts "GeeksforGeeks"
  
 val = '7'
  
 # using boolean expressions
 if val == '7'
  break
 end
  
# ending of ruby do..while loop
end
```
Output:
>GeeksforGeeks
<a name="untilloop"></a>
#### 6.4. until Loop
```
until conditional [do]

 # code to be executed

end
```

```ruby
var = 7
 
# using until loop
# here do is optional
until var == 11 do
 
  # code to be executed
  puts var * 10
  var = var + 1
   
# here loop ends
end
```
Output: 
>70 \
80 \
90 \
100
>
<a name="casestatement></a>
#### 6.5. Case Statement

```ruby
print "Input from one, two, three, four: "

# taking input from user
# str = gets.chomp

# hardcoded input
str = "two"

# using case statement
case str

# using when
when "one"  
puts 'Input is 1'

when "two"  
puts 'Input is 2'

when "three" ,"3" 
puts 'Input is 3'

when "four","4"  
puts 'Input is 4'

else  
puts "Default!"

end  
```
Output: 
>Input from one, two, three, four: Input is 2
<a name="OOP"></a>
# 7.Object-Oriented Programming

```ruby
class Language
  def initialize(language_name, topic_name)
    @language_name = language_name
    @topic_name = topic_name
  end
end
#create class
object_name  = Language.new()
```
public and private
```
# Ruby program of Public and Private method
class Vehicle
    def initialize(vehicle_name, vehicle_color)
        @vehicle_name = vehicle_name
        @vehicle_color = vehicle_color
    end
    
  # Using public method
    public
    def display
        greeting
        puts 'Your car details are: '
        puts @vehicle_name
        puts @vehicle_color
    end
    
   # Using Private method
    private
    def greeting
        puts 'Hello, user'
    end
end
  
# Creating object
object = Vehicle.new('Nissan', 'white')
  
# Calling object
object.display
```
Output:
>Hello, user \
Your car details are: \
Nissan \
white 

Extend Mixins

```
module Greeting
    def display
        puts 'Hello'
    end
end
  
# Using extend keyword  
class Greetuser
    extend Greeting
  attr_reader :name
    def initialize(name)
        @name = name
    end
end
    
# Creating object
object = Greetuser.new('User_name')
  
# Calling object
Greetuser.display
puts object.name
```
Output:
>Hello \
User_name

<a name="ClassesandObjects"></a>
#### 7.1. Classes and Objects

Method
```
def method_name
  # Statement 1
  # Statement 2
  .
  .
end
```

Class
```ruby
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
end
```
Object
```ruby
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
```
<a name="Constructor"></a>
#### 7.2. Constructor

```
  def initialize(parameter_list)
  ...
  end
```

```ruby
  def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
```

<a name="gettersandsetters"></a>
#### 7.3. Ruby getters and setters Method
- attr_reader : This accessor generates the automatic Getter method for the given item.
- attr_writer : This accessor generates the automatic Setter method for the given item.
- attr_accessor : This accessor generates the automatic Getter & Setter method for the given item.

```ruby
 # Classical get method
  def website
    @website
  end
  
  # Classical set method
  def website=(website)
    @website = website
  end

puts class_variable.website #get
puts class_variable.website = ("url") #set
```

```ruby
class CSWebsite
  
  # Constructor to initialize
  # the class with a name
  # instance variable
  def initialize(website, id)
    @website = website
    @id = id
  end
  
  # accessor get and set method
  attr_accessor :website
  attr_reader :id
end
  
# Creating an object of the class
gfg = CSWebsite.new "www.geeksforgeeks.org", 12
puts gfg.website
puts gfg.id
```
Output:
>www.geeksforgeeks.org \
12

<a name="Inheritance"></a>
#### 7.4. Inheritance in Ruby
> subclass_name < superclass_name


```ruby
# Super class or parent class
class GeeksforGeeks
 
    # constructor of super class
    def initialize
         
        puts "This is Superclass"
    end
     
    # method of the superclass
    def super_method
         
        puts "Method of superclass"
    end
end
 
# subclass or derived class
class Sudo_Placement < GeeksforGeeks
 
    # constructor of deriver class
    def initialize
 
       puts "This is Subclass"
    end
end
 
# creating object of superclass
GeeksforGeeks.new
 
# creating object of subclass
sub_obj = Sudo_Placement.new
 
# calling the method of super
# class using sub class object
sub_obj.super_method
```
Output:
>This is Superclass \
This is Subclass \
Method of superclass 

Whenever you want to call parent class method of the same name so you can simply write super or super()
```ruby
# base class
class Geeks_1
    
    # method of superclass accepting
    # two parameter
    def display a = 0, b = 0
        puts "Parent class, 1st Argument: #{a}, 2nd Argument: #{b}"
    end
end
 
# derived class Geeks_2
class Geeks_2 < Geeks_1
 
    # subclass method having the same name
    # as superclass
    def display a, b
         
        # calling the superclass method
        # by default it will pass
        # both the arguments
        super
         
        # passing only one argument
        super a
         
        # passing both the argument
        super a, b
         
        # calling the superclass method
        # by default it will not pass
        # both the arguments
        super()
         
        puts "Hey! This is subclass method"
    end
end
 
# creating object of derived class
obj = Geeks_2.new
 
# calling the method of subclass
obj.display "Sudo_Placement", "GFG"
```
<a name="Polymorphism"></a>
#### 7.5. Polymorphism in Ruby
<a name="PolymorphismusingInheritance"></a>
###### 7.5.1. Polymorphism using Inheritance

```ruby
# Ruby program of Polymorphism using inheritance
class Vehicle
    def tyreType
        puts "Heavy Car"
    end
end
   
# Using inheritance 
class Car < Vehicle
    def tyreType
        puts "Small Car"
    end
end
   
# Using inheritance 
class Truck < Vehicle
    def tyreType
        puts "Big Car"
    end
end
  
# Creating object 
vehicle = Vehicle.new
vehicle.tyreType()
   
# Creating different object calling same function 
vehicle = Car.new
vehicle.tyreType()
   
# Creating different object calling same function 
vehicle = Truck.new
vehicle.tyreType()
```
Output:
>Heavy Car \
Small Car \
Big Car
<a name="PolymorphismusingDuckTyping"></a>
###### 7.5.2. Polymorphism using Duck-Typing

```ruby
# Creating three different classes
class Hotel
   
  def enters
    puts "A customer enters"
  end
   
  def type(customer)
    customer.type
  end
   
  def room(customer)
    customer.room
  end
   
end
   
# Creating class with two methods 
class Single
   
  def type
    puts "Room is on the fourth floor."
  end
   
  def room
    puts "Per night stay is 5 thousand"
  end
   
end
   
   
class Couple
   
 # Same methods as in class single
  def type
    puts "Room is on the second floor"
  end
   
  def room
    puts "Per night stay is 8 thousand"
  end
   
end
   
# Creating Object
# Performing polymorphism 
hotel= Hotel.new
puts "This visitor is Single."
customer = Single.new
hotel.type(customer)
hotel.room(customer)
   
   
puts "The visitors are a couple."
customer = Couple.new
hotel.type(customer)
hotel.room(customer)
```
Output:
>This visitor is Single. \
Room is on the fourth floor. \
Per night stay is 5 thousand \
The visitors are a couple. \
Room is on the second floor \
Per night stay is 8 thousand

<a name="Encapsulation"></a>
#### 7.6. Encapsulation in Ruby
Encapsulation is a protective shield that prevents the data from being accessed by the code outside this shield.

- Technically in encapsulation, the variables or data of a class are hidden from any other class and can be accessed only through any member function of own class in which they are declared.
- Encapsulation can be achieved by declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.
using class,vv...

<a name="DataAbstraction"></a>
##### 7.7. Data Abstraction

- Data Abstraction in modules: In Ruby, Modules are defined as a set of methods, classes, and constants together.For example, consider the sqrt() method present in Math module. Whenever we need to calculate the square root of a non negative number, We simply call the sqrt() method present in the Math module and send the number as a parameter without understanding the actual algorithm that actually calculates the square root of the numbers.

- Data Abstraction in Classes: we can use classes to perform data abstraction in ruby. The class allows us to group information and methods using access specifiers (private, protected, public). The Class will determine which information should be visible and which is not.

- Data Abstraction using Access Control: There are three levels of access control in Ruby (private, protected, public). These are the most important implementation of data abstraction in ruby. For Example-

  - Members who have been declared public in a class can be accessed from anywhere in the program.
  - Members declared to be private in a class can only be accessed from within the class. They are
not allowed to access any part of the code outside the class.

```ruby
class Geeks 
  
    # defining publicMethod 
      
    public
  
    def publicMethod 
        puts "In Public!"
        # calling privateMethod inside publicMethod 
        privateMethod
    end
  
    # defining privateMethod 
      
    private 
  
    def privateMethod 
        puts "In Private!"
    end
end
  
  
# creating an object of class Geeks 
obj = Geeks.new
  
# calling the public method of class Geeks 
obj.publicMethod
```
Output:
>In Public! \
In Private!
<a name="IncludevsExtendinRuby"></a>
# 8. Include v/s Extend in Ruby

- Include is used to importing module code. Ruby will throw an error when we try to access the methods of import module with the class directly because it gets imported as a subclass for the superclass. So, the only way is to access it through the instance of the class.
- Extend is also used to importing module code but extends import them as class methods. Ruby will throw an error when we try to access methods of import module with the instance of the class because the module gets import to the superclass just as the instance of the extended module. So, the only way is to access it through the class definition.

```ruby
# Creating a module contains a method
module Geek
  def geeks
    puts 'GeeksforGeeks!'
  end
end
   
class Lord
  
  # only can access geek methods
  # with the instance of the class.
  include Geek
end
   
class Star
    
  # only can access geek methods
  # with the class definition.
  extend Geek
end
   
# object access 
Lord.new.geeks
  
# class access
Star.geeks 
  
# NoMethodError: undefined  method
# `geeks' for Lord:Class
Lord.geeks 
```
Output:
>GeeksforGeeks! \
GeeksforGeeks! \
main.rb:20:in `': undefined method `geeks' for Lord:Class (NoMethodError)

If we want to import instance methods on a class and its class methods too. We can ‘include’ and ‘extend’ it at the same time.

```ruby
# Creating a module contains a method
module Geek
  def prints(x)
    puts x
  end
end
   
class GFG
  
  # by using both include and extend
  # we can access them by both instances
  #  and class name.
  include Geek
  extend Geek
end
  
# access the prints() in Geek
# module by include in Lord class
GFG.new.prints("Howdy") # object access
   
# access the prints() in Geek 
# module by extend it in Lord class
GFG.prints("GeeksforGeeks!!") # class access
```
Output:
>Howdy \
GeeksforGeeks!!

<a name="Exceptions"></a>
# 9.Exceptions

#### 9.1. Exception handling
```
begin
    raise
      # block where exception raise

    rescue
      # block where exception rescue
    else
      # this block executes when no exception raise
    
    #explore: retry,ensure
    
    retry

    # this statement restarts the rescue
    # block from the beginning
    
    ensure
    # this block always executes
end
```
#### 9.2. Catch and Throw in Exception Handling

```
throw :label_name (condition)
    # this block will not be executed

catch :label_name do
    # matching catch will be executed when the throw block encounter
end
```

```ruby
def catch_and_throw(value)
  
  puts value
  a = readline.chomp
  
  # using throw statement
  throw :value_e if a == "!"
  return a
  
end
  
# using catch statement
catch :value_e do
  
# enter number
  number = catch_and_throw("Enter Number: ")
end
```
Input:
>Enter Number: !

Output:
>nil

#### 9.3. Exception Class and its Methods

1/ exception : This method is used to creates and returns a new exception object.

>Exception.exception(message)

2/ new : This method creates and return a new exception object, optionally setting message to message.

>Exception.new(message)
> 
```ruby
# creating the customized class
# inherited from StandardError
class MyException < StandardError
  attr_reader :myobject
 
  def initialize(myobject)
    @myobject = myobject
  end
end
 
 
begin
 
# Using new method
# to create an object of
# the given exception
  raise MyException.new("My object"), "This is custome class"
rescue MyException => e
  puts e.message
  puts e.myobject
end
```