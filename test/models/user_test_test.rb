require "test_helper"

describe UserTest do
  let(:user_test) { UserTest.new }

  it "must be valid" do
    value(user_test).must_be :valid?
  end
end
