class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :po_box
      t.integer :zip

      t.timestamps
    end
  end
end
