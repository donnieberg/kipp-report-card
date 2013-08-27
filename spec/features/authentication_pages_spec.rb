require 'spec_helper'

describe "Authentication" do

  subject { page }
  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Sign in') }
    it { should have_title('Sign in') }

    describe "with valid information" do
        let(:user) { FactoryGirl.create(:user) }
        before do
          fill_in "Email",    with: user.email.upcase
          fill_in "Password", with: user.password
          click_button "Sign in"
        end

        # it { should have_title(user.name) }
        # it { should have_link('Profile',     href: user_path(user)) }
        it { should have_link('Sign out',    href: signout_path) }
        it { should_not have_link('Sign in', href: signin_path) }
      end
    end
  end

  describe "signup" do

    before { visit signup_path }
    subject { page }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "First Name",         with: "First Name"
        fill_in "Last Name",          with: "Last Name"
        fill_in "Email",              with: "user@example.com"
        fill_in "Password",           with: "foobar"
        fill_in "Password Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user sign in" do
        before { click_button submit }
        let(:user) { User.find_by_email('user@example.com') }

        it { should have_link('Sign out') }
        it { should have_selector('div.alert.alert-success', text: 'Welcome') }
      end

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
  end
end


