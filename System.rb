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
  def initialize(nameAdministrator, user_nameAdministrator, administratorPassword, admistratorEmail, coursesQuantity = 0, usersQuantity = 0, teachersQuantity = 0)
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
end
