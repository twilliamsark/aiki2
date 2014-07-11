require 'spec_helper'

describe "AuthenticationPages" do
  subject { page }

  describe "signin page" do
    before { visit signin_path }
    it { should have_content('Sign in') }
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
