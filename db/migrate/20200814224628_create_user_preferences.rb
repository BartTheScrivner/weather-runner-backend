class CreateUserPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :user_preferences do |t|
      t.float :pop, :null => false, :default => 0.6
      t.float :min_temp, :null => false, :default => 40.0
      t.float :max_temp, :null => false, :default => 90.0
      t.integer :humidity, :null => false, :default => 70
      t.integer :visibility, :null => false, :default => 0
      t.float :wind_speed, :null => false, :default => 0
      t.string :cloud_cover, :null => false, :default => "Rain"
      t.belongs_to :user

      t.timestamps
    end
  end
end
