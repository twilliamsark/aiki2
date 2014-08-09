shared_examples "filterable" do
  it { should respond_to(:label) }
  it { should respond_to(:keywords) }
  it { should respond_to(:update_applied_technique_keywords) }

  let(:applied_technique) { fake_applied_technique }

  before do
    local_subject = subject.class.to_s.downcase
    @local_subject_name = subject.name
    applied_technique.update_attribute(local_subject, subject)
  end

  it "keywords should contain subject name" do
    expect(applied_technique.keywords).to include(@local_subject_name.downcase)
  end

  describe "changing subject name should change keywords" do
    before do
      subject.name = 'foo'
      subject.save!
    end

    it "keywords should contain subject name" do
      expect(applied_technique.keywords).to include('foo')
    end
  end

end
