class Movie < ApplicationRecord
  has_many :roles, dependent: :destroy

  validates :name, presence: true
  validates :duration, presence: true
end
