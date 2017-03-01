class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    sodas.length
  end

  def find_soda(soda_brand)
    @sodas.each do |soda|
      if soda.brand == soda_brand
        return soda
        puts '*'*45
      end
    end
    nil
  end

  def sell(soda_brand)
    soda = @sodas.delete(find_soda(soda_brand))
    if find_soda(soda_brand) != nil
      @cash += soda.price
    end
    soda
  end

end
