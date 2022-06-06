
=begin
def manager(function)
  print "number1: "
  num1 = gets.chomp.to_i
  print "number2: "
  num2 = gets.chomp.to_i
  result = function.call(num1, num2)
  puts "Result = #{result}".center(50, "-")
end
=end

class CoffeeMaker
    attr_accessor :coffee, :water, :kakao, :milk

    def initialize 
      @coffee = 100
      @water = 200
      @kakao = 100
      @milk = 100
    end
    def create_espresso
      return "Sorry, no water!" if @water < 5
      return "Sorry, no coffee" if @coffee < 5   
      @water -=  5
      @coffee -=  5
      puts "This is your coffee"
    end
    
    def create_doppio
      return "Sorry, no water!" if @water < 5
      return "Sorry, no coffee" if @coffee < 10   
      @water -=  5
      @coffee -=  10
      puts "This is your coffee"
      
    end
    
    def create_americano
      return "Sorry, no water!" if water < 30
      return "Sorry, no coffee" if coffee < 5   
      @water -=  30
      @coffee -=  5
      puts "This is your coffee"
    end
    
    def create_mokko
      return "Sorry, no water!" if water < 5
      return "Sorry, no coffee" if coffee < 5  
      return "Sorry, no kakao!" if kakao < 5
      return "Sorry, no milk" if milk < 5   
      @water -=  5
      @coffee -=  5
      @kakao -=  5
      @milk -=  5
      puts "This is your coffee"
    end
    
    def crate_latte
      return "Sorry, no water!" if water < 5
      return "Sorry, no coffee" if coffee < 5   
      return "Sorry, no milk" if milk < 5 
      @water -=  5
      @coffee -=  5
      puts "This is your coffee"
    end  
    
    def get_storage
      p "water: #{water}"
      p "coffee: #{coffee}"
      p "kakao: #{kakao}"
      p "milk: #{milk}"
    end


  end
  


