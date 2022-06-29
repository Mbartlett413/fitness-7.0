require 'rails_helper'

RSpec.describe Volume, type: :model do
  subject { build(:volume) }

  it { should be_valid }
end
