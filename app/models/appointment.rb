class Appointment < ApplicationRecord
  belongs_to :user
  validates_presence_of :date, :city, :vehicle, :model, :user_id
end
