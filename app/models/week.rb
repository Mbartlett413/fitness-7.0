class Week < ApplicationRecord
  belongs_to :program
  has_many :days, dependent: :destroy
end
