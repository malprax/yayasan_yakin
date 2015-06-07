class AddSlugToDonaturs < ActiveRecord::Migration
  def change
    add_column :donaturs, :slug, :string
    add_index :donaturs, :slug
  end
end
