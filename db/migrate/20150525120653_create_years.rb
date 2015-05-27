class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.string :tahun
      t.integer :listing_id
      t.timestamps null: false
    end
  end
end
