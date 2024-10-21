class CreateBookAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :book_authors, id: :uuid do |t|
      t.belongs_to :book, type: :uuid, null: false, foreign_key: true
      t.belongs_to :author, type: :uuid, null: false, foreign_key: true

      t.timestamps
    end
  end
end
