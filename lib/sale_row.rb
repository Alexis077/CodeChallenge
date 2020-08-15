class SaleRow 
    attr_accessor :buyer_name, :buyer_last_name, :item_description,:item_price,:item_quantity,:provider_address,:provider_name

    def initialize(buyer,item_description,item_price,item_quantity,provider_address,provider_name)
        @buyer = buyer
        @item_description = item_description
        @item_price = item_price
        @item_quantity = item_quantity
        @provider_address = provider_address
        @provider_name = provider_name
    end


    def buyer_name
        @buyer_name = @buyer.strip.split(' ')[0]
    end
    def buyer_last_name
        @buyer_name = @buyer.strip.split(' ')[1]
    end

    def item_description
        @item_description = @item_description.strip
    end

    def item_price
        @item_price = @item_price.strip.to_f.round(2)
    end
    def item_quantity
        @item_quantity = @item_quantity.strip.to_i
    end
    def provider_address
        @provider_address = @provider_address.strip
    end

    def provider_name
        @provider_name = @provider_name.strip
    end
  

    def to_h
        {
            buyer_attributes:{name:self.buyer_name,
                              last_name:self.buyer_last_name,},
            item_attributes:{description:self.item_description,
                             price:self.item_price, 
                             provider_attributes:{
                                address:self.provider_address,
                                name:self.provider_name
                             }},
            quantity:self.item_quantity
        }
    end
    
     
end