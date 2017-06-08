class Comment < ApplicationRecord

  # Validations -> 1) user_id: presence 2) photo_id: presence 3) body: presence

  validates :user_id, :presence => true
  validates :photo_id, :presence => true
  validates :body, :presence => true

end
