class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product,               null: false
      t.text :explanation,             null: false
      t.integer :type,                 null: false
      t.integer :status_id,            null: false
      t.string :price,                 null: false
      t.integer :delivaly_price,       null: false
      t.integer :prefecture,           null: false
      t.integer :days,                 null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
