class Blogpost < ApplicationRecord
  belongs_to :blogger
  has_many :comments
end
