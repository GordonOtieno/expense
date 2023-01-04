class Shop < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :groups, through: :group_shops
  has_many :group_shops, dependent: :destroy

  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :name, presence: true, length: { in: 2..100 }
end
