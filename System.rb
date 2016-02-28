require './User Class.rb'
require './Teacher Class.rb'
require './Course Class.rb'
class System
  def initialize(  courses = 0, users = 0, teachers = 0)
    @courses = courses
    @users = users
    @teachers = teachers
  end
end
