class User
  attr_accessor :name
  attr_writer :password
  private @@code = 0
  def initialize (name , user_name , password)
    private @name = name
    private @user_name = user_name
    private @password = password
  end
  def validate? (user , password)
    return @user == user && @password == password
  end
end
