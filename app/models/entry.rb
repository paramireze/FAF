class Entry < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :category, :user, :presence => true
end
