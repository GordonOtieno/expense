class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :shop, through: :group_shops
  has_many :group_shops, dependent: :destroy

  validates :name, :icon, presence: true, length: { in: 3..100 }
end
