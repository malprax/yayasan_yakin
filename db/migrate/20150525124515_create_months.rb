class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :bulan
      t.integer :year_id
      t.integer :urut

      t.timestamps null: false
    end
  end
end
