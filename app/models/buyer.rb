class Buyer < ApplicationRecord
    has_one :sale
    

    def full_name
        self.name + ' ' + self.last_name 
    end
end
