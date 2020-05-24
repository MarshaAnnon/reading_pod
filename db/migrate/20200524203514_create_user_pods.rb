class CreateUserPods < ActiveRecord::Migration[6.0]
  def change
    create_table :user_pods do |t|
      t.integer :user_id
      t.integer :pod_id
      t.integer :pod_rating
    end
  end
end
