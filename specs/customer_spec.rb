require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
# require_relative("../food")
require_relative("../pub")
require_relative("../customer")

class CustomerTest < MiniTest::Test


  def setup

    @customer_01 = Customer.new("Bob", 25, 100)
    @customer_02 = Customer.new("Rob", 22, 120)
    @customer_03 = Customer.new("Dave", 50, 175)
    @customer_04 = Customer.new("Sally", 30, 250)
    @customer_05 = Customer.new("Jenny", 17, 50)

    @drink_01 = Drink.new("vodka", 7.50, 1, 20)
    @drink_02 = Drink.new("beer", 6.50, 2, 50)
    @drink_03 = Drink.new("wine", 7.80, 1, 30)
    @drink_04 = Drink.new("rum", 6.90, 2, 25)
    @drink_05 = Drink.new("gin", 7.10, 1, 40)

    @pub_01 = Pub.new("Dog and Duck", 2000, [@drink_01, @drink_02, @drink_03, @drink_04, @drink_05])

  end


  def test_get_name
    assert_equal("Bob", @customer_01.get_name)
  end

  def test_get_wallet
    assert_equal(250, @customer_04.get_wallet)
  end

  def test_get_age
    assert_equal(17, @customer_05.get_age)
  end

  def test_buy_drink
    @customer_03.buy_drink("beer", @pub_01)

    assert_equal(168.5, @customer_03.wallet)
    assert_equal(2006.50, @pub_01.till)
    assert_equal(49, @drink_02.amount)
  end



end
