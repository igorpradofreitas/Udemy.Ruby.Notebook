class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :phone
      t.references :contact, index: true, foreign_key: true

      t.timestamps
    end
  end
end
