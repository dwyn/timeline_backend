class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :year
      t.string :title
      t.string :description
      t.integer :timeline_id

      t.timestamps
    end
  end
end
