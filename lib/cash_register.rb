class CashRegister
    attr_accessor :discount, :total
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @all_items = []
    end

    def add_item(title, price, quantity = 1)
        info = {}
        info[:name] = title
        info[:price] = price
        info[:quantity] = quantity
        @all_items << info
        @total += price * quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
            @total -= @total * @discount / 100
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @all_items.each do |info|
        end
    end
end