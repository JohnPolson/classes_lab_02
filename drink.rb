class Drink

  attr_accessor :name, :price, :alc_unit, :amount, :drink

  def initialize(name, price, alc_unit, amount)


    # @name = name
    # @price = price
    # @alc_unit = alc_unit
    # @amount = amount
    @drink = {
      name: @name = name,
      properties: {
        price: @price = price,
        alc_unit: @alc_unit = alc_unit,
        amount: @amount = amount
      }
  }
end


      def get_drink_name()
        return @drink[:name]
      end

      def get_drink_price()
        return @drink[:properties][:price]
      end


end
