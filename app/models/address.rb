class Address < ApplicationRecord
  belongs_to :user, optional: true
  
  with_options presence: true do
    validates :postal_code, format: { with: /\A\d{3}-\d{4}\z/ }
    validates :prefecture_id
    validates :city
    validates :block
    validates :phone_number, format: { with: /\A\d{,11}\z/ }
  end
end
