class HocSinh
  attr_accessor :name,:age,:class_id
  def initialize(name,age,class_id)
    @name = name
    @age = age
    @class_id = class_id
  end
  def display
    puts " HocSinh {" + " | Ten: "+ @name.to_s + " |Tuoi: "+ @age.to_s
    + " | Lop: "+ @class_id.to_s + "}"
  end
end

class TheMuon
  attr_accessor :id, :borrow_date, :payment_date, :book_id, :student
  def initialize(id, borrowDate, paymentDate, bookId, student)
    @id = id
    @borrow_date = borrowDate
    @payment_date = paymentDate
    @book_id = bookId
    @student = student
  end

  def display
    puts "The Muon {" + " | id: "+ @id.to_s + " | Ngay muon: " + @borrow_date.to_s +
           " | Ngay tra: " + @payment_date.to_s + " | Ma sach: "+ @book_id.to_s + " |Thong tin hs: "
    student.display
  end
end

class QLMS
  def initialize
    @list_the = Array.new()
  end

  def add(entity)
    @list_the.push(entity)
  end
  def deleteById(id)
    @list_the.delete_if {|x| x.id == id }
  end
  def showInfor()
    if (@list_the.length() == 0)
      puts "Khong co the muon trong danh sach"
    end
    @list_the.each do |i|
      i.display
    end
  end
end
class Main
  list = QLMS.new
  student1 = HocSinh.new("Toan",18,"19T1")
  themuon1 = TheMuon.new(1,"2","3",3,student1)
  list.add(themuon1)
  while true do
    puts "Application Manager Book Card"
    puts "Enter 1: To insert person for room"
    puts "Enter 2: To remove person by cmnd"
    puts "Enter 3: To show infor"
    puts "Enter 4: To exit:"
    option = gets.chomp.to_i
    case option
    when 1
      puts "Nhap so Ma phieu muon:"
      id = gets.chomp.to_i
      puts "Nhap  Ngay muon :"
      borrowDate = gets.chomp.to_s
      puts "Nhap  Ngay tra :"
      paymentDate = gets.chomp.to_s
      puts "Nhap  Ma sach :"
      bookId = gets.chomp.to_s
      puts "Nhap Thong tin Hoc Sinh :"
      puts "Nhap Ten HS :"
      name = gets.chomp.to_s
      puts "Nhap so Tuoi :"
      age = gets.chomp.to_si
      puts "Nhap Lop :"
      class_id = gets.chomp.to_s
      student = HocSinh.new(name,age,class_id)
      themuon = TheMuon.new(id, borrowDate, paymentDate, bookId, student)
      list.add(themuon)
    when 2
      puts "Nhap so Id :"
      id = gets.chomp.to_i
      list.deleteById(id)
    when 3
      list.showInfor
    when 4
      exit
    end
  end
end