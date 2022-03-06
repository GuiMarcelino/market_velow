class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :date_order
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.boolean :active, default: true, null: false, index: true
      t.references :created_by, index: true, foreign_key: { to_table: :users }
      t.references :updated_by, index: true, foreign_key: { to_table: :users }

      t.datetime :deleted_at, index: true

      t.timestamps
    end
  end
end
