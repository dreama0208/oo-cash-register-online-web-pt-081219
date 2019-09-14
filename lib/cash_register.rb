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
    item_info[:qunatity] = quantity

    @@cart << item_info

    quantity.times {@@item_name << product}

    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total *= (1 - discount/100)
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
    end
  end


  def items
    @@item_name
  end


  def void_last_transaction
    @total -= 0
  end

end
