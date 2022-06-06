require_relative "coffee_maker.rb"
coffeeMaker = CoffeeMaker.new
begin 
    puts "e, To create espresso"
    puts "d, To create doppi"
    puts "a, To create americano"
    puts "m, To create mokko"
    puts "l, To create latte"
    puts "s, To Stop Coffee Maker"
    print "select e/d/a/m/l/s: "
    
    choice = gets.chomp
    puts "\n"

  
    case choice
      when "e" then coffeeMaker.create_espresso
      when "d" then coffeeMaker.create_doppio
      when "a" then coffeeMaker.create_americano
      when "m" then coffeeMaker.create_mokko
      when "l" then coffeeMaker.crate_latte
    end
  end while choice != "s"

  
coffeeMaker.get_storage