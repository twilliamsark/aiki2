shared_examples "has videos" do
  it { should respond_to(:name) }
  it { should respond_to(:label) }
  it { should respond_to(:get_wazas) }

  describe "class methods" do
    it { subject.class.should respond_to(:get_wazas) }
    it { subject.class.should respond_to(:options_for_select) }
  end

  let(:video) { fake_video_with_waza_format }

  before do
    local_subject = subject.class.to_s.downcase
    video.waza_formats.first.update_attribute(local_subject, subject)
  end

  it "should include video" do
    expect(subject.videos).to include(video)
  end
end
