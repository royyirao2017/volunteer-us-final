class VolunteerApplication < ApplicationRecord
  STATUS = ["Decline", "Waitlist", "Accept"]
  belongs_to :user
  belongs_to :event
  validates :status, presence: true, inclusion: { in: STATUS }
end
