class CashRegister

  attr_accessor :total, :discount
  @@items = []

  def initialize(discount = nil)
    @total = 0
    @disctount = discount
  end

  def add_item(product, price, quantity = 1)
    @total += price * quantity
    quantity.times {@@items << product}
  end

  def apply_discount
    if discount
      @total *= (1 - discount)
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
  end


  def items
    @@items
  end


  def void_last_transaction
    @total -= 0
  end

end
