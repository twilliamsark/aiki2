require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "signin page" do
    before { visit signin_path }
    it { should have_content('Sign in') }
  end

  describe "signin" do
    describe "with invalid information" do
      before do
        visit signin_path
        click_button "Sign in"
      end

      it { should have_content('Sign in') }
      it { should have_error_message("Login invalid") }
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      let(:video) { fake_video_with_waza_format }

      before do
        video.youtube_code #force the creation
        valid_signin(user)
      end

      it { should have_content(user.email) }

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_content('Sign in') }
      end
    end
  end

  describe "authorization" do
    describe "for non-signed in users" do
      describe "root" do
        before { visit root_path }
        it { should have_content('Sign in') }
      end
      describe "aikido" do
        before { visit aikido_path }
        it { should have_content('Sign in') }
      end
      describe "iaido" do
        before { visit iaido_path }
        it { should have_content('Sign in') }
      end
      describe "admin" do
        before { visit admin_root_path }
        it { should have_content('Sign in') }
      end
    end
  end

end
