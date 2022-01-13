class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.date :date
      t.boolean :paid
      t.string :report_number
      t.text :description
      t.float :sum
      t.string :code_kfk
      t.string :code_kek

      t.timestamps
    end
  end
end
