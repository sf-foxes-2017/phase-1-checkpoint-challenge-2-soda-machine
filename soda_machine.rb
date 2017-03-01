require_relative 'soda'

class SodaMachine
  attr_reader :sodas, :cash, :sold_soda

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
      end
    end
    nil
  end

  def sell(soda_brand)
    soda = find_soda(soda_brand)
    if soda != nil
      @sodas.delete(soda)
      @cash = @cash + soda.price
      return soda
    end
    nil
  end
end


# pepsi =  Soda.new(brand: 'Pepsi', price: 0.65)
# mountain_dew = Soda.new(brand: 'Mountain Dew', price: 0.75)
# coke_zero = Soda.new(brand: 'Coke Zero', price: 1.00)
# second_pepsi = Soda.new(brand: 'Pepsi', price: 0.65)

# soda_machine = SodaMachine.new(sodas: [pepsi, mountain_dew, coke_zero, second_pepsi], cash: 1.00)

# soda_machine.find_soda('Mountain Dew')
# soda_machine.current_inventory_count

# soda_machine.sell("Mountain Dew")
