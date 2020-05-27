class ChangeUserIdInBookPod < ActiveRecord::Migration[6.0]
  def change
    rename_column :book_pods, :user_id, :book_id
  end
end
