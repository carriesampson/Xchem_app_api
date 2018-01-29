class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  include PgSearch
  pg_search_scope :search, :against [:BrandName]
end
