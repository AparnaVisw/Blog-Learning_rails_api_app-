class Comment < ApplicationRecord
  belongs_to :blogpost
  belongs_to :blogger
end
