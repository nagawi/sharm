class Product < ActiveRecord::Base

  belongs_to :product_category
  has_many :reviews

  mount_uploader :image_product, ImageProductUploader

end
