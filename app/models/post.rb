class Post < ApplicationRecord
  belongs_to :author, class_name: :User
  has_many :comments, as: :commentable, dependent: :destroy
  # has_many :comments, -> { no_reply_comments }, as: :commentable, dependent: :destroy

  validates :title, presence: true
  validates :author_id, presence: true

  has_many :favorites, class_name: "Favorite"
  has_many :likes, class_name: "Like"
  has_many :subscribes, class_name: "Subscribe"
end
