require 'adefy/api/base_api'

module Adefy
  module Api
    class Creator < BaseApi

      # GET /creator
      # GET /api/v1/creator/image/:image
      def image(image: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/creator/image/#{image}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/creator/suggestions
      def suggestions(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/creator/suggestions",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/creator/:url
      def url(url: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/creator/#{url}",
          query: opts(options).to_json
        )
      end

    end
  end
end