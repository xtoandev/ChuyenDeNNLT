require_relative './Candidate.rb'

class ManagerCadidate


  def initialize
    @listCadidate = Array.new()
  end

  def add(entity)
    @listCadidate.push(entity)
  end

  def addCandidate()
     puts "Enter a: to insert Candidate A"
     puts "Enter b: to insert Candidate B"
     puts "Enter c: to insert Candidate C"
     type = gets.chomp.to_s

     puts "Enter id:"
     id = gets.chomp.to_s
     puts "Enter name: "
     name = gets.chomp.to_s
     puts "Enter address: "
     address = gets.chomp.to_s
     puts "Enter prority: "
     prority = gets.chomp.to_i

     case type
     when "a"
       candidateA = CandidateA.new(id,name,address,prority)
       add(candidateA)
     when "b"
       candidateB = CandidateB.new(id,name,address,prority)
       add(candidateB)
     when "c"
       candidateC = CandidateC.new(id,name,address,prority)
       add(candidateC)
     end
  end

  def showListInfor
    if(@listCadidate.nil?)
      puts "Chưa có thí sinh "
    else
      @listCadidate.each do |i|
        i.display()
      end
    end

  end

  def findByID(id)
    @seach
    if(@listCadidate.nil?)
      puts "Chưa có thí sinh "
      return
    else
      @listCadidate.each do |i|
        if i.id == id
          @seach = i
        end
      end
      if @seach.nil?
        puts "Không tìm thấy"
      else @seach.display
      end
    end
  end

end
