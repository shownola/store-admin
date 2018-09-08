class Product < ApplicationRecord
  
  
  mount_uploader :image, ImageUploader
  belongs_to :user, optional: true
  
  validates_presence_of :name, :price, :sku
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { maximum: 144, too_long: "%{count} characters is the maximum allowed" }
  validates :price, numericality: true
  
end


 