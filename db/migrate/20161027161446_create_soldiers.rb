class CreateSoldiers < ActiveRecord::Migration[5.0]
  def change
    create_table :soldiers do |t|
      t.string :lastname
      t.string :firstname
      t.date :day_of_birth

      t.timestamps
    end
  end
end
