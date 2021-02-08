class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :explanation, null: false
      t.string :category_id , null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
