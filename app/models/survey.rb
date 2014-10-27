class Survey < ActiveRecord::Base
belongs_to :user
validates :qone, presence: true
validates :qtwo, presence: true
validates :qthree, presence: true
validates :qfour, presence: true
validates :qfive, presence: true
validates :qsix, presence: true
validates :qseven, presence: true
validates :qeight, presence: true
end