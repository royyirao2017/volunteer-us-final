class VolunteerApplication < ApplicationRecord
  STATUS = ["Declined", "Pending", "Accepted"]

  include AASM

  aasm(column: :status) do
    state :pending, :initial => true
    state :declined
    state :accepted

    event :accept do
      transitions :from => :pending, :to => :accepted # :after post status to volunteer

    end

    event :decline do
      transitions :from => :pending, :to => :declined # :after post status to volunteer
    end
  end

  belongs_to :user
  belongs_to :event


end
