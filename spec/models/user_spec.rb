require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  it { should be_valid }
end
