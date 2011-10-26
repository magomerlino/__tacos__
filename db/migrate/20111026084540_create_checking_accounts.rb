class CreateCheckingAccounts < ActiveRecord::Migration
  def change
    create_table :checking_accounts do |t|
      t.timestamps
      t.references :condominium, :null => false
    end
  end
end
