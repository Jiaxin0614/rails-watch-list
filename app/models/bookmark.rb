class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates_associated :movie, :list, uniqueness: true
  validates :list, uniqueness: { scope: :movie }
end
