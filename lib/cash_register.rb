
class CashRegister
    attr_accessor :discount, :total, :items, :price, :quantity
    

    def initialize(discount=0,total=0)
        @discount=discount
        @total=total
        @items = []
    end
    def add_item(item,price,quantity=1)
        @price = price
        @quantity = quantity
        @item = item
        self.total += price * quantity
        quantity.times do
        self.items << item
      end
    end
    def apply_discount
        if @discount > 0
            my_discount= @total*@discount/100
            @total=@total-my_discount
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end

    end
    def void_last_transaction
        self.total -= self.price * self.quantity
      end



end

