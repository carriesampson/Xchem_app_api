class Brand < ApplicationRecord
  has_many :products
  has_many :chemicals
  has_many :additives

  include PgSearch
  pg_search_scope :search_content_for, against: :BrandName, using: {tsearch: {any_word: true}}
end
