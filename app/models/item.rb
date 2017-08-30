class Item < ApplicationRecord
  mount_uploader :image, ItemImageUploader
  belongs_to :store
  has_many :ordered_items
end
