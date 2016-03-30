class Product < ActiveRecord::Base

  belongs_to :product_category

  mount_uploader :image_product, ImageProductUploader
end
