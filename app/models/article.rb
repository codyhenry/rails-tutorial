class Article < ApplicationRecord
  # once form is saved, will run these validators
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
