class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.timestamps
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :email
    end
  end
end
