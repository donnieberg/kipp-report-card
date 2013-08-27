require 'spec_helper'

describe Category do
  before do
    @category = Category.new(content:"Zest")
  end

  subject { @category }

  it { should have_many(:char_strengths) }
  it { should have_many(:ratings) }

  describe "when no content given" do
    before { @category.content = "" }
    it { should_not be_valid }
  end
end