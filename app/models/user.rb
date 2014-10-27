class User < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_questions, through: :relationships, source: :followed
  has_many :answers
  has_many :articles, dependent: :destroy
  has_many :sectionones, dependent: :destroy
  has_many :sectiontwos, dependent: :destroy
  has_many :sectionthrees, dependent: :destroy
  has_many :sectionfours, dependent: :destroy
  has_many :surveys
  before_save { self.email = email.downcase }
	before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 } 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
  						format: { with: VALID_EMAIL_REGEX },
  						uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  acts_as_voter

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def following_question?(question)
    relationships.find_by_followed_id(question.id)
  end

  def follow_question!(question)
    relationships.create!(followed_id: question.id)
  end

  def question_unfollow!(question)
    relationships.find_by_followed_id(question.id).destroy
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end