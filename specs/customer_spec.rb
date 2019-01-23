require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
# require_relative("../food")
# require_relative("../pub")
require_relative("../customer")

class CustomerTest < MiniTest::Test


  def setup

    @customer_01 = Customer.new("Bob", 25, 100)
    @customer_02 = Customer.new("Rob", 22, 120)
    @customer_03 = Customer.new("Dave", 50, 175)
    @customer_04 = Customer.new("Sally", 30, 250)
    @customer_05 = Customer.new("Jenny", 17, 50)
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




end
