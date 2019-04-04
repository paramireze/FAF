require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  def setup
    @valid_entry = entries(:valid_entry)
    @invalid_entry = entries(:invalid_entry)
    @invalid_entry_user = entries(:invalid_entry_user)
  end

  test 'valid entry' do
    assert @valid_entry.valid?
  end

  test 'entry is missing category' do
    refute @invalid_entry.valid?, 'entry is valid without belonging to an entry'
    assert_not_nil @invalid_entry.errors[:category], 'no validation error for an entry not belonging to an entry'
  end


  test 'entry is missing user' do
    refute @invalid_entry_user.valid?, 'entry is valid without belonging to a user'
    assert_not_nil @invalid_entry_user.errors[:user], 'no validation error for an entry not belonging to a user'
  end


end
