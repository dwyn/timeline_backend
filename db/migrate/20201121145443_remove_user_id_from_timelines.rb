class RemoveUserIdFromTimelines < ActiveRecord::Migration[6.0]
  def change
    remove_column :timelines, :user_id, :integer
  end
end
