require 'pry'

class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :items



  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @itmes =[]

    @total += price * quantity
    binding.pry
    purchase = {}
    binding.pry
    purchase[:title] = title
    binding.pry
    purchase[:price] = price
    binding.pry
    purchase[:quantity] = quantity
    binding.pry
    @items.push(purchase)


  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total = (@total * (100 - @discount) * 0.01).to_i
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
  end

end
