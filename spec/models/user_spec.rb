require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#email' do
    it 'validates presence' do
      user = User.new
      user.email = ''
      user.validate
      expect(user.errors[:email]).to include("can't be blank") 

      user.email = 'example@email.com'
      user.validate
      expect(user.errors[:email]).to_not include("can't be blank") 
    end

    it 'validates email format' do
      user = User.new
      user.email = "lalala"
      user.validate
      expect(user.errors[:email]).to include("must be a valid email address")

      user.email = "email@example.com"
      user.validate
      expect(user.errors[:email]).to_not include("must be a valid email address")
    end
  end
end
