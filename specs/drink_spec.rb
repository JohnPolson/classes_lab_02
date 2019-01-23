require("minitest/autorun")
require("minitest/rg")
require_relative("../drink")
# require_relative("../food")
# require_relative("../pub")
# require_relative("../customer")

class DrinkTest < MiniTest::Test

    def setup
      @drink_01 = Drink.new("vodka", 7.50, 1, 20)
      @drink_02 = Drink.new("beer", 6.50, 2, 50)
      @drink_03 = Drink.new("wine", 7.80, 1, 30)
      @drink_04 = Drink.new("rum", 6.90, 2, 25)
      @drink_05 = Drink.new("gin", 7.10, 1, 40)


    end

    def test_get_drink_name
      assert_equal("vodka", @drink_01.get_drink_name())
    end

    def test_get_drink_price
      assert_equal(6.50, @drink_02.get_drink_price())
    end



end
