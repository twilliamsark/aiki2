require 'spec_helper'

describe Video do

  before do
    @video = fake_video_with_waza_format(visible: false, primary: false)
  end

  subject { @video }

  it_behaves_like "seed fu serializable"

  it { should respond_to(:youtube_code) }
  it { should respond_to(:visible) }
  it { should respond_to(:for_demo) }
  it { should respond_to(:primary) }
  it { should respond_to(:description) }

  it { should be_valid }

  it { should_not be_visible }
  it { should_not be_primary }
  it { should_not be_for_demo }

  it "should have a non-nil name" do
    expect(@video.name).not_to be_nil
  end

  describe "with youtube_code set to 'n/a'" do
    it { should_not be_valid_youtube_code }
  end

  describe "primary flag" do
    describe "primary = false" do
      before { @video.save! }
      let(:videos) { Video.primary }

      it "list of primary should not contain video" do
        expect(videos).not_to include(@video)
      end
    end

    describe "primary = true" do
      before do
        @video.save!
        @video.toggle!(:primary)
      end

      let(:videos) { Video.primary }

      it "list of primary should contain video" do
        expect(videos).to include(@video)
      end
    end
  end

  describe "visible flag" do
    describe "visible = false" do
      before { @video.save! }
      let(:videos) { Video.visible }

      it "list of visible should not contain video" do
        expect(videos).not_to include(@video)
      end
    end

    describe "visible = true" do
      before do
        @video.save!
        @video.toggle!(:visible)
      end

      let(:videos) { Video.visible }

      it "list of visible should contain video" do
        expect(videos).to include(@video)
      end
    end
  end

  describe "demo flag" do
    describe "demo = false" do
      before { @video.save! }
      let(:videos) { Video.demo }

      it "list of demo should not contain video" do
        expect(videos).not_to include(@video)
      end
    end

    describe "demo = true" do
      before do
        @video.save!
        @video.toggle!(:for_demo)
      end

      let(:videos) { Video.demo }

      it "list of demo should contain video" do
        expect(videos).to include(@video)
      end
    end
  end

end
