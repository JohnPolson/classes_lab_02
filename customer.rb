class Customer

  attr_accessor :name, :age, :wallet

  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
  end


  def get_name
    return @name
  end


  def get_wallet
    return @wallet
  end

  def get_age
    return @age
  end

  def buy_drink(drink, pub)
    pub.sell_drink(drink)
    @wallet -= pub.drink_price(drink)
  
  end


end
