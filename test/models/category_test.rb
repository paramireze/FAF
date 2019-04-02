require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @valid_category = categories(:valid_category)
    @missingName = categories(:missingName)
    @missingOrder = categories(:missingOrder)
  end

  test 'valid category' do
    assert @valid_category.valid?
  end

  test 'invalid category without name' do

    refute @missingName.valid?, 'user is valid without a name'
    assert_not_nil @missingName.errors[:name], 'no validation error for name present'
  end

  test 'invalid category without order' do
    refute @missingOrder.valid?, 'category is valid without it having an order number'
    assert_not_nil @missingOrder.errors[:order], 'no validation error for order present'
  end

  test 'category has two questions' do
    assert_equal 2, @valid_category.questions.size
  end
end
