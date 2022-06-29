require 'rails_helper'

RSpec.describe Week, type: :model do
  subject { build(:week) }

  it { should be_valid }
end
