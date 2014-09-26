shared_examples "filterable" do
  it { should respond_to(:name) }
  it { should respond_to(:keywords) }
  it { should respond_to(:update_waza_keywords) }

  let(:waza_format) { fake_waza_format(subject.class.to_s.downcase.to_sym => subject) }

  before do
    @local_subject = subject.class.to_s.downcase
    @local_subject_name = subject.name
    if waza_format.attributes.keys.include?("#{@local_subject}_id")
      waza_format.update_attribute(@local_subject, subject)
    elsif waza_format.waza.attributes.keys.include?("#{@local_subject}_id")
      waza_format.waza.update_attribute(@local_subject, subject)
    end
  end

  it "keywords should contain subject name" do
    expect(waza_format.keywords).to include(@local_subject_name.downcase)
  end

  describe "changing subject name should change keywords" do
    before do
      subject.name = 'foo'
      subject.save!
    end

    it "keywords should contain subject name" do
      expect(waza_format.keywords).to include('foo')
    end
  end

end
