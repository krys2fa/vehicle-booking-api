require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:vehicle) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:user_id) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
  end
end
