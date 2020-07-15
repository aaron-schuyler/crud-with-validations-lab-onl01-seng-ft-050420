class Song < ApplicationRecord
  validates :title, :artist_name, presence: true
  validates_uniqueness_of :title, scope: [:artist_name, :release_year]
  validates :release_year, inclusion: { in: 1900..Date.today.year }, presence: true, if: :released
end
