class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :status
      t.integer :total_price
      t.string :phone
      t.string :address
      t.string :email
      t.string :note
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
