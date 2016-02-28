require './User Class.rb'
class Teacher < User
  def initialize
    super(name , user_name , password)
  end
  def validate?
    super(user_name , password)
  end
end
