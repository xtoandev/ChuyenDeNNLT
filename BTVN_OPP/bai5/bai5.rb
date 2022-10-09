class Phong
  attr_accessor :gia_thue,:loai_phong
  def initialize(loai_phong,giathue)
    @loai_phong = loai_phong
    @gia_thue = giathue
  end
end

class PhongA < Phong
  attr_accessor :gia_thue
  def initialize()
    super("A",500)
  end
end

class PhongB < Phong
  attr_accessor :gia_thue
  def initialize()
    super("B",300)
  end
end
class PhongC < Phong
  attr_accessor :gia_thue
  def initialize()
    super("C",100)
  end
end

class Nguoi
  attr_accessor :name, :age, :cmnd,:phong

  def initialize(name, age, cmnd,phong)
    @name = name
    @age = age
    @cmnd = cmnd
    @phong = phong
  end

  def display()
    puts "Nguoi {"+ "Loaiphong: " + @phong.loai_phong.to_s + "| CMND: "+ @cmnd.to_s + "| Ten: "+ @name.to_s+ "| Tuoi: "+@age.to_s + "} "
  end
end

class KhachSan
  attr_accessor :so_ngay_thue,:nguoi_thue

  def initialize(so_ngay_thue,loai_phong,ds_nguoi_thue)
    @so_ngay_thue = so_ngay_thue
    @ds_nguoi_thue = ds_nguoi_thue
  end
  def initialize
  end
  def addNguoi(n)
    n.times { |i|

      puts " Nhap nguoi thu " + j.to_s
      puts "Nhap cmnd"
      cmnd = gets.chomp.to_s
      puts "Nhap ten"
      name = gets.chomp.to_s
      puts "Nhap tuoi"
      age = gets.chomp.to_i
       puts "Choise 1 to rent room type A"
       puts "Choise 2 to rent room type B"
       puts "Choise 3 to rent room type C"
      phong = gets.chomp.to_i
      if(phong == 1)
        loai_phong = PhongA.new
      end
      if(phong == 2)
        loai_phong = PhongB.new
      end
      if(phong == 3)
        loai_phong = PhongC.new
      end
      nguoi = Nguoi.new(name, age, cmnd,phong)
      @ds_nguoi_thue.push(nguoi)
    }
  end

  def deleteNguoi()
    puts "Nhap cmnd can xoa"
    cmnd = gets.chomp.to_s
    @ds_nguoi_thue.delete_if {|x| x.cmnd == cmnd }
  end

  def cal_money(cmnd)
    @ds_nguoi_thue.each do |i|
      if i.cmnd == cmnd
        return @so_ngay_thue * i.loai_phong.gia_thue
      end
    end
  end

  def showInfor()
    @ds_nguoi_thue.each do |i|
      i.display
    end
  end
end

class Main
  khachsan = KhachSan.new()

  while true do
    puts "Application Manager Hotel"
    puts "Enter 1: To insert person for room"
    puts "Enter 2: To remove person by cmnd"
    puts "Enter 3: To calculator price by cmnd"
    puts "Enter 4: To show infor"
    puts "Enter 5: To exit:"
    option = gets.chomp.to_i
    case option
    when 1
      puts "Nhap so nguoi :"
      n = gets.chomp.to_i
      addNguoi(n)
    when 2
      khachsan.deleteNguoi
    when 3
      puts "Nhap so CMND nguoi :"
      cmnd = gets.chomp.to_i
      puts cal_money(cmnd).to_s
    when 4
      khachsan.showInfor
    when 5
      exit
    end
  end
end
