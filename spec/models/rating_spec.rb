require 'spec_helper'

describe Rating do
  before do
    @rating = Rating.new(number:4)
  end

  subject { @rating }

  it { should belong_to(:student) }
  it { should belong_to(:rater) }
  it { should belong_to(:char_strength) }

  describe "when no rating given" do
    before { @rating.number = "" }
    it { should_not be_valid }
  end
  describe "when rating is nil" do
    before { @rating.number = nil }
    it { should_not be_valid }
  end
end
