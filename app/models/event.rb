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
    {
      id: "sharing event",
      name: "交流会"
    }
    {
      id: "cars"
      name: "汽车"
    }
    {
      id: "home and lifestyle"
      name: "时尚生活"
    }
    {
      id: "career"
      name: "职场"
    }
  ]
  CATEGORY_IDS = CATEGORY_MAP.map { |category_item| category_item[:name] }

  belongs_to :user
  has_many :volunteer_applications, dependent: :destroy
  validates :title, :location, :volunteer_number, :poster, :description, :volunteer_duties, :volunteer_perks, presence: true
  validates :category, inclusion: { in: CATEGORY_IDS }
end
