class CashRegister
attr_accessor :total

  def initialize
    @total = 0
  end

  def add_item(product, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount

  end
end
