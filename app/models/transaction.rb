class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :Categories, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
