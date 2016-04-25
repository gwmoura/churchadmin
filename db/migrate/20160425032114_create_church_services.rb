class CreateChurchServices < ActiveRecord::Migration
  def change
    create_table :church_services do |t|
      t.string :weekday
      t.time :schedule
      t.string :name

      t.timestamps null: false
    end
  end
end
