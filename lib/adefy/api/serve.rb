require 'adefy/api/base_api'

module Adefy
  module Api
    class Serve < BaseApi

      def serve(id: nil, **options)
        apikey = id
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/serve/#{apikey}",
          query: opts(options)
        )
      end

      def impressions(id: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/impressions/#{id}",
          query: opts(options)
        )
      end

      def click(id: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/click/#{id}",
          query: opts(options)
        )
      end

    end
  end
end