class Restaurant < ApplicationRecord
  # validates :rating, inclusion: { in: [0,1,2,3], allow_nil: false }
  CATEGORY = %w(chinese italian japanese french belgian).freeze
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }

  has_many :reviews, dependent: :destroy
end
