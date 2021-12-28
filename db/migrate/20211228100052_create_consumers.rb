class CreateConsumers < ActiveRecord::Migration[7.0]
  def change
    create_table :consumers do |t|
      t.string :fullName
      t.string :passportNumber
      t.string :identityCode
      t.string :house
      t.string :houseSection
      t.string :apartment

      t.timestamps
    end
  end
end
