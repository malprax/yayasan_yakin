class AddOngoingToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :ongoing, :boolean
    add_index :projects, :ongoing
  end
end
