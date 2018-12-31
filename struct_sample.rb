Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end

dave = Customer.new("Dave", "123 Main")
puts dave.name     #=> "Dave"
puts dave.greeting #=> "Hello Dave!"
puts dave.address