class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :value_total
      t.datetime :date_order
      t.references :user, null: false, foreign_key: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
