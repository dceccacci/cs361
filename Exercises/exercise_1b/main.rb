class Bike
    # ...
  end
  
  class RedBicycle < Bike
  
    AMOUNT = 10
  
    def initialize(height, weight, color)
      @height = height
      @weight = weight
      @color = color
    end
  
    def get_color
      @color
    end
  
    def get_height
      @height
    end
  
    def decrease_weight_by_amount
      @weight -= AMOUNT
    end
  end