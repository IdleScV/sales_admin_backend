class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :item, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
