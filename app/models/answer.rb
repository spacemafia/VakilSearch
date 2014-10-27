class Answer < ActiveRecord::Base
belongs_to :user
belongs_to :question
validates :answer_content, presence: true
validates :user_id, presence: true
validates :question_id, presence: true
acts_as_votable
default_scope -> { order('cached_weighted_score DESC') }
end