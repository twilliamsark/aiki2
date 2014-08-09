require 'spec_helper'

describe Rank do

  before do
    @rank = FactoryGirl.create(:rank)
  end

  subject { @rank }

  describe "test concerns" do
    it_behaves_like "seed fu serializable"
    it_behaves_like "has videos"
    it_behaves_like "filterable"
  end

  it { should respond_to(:label) }
  it { should respond_to(:miscellaneous?) }
  it { should respond_to(:to_label) }
end
