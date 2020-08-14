class CreateUserPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :user_preferences do |t|
      t.float :pop
      t.float :temp
      t.integer :humidity
      t.integer :visibility
      t.float :wind_speed
      t.string :cloud_cover

      t.timestamps
    end
  end
end
