class ManagerOfficer
  @listOfficers_155 = Array.new()

  def initialize
    @listOfficers_155 = Array.new()
  end

  def add(entity)
    @listOfficers_155.push(entity)
  end

  def findByName(name)
    @listOfficers_155.each do |i_155|
      if i_155.name == name
        return i_155.display
      end
    end

  end

  def showListInforOfficer()
    @listOfficers_155.each do |i_155|
      i_155.display
    end
  end


end