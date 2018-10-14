class FixUserIdInPhotos2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :photos, :user_id, :string
    add_column :photos, :user_id, :integer
  end

  add_index :photos, [:user_id, :place_id]
end