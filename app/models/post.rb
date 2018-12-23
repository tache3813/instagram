class Post < ApplicationRecord
  belongs_to :user

  validates :image, presence: true

  has_many :photos, dependent: :destroy #Postが削除されるとphotoも消える
  has_many :likes, => { order{ :created_at => :desc } }

  def is_belongs_to? user
    Post.find_by(user_id: user.id, id: id)
  end

  def is_liked user
    Like.find_by(user_id: user.id, post_id: id)
  end
end
