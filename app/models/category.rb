class Category < ApplicationRecord
  validates :name, :presence => true
  validates :top_category, :presence => true
  validates :order, :presence => true
  validates :order, numericality: { only_integer: true }
end
