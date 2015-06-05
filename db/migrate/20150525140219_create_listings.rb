class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.decimal :amount
      t.integer :year_id
      t.integer :month_id
      t.integer :donatur_id
      t.timestamps null: false
    end
  end
end
