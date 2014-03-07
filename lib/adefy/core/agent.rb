require 'adefy/api'

module Adefy
  class Agent

    HEADERS = {
      'Accept'                => 'application/json',
      'Content-Type'          => 'application/json',
      #'Accept-Encoding'       => 'gzip',
      'User-Agent'            => "Ruby-Adefy/#{VERSION}",
      'X-Ruby-Version'        => RUBY_VERSION,
      'X-Ruby-Platform'       => RUBY_PLATFORM
    }

    attr_reader :connection

    attr_reader :ads
    attr_reader :analytics
    attr_reader :campaigns
    attr_reader :creator
    attr_reader :editor
    attr_reader :filters
    attr_reader :news
    attr_reader :publishers
    attr_reader :serve
    attr_reader :users

    def initialize(host: "127.0.0.1", apikey: nil, headers: {})
      @apikey = apikey
      @headers = HEADERS.merge(headers)
      @connection = Excon.new(host, persistent: true, headers: @headers)
      @ads        = Api::Ads.new(connection: @connection, apikey: @apikey)
      @analytics  = Api::Analytics.new(connection: @connection, apikey: @apikey)
      @campaigns  = Api::Campaigns.new(connection: @connection, apikey: @apikey)
      @creator    = Api::Creator.new(connection: @connection, apikey: @apikey)
      @editor     = Api::Editor.new(connection: @connection, apikey: @apikey)
      @filters    = Api::Filters.new(connection: @connection, apikey: @apikey)
      @news       = Api::News.new(connection: @connection, apikey: @apikey)
      @publishers = Api::Publishers.new(connection: @connection, apikey: @apikey)
      @serve      = Api::Serve.new(connection: @connection, apikey: @apikey)
      @users      = Api::Users.new(connection: @connection, apikey: @apikey)
    end

    private :connection

  end
end