class CreatePods < ActiveRecord::Migration[6.0]
  def change
    create_table :pods do |t|
      t.string :pod_name
      t.string :current_book
      t.integer :category_id
      t.datetime :current_start_date
      t.datetime :current_end_date

      t.timestamps
    end
  end
end
