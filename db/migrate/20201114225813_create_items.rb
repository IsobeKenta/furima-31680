class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product, null: false
      t.text :explanation, null: false
      t.integer :type_id, null: false
      t.integer :status_id_id, null: false
      t.string :price, null: false
      t.integer :delivaly_price_id, null: false
      t.integer :prefecture_id, null: false
      t.integer :ship_id, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
