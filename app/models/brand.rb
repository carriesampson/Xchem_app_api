class Brand < ApplicationRecord
  has_many :products
  has_many :chemicals
  has_many :additives

  include PgSearch
  pg_search_scope :search, against: [:brand]

end
