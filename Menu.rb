require './System.rb'
class Menu
  def systemWelcome()
    puts "Indicate the name of your system. "
    STDOUT.flush
    name = gets.chomp
    return System.new(name)
  end
  def welcome(platform)
    puts "-----------------------------------"
    puts "-----------------------------------"
    puts "Welcome to your new learning system"
    puts "-------------#{platform.name}------------------"
    puts "-----------------------------------"
    puts "-----------------------------------"
  end
  def puts_menu()
    puts "Option 1: Log in as User "
    puts "Option 2: Log in as Teacher "
    puts "Option 3: Visualize all available courses. "
    puts "Option 4: Create an account"
    puts "Option 5: "
    puts "Option 6: Log in as Administrator"
  end
  def puts_menu_User()
    puts "Option 1: My Account. "
    puts "Option 2: My Courses. "
    puts "Option 3: My Teachers. "
    puts "Option 4: My Assignments. "
  end
  def puts_menu_Administrator()
  puts "Option 1 : "
  puts "Option 2 : "
  puts "Option 3 : "
  puts "Option 4 : "
  end
end
