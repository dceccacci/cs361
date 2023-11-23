class Telescope
  def initialize(location)
    @location = location
  end

  def aim(ra, dec)
    @ra = ra
    @dec = dec
  end
end

class TelescopeController
  def initialize(telescope, logger)
    @telescope = telescope
    @logger = logger
  end

  def slew(ra, dec)
    @telescope.aim(ra, dec)
    @logger.log("Aiming telescope at (#{ra},#{dec}")
  end
end


location = Location.new(lat, lon)
logger = Logger.new
telescope = Telescope.new(location)
telescropeController = TelescopeController.new(telescope, logger)
