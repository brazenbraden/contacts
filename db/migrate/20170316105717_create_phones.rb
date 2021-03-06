class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :number
      t.belongs_to :phone_type, foreign_key: true

      t.timestamps
    end
  end
end
