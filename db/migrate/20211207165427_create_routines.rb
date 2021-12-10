class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :name
      t.string :days_of_week

    end
  end
end
