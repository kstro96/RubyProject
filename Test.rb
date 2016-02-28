require './User Class.rb'
require './Menu.rb'
require './System.rb'
require './Administrator Class.rb'
menu = Menu.new()
menu.welcome()
user = User.new("Alejandro","Kstro96","bugs01", "alejokstro2011@hotmail.com")
puts user.validate?("Kstro96","bugs01")
user.addCourse("X")
