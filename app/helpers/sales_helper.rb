module SalesHelper
    def total_balance(sales)
        item_imports = sales.map{|sales|sales.item.price * sales.quantity}
        return item_imports.inject(:+)
    end
end
