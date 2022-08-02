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


      it 'should not create user if password confirmation is not match with password' do
        @user = User.new(
          first_name: 'Ann', 
          last_name: 'Bui',
          email: 'an@bui.com', 
          password: '1234',
          password_confirmation: '4321')

          @user.save
    
          expect(@user).not_to be_valid
        end


        it 'should not create user if password length is less than 3 characters' do
          @user = User.new(
            first_name: 'Ann', 
            last_name: 'Bui',
            email: 'an@bui.com', 
            password: '12',
            password_confirmation: '12')
  
            @user.save
      
            expect(@user).not_to be_valid
          end

  end

end
