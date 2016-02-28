require './User Class.rb'
class Administrator < User
   def initialize(name = "Admin", user_name ="Admin", password = "Admin", email = "Admin@admin.com")
     super(name, user_name, password, email)
   end
   def validate? (user_name, password)
     super(user_name, password)
   end
   def validateCourse (course)
     
   end
end
