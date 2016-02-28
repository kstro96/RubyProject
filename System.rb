require './User Class.rb'
require './Teacher Class.rb'
require './Course Class.rb'
class System
  def initialize(  coursesQuantity = 0, usersQuantity = 0, teachersQuantity = 0)
    @coursesQuantity = coursesQuantity
    @usersQuantity = usersQuantity
    @teachersQuantity = teachersQuantity
  end
end
