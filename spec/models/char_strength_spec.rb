require 'spec_helper'

describe CharStrength do
  before do
    @char_strength = CharStrength.new(content:"Remains calm even when criticized or otherwise provoked", category_id:4)
  end

  subject { @char_strength }

  it { should belong_to(:category) }
  it { should have_many(:ratings) }

  describe "when no content given" do
    before { @char_strength.content = "" }
    it { should_not be_valid }
  end
end