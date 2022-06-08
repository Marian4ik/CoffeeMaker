
class Cup
    attr_accessor :cup
    def initialize
        @cup = 10
    end

    def use_cup
       return "Sorry, no cup!" if @cup == 0
        @cup -= 1
    end
end
cupp = Cup.new
cupp.use_cup

