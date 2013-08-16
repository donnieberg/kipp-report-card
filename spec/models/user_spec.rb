require 'spec_helper'

describe User do

  before do
    @user = User.new(name: "James Dean", email:"james@james.org", school_id: 1, type:"Teacher")
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:school_id) }
  it { should respond_to(:type) }

  it { should be_valid }

  describe "when name is blank" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too damn long" do
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end
end
