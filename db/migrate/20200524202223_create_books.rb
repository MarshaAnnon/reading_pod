class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :author_bio
      t.text :book_summary
      t.integer :category_id

      t.timestamps
    end
  end
end
