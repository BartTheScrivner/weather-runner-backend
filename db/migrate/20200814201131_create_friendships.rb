class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :friender
      t.belongs_to :friendee
      t.boolean :accepted, :default => false

      t.timestamps
    end
  end
end
