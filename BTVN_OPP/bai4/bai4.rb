class Nguoi
  attr_accessor :name, :age, :job, :cmnd

  def initialize(name, age, job, cmnd)
    @name = name
    @age = age
    @job = job
    @cmnd = cmnd
  end

  def display()
    puts "Nguoi {"+ "| CMND: "+ @cmnd.to_s + "| Ten: "+ @name.to_s+ "| Cong viec: "+@job.to_s + "} "
  end
end

class HoGiaDinh
  attr_accessor :num_of_family,:address,:listNguoi

  def initialize(num_of_family,address,nguoi)
    @num_of_family = num_of_family
    @address = address
    @listNguoi = nguoi
  end


  def addPerson(person)
    @listNguoi.push(person)
  end

  def display
    puts "---Ho Gia Dinh---"
    puts "So thanh vien " + @num_of_family.to_s
    puts "Dia chi "+ @address.to_s
    puts "Thong tin thanh vien: "
    @listNguoi.each do |i|
      i.display()
    end
    puts "----------------"
  end
end

class KhuPho
  def initialize()
    @listHoGiaDinh = Array.new()
  end

  def showInfor()
    if(@listHoGiaDinh.nil?)
      puts "Chưa có thí sinh "
    else
      @listHoGiaDinh.each do |i|
        i.display()
      end
    end
  end

  def addFamily(hgd)
    @listHoGiaDinh.push(hgd)
  end
end

class Main
  @khupho = KhuPho.new()
  print "nhap n ho dan = "
  n = gets.chomp.to_i

  #nhap tu ban phim
  n.times { |i|
    puts "Ho gia dinh "+ i.to_s
    puts "Nhap dia chi"
    address = gets.chomp.to_s
    puts "Nhap so nguoi"
    songuoi = gets.chomp.to_i

    list = Array.new()
    songuoi.times { |j|
      puts " Nhap nguoi thu " + j.to_s
      puts "Nhap ten"
      name = gets.chomp.to_s
      puts "Nhap tuoi"
      age = gets.chomp.to_i
      puts "Nhap cong viec"
      job = gets.chomp.to_s
      puts "Nhap cmnd"
      cmnd = gets.chomp.to_s
      nguoi = Nguoi.new(name, age, job, cmnd)
      list.push(nguoi)
    }
    hgd = HoGiaDinh.new(songuoi,address,list)
    @khupho.addFamily(hgd)
  }

  #Hien thi
  @khupho.showInfor()

end