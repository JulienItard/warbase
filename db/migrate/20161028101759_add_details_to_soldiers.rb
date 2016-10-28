class AddDetailsToSoldiers < ActiveRecord::Migration[5.0]
  def change
    add_column :soldiers, :place_of_birth, :string
    add_column :soldiers, :date_of_death, :date
    add_column :soldiers, :place_of_death, :string
  end
end
