class Picture < ApplicationRecord
  mount_uploader :image_pict, ImageUploader
  validates :content, presence: true, length: { maximum: 140 }
end
