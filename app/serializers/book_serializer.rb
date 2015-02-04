class BookSerializer < ActiveModel::Serializer
  #attributes :id, :title, :author, :review, :rating, :genre_id, :amazon_id
  attributes :id, :title,  :rating
end
