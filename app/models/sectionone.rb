class Sectionone < ActiveRecord::Base
belongs_to :article
belongs_to :user
validates :contentone, presence: true
acts_as_votable
default_scope -> { order('cached_weighted_score DESC') }
end
