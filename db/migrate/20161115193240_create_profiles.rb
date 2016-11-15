class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :first_name
      t.text :last_name
      t.date :birthday
      t.text :about_me
      t.text :extra1
      t.text :extra2
      t.text :extra3
      t.text :extra4
      t.text :extra5

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
