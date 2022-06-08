require_relative "cup.rb"

class CoffeeMaker
    attr_accessor :coffee, :water, :cup

    def initialize 
      @coffee = 100
      @water = 200
      @cup = Cup.new
    end

    def create_espresso
      return "Sorry, no water!" if @water < 5
      return "Sorry, no coffee" if @coffee < 5   
      @water -=  5
      @coffee -=  5
      cup.use_cup
      puts "This is your espresso"
      
    end
    
    def create_doppio
      return "Sorry, no water!" if @water < 5
      return "Sorry, no coffee" if @coffee < 10   
      @water -=  5
      @coffee -=  10
      cup.use_cup
      puts "This is your doppio"
      
    end
    
    def create_americano
      return "Sorry, no water!" if @water < 30
      return "Sorry, no coffee" if @coffee < 5   
      @water -=  30
      @coffee -=  5
      cup.use_cup
      puts "This is your americano"
    end
    
    def get_storage
      p "water: #{water}"
      p "coffee: #{coffee}"
    end


  end
  


