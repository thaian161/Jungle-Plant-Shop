require 'rails_helper'

RSpec.describe Product, type: :model do
 
  describe 'Product Validations' do

    it 'all four fields set will save successfully' do  
      @product = Product.new(name: 'Stone Cactus', category: @category, quantity: 8, price_cents: 25)
      @product.save

      expect(@product).to be_present
    end

    it 'should not validate without name' do 
      @product = Product.new(name: nil, category: @category, quantity: 8, price_cents: 25)

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should not validate without price_cents' do 
      @product = Product.new(name: 'Stone Cactus', category: @category, quantity: 8, price_cents: nil)

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it 'should not validate without quantity' do 
      @product = Product.new(name: 'Stone Cactus', category: @category, quantity: nil, price_cents: 25)

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should not validate without choosing category' do 
      @product = Product.new(name: 'Stone Cactus', category: nil, quantity: 8, price_cents: 25)

      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end



  end



end
