class CreateDonaturs < ActiveRecord::Migration
  def change
    create_table :donaturs do |t|
      t.string :name
      t.integer :listing_id
      t.timestamps null: false
    end
  end
end
