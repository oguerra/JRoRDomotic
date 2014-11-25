class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.boolean :foco_principal
      t.timestamps
    end
  end
end
