class BloggerSerializer < ActiveModel::Serializer
  attributes :id, :gmail
  has_many :blogposts
end
