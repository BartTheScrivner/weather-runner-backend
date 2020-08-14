class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.float :distance
      t.datetime :start_time
      t.datetime :end_time
      t.integer :rating
      t.datetime :date
      t.string :location

      t.timestamps
    end
  end
end
