class Quote < ApplicationRecord
  validates :body, presence: true
  validates :author, presence: true

  broadcasts_to ->(quote) { "quotes-list" }
end
