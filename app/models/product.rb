class Product < ApplicationRecord
  
  before_destroy :not_referenced_by_any_line_item
  belongs_to :user, optional: true
  has_many :line_items
  
  mount_uploader :image, ImageUploader
  
  validates_presence_of :name, :price, :sku
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { maximum: 144, too_long: "%{count} characters is the maximum allowed" }
  validates :price, numericality: true
  
  
  
  private
  
    def not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line items present')
        throw :abort
      end
    end
end


