class Buyer < ApplicationRecord
    has_one :sale
    validates :name,:last_name, presence: true
    
    def full_name
        self.name + ' ' + self.last_name 
    end
end
