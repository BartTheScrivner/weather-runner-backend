class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :weekly_run_quota
      t.string :location
      t.string :img_url

      t.timestamps
    end
  end
end
