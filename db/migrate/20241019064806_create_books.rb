class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books, id: :uuid do |t|
      t.belongs_to :publisher, type: :uuid
      t.string :title, null: false
      t.string :isbn_13, null: false
      t.integer :price, null: false
      t.integer :publication_year, null: false
      t.string :edition
      t.string :image_url

      t.timestamps
    end
  end
end
