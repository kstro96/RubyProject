require './User Class.rb'
require './Teacher Class.rb'
require './Course Class.rb'
class System
  attr_accessor :coursesQuantity
  attr_accessor :usersQuantity
  attr_accessor :teachersQuantity
  attr_accessor :users
  attr_accessor :administrator
  attr_accessor :courses
  def initialize(  coursesQuantity = 0, usersQuantity = 0, teachersQuantity = 0)
    @coursesQuantity = coursesQuantity
    @usersQuantity = usersQuantity
    @teachersQuantity = teachersQuantity
    @users = []
    @administrator = []
    @courses = []
  end
end
