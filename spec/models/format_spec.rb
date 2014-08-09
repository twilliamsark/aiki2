require 'spec_helper'

describe Format do

  before do
    @format = FactoryGirl.create(:format, name: Format::AIKI_TOHO)
  end

  subject { @format }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:short_description) }
  it { should respond_to(:position) }

  it { should respond_to(:to_h) }

  it { should be_valid }

  describe "Format.iaido" do
    it { expect(Format.iaido).not_to be_nil }
    it { expect(Format.iaido).to eq(@format)}
  end

  describe "format lists" do
    let(:iaido_format) { FactoryGirl.create(:format, name: Format::AIKI_TOHO) }
    let(:aikido_format) { FactoryGirl.create(:format, name: Format::TIADO) }

    it "aikido format list should contain aikido" do
      expect(Format.aikido).to include(aikido_format)
    end

    it "aikido format list should not contain iaido" do
      expect(Format.aikido).not_to include(iaido_format)
    end

    it "iaido format list should contain iaido" do
      expect(Format.aiki_toho).to include(iaido_format)
    end

    it "iaido format list should not contain aikido" do
      expect(Format.aiki_toho).not_to include(aikido_format)
    end
  end

  describe "applied technique keywords" do
    let(:applied_technique) { fake_applied_technique }
    let(:at_format) { applied_technique.format }

    it "should contain format name" do
      expect(applied_technique.keywords).to include(at_format.name.downcase)
    end

    it "should contain format short_description" do
      expect(applied_technique.keywords).to include(at_format.short_description.downcase)
    end

    describe "changing format short_description should change keywords" do
      before do
        at_format.short_description = 'foo'
        at_format.save!
      end

      it "should contain format short_description" do
        expect(applied_technique.keywords).to include('foo')
      end
    end
  end
end
