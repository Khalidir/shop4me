class AddDescriptionToPerfumes < ActiveRecord::Migration[5.2]
  def change
    add_column :perfumes, :description, :text
  end
end
