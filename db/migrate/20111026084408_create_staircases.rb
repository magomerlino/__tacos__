class CreateStaircases < ActiveRecord::Migration
  def change
    create_table :staircases do |t|
      t.timestamps
      t.string :label, :null => false
      t.references :condominium, :null => false
    end
  end
end
