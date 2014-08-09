shared_examples "has videos" do
  it { should respond_to(:get_applied_techniques) }

  let(:video) { fake_video_with_applied_technique }

  before do
    local_subject = subject.class.to_s.downcase
    video.applied_technique.update_attribute(local_subject, subject)
  end

  it "should include video" do
    expect(subject.videos).to include(video)
  end
end
