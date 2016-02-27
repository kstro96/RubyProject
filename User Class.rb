class User
  attr_accessor :name
  attr_writer :password
  @@code = 0
  def initialize (name , user_name , password)
    @name = name
    @user_name = user_name
    @password = password
  end
  def validate? (user , password)
    return @user == user && @password == password ? true : false
  end
end
