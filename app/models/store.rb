class Store < ApplicationRecord
  #carrierwave settings
  mount_uploader :logo, LogoUploader

  mount_uploader :image, StoreImageUploader

  validates_presence_of :name, :description, :address, :phone
end
