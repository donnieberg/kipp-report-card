require 'spec_helper'

describe School do
  before do
    @school = School.new(name:"Fake school", city:"San Francisco", state:"CA", grade_level:"Middle")
  end

  subject { @school }

  it {should respond_to(:name) }
  it {should respond_to(:city) }
  it {should respond_to(:state) }
  it {should respond_to(:grade_level) }

  describe "when name is blank" do
    before { @school.name = " " }
    it { should_not be_valid }
  end

  describe "when school already exists" do
    before do
      school_with_same_name = @school.dup
      school_with_same_name.name = @school.name.upcase
      school_with_same_name.save
    end
    it { should_not be_valid }
  end

  describe "when state is not abbr" do
    before { @school.state = "Minnesota" }
    it { should_not be_valid }
  end
end
