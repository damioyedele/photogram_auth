class Photo < ApplicationRecord
  # Associations
  # Photos have many comments, a comment belongs to a photo
  has_many :comments
  belongs_to :photo

  #Photos have many likes, a like belongs to a photo
  has_many :likes
  belongs_to :photo

  # Similarly to "Users have many liked_photos through likes", Photos have many fans through likes (source: user):
  has_many :fans, :through => :likes, :source => :user

  # Validations ->  user_id: presence
  validates :user_id, :presence => true, :uniqueness => { :scope => :username }

end
