require './User Class.rb'
require './Menu.rb'
require './System.rb'
require './Administrator Class.rb'
menu = Menu.new()
platform = menu.systemWelcome()
system("cls")
platform.administrator.each { |admin|  puts admin.name}
puts platform.users.empty?
begin
  menu.welcome(platform)
  menu.puts_menu()
  option = gets.chomp.to_i
  case option
  when 1
    print "User: "
    name = gets.chomp
    print "Password: "
    password = gets.chomp
  when 2
    print "User: "
    name = gets.chomp
    print "Password: "
    password = gets.chomp
  when 3
    puts "3"
  when 4
    puts "4"
  when 5
    puts "5"
  when 6
    puts "6"
  else
    system("cls")
    puts "===================================================="
    puts "Invalid option. "
    puts "Please digit a valid one. "
    puts "===================================================="
  end
end while option > 6 || option == 0
