class RemoveUserIdToProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :user_id , :references
  end
end
