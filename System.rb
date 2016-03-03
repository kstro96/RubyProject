require './User Class.rb'
require './Teacher Class.rb'
require './Course Class.rb'
class System
  attr_accessor :coursesQuantity
  attr_accessor :usersQuantity
  attr_accessor :teachersQuantity
  attr_reader :users
  attr_reader :administrator
  attr_reader :courses
  attr_reader :name
  def initialize(name, nameAdministrator="admin", user_nameAdministrator="admin", administratorPassword="admin", admistratorEmail="admin@admin.com", coursesQuantity = 0, usersQuantity = 0, teachersQuantity = 0)
    @name = name
    @coursesQuantity = coursesQuantity
    @usersQuantity = usersQuantity
    @teachersQuantity = teachersQuantity
    @users = []
    @administrator = []
    @courses = []
    @administrator << Administrator.new(nameAdministrator, user_nameAdministrator, administratorPassword, admistratorEmail)
  end
  def aggregateAdministrator(nameAdministrator, user_nameAdministrator, administratorPassword, admistratorEmail)
    @administrator << Administrator.new(nameAdministrator, user_nameAdministrator, administratorPassword, admistratorEmail)
  end
  def verifyUser (user_name, password)
      unless (@users.empty?)
        unless (self.searchUser(user_name)==nil)

        end
      end
  end
  def verifyAdmin (user_name, password)
    unless (@administrator.empty?)
      unless (self.searchAdministrator(user_name)==nil)

      end
    end
  end
  def aggregateUser (name, user_name, password, email)
      unless (@users.empty?)

      end
  end
  private def searchUser (user_name)
    @users.each do |user|
      if (user.user_name==user_name)
        return user
      end
    end
    return nil
  end
  private def searchAdministrator(user_name)
    @administrator.each do |admin|
      if (admin.user_name == user_name)
        return admin
      end
    end
    return nil
  end
  private def searchCourse (name)
    @courses.each do |course|
      if (course.name == name)
        return course
      end
    end
    return nil
  end
end
