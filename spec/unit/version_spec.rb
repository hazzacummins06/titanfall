require 'spec_helper'

describe Titanfall::VERSION do

  it "returns correct version" do
    expect(Titanfall::VERSION).to eql "0.0.1"
  end

end
