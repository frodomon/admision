class CreateEconomySectors < ActiveRecord::Migration[5.2]
  def change
    create_table :economy_sectors do |t|
      t.string :ciiu
      t.string :name

      t.timestamps
    end
  end
end
