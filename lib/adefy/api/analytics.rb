require 'adefy/api/base_api'

module Adefy
  module Api
    class Analytics < BaseApi

      # GET /api/v1/analytics/campaigns/:id/:stat
      def campaign(id: nil, stat: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/analytics/campaigns/#{id}/#{stat}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/analytics/ads/:id/:stat
      def ad(id: nil, stat: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/analytics/ads/#{id}/#{stat}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/analytics/publishers/:id/:stat
      def publisher(id: nil, stat: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/analytics/publishers/#{id}/#{stat}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/analytics/totals/:stat
      def total(stat: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/analytics/totals/#{stat}",
          query: opts(options).to_json
        )
      end

      # GET /api/v1/analytics/counts/:model
      def count(model: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/analytics/counts/#{model}",
          query: opts(options).to_json
        )
      end

    end
  end
end