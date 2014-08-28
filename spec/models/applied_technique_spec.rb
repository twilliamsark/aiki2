require 'spec_helper'

describe Waza do

  before do
    @waza = fake_video_with_waza.waza
  end

  subject { @waza }

  it_behaves_like "seed fu serializable"

  it { should respond_to(:name) }
  it { should respond_to(:keywords) }
  it { should respond_to(:first_video) }
  it { should respond_to(:list_name) }
  it { should respond_to(:demo_videos?) }
  it { should respond_to(:visible_videos?) }
  it { should respond_to(:aiki_toho?) }
  it { should respond_to(:set_keywords) }

  describe "test search on keyword" do
    before do
      @keyword = @waza.keywords.split.first
    end

    it "expect subject returned in search on known keyword" do
      expect(AppliedTechnique.search(@keyword)).to include(subject)
    end
  end
end
