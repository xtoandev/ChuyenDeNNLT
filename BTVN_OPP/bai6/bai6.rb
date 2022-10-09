class HocSinh
  attr_accessor :name,:age,:hometown,:class_id
  def initialize(name,age,hometown,class_id)
    @name = name
    @age = age
    @hometown = hometown
    @class_id = class_id
  end
  def display
    puts "HocSinh {" + " | ten: "+ @name.to_s + " | tuoi: "+ @tuoi.to_s
    + " | que quan: "+ @hometown.to_s + " | lop: "+ @class_id.to_s
  end
end

class TruongHoc
  def initialize
    @listHS = Array.new()
  end
  def addHS()
    puts "Nhap ten"
    name = gets.chomp.to_s
    puts "Nhap tuoi"
    age = gets.chomp.to_s
    puts "Nhap que quan"
    hometown = gets.chomp.to_s
    puts "Nhap lop"
    class_id = gets.chomp.to_s
    hs = HocSinh.new(name,age,hometown,class_id)
    @listHS.push(hs)
  end
  def showInfor()
    @listHS.each do |i|
      i.display
    end
  end
  def getInforByAge(age)
    @listHS.each do |i|
      if(i.age == age)
        i.display
      end
    end
  end
  def getInforByAgeAndHometown(age,hometown)
    @listHS.each do |i|
      if(i.age == age && i.hometown == hometown)
        i.display
      end
    end
  end
end

class Main
  truonghoc = TruongHoc.new()
  truonghoc.getInforByAge(20)
  truonghoc.getInforByAgeAndHometown(23,"DN")
end