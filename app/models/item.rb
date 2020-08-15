class Item < ApplicationRecord
    belongs_to :provider
    has_one :sale
    accepts_nested_attributes_for :provider

end
