require_relative './ManagerOfficer.rb'
require_relative './Engineer.rb'
require_relative './Worker.rb'
require_relative './Staff.rb'
class Main
  list_155 = ManagerOfficer.new()

  while true do
    puts "Application Manager Officer"
    puts "Enter 1: To insert officer"
    puts "Enter 2: To search officer by name: "
    puts "Enter 3: To show information officers"
    puts "Enter 4: To exit:"
    option_155 = gets.chomp.to_i
    case option_155
    when 1
      puts "Enter a: to insert Enginner"
      puts "Enter b: to insert Worker"
      puts "Enter c: to insert Staff"
      type_155 = gets.chomp.to_s

      puts "Enter name: "
      name_155 = gets.chomp.to_s
      puts "Enter age:"
      age_155 = gets.chomp.to_i
      puts "Enter gender: "
      gender_155 = gets.chomp.to_s
      puts "Enter address: "
      address_155 = gets.chomp.to_s

      case type_155
      when "a"
        puts "Enter branch: "
        branch_155 = gets.chomp.to_s
        engineer_155 = Engineer.new(name_155, age_155, gender_155, address_155, branch_155)
        list.add(engineer_155)
      when "b"
        puts "Enter level: "
        level_155 = gets.chomp.to_i
        worker_155 = Worker.new(name_155, age_155, gender_155, address_155, level_155)
        list.add(worker_155)
      when "c"
        puts "Enter task: "
        task_155 = gets.chomp.to_s
        staff_155 = Staff.new(name_155, age_155, gender_155, address_155, task_155)
        list.add(staff_155)
      end
    when 2
      puts "Enter Name Seach : "
      name_155 = gets.chomp.to_s
      list.findByName(name_155)
    when 3
      puts "List Officers: "
      list_155.showListInforOfficer()
    when 4
      exit
    end

  end



end