class Store < ApplicationRecord
  #carrierwave settings
  mount_uploader :logo, LogoUploader

  mount_uploader :image, StoreImageUploader

  #relationships
  has_many :items
  has_many :purchases

  validates_presence_of :name, :description, :address, :phone
end
