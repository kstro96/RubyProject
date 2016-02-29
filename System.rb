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
    unless(@users.empty?)
      possibleUser = searchUser(user_name)
      if (possibleUser != nil)
        return possibleUser.validate?(user_name, password)
      else
        return false
      end
    end
    return false
  end
  def verifyAdmin (user_name, password)
    unless(@administrator.empty?)
      possibleAdmin = searchAdministrator(user_name)
      if(possibleAdmin != nil)
        return possibleUser.validate?(user_name, password)
      else
        return false
      end
    end
    return false
  end
  def aggregateUser (name, user_name, password, email)
    if (@users.empty?)
      @users << User.new(name, user_name, password, email)
      return true
    else
      if(@users[user_name]==nil)
        @users << User.new(name, user_name, password, email)
        return true
      else
        return false
      end
    end
  end
  private def searchUser (user_name)
    return @users[user_name]
  end
  private def searchAdministrator(user_name)
    return @administrator[user_name]
  end
end
