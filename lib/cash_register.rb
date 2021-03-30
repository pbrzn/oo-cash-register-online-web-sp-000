class CashRegister
  attr_accessor :total, :discount, :item, :amount, :cost, :last_item
  #@@items = []
  
  def initialize(discount=0)
    @total=0
    @discount=discount
  end
  
  def add_item(item, cost, amount=1)
    @item=item
    @itesm=[]
    @cost=cost
    @amount=amount
    self.amount.times do
      @items << self.item
    end
    @item_total_cost=cost*amount
    self.total+=@item_total_cost
  end
  
  def apply_discount
    if discount!=0
      percentage=discount.to_f/100
      actual_discount=self.total*percentage
      self.total-=actual_discount.to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    self.amount.times do
      @@items << self.item
    end
    @@items
  end
  
  def void_last_transaction
    last_item=@item_total_cost
    self.total-=last_item
  end
end