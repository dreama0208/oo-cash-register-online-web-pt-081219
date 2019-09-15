class CashRegister

  attr_accessor :total, :discount
  @@item_name = []
  @@cart = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(product, price, quantity = 1)
    item_info = {}
    item_info[:name] = product
    item_info[:price] = price
    item_info[:quantity] = quantity

    @@cart << item_info

    quantity.times {@@item_name << product}

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
    if @@cart == {}
      self.total = 0
    else
    self.total = @total - @@cart.pop[:price]
    end
  end

end
