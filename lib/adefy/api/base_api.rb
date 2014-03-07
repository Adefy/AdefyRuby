require 'excon'
require 'json'

module Adefy
  module Api
    class BaseApi

      def initialize(opts)
        @apikey = opts[:apikey]
        @connection = opts.fetch(:connection)
      end

      ##
      # all requests to the Adefy API will result in a JSON Object
      def request(opts)
        JSON.load(@connection.request(opts).body)
      end

      def opts(**options)
        if @apikey
          { apikey: @apikey }.merge(options)
        else
          {}.merge(options)
        end
      end

    end
  end
end