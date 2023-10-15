class Cake < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_name_and_description, against: {
    name: 'A',
    description: 'B'
  }
end
