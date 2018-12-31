class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def raito
    chainring / cog.to_f
  end

  def gear_inches
    raito * (rim + (tire * 2))
  end
end

puts Gear.new(52,11, 26, 1.5).gear_inches
