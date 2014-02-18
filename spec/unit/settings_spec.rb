require 'spec_helper'

describe Settings do

  context "settings configuration" do
    let(:t) { Titanfall.new }

    before :each do
      test_settings_cfg_path = "#{File.dirname(__FILE__)}/../fixtures/Respawn/TitanfallBeta/local/settings.cfg"
      allow_any_instance_of(Titanfall).to receive(:settings_cfg_file_path).and_return(test_settings_cfg_path)
    end

    it "returns settings key bindings" do
      expect(t.binding("SPACE")).to eql "+ability 3"
    end

    it "returns settings configurations" do
      expect(t.settings['m_sensitivity']).to eql "5"
      expect(t.settings['password']). to eql ""
    end
  end

end
