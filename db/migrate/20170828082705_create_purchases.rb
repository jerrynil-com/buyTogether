class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :time_period
      t.datetime :end_time

      # relationship
      t.belongs_to :store, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
