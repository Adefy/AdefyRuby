require 'adefy/api/base_api'

module Adefy
  module Api
    class Publishers < BaseApi

      # POST /api/v1/publishers
      def create(**options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers",
          query: opts(),
          body: options.to_json
        )
      end

      # POST /api/v1/publishers/:id
      def update(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers/#{id}",
          query: opts(),
          body: options.to_json
        )
      end

      # DELETE /api/v1/publishers/:id
      def delete(id: nil)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :delete,
          path: "/api/v1/publishers/#{id}",
          query: opts()
        )
      end

      # GET /api/v1/publishers
      def all(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/publishers",
          query: opts(options)
        )
      end

      # GET /api/v1/publishers/all
      def everyone(**options)
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/publishers/all",
          query: opts(options)
        )
      end

      # GET /api/v1/publishers/:id
      def get(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/publishers/#{id}",
          query: opts(options)
        )
      end

      # POST /api/v1/publishers/:id/approve
      def approve(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers/#{id}/approve",
          query: opts(options)
        )
      end

      # POST /api/v1/publishers/:id/disaprove
      def disaprove(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers/#{id}/disaprove",
          query: opts(options)
        )
      end

      # POST /api/v1/publishers/:id/activate
      def activate(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers/#{id}/activate",
          query: opts(options)
        )
      end

      # POST /api/v1/publishers/:id/deactivate
      def deactivate(id: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers/#{id}/deactivate",
          query: opts(options)
        )
      end

      # GET /api/v1/publishers/stats/:id/:stat/:range
      def stats(id: nil, stat: nil, range: nil, **options)
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/publishers/#{id}/#{stat}/#{range}",
          query: opts(options)
        )
      end

    end
  end
end