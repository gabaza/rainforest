class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price_in_cents
      t.datetime :updated_at

      t.timestamps
    end
  end
end
