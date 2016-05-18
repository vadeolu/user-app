class BlogPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :user
end
