class CashRegister

  attr_accessor :total, :discount
  @@item_name = []
  @@price = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(product, price, quantity = 1)

    quantity.times {@@item_name << product}

    quantity.times {@@price << price}

    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= @total * (discount/100.to_f)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def items
    @@item_name
  end


  def void_last_transaction
    if price == []
      self.total = 0.0
    else
      @total -= @@price.pop!

    end
  end

end
