class History
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :token

  def save
    UserItem.create(user_id: user_id, item_id: item_id)
  end
end