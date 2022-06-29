require 'rails_helper'

RSpec.describe Training, type: :model do
  subject { build(:training) }

  it { should be_valid }
end
