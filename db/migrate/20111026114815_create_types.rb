class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.timestamps
      t.string 	:label, :null => false
      t.string	:category, :null => false
    end
    add_column :ownerships, :type_id, :integer, :null => false, :default => 0
  end
end
