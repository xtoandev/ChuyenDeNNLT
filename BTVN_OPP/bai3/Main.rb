require_relative 'ManagerCandidate.rb'
require_relative 'Candidate.rb'
class Main
  list_155 = ManagerCadidate.new()
  ts1 = CandidateA.new("1","Xuan Toan","123 UTE","2")
  ts2 = CandidateB.new("2","Hoang Pham","123 UTE","3")
  ts3 = CandidateC.new("3","Pham Xuan","123 UTE","1")
  list_155.add(ts1)
  list_155.add(ts2)
  list_155.add(ts3)
  while true do
    puts " "
    puts "Application Manager Candidate"
    puts "Enter 1: To insert candidate"
    puts "Enter 2: To search candidate by id"
    puts "Enter 3: To show information of candidate: "
    puts "Enter 4: To exit:"
    option = gets.chomp.to_i
    case option
    when 1
      list_155.addCandidate()
    when 2
      print "Enter id candidate:"
      seach = gets.chomp.to_s
      list_155.findByID(seach)
    when 3
      puts "List Documents : "
      list_155.showListInfor
    when 4
      exit
    end

  end
end
