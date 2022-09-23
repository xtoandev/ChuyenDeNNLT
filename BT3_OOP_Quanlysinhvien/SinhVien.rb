class SinhVien


  @grade1
  @grade2
  @grade3
  def initialize(id,name)
    @id = id
    @name = name
  end

  attr_accessor :id, :grade1, :grade2, :grade3 , :name

  def avager_grade
    return (@grade1+@grade2+@grade3)/3.0
  end

  def grade1
    @grade1
  end




  def show
    print "id : " + @id + " name : " + @name
  end
end

sv1 = SinhVien.new("1","Pham Xuan Toan")
sv1.grade1 = 9
sv1.grade2 = 9
sv1.grade3 = 10

puts sv1.show
puts '%.2f' % sv1.avager_grade