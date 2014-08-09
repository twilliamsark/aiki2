require 'spec_helper'

describe AppliedTechnique do

  before do
    @applied_technique = fake_video_with_applied_technique.applied_technique
  end

  subject { @applied_technique }

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
      @keyword = @applied_technique.keywords.split.first
    end

    it "expect subject returned in search on known keyword" do
      expect(AppliedTechnique.search(@keyword)).to include(subject)
    end
  end
end
