require_relative "cup.rb"
class MakerMilkKakao < MakerMilk
    
    attr_accessor :coffee, :water, :milk, :kakao, :cup
    
    def initialize                
        @coffee = 100
        @water = 200
        @milk = 20
        @kakao = 100
        @cup = Cup.new       
    end

    def create_mokko
      return "Sorry, no water!" if @water < 5
      return "Sorry, no coffee" if @coffee < 5  
      return "Sorry, no kakao!" if @kakao < 5
      return "Sorry, no milk" if @milk < 5   
      @water -=  5
      @coffee -=  5
      @kakao -=  5
      @milk -=  5
      cup.use_cup
      puts "This is your coffee"
    end

    def get_storage
        p "water: #{water}"
        p "coffee: #{coffee}"
        p "milk: #{milk}"
        p "kakao: #{kakao}"
    end
end