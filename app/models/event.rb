class Event < ApplicationRecord

  CATEGORY = ["startup", "healthcare", "education", "sports"]
  belongs_to :user
  has_many :volunteer_applications, dependent: :destroy
  validates :title, :location, :volunteer_number, :poster, :description, :volunteer_duties, :volunteer_perks, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
