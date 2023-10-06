class Bike
    # ...
  end
  
  class RedBicycle < Bike
  
    AMOUNT = 10
  
    def initialize(a, b, c)
      @height = a
      @weight = b
      @color = c
    end
  
    def getColor
      @color
    end
  
    def retreive_height
      @height
    end
  
    def change_weight
      @weight -= AMOUNT
    end
  end