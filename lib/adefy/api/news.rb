require 'adefy/api/base_api'

module Adefy
  module Api
    class News < BaseApi

      # POST /api/v1/news
      def create(options={})
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/news",
          query: opts(),
          body: options.to_json
        )
      end

      # GET /api/v1/news
      def all(options={})
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/news",
          query: opts(options)
        )
      end

      # GET /api/v1/news/:id
      def get(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :get,
          path: "/api/v1/news/#{id}",
          query: opts(options)
        )
      end

      # POST /api/v1/news/:id
      def update(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :post,
          path: "/api/v1/news/#{id}",
          query: opts(),
          body: options.to_json
        )
      end

      # DELETE /api/v1/news/:id
      def delete(id: nil, **options)
        raise ArgumentError, "requires an id" unless id
        request(
          expects: 200,
          method: :delete,
          path: "/api/v1/news/#{id}",
          query: opts(options)
        )
      end

    end
  end
end