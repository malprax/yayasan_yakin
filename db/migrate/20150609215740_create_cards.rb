class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :month
      t.string :date
      t.decimal :amount
      t.string :employee
      t.integer :urut
      t.integer :recipient_id

      t.timestamps null: false
    end
  end
end
