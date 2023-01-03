class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :groups, through: :group_expenses
  has_many :group_expenses, dependent: :destroy

  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :name, presence: true, length: { in: 3..100 }
end