class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :amount
      t.integer :year_id
      t.integer :month_id
      t.integer :donatur_id
      t.decimal :januari
      t.decimal :februari
      t.decimal :maret
      t.decimal :april
      t.decimal :mei
      t.decimal :juni
      t.decimal :juli
      t.decimal :agustus
      t.decimal :september
      t.decimal :oktober
      t.decimal :november
      t.decimal :desember
      
      t.timestamps null: false
    end
  end
end
