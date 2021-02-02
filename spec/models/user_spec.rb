require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let!(:user) { FactoryBot.build(:user) }
    
    it 'is not valid when no display name is provided' do
      user.display_name = nil
      
      expect(user).to have(1).error_on(:display_name)
      expect(user).not_to be_valid
    end

    it 'is valid when display name is provided' do
      expect(user).to have(0).error_on(:display_name)
      expect(user).to be_valid
    end
  end
end
