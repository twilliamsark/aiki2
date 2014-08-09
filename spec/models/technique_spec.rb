require 'spec_helper'

describe Technique do

  before do
    @technique = FactoryGirl.create(:technique)
  end

  subject { @technique }

  describe "test concerns" do
    it_behaves_like "seed fu serializable"
    it_behaves_like "has videos"
    it_behaves_like "filterable"
  end
end
