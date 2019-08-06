class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :name, presence: true
  validates_length_of :name, maximum: 100

  before_save(:titleize_survey)

 private
   def titleize_survey
     self.name = self.name.titleize
   end
end
