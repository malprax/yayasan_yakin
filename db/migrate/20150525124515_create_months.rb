class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :bulan
      t.string :year_id

      t.timestamps null: false
    end
  end
end
