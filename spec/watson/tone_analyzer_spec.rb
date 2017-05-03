require "spec_helper"

describe Watson::ToneAnalyzer do
  it "initializes" do
    expect(Watson::ToneAnalyzer.new('username', 'password')).not_to be nil
  end
end
