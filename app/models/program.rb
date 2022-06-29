class Program < ApplicationRecord
  belongs_to :user
  has_many :weeks, dependent: :destroy

  MAX_WEEKS = 4
  MAX_DAYS = 14

  validates :title, presence: true
  validates :num_weeks, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: MAX_WEEKS }
  # incase they are doing 7 2/days
  validates :days_per_week, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: MAX_DAYS }
end
