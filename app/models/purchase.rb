class Purchase < ApplicationRecord
  # relationship
  belongs_to :user
  belongs_to :store
end
