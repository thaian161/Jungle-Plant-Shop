require 'rails_helper'

RSpec.describe Product, type: :model do
 
  describe 'Validations' do

    it 'all four fields set will save successfully' do  
      @product = Product.new(name: 'Stone Cactus', category: @category, quantity: 8, price: 25)
      @product.save

      expect(@product).to be_present
    end

    it 'should not validate without name' do 
      @product2 = Product.new(name: nil, category: @category, quantity: 8, price: 25)

      expect(@product2).to_not be_valid
      expect(@product2.errors.full_messages).to include("Name can't be blank")
    end

  end



end
