require_relative 'shopping_cart.rb'

puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='

class Products

  @@tax_money = 0.35

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = @@tax_money
    @total_price = 0
  end

  def create(name, base_price)
    new_product = Products(name, base_price)
    return new_product
  end

  def calculate_tot
    @total_price = @base_price + (@base_price * @tax_rate)
  end






end




puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='
