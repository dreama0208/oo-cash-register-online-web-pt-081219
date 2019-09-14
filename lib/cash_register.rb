class CashRegister
attr_accessor :total

  def initialize
    @total = 0
  end

  def add_item(product, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total *= 0.8
    puts "After the discount, the total comes to $#{@total}."
  end
end
