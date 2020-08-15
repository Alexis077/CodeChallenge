class Sale < ApplicationRecord
    belongs_to :buyer
    belongs_to :item
    accepts_nested_attributes_for :buyer, :item


    def self.import(file)
        sales = TabFileProcessor.new(file.path).sales_data.map{|sale_row| sale_row.to_h}
        return self.create!(sales)
    end


end
