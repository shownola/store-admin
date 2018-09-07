require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  
  
  
  test 'product can be created' do
    product = Product.create(name: 'Brown Shirt', description: 'Brown shirt', date: Date.today)
    assert
    expect(product).to be_valid
  end
end
