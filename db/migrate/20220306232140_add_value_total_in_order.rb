class AddValueTotalInOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :value_total , :float
  end
end
