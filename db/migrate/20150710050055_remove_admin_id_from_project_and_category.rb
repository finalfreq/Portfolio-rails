class RemoveAdminIdFromProjectAndCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :admin_id
    remove_column :projects, :admin_id
  end
end
