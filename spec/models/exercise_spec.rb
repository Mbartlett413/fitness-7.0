require 'rails_helper'
RSpec.describe Exercise, type: :model do
  subject { build(:exercise) }

  it { should be_valid }
end
