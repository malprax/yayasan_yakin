class AddUrutToMonths < ActiveRecord::Migration
  def change
    add_column :months, :urut, :integer
  end
end
