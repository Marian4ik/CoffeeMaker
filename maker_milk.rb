require_relative "cup.rb"
class MakerMilk < CoffeeMaker
    
    attr_accessor :coffee, :water, :milk, :cup
    
    def initialize 
        @coffee = 100
        @water = 200
        @milk = 20
        @cup = Cup.new
    end

    def create_latte
        return "Sorry, no water!" if @water < 5
        return "Sorry, no coffee" if @coffee < 5   
        return "Sorry, no milk" if @milk < 5 
        @water -=  5
        @coffee -=  5
        @milk -= 5
        cup.use_cup
        puts "This is your latte"

    end  

    def get_storage
        p "water: #{water}"
        p "coffee: #{coffee}"
        p "milk: #{milk}"
    end


end
