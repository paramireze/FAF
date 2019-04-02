require 'test_helper'

class QuestionTest < ActiveSupport::TestCase

  def setup
    @valid_question = questions(:valid_question)
    @nil_text = questions(:nil_text)
  end

  test 'valid question' do
    assert @valid_question.valid?
  end

  test 'question is invalid because of missing text' do
    refute @nil_text.valid?, 'question is valid without having text'
    assert_not_nil @nil_text.errors[:text], 'no validation error for text present'
  end

  test 'question belongs to a category named Abstracts' do
    assert @valid_question.category.name == "Abstracts"
  end

  test 'question is not required' do
    assert @valid_question.required
  end

end
