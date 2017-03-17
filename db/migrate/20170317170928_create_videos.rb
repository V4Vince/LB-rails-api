class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.text :title, index: { unique: true }, null: false
      t.text :video_link, index: { unique: true }
      t.text :description, null: false

      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
