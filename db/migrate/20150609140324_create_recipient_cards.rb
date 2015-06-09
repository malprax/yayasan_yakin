class CreateRecipientCards < ActiveRecord::Migration
  def change
    create_table :recipient_cards do |t|
      t.string :month
      t.string :amount
      t.string :employee
      t.integer :urut
      t.references :recipient, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipient_cards, :recipients
  end
end
