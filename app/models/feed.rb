class Feed < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user
    validates :content, presence: true, if: -> { image.blank? }
    validates :content,length:   { in:1..140 }
    validates :image, presence: true, if: -> { content.blank? }
    
end
