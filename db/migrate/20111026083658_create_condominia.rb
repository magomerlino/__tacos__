class CreateCondominia < ActiveRecord::Migration
  def change
    create_table :condominia do |t|
      t.timestamps
      t.string 	:name, :null => false
      t.string 	:address, :null => false
      t.string 	:zip_code, :null => false
      t.string 	:city, :null => false
      t.string 	:province
      t.string 	:fiscal_code
      t.date 	:construction_date
    end
  end
end
