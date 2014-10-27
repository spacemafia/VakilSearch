class Article < ActiveRecord::Base
belongs_to :user
has_many :sectionones
has_many :sectiontwos
has_many :sectionthrees
has_many :sectionfours
has_many :questions
belongs_to :question
has_attached_file :image, :styles => { :medium => "600x400>", :thumb => "254x150>" }
default_scope -> { order('created_at DESC') }
validates :user_id, presence: true
validates :title, presence: true
acts_as_taggable_on :tags
end