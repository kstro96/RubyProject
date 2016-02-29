require './User Class.rb'
class Administrator < User
   def initialize(name = "admin", user_name ="admin", password = "admin", email = "admin@admin.com")
     super(name, user_name, password, email)
   end
   def validate? (user_name, password)
     super(user_name, password)
   end
   def validateCourse (course)

   end
end
