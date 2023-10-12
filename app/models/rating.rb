class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :mince_pie
end
