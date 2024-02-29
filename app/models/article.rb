# generated using ruby bin\rails generate model Article titel:string
#body:text
class Article < ApplicationRecord
  # replace duplicated code with a concern
  include Visible
  #each article can have many comments
  has_many :comments, dependent: :destroy
  # once form is saved, will run these validators
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  # This comes from the Visible concern now
  # VALID_STATUSES = ['public', 'private', 'archived']

  # validates :status, inclusion: {in: VALID_STATUSES}

  # def archived?
  #   status == 'archived'
  # end
end
