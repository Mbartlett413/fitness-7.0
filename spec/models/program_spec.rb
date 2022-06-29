require 'rails_helper'

RSpec.describe Program, type: :model do
  subject { build(:program) }

  it { should be_valid }
end
