class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.timestamps
      t.date :starting_date, :null => false
      t.date :ending_date
      t.float :percentage 
      t.references :figure, :null => false
      t.references :unit, :null => false
    end
  end
end
