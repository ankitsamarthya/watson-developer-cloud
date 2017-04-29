require "spec_helper"

describe Watson::ToneAnalyzer do
  it "initializes" do
    expect(Watson::ToneAnalyzer.new).not_to be nil
  end
end
