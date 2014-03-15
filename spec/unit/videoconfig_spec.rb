require 'spec_helper'

describe VideoConfig do

  context "video configuration" do

    it "returns video configurations" do
      test_videoconfig_path = "#{File.dirname(__FILE__)}/../fixtures/Respawn/Titanfall/local/videoconfig.txt"
      allow_any_instance_of(Titanfall).to receive(:videoconfig_txt_file_path).and_return(test_videoconfig_path)

      t = Titanfall.new
      expect(t.videoconfig['setting.cl_fovScale']).to eql "1.0"
    end
  end

end
