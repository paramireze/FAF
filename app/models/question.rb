class Question < ApplicationRecord
  belongs_to :category

  validates :text, :category, :presence => true
end
