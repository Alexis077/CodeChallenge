class Provider < ApplicationRecord
    has_one :item
    validates :name,:address, presence: true

end
