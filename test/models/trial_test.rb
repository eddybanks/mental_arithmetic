require "test_helper"

describe Trial do
  let(:trial) { Trial.new }

  it "must be valid" do
    value(trial).must_be :valid?
  end
end
