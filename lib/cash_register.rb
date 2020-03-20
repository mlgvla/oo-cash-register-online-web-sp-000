require 'pry'

class CashRegister
  attr_accessor :cash_register, :cash_register_with_discount, :total, :discount, :items



  def initialize(discount = 0)
    @total = 0
    @items = Hash.new
    @discount = discount
  end

  def add_item(title, price, quantity = 1)

    @total += price * quantity
    purchase = {}
    purchase[:title] = title
    purchase[:price] = price
    purchase[:quantity] = quantity
    @items.push(purchase)
    binding.pry

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
