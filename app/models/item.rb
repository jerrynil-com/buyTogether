class Item < ApplicationRecord
  mount_uploader :image, ItemImageUploader
  belongs_to :store
end