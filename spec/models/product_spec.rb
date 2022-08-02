require 'rails_helper'

RSpec.describe Product, type: :model do
 
  describe 'Validations' do

    it 'all four fields set will save successfully' do  
      @product = Product.new(name: 'Stone Cactus', category: @category, quantity: 8, price: 25)
      @product.save
      expect(@product).to be_present
    end

  end



end
