class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :num_of_pages
      t.string :publication_year

      t.timestamps
    end
  end
end
