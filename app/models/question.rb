class Question < ApplicationRecord
  belongs_to :survey
  validates :question, presence: true
  validates_length_of :question, maximum: 100
end
