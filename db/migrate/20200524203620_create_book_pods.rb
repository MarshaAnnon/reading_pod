class CreateBookPods < ActiveRecord::Migration[6.0]
  def change
    create_table :book_pods do |t|
      t.integer :user_id
      t.integer :pod_id
    end
  end
end
