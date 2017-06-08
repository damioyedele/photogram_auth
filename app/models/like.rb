class Like < ApplicationRecord

  # Validations -> 1) user_id: presence, uniqueness in combination with photo 2) photo_id: presence

  validates :user_id, :presence => true, :uniqueness => {:scope => :photo}

  validates :photo_id, :presence => true


end
