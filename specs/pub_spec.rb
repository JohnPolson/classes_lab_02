require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
# require_relative("../food")
require_relative("../pub")
require_relative("../customer")

class PubTest < MiniTest::Test

  def setup

    @drink_01 = Drink.new("vodka", 7.50, 1, 20)
    @drink_02 = Drink.new("beer", 6.50, 2, 50)
    @drink_03 = Drink.new("wine", 7.80, 1, 30)
    @drink_04 = Drink.new("rum", 6.90, 2, 25)
    @drink_05 = Drink.new("gin", 7.10, 1, 40)

    @pub_01 = Pub.new("Dog and Duck", 2000, [@drink_01, @drink_02, @drink_03, @drink_04, @drink_05])

  end

  def test_get_name
    assert_equal("Dog and Duck", @pub_01.get_name)
  end

  def test_get_till
    assert_equal(2000, @pub_01.get_till)
  end

  def test_get_counts_drinks
    assert_equal(5, @pub_01.get_counts_drinks)
  end



end
