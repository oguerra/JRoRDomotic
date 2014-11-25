class Addnombreuser < ActiveRecord::Migration
  def up
    add_column :users, :nombre, :string
  end

  def down
  end
end
