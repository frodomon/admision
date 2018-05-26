class CreateObservations < ActiveRecord::Migration[5.2]
  def change
    create_table :observations do |t|
      t.belongs_to :observation_type, index: { unique: true }, foreign_key: true
      t.text :description
      t.boolean :farakaki
      t.boolean :wsanchez
      t.boolean :cchinen
      t.boolean :akira
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
