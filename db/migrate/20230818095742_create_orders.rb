class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :shipping_addresses
      t.integer :total_amount
      t.string :status

      t.timestamps
    end
  end
end