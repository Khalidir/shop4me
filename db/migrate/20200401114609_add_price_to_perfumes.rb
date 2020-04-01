class AddPriceToPerfumes < ActiveRecord::Migration[5.2]
  def change
    add_monetize :perfumes, :price, currency: { present: false }
  end
end
