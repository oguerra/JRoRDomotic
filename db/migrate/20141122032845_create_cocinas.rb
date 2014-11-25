class CreateCocinas < ActiveRecord::Migration
  def change
    create_table :cocinas do |t|
      t.boolean :foco_principal

      t.timestamps
    end
  end
end
