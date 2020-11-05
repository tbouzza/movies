class Actor < ApplicationRecord
  has_many :roles, dependent: :destroy

  validates :name, presence: true
end
