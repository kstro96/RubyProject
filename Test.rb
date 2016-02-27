require './User Class.rb'
require './Menu.rb'
Menu.new().puts_menu()
user = User.new("Alejandro","Kstro96","bugs01", "alejokstro2011@hotmail.com")
puts user.validate?("Kstro96","buGs01")
