class Event < ApplicationRecord

  CATEGORY_MAP = [
    {
      id: "startup",
      name: "科技创业"
    },
    {
      id: "healthcare",
      name: "健康医疗"
    },
    {
      id: "education",
      name: "教育"
    },
    {
      id: "sports",
      name: "运动健身"
    }
  ]
  CATEGORY_IDS = CATEGORY_MAP.map { |category_item| category_item[:name] }

  belongs_to :user
  has_many :volunteer_applications, dependent: :destroy
  validates :title, :location, :volunteer_number, :poster, :description, :volunteer_duties, :volunteer_perks, presence: true
  validates :category, inclusion: { in: CATEGORY_IDS }
end
