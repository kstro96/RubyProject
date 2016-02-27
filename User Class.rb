class User
  attr_accessor :name
  attr_writer :password
  attr_reader :@@code
  @@code = 0
  def initialize (name , user_name , password)
    @name = name
    @user_name = user_name
    @password = password
    @code = @@code
    @@code++
  end
  def validate? (user , password)
    return @user == user && @password == password
  end
end
