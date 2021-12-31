class CreateConsumerAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :consumer_accounts do |t|
      t.references :consumer, null: false, foreign_key: true
      t.references :bank, null: false, foreign_key: true
      t.string :account

      t.timestamps
    end
  end
end
