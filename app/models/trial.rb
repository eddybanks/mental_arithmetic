class Trial < ApplicationRecord
  has_many :timers
  belongs_to :trial
end
