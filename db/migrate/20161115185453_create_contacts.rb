class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.text :contact_type, index: { unique: true }
      t.text :contact_path, index: { unique: true }

      t.timestamps null: false
    end
  end
end
