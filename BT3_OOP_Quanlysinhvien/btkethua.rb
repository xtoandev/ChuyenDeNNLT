class Human
  attr_accessor :name, :gender, :height, :weight, :phone, :email
end

class Student < Human
  attr_accessor  :school_name, :student_id, :grade, :class_name, :grade1, :grade2, :grade3

  def initialize( student_id,name_student ,gender_s,grades, school_name,class_name)
    @student_id = student_id
    self.name = name_student
    self.gender = gender_s
    @grade1 = grades[0]
    @grade2 = grades[1]
    @grade3 = grades[2]
    @school_name= school_name
    @class_name= class_name
  end

  def grade
    @grade =  (@grade1+@grade2+@grade3) / 3.0
  end

  def display
    puts "Id : "+ @student_id + "| Name: "+ @name + "| Gender: "+ @gender + "| Grade: " + '%.2f' % @grade.to_s + "| School_name: "+ @school_name+ "| Class_name: "+ @class_name
  end

end

sv1 = Student.new("1","Toan","M",[5,7,9],"UTE","19T1")
sv2 = Student.new("2","Tri","M",[7,7,7],"UTE","19T1")
sv3 = Student.new("3","Viet","M",[9,9.5,10],"UTE","19T1")
sv4 = Student.new("4","Manh","F",[4,8,7],"UTE","19T1")
sv5 = Student.new("5","Phu","M",[6.5,7,8],"UTE","19T1")

list_sv = [sv1,sv2,sv3,sv4,sv5]
list_sv_sort = list_sv.sort_by { |sv| [ -sv.grade] }
puts "Danh sach sinh vien chua xap xep"
list_sv.each do |i|
  i.display
end
puts "Danh sach sinh vien da xap xep"
list_sv_sort.each do |i|
  i.display
end
