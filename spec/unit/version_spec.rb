require 'spec_helper'

describe Titanfall do

  it "returns correct version" do
    expect(Titanfall::VERSION).to eql "0.0.0"
  end

end
