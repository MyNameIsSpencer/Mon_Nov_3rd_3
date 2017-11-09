puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='

require_relative 'products.rb'



class Cart

  @@shopping_cart = []

  def self.create(name, base_price)
    @item = Products.new(name, base_price)
    @@shopping_cart << @item
    return @item
  end

  def self.in_cart
    @@shopping_cart
  end


  def self.remove(product)
    @@shopping_cart.each do |item|
      if item.name_reader == product.name_reader
        @@shopping_cart.delete(item)
      end
    end
  end

  def self.base_adder
    cart_base_total = 0
    @@shopping_cart.each do |item|
      cart_base_total += item.base_reader
    end
    return "Total before tax: $$#{cart_base_total}"
  end

  def self.totaller
    cart_total = 0
    @@shopping_cart.each do |item|
      cart_total += item.price_total
    end
    return "Total after tax: $$#{cart_total}"
  end

  def self.most_expensive
    top = 0
    top_item = nil
    @@shopping_cart.each do |item|
      if item.base_reader > top
        top = item.base_reader
        top_item = item.name_reader
      end
    end
    return "#{top_item} is the most expensive at $$#{top}"
  end



end


super_computer = Cart.create('Super Computer', 200000)
death_ray1 = Cart.create('Death Ray1', 45000)
death_ray2 = Cart.create('Death Ray2', 45000)
death_ray3 = Cart.create('Death Ray3', 45000)
mega_jet = Cart.create('Mega Jet', 13000000)
robot_henchman = Cart.create('Robot Henchman', 150000)


puts super_computer.inspect
puts Cart.in_cart.count
puts '^_^_^_^_^_^_^_^_^_^_^_^_^_^'
Cart.remove(death_ray2)
Cart.remove(mega_jet)



puts Cart.in_cart.count
puts Cart.base_adder
puts Cart.totaller
puts Cart.most_expensive
puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='
