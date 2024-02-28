# generated using ruby bin\rails generate model Article titel:string
#body:text
class Article < ApplicationRecord
  #each article can have many comments
  has_many :comments
  # once form is saved, will run these validators
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
