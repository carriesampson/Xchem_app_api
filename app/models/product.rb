class Product < ApplicationRecord
  belongs_to :brand
  has_many :chemicals
  has_many :additives
end
