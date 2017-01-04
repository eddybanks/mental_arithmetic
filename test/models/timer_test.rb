require "test_helper"

describe Timer do
  let(:timer) { Timer.new }

  it "must be valid" do
    value(timer).must_be :valid?
  end
end
