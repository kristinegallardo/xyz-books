class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors, id: :uuid do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :middle_name

      t.timestamps
    end
  end
end
