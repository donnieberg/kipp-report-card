require 'spec_helper'

describe Course do
  before do
    @course = Course.new(title:"History 1001", teacher_id:2)
  end

  subject { @course }

  it { should belong_to(:teacher) }
  it { should have_many(:students) }
  it { should have_many(:ratings) }

  describe "when no title given" do
    before { @course.title = "" }
    it { should_not be_valid }
  end
end
