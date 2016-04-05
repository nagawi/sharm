class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :product

  validates :user_id, presence: :true
  validates :product_id, presence: :true
  validates :title, presence: :true,
                    length: { maximum: 30 }
  validates :note, presence: :true,
                   length: { maximum: 3000 }

  validates_inclusion_of :value, in: 1..5

end
