require './User Class.rb'
class Teacher < User
  def initialize
    super(name , user_name , password)
    @teachingCourses = []
  end
  def validate?
    super(user_name , password)
  end
  def aggregateCourse ()

  end
  def deleteACourse ()

  end
end
