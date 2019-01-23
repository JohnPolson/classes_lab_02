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



end
