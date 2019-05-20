class CashRegister

  attr_accessor :total, :discount, :prev_trans, :items

  def initialize(emp_dis = 0)
    @total = 0
    @discount = emp_dis
    @items = []
  end



  def add_item(title, price, quantity = 1)
    self.total += price*quantity
    quantity.times {@items << title}
    @prev_trans = self.total
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction

  end

end
