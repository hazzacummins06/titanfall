require 'spec_helper'

describe Profile do

  context "profile configuration" do

    it "returns profile configurations" do
      test_profile_cfg_path = "#{File.dirname(__FILE__)}/../fixtures/Respawn/Titanfall/profile/profile.cfg"
      allow_any_instance_of(Titanfall).to receive(:profile_cfg_file_path).and_return(test_profile_cfg_path)

      t = Titanfall.new
      expect(t.profile['training_hasEverFinished']).to eql "0"
    end
  end

end
