require './User Class.rb'
class Teacher < User
  @@teacherID = 0
  def initialize(name, user_name, password, email)
    super(name , user_name , password, email)
    @teacherID = @@teacherID
    ++@@teacherID
    @teachingCourses = []
  end
  def validate?
    super(user_name , password)
  end
  def aggregateCourse (name, seats, initialDate, finalDate)
    @teachingCourses << Course.new(name, seats, @name, initialDate, finalDate)
  end
  def deleteACourse ()

  end
end
