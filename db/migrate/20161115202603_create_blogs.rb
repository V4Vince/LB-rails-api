class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :title, index: { unique: true }, null: false
      t.text :content, null: false

      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
