class CreateBookshelves < ActiveRecord::Migration
  def change
    create_table :bookshelves do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
