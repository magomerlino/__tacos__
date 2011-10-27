class CreateMillesimalCharts < ActiveRecord::Migration
  def change
    create_table :millesimal_charts do |t|
      t.timestamps
      t.string :label, :null => false
      t.references :condominium, :null => false
    end
  end
end
