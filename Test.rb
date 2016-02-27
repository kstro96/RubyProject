require './User Class.rb'
require './Menu.rb'
menu = Menu.new()
menu.puts_menu()
user = User.new("Alejandro","Kstro96","bugs01")
puts user.validate?("Kstro96","buGs01")
