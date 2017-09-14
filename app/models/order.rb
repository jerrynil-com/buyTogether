class Order < ApplicationRecord
  # relationship
  belongs_to :user
  belongs_to :purchase

  has_many :ordered_items
  has_many :items, through: :ordered_items

  accepts_nested_attributes_for :ordered_items, allow_destroy: true

  def total
    self.ordered_items.map {|ordered_item|
      ordered_item.item.price * ordered_item.quantity
    }.sum
  end

end
