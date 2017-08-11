class Store < ApplicationRecord
  validates_presence_of :name, :description, :address, :phone
end
