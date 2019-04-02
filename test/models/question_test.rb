require 'test_helper'

class QuestionTest < ActiveSupport::TestCase

  def setup
    @valid_question = questions(:valid_question)
    @nil_text = questions(:nil_text)
    @question_missing_category = questions(:question_missing_category)
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

  test 'question is invalid because it does not belong to a category' do
    refute @question_missing_category.valid?, 'question is valid without belonging to a category'
    assert_not_nil @question_missing_category.errors[:text], 'no validation error for nil category'
  end

  test 'question is not required' do
    assert @valid_question.required
  end

end
