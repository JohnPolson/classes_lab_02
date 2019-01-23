class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks

  end

  def get_name
    return @name
  end

  def get_till
    return @till
  end

  def get_counts_drinks
    return @drinks.count
  end

  def sell_drink(drink_name)
    for drink in @drinks
      if  drink.name == drink_name
        drink.amount -= 1
      end
      drink.amount -= 1

    end

  end



end
