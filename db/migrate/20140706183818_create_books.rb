class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :year, null: false
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
