class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :product

  validates_inclusion_of :value, in: 1..5

end
