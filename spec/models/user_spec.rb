require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'Validations' do

    it 'should create user when all fields are valid' do
      @user = User.new(
        first_name: 'Ann', 
        last_name: 'Bui',
        email: 'an@bui.com', 
        password: '1234',
        password_confirmation: '1234')

        @user.save
  
        expect(@user).to be_valid
      end


  end

end
