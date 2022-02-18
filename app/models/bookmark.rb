class Bookmark < ApplicationRecord
  belongs_to :movie # 1/ Validates the association to a movie # 2/ bookmark.movie
  belongs_to :list # 1/ Validates the association to a list # 2/ bookmark.list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list }
end
