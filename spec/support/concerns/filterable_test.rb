shared_examples "filterable" do
  it { should respond_to(:name) }
  it { should respond_to(:keywords) }
  it { should respond_to(:update_waza_keywords) }

  let(:waza) { fake_waza }

  before do
    local_subject = subject.class.to_s.downcase
    @local_subject_name = subject.name
    waza.update_attribute(local_subject, subject)
  end

  it "keywords should contain subject name" do
    expect(waza.keywords).to include(@local_subject_name.downcase)
  end

  describe "changing subject name should change keywords" do
    before do
      subject.name = 'foo'
      subject.save!
    end

    it "keywords should contain subject name" do
      expect(waza.keywords).to include('foo')
    end
  end

end
