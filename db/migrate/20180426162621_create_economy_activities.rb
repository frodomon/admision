class CreateEconomyActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :economy_activities do |t|
      t.string :ciiu
      t.string :name

      t.timestamps
    end
  end
end
