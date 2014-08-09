shared_examples "seed fu serializable" do
  it { should respond_to(:to_h) }

  let(:string_writer) { StringIO.new }

  before do
    subject.class.to_seed_fu(string_writer)
    @seed_fu = string_writer.string
  end

  it "seed_fu output should contain object's class" do
    expect(@seed_fu).to include(subject.class.to_s + ".seed")
  end

  it "seed_fu output should contain object's id" do
    expect(@seed_fu).to include(":id=>" + subject.id.to_s)
  end
end
