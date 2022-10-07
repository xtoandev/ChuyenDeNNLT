#Phạm Xuân Toán -1911505310155
class Xe
  attr_accessor :id,:hsx,:nsx,:dong_xe,:gia_ban,:bien_so,:mau_xe

  def initialize(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe)
    @id = id
    @hsx = hsx
    @nsx = nsx
    @dong_xe = dong_xe
    @gia_ban = gia_ban
    @bien_so = bien_so
    @mau_xe = mau_xe
  end
end

class Oto < Xe
  attr_accessor :so_cho_ngoi,:kieu_dong_co,:nhien_lieu,:so_tui_khi,:ngay_dang_kiem

  def initialize(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe,so_cho_ngoi,kieu_dong_co,nhien_lieu,so_tui_khi,ngay_dang_kiem)
    super(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe)
    @so_cho_ngoi = so_cho_ngoi
    @kieu_dong_co = kieu_dong_co
    @nhien_lieu = nhien_lieu
    @so_tui_khi = so_tui_khi
    @ngay_dang_kiem = ngay_dang_kiem
  end
  def display()
    puts "Oto : {"+ "ID: "+ @id.to_s + "| hang san xuat: "+@hsx +"| nha san xuat: "+ @nsx+
           "| dong xe: "+ @dong_xe.to_s + "| gia_ban: " + gia_ban.to_s +
           "| bien so: "+ @bien_so.to_s + "| mau_xe: " + mau_xe.to_s +
           "| so_cho_ngoi: "+ @so_cho_ngoi.to_s + "| kieu_dong_co: " + kieu_dong_co.to_s +
           "| nhien_lieu: "+ @nhien_lieu.to_s + "| so_tui_khi: " + so_tui_khi.to_s +
           "| ngay_dang_kiem: "+ @ngay_dang_kiem.to_s + " }"
  end

end

class XeMay < Xe
  attr_accessor :cong_suat,:dung_tich_xang

  def initialize(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe,cong_suat,dung_tich_xang)
    super(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe)
    @cong_suat = cong_suat
    @dung_tich_xang = dung_tich_xang
  end
  def display()
    puts "XeMay: {"+ "ID: "+ @id.to_s + "| hang san xuat: "+@hsx +"| nha san xuat: "+ @nsx+
         "| dong xe: "+ @dong_xe.to_s + "| gia_ban: " + gia_ban.to_s +
         "| bien so: "+ @bien_so.to_s + "| mau_xe: " + mau_xe.to_s +
         "| cong_suat: "+ @cong_suat.to_s + "| dung_tich_xang: " + dung_tich_xang.to_s + " }"
  end
end

class XeTai < Xe
  attr_accessor :trong_tai
  def initialize(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe,trong_tai)
    super(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe)
    @trong_tai= trong_tai
  end
  def display()
    puts "XeTai: {"+ "ID: "+ @id.to_s + "| hang san xuat: "+@hsx +"| nha san xuat: "+ @nsx+
           "| dong xe: "+ @dong_xe.to_s + "| gia_ban: " + gia_ban.to_s +
           "| bien so: "+ @bien_so.to_s + "| mau_xe: " + mau_xe.to_s +
           "| trong_tai: "+ @trong_tai.to_s + " }"
  end
end

