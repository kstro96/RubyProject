require './Course Class.rb'
class User
  attr_accessor :name
  attr_writer :password
  attr_reader :code
  attr_accessor :email
  @@code = 0
  def initialize (name , user_name , password , email)
    @name = name
    @user_name = user_name
    @password = password
    @email = email
    @courses = []
    @code = @@code
    ++@@code
  end
  def validate? (user_name , password)
    return (@user_name == user_name && @password == password)
  end
  def addCourse (name)
    @courses << name
  end
  def enrollInACourse ()

  end
  def searchACourse ()

  end
  def searchATeacher ()

  end
end
