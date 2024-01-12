class Search < ApplicationRecord
  validates :query, presence: true
end
