class Category < ApplicationRecord
  has_many :transactions, dependent: :destroy
  has_one_attached :icon
  belongs_to :author, class_name: 'User', foreign_key: :author_id



  validates :name, presence: true
  validates :icon, presence: true
end
