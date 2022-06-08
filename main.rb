require_relative "cup.rb"
require_relative "coffee_maker.rb"
require_relative "maker_milk.rb"
require_relative "maker_milk_kakao.rb"
coffeeMaker = CoffeeMaker.new
maker_milk = MakerMilk.new
maker_milk_kakao = MakerMilkKakao.new

begin
  puts "Hi, choose a coffee machine to use."
  puts "1, Standart"
  puts "2 Standart + milk"
  puts "3, Standart + Kakao-milk"
  
  puts "\n"
  choice = gets.chomp
  puts "\n"

  case choice 

    when "1" then begin 

      puts "e, To create espresso"
      puts "d, To create doppi"
      puts "a, To create americano"
      puts "s, To Stop Coffee Maker"
      print "select e/d/a/s: "
      
      choice_1 = gets.chomp
      puts "\n"
    
    
      case choice_1
        when "e" then coffeeMaker.create_espresso
        when "d" then coffeeMaker.create_doppio
        when "a" then coffeeMaker.create_americano
      end
    end while choice_1 != "s"


    when "2" then begin 

      puts "e, To create espresso"
      puts "d, To create doppi"
      puts "a, To create americano"
      puts "l, To create latte"
      puts "s, To Stop Coffee Maker"
      print "select e/d/a/l/s: "
      
      choice_2 = gets.chomp
      puts "\n"


      case choice_2
        when "e" then maker_milk.create_espresso
        when "d" then maker_milk.create_doppio
        when "a" then maker_milk.create_americano
        when "l" then maker_milk.create_latte
      end
    end while choice_2 != "s"


    when "3" then begin 

      puts "e, To create espresso"
      puts "d, To create doppi"
      puts "a, To create americano"
      puts "m, To create mokko"
      puts "l, To create latte"
      puts "s, To Stop Coffee Maker"
      print "select e/d/a/m/l/s: "
      
      choice_3 = gets.chomp
      puts "\n"
    
    
      case choice_3
        when "e" then maker_milk_kakao.create_espresso
        when "d" then maker_milk_kakao.create_doppio
        when "a" then maker_milk_kakao.create_americano
        when "m" then maker_milk_kakao.create_mokko
        when "l" then maker_milk_kakao.create_latte
      end
    end while choice_3 != "s"
  end while choice != "s"

  
end


maker_milk_kakao.get_storage