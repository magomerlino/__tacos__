class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.timestamps
      t.date :starting_date, :null => false
      t.date :ending_date, :null => false
      t.references :condominium, :null => false
    end
  end
end
