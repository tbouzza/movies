class Role < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  validates :title, presence: true
end
