class Event < ApplicationRecord

  CATEGORY = ["startup", "healthcare", "education", "sports"]
  belongs_to :user
  has_many :volunteer_applications, dependent: :destroy
  validates :title, :location, :volunteer_number, :poster, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
