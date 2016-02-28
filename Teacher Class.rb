require './User Class.rb'
def Teacher < User
  def initialize
    super(name , user_name , password)
  end
  def validate?
    super(user_name , password)
  end
end
