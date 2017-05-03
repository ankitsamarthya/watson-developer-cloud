# frozen_string_literal: true
require 'httparty'

module Watson
  class ToneAnalyzer
    def initialize(username, password, version = 'v3',
                    version_date = '2016-05-19')
      @username = username
      @password = password
      @url = 'https://gateway.watsonplatform.net/tone-analyzer/api' \
        "/#{version}/tone?version=#{version_date}"
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
