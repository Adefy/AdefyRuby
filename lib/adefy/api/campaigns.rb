require 'adefy/api/base_api'

module Adefy
  module Api
    class Campaigns < BaseApi

      # POST /api/v1/campaigns
      def create(**options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/campaigns",
          query: opts(),
          body: options.to_json
        )
      end

      # GET /api/v1/campaigns
      def all(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/campaigns",
          query: opts(options)
        )
      end

      # GET /api/v1/campaigns/:id
      def get(id: nil, **options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/campaigns/#{id}",
          query: opts(options)
        )
      end

      # POST /api/v1/campaigns/:id
      def update(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/campaigns/#{id}",
          query: opts(),
          body: options.to_json
        )
      end

      # DELETE /api/v1/campaigns/:id
      def delete(id: nil, **options)
        request(
          expects: 200,
          method: :delete,
          path: "/api/v1/campaigns/#{id}",
          query: opts(options)
        )
      end

      # GET /api/v1/campaigns/stats/:id/:stat/:range
      def stats(id: nil, stat: nil, range: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/campaigns/stats/#{id}/#{stat}/#{range}",
          body: opts(options).to_json
        )
      end

      # POST /api/v1/campaigns/:id/activate
      def activate(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/campaigns/#{id}/activate",
          query: opts(),
          body: options.to_json
        )
      end

      # POST /api/v1/campaigns/:id/deactivate
      def deactivate(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/campaigns/#{id}/deactivate",
          query: opts(),
          body: options.to_json
        )
      end

    end
  end
end