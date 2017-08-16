class AddLogoToStores < ActiveRecord::Migration[5.1]
  def change
    add_column :stores, :logo, :string
  end
end
