class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string  :name
      t.string  :description
      t.string  :link

      t.integer :category_id
      t.integer :admin_id
    end
  end
end
