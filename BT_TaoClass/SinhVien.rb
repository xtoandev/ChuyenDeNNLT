class SinhVien

  @id
  @name
  @score

  def initialize(id,name)
    @id = id
    @name = name
  end

  def input_mark()
    print("Input mark of math  = ")
    math = gets.chomp.to_i
    print("Input mark of physics  = ")
    physics = gets.chomp.to_i
    print("Input mark of chemistry  = ")
    chemistry = gets.chomp.to_i
    @score = cal_mediumScore(math,physics,chemistry)
  end

  def cal_mediumScore(var1,var2,var3)
    return (var1+var2+var3)/3
  end

  def show
    puts "id: #{@id}," + " name: #{@name}," + " score: #{@score}"
  end
end
#Test
class Main
  sv1 = SinhVien.new("1","Toan")
  sv1.input_mark()
  sv1.show
end