require 'adefy/api/base_api'

module Adefy
  module Api
    class Ads < BaseApi

      # POST /api/v1/ads
      def create(**options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/ads",
          query: opts(),
          body: options.to_json
        )
      end

      # POST /api/v1/ads/:id
      def update(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/ads/#{id}",
          query: opts(),
          body: options.to_json
        )
      end

      # DELETE /api/v1/ads/:id
      def delete(id: nil)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :delete,
          path: "/api/v1/ads/#{id}",
          query: opts()
        )
      end

      # GET /api/v1/ads
      def all(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/ads",
          query: opts(options)
        )
      end

      # GET /api/v1/ads/all
      def everyone(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/ads/all",
          query: opts(options)
        )
      end

      # GET /api/v1/ads/:id
      def get(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/ads/#{id}",
          query: opts(options)
        )
      end

      # POST /api/v1/ads/:id/approve
      # POST /api/v1/ads/:id/disaprove

    end
  end
end