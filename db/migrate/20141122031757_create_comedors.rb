class CreateComedors < ActiveRecord::Migration
  def change
    create_table :comedors do |t|
      t.boolean :foco_principal

      t.timestamps
    end
  end
end
