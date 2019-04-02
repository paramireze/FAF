class Category < ApplicationRecord
  has_many :questions

  validates :name, :top_category, :order, :presence => true
  validates :order, numericality: { only_integer: true }
end
