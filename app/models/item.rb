class Item < ApplicationRecord
  has_many :user_items
  has_one_attached :image
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :image
    validates :name
    validates :explanation
    validates :category_id, numericality: {other_than:1 }
    validates :price, numericality: { only_integer: true }, format: { with:/\A[0-9]+\z/ }
  end
end
