require 'rails_helper'

RSpec.describe Vehicle, :type => :model do

	describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:model) }
		it { should validate_presence_of(:transmission) }
    it { should validate_presence_of(:fee) }
  end

end
