require './User Class.rb'
require './Menu.rb'
require './System.rb'
require './Administrator Class.rb'
menu = Menu.new()
platform = menu.systemWelcome()
system("cls")
platform.administrator.each { |admin|  puts admin.name}
puts platform.users.empty?
platform.aggregateUser("Alejandro", "kstro96", "bugs01", "Alejo@alejo.com")
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
    if(platform.verifyUser(name, password) != nil)
      puts "CORRECTO"
    else
      puts "INCORRECTO"
    end
  when 2
    print "User name: "
    name = gets.chomp
    print "Password: "
    password = gets.chomp
  when 3
    puts "3"
  when 4
    puts "User name: "
    user_name = gets.chomp
    puts "Password: "
    password = gets.chomp
    puts "Confirm password: "
    confirmPassword = gets.chomp
    puts "Email address: "
    email = gets.chomp
  when 5
    puts "5"
  when 6
    puts "User name: "
    name = gets.chomp
    puts "Password: "
    password = gets.chomp
    puts platform.verifyAdmin(name, password)
  else
    system("cls")
    puts "===================================================="
    puts "Invalid option. "
    puts "Please digit a valid one. "
    puts "===================================================="
  end
end while option > 6 || option == 0
