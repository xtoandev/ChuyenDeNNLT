require_relative './Officer.rb'

class Engineer < Officer
  attr_accessor  :branch

  def initialize(name,age,gender,adress,branch)
    super(name,age,gender,adress)
    @branch = branch
  end

  def display
    puts "Engineer : { " + "Branch: " + @branch + " Name: " + @name + " Gender: "+ @gender +  "| Age: "+ @age.to_s + "| Adress : "+ @address + " }"
  end
end