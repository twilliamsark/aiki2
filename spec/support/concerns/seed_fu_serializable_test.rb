shared_examples "seed fu serializable" do
  it { should respond_to(:to_h) }

  let(:string_writer) { StringIO.new }

  before do
    subject.class.to_seed_fu(string_writer)
  end

  it "seed_fu output should contain object" do
    expect(string_writer.string).to include(subject.name)
  end
end
