class Trip
  attr_reader :bicycles, :customers, :vwhicle

  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each{|bicycle| prepare_bicycle(bicycle)}
  end

  def prepare_bicycle(bicycle)

  end
end