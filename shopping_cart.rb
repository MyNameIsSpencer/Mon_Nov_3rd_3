require_relative 'products.rb'

puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='

class Cart

  @@shopping_cart = []

  def self.create(name, base_price)
    @@shopping_cart << Products.new(name, base_price)
  end

  def remove(product)
    @@shopping_cart.each do |item|
      break if item.name == product
        @@shopping_cart.delete(item)

    end
  end

  def self.in_cart
    @@shopping_cart
  end


end


super_computer = Cart.create('Super Computer', 200000)
death_ray1 = Cart.create('Death Ray', 45000)
death_ray2 = Cart.create('Death Ray', 45000)
death_ray3 = Cart.create('Death Ray', 45000)
mega_jet = Cart.create('Mega Jet', 13000000)
robot_henchman = Cart.create('Robot Henchman', 150000)

puts Cart.in_cart.count
puts Products.price_total

puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='
