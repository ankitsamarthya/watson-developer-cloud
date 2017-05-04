# frozen_string_literal: true
require 'httparty'

module Watson
  class ToneAnalyzer
    def initialize(username, password, tone_type = nil, version = 'v3',
                   version_date = '2016-05-19')
      @username = username
      @password = password
      if tone_type.nil?
        @url = 'https://gateway.watsonplatform.net/tone-analyzer/api' \
          "/#{version}/tone?version=#{version_date}"
      else
        @url = 'https://gateway.watsonplatform.net/tone-analyzer/api' \
          "/#{version}/tone?version=#{version_date}&tones=#{tone_type}"
      end
    end

    def tone(options = {})
      HTTParty.post(
        @url,
        headers: { 'Content-Type': 'application/json' },
        body: options.to_json,
        basic_auth: { username: @username, password: @password }
      )
    end
  end
end
