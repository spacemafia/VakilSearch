class Sectionfour < ActiveRecord::Base
belongs_to :article
belongs_to :user
default_scope -> { order('cached_weighted_score DESC') }
validates :contentfour, presence: true
acts_as_votable
end
