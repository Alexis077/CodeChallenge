class AddProviderToItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :items, :provider, null: false, foreign_key: true, after: :price
  end
end
