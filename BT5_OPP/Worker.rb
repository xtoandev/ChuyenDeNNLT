require_relative './Officer.rb'

class Worker < Officer
  attr_accessor  :level

  def initialize(name,age,gender,adress,level)
    super(name,age,gender,adress)
    @level = level
  end

  def display
    puts "Worker : { "+ "Level: "+ @level.to_s + " Name: "+ @name + " Gender: "+ @gender +  "| Age: "+ @age.to_s + "| Adress : "+ @address +" }"
  end
end