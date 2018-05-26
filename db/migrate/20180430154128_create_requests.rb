class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :status, default: 0
      t.string :dni
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.date :birthday
      t.string :genre
      t.string :civil_state
      t.string :email
      t.string :mobile
      t.string :telephone
      t.boolean :reniec
      t.boolean :pep
      t.belongs_to :alianza, foreign_key: true
      t.string :alianza_code
      t.string :access
      t.string :address
      t.integer :number
      t.string :manzana
      t.string :lote
      t.string :apartment
      t.string :urbanization
      t.references :ubigeo
      t.integer :property_house
      t.belongs_to :products, array: true, default: []
      t.belongs_to :job_type, foreign_key: true
      t.string :job
      t.string :profession
      t.belongs_to :economy_sector, foreign_key: true
      t.string :company
      t.belongs_to :economy_activity, foreign_key: true
      t.integer :work_years
      t.string :job_title
      t.belongs_to :salary, foreign_key: true
      t.string :ruc
      t.string :income
      t.string :job_access
      t.string :job_address
      t.string :job_number
      t.string :job_manzana
      t.string :job_lote
      t.string :job_apartment
      t.string :job_urbanization
      t.string :job_telephone
      t.string :college
      t.string :spouse_doi
      t.string :spouse_name
      t.string :spouse_last_name
      t.string :spouse_second_last_name
      t.date :spouse_birthday
      t.string :spouse_ocupation
      t.string :spouse_profession
      t.string :spouse_economy_sector
      t.string :patron_doi
      t.string :patron_last_name
      t.string :patron_name
      t.string :patron_mobile
      t.boolean :credito
      t.boolean :ahorro
      t.boolean :plazofijo
      t.boolean :contrato

      t.timestamps
    end
  end
end
