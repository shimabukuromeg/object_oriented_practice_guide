require_relative 'InheritSample'
class RecumbentBike < Bicycle
  attr_reader :flag

  def initialize(args)
    @flag = args[:flag]
  end

  def spares
    super.merge({flag: flag})
  end

  def defult_chain
    '9-speed'
  end

  def default_tire_size
    '28'
  end
end

bent = RecumbentBike.new(
    flag: 'tall and orage'
)

puts bent.spares