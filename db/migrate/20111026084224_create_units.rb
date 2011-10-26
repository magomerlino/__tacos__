class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.timestamps
      t.string :extension, :null => false
      t.references :staircase, :null => false
    end
  end
end
