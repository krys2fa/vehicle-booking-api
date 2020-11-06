class Vehicle < ApplicationRecord
  validates_presence_of :name, :model, :transmission, :fee
end
