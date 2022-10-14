class GiaoVien
  attr_accessor :id,:name,:age,:hometown,:bonus, :penaty ,:realSalary

  def initialize(id,name,age,hometown,bonus, penaty ,realSalary)
    @id = id
    @name = name
    @age = age
    @hometown = hometown
    @bonus = bonus
    @penaty = penaty
    @realSalary = realSalary
  end

  def display
    puts "GiaoVien {" + " | ten: "+ @name.to_s + " | tuoi: "+ @tuoi.to_s +
           " | que quan: "+ @hometown.to_s + " | luong thuong: "+ @bonus.to_s +
           " | tien phat: "+ @penaty.to_s + " | luong cung: "+ @realSalary.to_s
  end
end

class QLGV
  def initialize
    @gvs = Array.new()
  end

  def addGV(gv)
    @gvs.push(gv)
  end

  def showInfor()
    @gvs.each do |i|
      i.display
    end
  end

  def deleteById(id)
    @gvs.delete_if {|x| x.id == id }
  end

  def cal_salary(id)
    @gvs.each do |i|
      if(i.id == id)
        puts(i.bonus + i.realSalary - i.penaty)
      end
    end
  end
end

class Main
  list = QLGV.new
  gv1 = GiaoVien.new(1,"Toan",34,"DN",23,5,50)
  list.addGV(gv1)
  while true do
    puts "Application Manager School"
    puts "Enter 1: To insert teacher"
    puts "Enter 2: To remove teacher by id"
    puts "Enter 3: To show infor"
    puts "Enter 4: To calculate salary"
    puts "Enter 5: To exit:"
    option = gets.chomp.to_i
    case option
    when 1

      list.add(themuon)
    when 2
      puts "Nhap so Id :"
      id = gets.chomp.to_i
      list.deleteById(id)
    when 3
      list.showInfor
    when 4
      puts "Nhap so Id :"
      id = gets.chomp.to_i
      list.cal_salary(id)
    when 5
      exit
    end
  end
end