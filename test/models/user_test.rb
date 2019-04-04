require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @valid_user = users(:valid_user)
    @invalid_user_missing_last_name = users(:invalid_user_missing_last_name)
    @invalid_user_missing_email = users(:invalid_user_missing_email)
  end

  test 'valid user' do
    assert @valid_user.valid?
  end

  test 'user is invalid with missing last name' do
    refute @invalid_user_missing_last_name.valid?, 'user is valid without having a last name'
    assert_not_nil @invalid_user_missing_last_name.errors[:last_name], 'no validation error for last name and there should be'
  end

  test 'user is invalid with missing email' do
    refute @invalid_user_missing_email.valid?, 'user is valid without having an email'
    assert_not_nil @invalid_user_missing_email.errors[:email], 'no validation error for user not having a last name'
  end

  test 'user has a name that equals Paul' do
    assert @valid_user.first_name == "Paul"
  end
end
