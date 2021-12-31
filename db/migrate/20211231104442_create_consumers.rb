class CreateConsumers < ActiveRecord::Migration[7.0]
  def change
    create_table :consumers do |t|
      t.string :full_name
      t.string :passport_number
      t.string :identity_code
      t.string :house
      t.string :house_section
      t.string :apartment

      t.timestamps
    end
  end
end
