class AddUrutToListing < ActiveRecord::Migration
  def change
    add_column :listings, :urut, :integer
  end
end
