class HocSinh
  attr_accessor :name,:age,:hometown,:class_id
  def initialize(name,age,hometown,class_id)
    @name = name
    @age = age
    @hometown = hometown
    @class_id = class_id
  end
  def display
    puts "HocSinh {" + " | ten: "+ @name.to_s + " | tuoi: " + @tuoi.to_s +
           " | que quan: "+ @hometown.to_s + " | lop: "+ @class_id.to_s
  end
end

class TruongHoc
  def initialize
    @listHS = Array.new()
  end
  def add(hs)
    @listHS.push(hs)
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
    add(hs)
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
  hs1 = HocSinh.new("Toan",20,"UTE","19T1")
  hs2 = HocSinh.new("Toan2",23,"DN","19T1")
  hs3 = HocSinh.new("Toan3",12,"DN","19T1")
  hs4 = HocSinh.new("Toan4",20,"QWE","19T1")
  truonghoc.add(hs1)
  truonghoc.add(hs2)
  truonghoc.add(hs3)
  truonghoc.add(hs4)
  puts "Hoc sinh co tuoi bang 20: "
  truonghoc.getInforByAge(20)
  puts "Hoc sinh co tuoi bang 23 va que quan Da Nang :"
  truonghoc.getInforByAgeAndHometown(23,"DN")
end