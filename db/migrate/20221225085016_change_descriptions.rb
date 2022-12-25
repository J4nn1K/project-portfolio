class ChangeDescriptions < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :description, :description_short
    add_column :projects, :description_long, :text
  end
end