class QLPTGT
  def initialize
    @listPT = Array.new()
  end

  def add(entity)
    @listPT.push(entity)
  end

  def addXe()
    puts "Enter a: to insert Oto"
    puts "Enter b: to insert XeMay"
    puts "Enter c: to insert XeTai"
    type = gets.chomp.to_s

    puts "Enter id:"
    id = gets.chomp.to_s
    puts "Enter hang san xuat: "
    hsx = gets.chomp.to_s
    puts "Enter nam san xuat: "
    nsx = gets.chomp.to_s
    puts "Enter dong xe: "
    dong_xe = gets.chomp.to_s
    puts "Enter gia ban: "
    gia_ban = gets.chomp.to_s
    puts "Enter bien so: "
    bien_so = gets.chomp.to_s
    puts "Enter mau xe: "
    mau_xe = gets.chomp.to_s

    case type
    when "a"
      puts "Enter so_cho_ngoi: "
      so_cho_ngoi = gets.chomp.to_s
      puts "Enter kieu_dong_co: "
      kieu_dong_co = gets.chomp.to_s
      puts "Enter nhien_lieu: "
      nhien_lieu = gets.chomp.to_s
      puts "Enter so_tui_khi: "
      so_tui_khi = gets.chomp.to_s
      puts "Enter ngay_dang_kiem: "
      ngay_dang_kiem = gets.chomp.to_s
      oto = Oto.new(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe,so_cho_ngoi,kieu_dong_co,nhien_lieu,so_tui_khi,ngay_dang_kiem)
      add(oto)
    when "b"
      puts "Enter cong_suat: "
      cong_suat = gets.chomp.to_s
      puts "Enter dung_tich_xang: "
      dung_tich_xang = gets.chomp.to_s
      xemay = XeMay.new(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe,cong_suat,dung_tich_xang)
      add(xemay)
    when "c"
      puts "Enter trong_tai: "
      trong_tai = gets.chomp.to_s
      xetai = XeTai.new(id,hsx,nsx,dong_xe,gia_ban,bien_so,mau_xe,trong_tai)
      add(xetai)
    end
  end

  def deleteXeById(id)
    @listPT.delete_if {|x| x.id == id }
    showListInfor
  end

  def findXeByHSX(hsx)
    @listPT.each do |i|
      if i.hsx == hsx
        return i.display
      end
    end
  end
  def findXeByMau(mau)
    @listPT.each do |i|
      if i.mau_xe == mau
        return i.display
      end
    end
  end
  def findXeByBienSo(bienso)
    @listPT.each do |i|
      if i.bien_so == bienso
        return i.display
      end
    end
  end
  def showListInfor
    if(@listPT.nil?)
      puts "Chưa có xe trong danh sach"
    else
      @listPT.each do |i|
        i.display()
      end
    end
  end
end

class Main
  listXe_155 = QLPTGT.new()
  #Them du lieu
  oto1 = Oto.new("1","Toyota","2019","Toyota Fortuner","250 trieu","223123123","trang","4","4 xilanh","xang","2","22/10/2019")
  xemay1 = XeMay.new("2","Honda","2016","Sirius","22 trieu","447123","xanhduong","100cc","10l")
  xetai1 = XeTai.new("3","Truong Hai","2018","Mitsubishi Fuso","800 trieu","2123123","den","1.9 tan")
  listXe_155.add(oto1)
  listXe_155.add(xemay1)
  listXe_155.add(xetai1)

  while true do
    puts " "
    puts "Application Manager Xe"
    puts "Enter 1: To insert Xe"
    puts "Enter 2: To search Xe by hang san xuat, mau, bien so"
    puts "Enter 3: To show information of Xe: "
    puts "Enter 4: To remove Xe by id"
    puts "Enter 5: To exit:"
    option = gets.chomp.to_i
    case option
    when 1
      listXe_155.addXe()
    when 2
      puts "Enter a to search hang san xuat "
      puts "Enter b to search mau "
      puts "Enter c to search bien so"
      puts "Enter type Seach : "
      category = gets.chomp.to_s
      seach = ""
      case category
      when "a"
        puts "Enter type hang san xuat : "
        hsx = gets.chomp.to_s
        listXe_155.findXeByHSX(hsx)
      when "b"
        puts "Enter type mau : "
        mau = gets.chomp.to_s
        listXe_155.findXeByMau(mau)
      when "c"
        puts "Enter type bien so : "
        bienso = gets.chomp.to_s
        listXe_155.findXeByBienSo(bienso)
      end
    when 3
      puts "List Xe : "
      listXe_155.showListInfor()
    when 4
      puts "Enter id to remove: "
      id = gets.chomp.to_s
      listXe_155.deleteXeById(id)
    when 5
      exit
    end
  end
end