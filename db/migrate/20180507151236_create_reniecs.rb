class CreateReniecs < ActiveRecord::Migration[5.2]
  def change
    create_table :reniecs do |t|
      t.string :doi
      t.string :last_name
      t.string :second_last_name
      t.string :name
      t.string :genre
      t.date :birthdate
      t.string :birth_departamento
      t.string :birth_provincia
      t.string :birth_distrito
      t.string :degree
      t.string :civil_state
      t.float :height
      t.date :register
      t.string :father_name
      t.string :mother_name
      t.date :emission_date
      t.string :restriction
      t.string :departamento
      t.string :provincia
      t.string :distrito
      t.string :address
      t.date :due_date

      t.timestamps
    end
  end
end
