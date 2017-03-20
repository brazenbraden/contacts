class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name, null: false
      t.string :last_name


      t.timestamps
    end
  end
end
