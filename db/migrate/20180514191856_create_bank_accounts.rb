class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
    	t.references :request, foreign_key: true
      t.references :bank, foreign_key: true
      t.boolean :corriente
      t.boolean :ahorro

      t.timestamps
    end
  end
end
