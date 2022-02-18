class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :bookmarks, dependent: :destroy # list.bookmarks
  has_many :movies, through: :bookmarks # list.movies
end
