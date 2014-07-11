require 'spec_helper'

describe User do

  before do
    @user = User.new(email: 'user@example.com',
                     password: 'foobar',
                     password_confirmation: 'foobar')
  end

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:admin?) }
  it { should respond_to(:demo?) }
  it { should respond_to(:regular?) }
  it { should respond_to(:demo_user_expires_on) }
  it { should respond_to(:to_h) }

  it { should be_valid }
  it { should be_regular }
  it { should_not be_admin }
  it { should_not be_demo }

  describe "with admin attribute set to 'true'" do
    before do
      @user.save!
      @user.toggle!(:admin)
    end

    it { should be_admin }
    it { should_not be_demo }
    it { should_not be_regular }
  end

  describe "with demo attribute set to 'true'" do
    before do
      @user.save!
      @user.toggle!(:demo)
    end

    it { should_not be_admin }
    it { should be_demo }
    it { should_not be_regular }
  end

  describe "with both admin and demo attribute set to 'true'" do
    before do
      @user.save!
      @user.toggle!(:admin)
      @user.toggle!(:demo)
    end

    it { should_not be_valid }
  end

  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when email addresses is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

end
