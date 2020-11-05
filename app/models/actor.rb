class Actor < ApplicationRecord
  has_many :roles, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true
end
