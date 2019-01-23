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
    for bev in @drinks
      if bev.name == drink_name
        bev.amount -= 1
        @till += bev.price
      end
    end
  end


#END OF CLASS
end
