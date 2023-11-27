class Employee

  def prepare(bike)

    begin
      bike.maintenance
    rescue => e
      puts 'Uhh, boss, I dunno how to do that.'
    end

  end

end

class BmxBike

  def maintenance
    puts 'Cleaning...'
  end

end

class RoadBike

  def maintenance
    puts 'Lubricating gears...'
  end

end

class MountainBike

  def maintenance
    puts 'Adjusting suspension...'
  end

end

class Tricycle

  def maintenance
    puts 'Adjusting seat...'
  end

end

bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.prepare(bike)
end
