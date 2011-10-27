class CreateMillesimals < ActiveRecord::Migration
  def change
    create_table :millesimals do |t|
      t.timestamps
      t.float :value, :null => false, :default => 0
      t.references :millesimal_chart, :null => false
      t.references :unit, :null => false
    end
  end
end
