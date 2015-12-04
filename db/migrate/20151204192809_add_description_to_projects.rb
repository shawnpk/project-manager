class AddDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :description, :text

    rename_column :projects, :ends_at, :ends_on
  end
end
