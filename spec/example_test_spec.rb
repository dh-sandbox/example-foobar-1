require "spec_helper"
require_relative "../example"

describe "Example" do
  describe "#answer" do
    it "should return 42" do
      expect(Example.new.answer).to eq(42)
    end

    it "should  also return 42" do
      expect(Example.new.answer).to eq(42)
    end
  end
end
