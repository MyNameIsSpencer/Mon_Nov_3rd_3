

puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='

class Products

  @@tax_money = 0.35

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
    @tax_rate = @@tax_money
    @total_price = price_total
  end


  # def create(name, base_price)
  #   new_product = Products(name, base_price)
  #   return new_product
  # end

  ## READERS

  def name_reader
    @name
  end

  def base_reader
    @base_price
  end

  def tax_reader
    @tax_rate
  end



  def price_total
    @total_price = @base_price + (@base_price * @tax_rate)
  end






end




puts '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='
