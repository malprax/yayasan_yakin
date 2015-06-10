class CreateCashflows < ActiveRecord::Migration
  def change
    create_table :cashflows do |t|
      t.string :date
      t.string :name
      t.decimal :debit
      t.decimal :credit
      t.decimal :amount
      t.string :description

      t.timestamps null: false
    end
  end
end
