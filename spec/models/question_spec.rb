require 'rails_helper'

describe Question do
  it { should belong_to(:survey) }
  it { should validate_presence_of :question }
  it { should validate_length_of(:question).is_at_most(100) }
end
