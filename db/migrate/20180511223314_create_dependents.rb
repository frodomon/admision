class CreateDependents < ActiveRecord::Migration[5.2]
  def change
    create_table :dependents do |t|
      t.references :request, foreign_key: true
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.date :birthdate
      t.integer :relationship

      t.timestamps
    end
  end
end
