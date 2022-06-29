require 'rails_helper'

RSpec.describe Day, type: :model do
  subject { build(:day) }

  it { should be_valid }
end
