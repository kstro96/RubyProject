require './User Class.rb'
require './Menu.rb'
require './System.rb'
require './Administrator Class.rb'
menu = Menu.new()
platform = menu.systemWelcome()
system("cls")
begin
  menu.welcome(platform)
  menu.puts_menu()
  option = gets.chomp.to_i
  case option
  when 1
    puts "1"
  when 2
    puts "2"
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
    puts "Invalid option. "
    puts "Please digit a valid one. "
  end
end while option > 6 || option == 0
