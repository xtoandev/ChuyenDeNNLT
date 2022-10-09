class GiaoVien
  attr_accessor :name,:age,:hometown,:bonus, :penaty ,:realSalary

  def initialize(name,age,hometown,bonus, penaty ,realSalary)
    @name = name
    @age = age
    @hometown = hometown
    @bonus = bonus
    @penaty = penaty
    @realSalary = realSalary
  end

  def display
    puts "GiaoVien {" + " | ten: "+ @name.to_s + " | tuoi: "+ @tuoi.to_s
    + " | que quan: "+ @hometown.to_s + " | luong thuong: "+ @bonus.to_s
    + " | tien phat: "+ @penaty.to_s + " | luong cung: "+ @realSalary.to_s
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
        return i.bonus + i.realSalary - i.penaty
      end
    end
  end
end

class Main

end