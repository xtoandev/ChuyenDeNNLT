require_relative './Officer.rb'

class Staff < Officer
  attr_accessor  :task;

  def initialize(name,age,gender,adress,task)
    super(name,age,gender,adress)
    @task = task
  end


  def display
    puts "Staff : { "+ "Task: "+ @task + " Name: "+ @name + " Gender: "+ @gender +  "| Age: "+ @age.to_s + "| Adress : "+ @address +" }"
  end
end