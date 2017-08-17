class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price

      #image
      t.string :image

      #relationships
      t.belongs_to :store, index: true

      t.timestamps
    end
  end
end
