class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.references :kind, index: true, foreign_key: true
      t.text :rmk

      t.timestamps
    end
  end
end
