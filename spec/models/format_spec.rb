require 'spec_helper'

describe Format do

  before do
    @format = FactoryGirl.create(:format, name: Format::AIKI_TOHO)
  end

  subject { @format }

  describe "test concerns" do
    it_behaves_like "seed fu serializable"
    it_behaves_like "has videos"
    it_behaves_like "filterable"
  end

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:short_description) }
  it { should respond_to(:position) }

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
end
