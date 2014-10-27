class Question < ActiveRecord::Base
	belongs_to :user
	belongs_to :article
	has_many :questions
	has_many :relationships, foreign_key: "followed_id", dependent: :destroy
  has_many :followers, through: :relationships, source: :follower
  has_many :answers
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 200 }
	validates :user_id, presence: true
	acts_as_taggable_on :tags
end