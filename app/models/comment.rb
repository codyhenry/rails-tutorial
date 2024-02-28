# generated using ruby bin\rails generate model Comment commenter:string
# body:text article:references
class Comment < ApplicationRecord
  # each comment belongs to one article
  belongs_to :article
end
