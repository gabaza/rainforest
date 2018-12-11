class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :name
      t.text :text
      t.integer :product_id

      t.timestamps
    end
  end
end
