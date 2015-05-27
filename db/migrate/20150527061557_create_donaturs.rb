class CreateDonaturs < ActiveRecord::Migration
  def change
    create_table :donaturs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
