class ManagerOfficer
  @listOfficers = Array.new()

  def initialize
    @listOfficers = Array.new()
  end

  def add(entity)
    @listOfficers.push(entity)
  end

  def findByName(name)
    @listOfficers.each do |i|
      if i.name == name
        return i.display
      end
    end

  end

  def showListInforOfficer()
    @listOfficers.each do |i|
      i.display
    end
  end


end