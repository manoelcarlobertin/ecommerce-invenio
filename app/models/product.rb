class Product < ApplicationRecord
  belongs_to :productable, polymorphic: true

  # validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :price, numericality: { greater_than: 0 }
end
