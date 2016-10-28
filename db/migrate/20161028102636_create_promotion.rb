class CreatePromotion < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.date :date
      t.boolean :temporary

      t.belongs_to :soldier, index: true
      t.belongs_to :rank, index: true

      t.timestamps
    end
  end
end
