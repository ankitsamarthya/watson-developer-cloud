require "spec_helper"

describe Watson::ToneAnalyzer do

  let(:tone_analyzer){Watson::ToneAnalyzer.new(ENV['USERNAME'], ENV['PASSWORD'])}

  it "should exist and initialize" do
    expect(tone_analyzer).not_to be nil
    expect(tone_analyzer).to be_kind_of(Watson::ToneAnalyzer)
  end

  describe '#tone' do
    context 'with correct option' do
      it "should receive a 200 response with successful send" do
        VCR.use_cassette('tone_response') do
          tone_analyzer = Watson::ToneAnalyzer.new(ENV['USERNAME'], ENV['PASSWORD'])
          response = tone_analyzer.tone({text: 'some random text'})
          expect(response.code).to eq(200)
        end
      end
    end
  end

end
