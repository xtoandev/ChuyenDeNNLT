#Pham Xuan Toan _ 1911505310155
class PhanSo
  attr_accessor :tuso_155, :mauso_155

  def initialize(tuso_155, mauso_155)
    @tuso_155 =tuso_155.to_f
    @mauso_155 = mauso_155.to_f
  end

  def timUSCLN(a_155, b_155)
    while a_155 !=b_155
      if a_155 > b_155
        a_155-=b_155
      else
        b_155-=a_155
      end
    end
    return a_155
  end

  def toiGianPhanSo()
    i = timUSCLN(@tuso_155, @mauso_155)
    @tuso_155 = @tuso_155 / i
    @mauso_155 = @mauso_155 / i
  end

  def congPhanSo(ps)
    ts = @tuso_155 * ps.mauso_155 + ps.tuso_155 * @mauso_155
    ms = @mauso_155 * ps.mauso_155
    phanSoTong = PhanSo.new(ts, ms)
    phanSoTong.toiGianPhanSo()
    return phanSoTong
  end

  def truPhanSo(ps)
    ts = @tuso_155 * ps.mauso_155 - ps.tuso_155 * @mauso_155
    ms = @mauso_155 * ps.mauso_155
    phanSoHieu = PhanSo.new(ts, ms)
    phanSoHieu.toiGianPhanSo()
    return phanSoHieu
  end

  def nhanPhanSo(ps)
    ts = @tuso_155 * ps.tuso_155
    ms = @mauso_155 * ps.tuso_155
    phanSoTich = PhanSo.new(ts, ms)
    phanSoTich.toiGianPhanSo()
    return phanSoTich
  end

  def chiaPhanSo(ps)
    ts = @tuso_155 * ps.mauso_155
    ms = @mauso_155 * ps.tuso_155
    phanSoThuong = PhanSo.new(ts, ms)
    phanSoThuong.toiGianPhanSo()
    return phanSoThuong
  end
end

class PhanSo2 < PhanSo
  def congPhanSo(ps)
    result = super
    puts "Tong Hai phan so : #{result.tuso_155} / #{result.mauso_155}"
  end

  def truPhanSo(ps)
    result = super
    puts "Hieu Hai phan so : #{result.tuso_155} / #{result.mauso_155}"
  end

  def nhanPhanSo(ps)
    result = super
    puts "Tich Hai phan so : #{result.tuso_155} / #{result.mauso_155}"
  end

  def chiaPhanSo(ps)
    result = super
    puts "Thuong Hai phan so : #{result.tuso_155} / #{result.mauso_155}"
  end
end
#Test: Pham Xuan Toan _ 1911505310155
phanSo1 = PhanSo2.new(6, 4)
phanSo2 = PhanSo2.new(2, 7)
phanSo1.congPhanSo(phanSo2)
phanSo1.truPhanSo(phanSo2)
phanSo1.nhanPhanSo(phanSo2)
phanSo1.chiaPhanSo(phanSo2)