class Candidate
  attr_accessor :id,:name,:address,:prority
  def initialize(id,name,address,prority)
    @id = id
    @name = name
    @address = address
    @prority = prority
  end
end

class CandidateA < Candidate
  def initialize(id, name, address, prority)
    super(id, name, address, prority)
    @subject = ["Math","Physical","Chemistry"]
  end
  def display()
    puts "Candidate A: {"+ "ID: "+ @id.to_s + "| name: "+@name +"| address: "+ @address+ "| prority: "+ @prority.to_s +
           "| Subject: " + @subject.to_s + " }"
  end
end

class CandidateB < Candidate
  def initialize(id, name, address, prority)
    super(id, name, address, prority)
    @subject = ["Math", "Chemistry", "Biology"]
  end
  def display()
    puts "Candidate B: {"+ "ID: "+ @id.to_s + "| name: "+@name +"| address: "+ @address+ "| prority: "+ @prority.to_s +
    "| Subject: " + @subject.to_s + " }"
  end
end

class CandidateC < Candidate
  def initialize(id, name, address, prority)
    super(id, name, address, prority)
    @subject = ["Literature", "History", "Geography"]
  end
  def display()
    puts "Candidate C: {"+ "ID: "+ @id.to_s + "| name: "+@name +"| address: "+ @address+ "| prority: "+ @prority.to_s +
           "| Subject: " + @subject.to_s + " }"
  end
end