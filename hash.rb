module Login
def login username,password
  @username = username
  @password = password
  p "successfully logged in as #{username}"

end


class Student
  include Login
def initialize (name,id,sex,username,password)
  @name = name
  @id   = id
  @sex  = sex
  @username = username
  @password = password
end
end
class Teacher
  include Login
  def initialize (name,speciality,sex,username,password)
    @name = name
    @speciality = speciality
    @sex = sex
    @username = username
    @password = password
  end
end
end

student = Student.new "Princi","12","male","bob","charle"
teacher = Teacher.new "Ramu","biology","female","char","option"

student.login "bob","charle"
teacher.login "char","option"
