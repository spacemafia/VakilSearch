class Sectiontwo < ActiveRecord::Base
belongs_to :article
belongs_to :user
default_scope -> { order('cached_weighted_score DESC') }
validates :contenttwo, presence: true
acts_as_votable
end
