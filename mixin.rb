module Login
  def login username,password
    @username == username and
    @password == password and
    p "successfully logged in as #{@username}"

  end

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


student = Student.new "Princi", "A", "male", "bob", "charle"
teacher = Teacher.new "Ramu", "biology", "female", "char", "option"
p student.inspect
p teacher.inspect
student.login "bob","charle"
teacher.login "char","option"
